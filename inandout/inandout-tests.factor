USING: tools.test kernel inandout ;
IN: inandout.tests

"Calvin Broadus" "@snoopdogg" f contractor boa
add-contractor
: calvin ( -- str ) "@snoopdogg" ;

{ f } [ calvin check-out drop calvin available? ] unit-test
{ t } [ calvin check-in drop calvin available? ] unit-test
