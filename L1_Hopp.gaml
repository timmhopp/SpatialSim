/**
* Name: HelloWorld
* Based on the internal empty template. 
* Author: timmhopp
* Tags: 
*/


model HelloWorld

global {
	float my_speed <- 3.0;
	
	init {
		create my_agents number:5 {
			speed <- my_speed;
		}
	}
}

species my_agents skills:[moving]{
	reflex move {
		do wander speed:my_speed;
	}

	aspect default{
		draw triangle(2) color: #blue;
	}
}

experiment main_experiment type:gui{
	parameter "SPEED:" var:my_speed;
	output {
		display map {
			species my_agents aspect:default;
		}
	}
}

