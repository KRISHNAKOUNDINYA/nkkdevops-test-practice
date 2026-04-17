#!/bin/bash

read -p "jetha ne mud ke kis ko dekha: " bandi
read -p "jetha ka pyar % " pyar
if [[ $bandi == "daya babhi" ]];
then
   echo "jetha is loyal"
elif [[ $pyar -ge 100 ]]
then 
    echo "jetha is loyal"
else
   echo "jetha is not loyal"
fi
