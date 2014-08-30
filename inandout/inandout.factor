USING: kernel accessors assocs hashtables ;
IN: inandout

TUPLE: contractor name twitter available ;
: <contractor> ( -- contractor )
    contractor new ;

: availability ( -- hash ) H{ } ;

: add-contractor ( contractor -- )
    dup twitter>>
    availability
    set-at ;

: check-in ( twitter-handle -- hash )
    availability at
    t >>available
    drop
    availability ;

: check-out ( twitter-handle -- hash )
    availability at
    f >>available
    drop
    availability ;

: available? ( twitter-handle -- bool )
    availability at available>> ;
