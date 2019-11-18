/* File: Challenge-4.k
 ---------------------------
Generalize the program you wrote in Challenge 3 so that Karel
is able to climb a stair-step mountain of any height and place
a flag on its top.

Thus, in addition to climbing the mountain in that exercise,
it should be able to scale a molehill or Mount Everest.
*/
import "turns";

function climbStairs(){
move();
	while(frontIsBlocked()){
	turnLeft();
	move();
	turnRight();
	move();
	}
	putBeeper();
}



function checkStairs(){
	turnLeft();
	move();
	turnRight();
	if(frontIsBlocked()){
		turnRight();
		move();
		turnAround();
	}
	
}


 function descendStairsOneAndThree(){
	move();
	turnRight();
	move();
	repeat(1){
		turnLeft();
		move();
		turnRight();
		move();
	}
	turnLeft();
}

function descendStairsTwo(){
	move();
	turnRight();
	move();
	repeat(3){
	turnLeft();
	move();
	turnRight();
	move();
	}
	turnLeft();
}



function Solve(){
	move();
	checkStairs();
	climbStairs();
	descendStairsOneAndThree();
	checkStairs();
	climbStairs();
	descendStairsTwo();
	move();
	checkStairs();
	climbStairs();
	descendStairsOneAndThree();
	move();
	checkStairs();
}
