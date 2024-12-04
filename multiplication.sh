#!/bin/bash

# Using list form for Loop

# Prompt the user to enter a number
echo "Enter a number:"
read number

# Prompt the user to choose the order of the muliplication table 

echo "Do you want to see the multiplication table in ascending or descending order"
read order

# Display the multiplication table for the entered number in the chosen order
if [ "$order" = "a" ]; then
	echo "Multiplication table for the $number (ascending):"
	for i in {1..10}
	do
		product=$((number *i))
		echo "$number x $i = $product"
	done
elif [ "$order"  = "d" ]; then 
	echo "Multiplication table for $number (descending):"
	for i in {10..1}
	do
		product=$((number * i))
		echo "$number x $i = $product"
	done
else echo "Invalid choice. Please enter 'a' for ascending or 'd' for decending" 
fi

# using C-Style form for Loop


# Prompt the user to choose the order of the muliplication table

echo "Do you want to see the multiplication table in ascending or descending order"
read order

# Display the multiplication table for the entered number in the chosen order
if [ "$order" = "a" ]; then
        echo "Multiplication table for the $number (ascending):"
	for ((i=1; i<=10; i++))
        do
                product=$((number *i))
                echo "$number x $i = $product"
	done
elif [ "$order"  = "d" ]; then
        echo "Multiplication table for $number (descending):"
	for ((i=10; i>=1; i--))
        do
                product=$((number * i))
                echo "$number x $i = $product"
        done
else echo "Invalid choice. Please enter 'a' for ascending or 'd' for decending"
fi





