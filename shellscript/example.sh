#!/bin/bash
 
select=0

echo "1. Apple"
echo "2. Orange"
echo "3. Lime"

echo -n "Please select [1,2 or 3] : "

# Loop while the variable 'select' is equal 0
# bash while loop

while [ $select -eq 0 ]; do
 
# read user input
read select
if [ $select -eq 0 ]; then

                echo -e "\n Enter Value greater than $select \n \n"
                        echo "Please select between 1-3 !"
                        echo "1. Apple"
                        echo "2. Ornage"
                        echo "3. Lime"
                        echo -n "Please select [1,2 or 3] : "
                        select=0
else
# bash nested if/else
if [ $select -eq 1 ] ; then
 
        echo "You have selected: Apple"

else                   

        if [ $select -eq 2 ] ; then
                 echo "You have selected: Orange"
        else
         
                if [ $select -eq 3 ] ; then
                        echo "You have selected: Lime"
                else
		echo -e "\n Enter Value less than or eqaul to 3 \n \n"
                        echo "Please select between 1-3 !"
                        echo "1. Apple"
                        echo "2. Ornage"
                        echo "3. Lime"
                        echo -n "Please select [1,2 or 3] : "
                        select=0
                fi   
        fi
fi
fi
done
