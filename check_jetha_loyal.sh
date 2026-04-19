#!/bin/bash

# function defenition 
function is_loyal(){
read -p "$1 ne mud ke kis ko dekha: " bandi
read -p "$1 ka pyar % " pyar
if [[ $bandi == "daya babhi" ]];
then
   echo "$1 is loyal"
elif [[ $pyar -ge 100 ]]
then 
    echo "$1 is loyal"
else
   echo "$1 is not loyal"
fi
}

# function call
is_loyal "tom"
