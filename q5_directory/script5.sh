#!/bin/bash

workspace_create()
{
	workspace=()

	for((i=1;i<=height;i++)); do
		row=()
		for((j=1;j<=width;j++)); do
			read -p"Enter presence of Obstacle\n 0-Obstacle\n1-No Obstacle" path

			if[[$path==1]] then
				row[$j]="1"
		
			if[[$path==0]] then
				row[$j]="0"
		done

		workspace+=(${row[@]})
	done
	return workspace
}

move_robot()
{
	workspace[rx][ry]=1
	read -p "Enter x coordinate :"x
	read -p "Enter y coordinate :"y

	rx=x;
	ry=y;

}


visual_workspace()
{
	echo"OBSTACLE - *\nFREE -  _ /nROBOT POSITION - R"
	for((i=1;i<=height;i++)); do
		for((j=1;j<=width;j++)); do
			if[(($i==rx))&&(($j==ry))] then
				workspace[$i][$j]="R"

			if[((workspace[$i][$j]==1))] then
				echo"_"

			if[((workspace[$i][$j]==0))] then
				echo"*"

		done
	done

			
}


read -p"Enter heightof Workspace : " height
read -p"Enter width of workspace : " width

rx=0
ry=0

workspace=workspace_create()

move_robot()

visual_workspace()



