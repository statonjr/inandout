USING: kernel accessors assocs hashtables sequences prettyprint ;
IN: inandout

<PRIVATE

: status-message ( ? -- str )
    [ " is in" ] [ " is out" ] if ;

PRIVATE>

TUPLE: contractor name twitter available ;
: <contractor> ( -- contractor )
    contractor new ;

: availability ( -- hash ) H{ } ;

: add-contractor ( contractor -- )
    dup twitter>>
    availability
    set-at ;

: all-contractors ( -- arr )
    availability keys ;

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

: roll-call ( -- )
    all-contractors
    [ dup available? status-message append ]
    map [ . ] each ;
