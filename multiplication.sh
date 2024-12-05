#!/bin/bash 

# Using list form for loop

# Prompt the user to enter a number
echo "Enter a number:"
read number

# Ask the user if they want a full or partial multiplication table
echo "Do you want a full (1 to 10) or partial table? (f/p)"
read table_choice

if [ "$table_choice" = "f" ]; then
    # Ask the user for the order of the multiplication table
    echo "Do you want to see the multiplication table in ascending or descending order? (a/d)"
    read order

    # Display the full multiplication table in the chosen order
    if [ "$order" = "a" ]; then
        echo "Multiplication table for $number (ascending):"
        for i in {1..10}
        do
            product=$((number * i))
            echo "$number x $i = $product"
        done
    elif [ "$order" = "d" ]; then
        echo "Multiplication table for $number (descending):"
        for i in {10..1}
        do
            product=$((number * i))
            echo "$number x $i = $product"
        done
    else
        echo "Invalid choice. Please enter 'a' for ascending or 'd' for descending."
    fi
elif [ "$table_choice" = "p" ]; then
    # Prompt the user for the start and end of the range
    echo "Enter the start of the range:"
    read start
    echo "Enter the end of the range:"
    read end

    # Ask the user for the order of the multiplication table
    echo "Do you want to see the multiplication table in ascending or descending order? (a/d)"
    read order

    # Display the partial multiplication table in the chosen order
    if [ "$order" = "a" ]; then
        echo "Multiplication table for $number (from $start to $end, ascending):"
        for ((i=start; i<=end; i++))
        do
            product=$((number * i))
            echo "$number x $i = $product"
        done
    elif [ "$order" = "d" ]; then
        echo "Multiplication table for $number (from $start to $end, descending):"
        for ((i=end; i>=start; i--))
        do
            product=$((number * i))
            echo "$number x $i = $product"
        done
    else
        echo "Invalid choice. Please enter 'a' for ascending or 'd' for descending."
    fi
else
    echo "Invalid choice. Please enter 'f' for full or 'p' for partial."
fi


# Use C-Style form for loop 


# Ask the user if they want a full or partial multiplication table
echo "Do you want a full (1 to 10) or partial table? (f/p)"
read table_choice

if [ "$table_choice" = "f" ]; then
    # Ask the user for the order of the multiplication table
    echo "Do you want to see the multiplication table in ascending or descending order? (a/d)"
    read order

    # Display the full multiplication table in the chosen order
    if [ "$order" = "a" ]; then
        echo "Multiplication table for $number (ascending):"
        for ((i=1; i<=10; i++))  
        do
            product=$((number * i))
            echo "$number x $i = $product"
        done
    elif [ "$order" = "d" ]; then
        echo "Multiplication table for $number (descending):"
        for ((i=10; i>=1; i--))  
        do
            product=$((number * i))
            echo "$number x $i = $product"
        done
    else
        echo "Invalid choice. Please enter 'a' for ascending or 'd' for descending."
    fi
elif [ "$table_choice" = "p" ]; then
    # Prompt the user for the start and end of the range
    echo "Enter the start of the range:"
    read start
    echo "Enter the end of the range:"
    read end

    # Ask the user for the order of the multiplication table
    echo "Do you want to see the multiplication table in ascending or descending order? (a/d)"
    read order

    # Display the partial multiplication table in the chosen order
    if [ "$order" = "a" ]; then
        echo "Multiplication table for $number (from $start to $end, ascending):"
        for ((i=start; i<=end; i++))  
        do
            product=$((number * i))
            echo "$number x $i = $product"
        done
    elif [ "$order" = "d" ]; then
        echo "Multiplication table for $number (from $start to $end, descending):"
        for ((i=end; i>=start; i--))  
        do
            product=$((number * i))
            echo "$number x $i = $product"
        done
    else
        echo "Invalid choice. Please enter 'a' for ascending or 'd' for descending."
    fi
else
    echo "Invalid choice. Please enter 'f' for full or 'p' for partial."
fi

         

