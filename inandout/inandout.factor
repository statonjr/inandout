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

: check-in ( twitter-handle -- )
    availability at
    t >>available
    drop ;

: check-out ( twitter-handle -- )
    availability at
    f >>available
    drop ;

: available? ( twitter-handle -- bool )
    availability at available>> ;
