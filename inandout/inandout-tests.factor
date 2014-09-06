USING: tools.test kernel inandout ;
IN: inandout.tests

"Calvin Broadus" "@snoopdogg" f contractor boa add-contractor

: calvin ( -- str ) "@snoopdogg" ;

{ f } [ calvin check-out calvin available? ] unit-test
{ t } [ calvin check-in calvin available? ] unit-test
{ f } [ calvin check-in calvin check-out calvin available? ] unit-test
