#!/bin/bash

#----------- Establishing prices for all of our Pizza Sizes and Toppings ----------------
meat=(Pepporini Steak Bacon Sausage )
veggies= (  )
cheeses= (  )
crust= (   )


#---------- Intro --------------
echo "Welcome to Big Pizza! Home of the best pizza in the world!"
sleep 3
read -p "Who do we have the pleasure of serving today? >> " name
sleep 3
echo "Nice to meet you $name, let's get you started."
sleep 1 
read -p "Would you like to try our world famous Big Pizza? Please type yes or no. >> " answer
if [[ $answer == yes ]] ; then 
echo "Awesome, would you like delivery or carry out?"
else 
echo "No problem, let's start off with size. What size pizza would you like?"
read -p "Please choose small, medium, large, or big. >> " pizzasize
fi

if [[ $pizzasize == small ]] ; then
echo "Alright so that is a small pizza. What would you like on it $name?" 
echo "Please choose a meat first.
#List toppings here

elif [[ $pizzasize == medium ]] ; then
echo "Alright so that is a medium pizza. What would you like on it $name?" 
echo "Please choose a meat first.

elif [[ $pizzasize == large ]] ; then
echo "Alright so that is a large pizza. What would you like on it $name?" 
echo "Please choose a meat first.

elif [[ $pizzasize == big ]] ; then
echo "Alright so that is a big pizza. What would you like on it $name?" 
echo "Please choose a meat first.

else
echo "Please enter a valid choice."" 
fi


#------- Creating Arrays for Toppings, Pizza Sizes------------

