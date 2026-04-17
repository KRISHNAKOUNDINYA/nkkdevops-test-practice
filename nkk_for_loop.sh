#!/bin/bash

#for and while loop
<< comment
1 is for argument 1 which is folder name
2 start range
3 end range
comment

for ((i=$2;i<=$3;i++))
do 
  mkdir "$1$i"
done
