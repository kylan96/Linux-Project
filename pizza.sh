#!/bin/bash

#----------- Establishing prices for all of our Pizza Sizes and Toppings ----------------

#meat=(Pepporini Bacon Sausage Ham ) ( $4.99 each)
#veggies= ( Black Olives, Green Peppers, Mushrooms, Spinach, Onions, )
#cheeses= ( Cheese or Extra Cheese ) ( Extra Cheese will be an additional $2.00)
#crust= ( Thin Crust, Stuffed Crust, Garlic Hand Tossed, Hand Tossed ) (Extra $1.50 for Stuffed Crust)


#---------- Intro --------------
echo "Welcome to Big Pizza! Home of the best pizza in the world!"
sleep 3
read -p "Who do we have the pleasure of serving today? >> " name
sleep 3
echo "Nice to meet you $name, let's get you started."
sleep 1 
echo "Our Big Pizza comes with all of our toppings, extra cheese, and a cheese filled stuff crust."
read -p "Would you like to try our world famous Big Pizza? Please type yes or no. >> " answer

if [[ $answer == yes ]] ; then 
echo "Awesome, would you like delivery or carry out?"

#--------- Continuing if statement for if they want the Big Pizza. 
else 
echo "No problem, let's start off with size. What size pizza would you like?"
read -p "Please choose small, medium, large, or big. >> " pizzasize
fi

if [[ $pizzasize == small ]] ; then
echo "Alright so that is a small pizza. What would you like on it $name?" 
echo "Please choose a meat first."
#List toppings here

elif [[ $pizzasize == medium ]] ; then
echo "Alright so that is a medium pizza. What would you like on it $name?" 
echo "Please choose a meat first."

elif [[ $pizzasize == large ]] ; then
echo "Alright so that is a large pizza. What would you like on it $name?" 
echo "Please choose a meat first."

elif [[ $pizzasize == big ]] ; then
echo "Alright so that is a big pizza. What would you like on it $name?" 
echo "Please choose a meat first."

else
echo "Please enter a valid choice." 
fi

#-------------- Showing Toppings here ----------------------
echo "Which meat topping(s) would you like $name?"






#------- Creating Arrays for Toppings, Pizza Sizes------------

