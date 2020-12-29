#!/bin/bash
clear
# Creators: Kylan Roberts, Joe Mitchell, Rachid, Byron Davis

#--------- List of Meat Toppings ------------
Pepperoni=1.00
#Sausage
#Beef
#Ham
#Bacon 
#Salami
#--------- List of Veggie Toppings ----------
Onions=1.00
#Tomatoes
#Banana Peppers
#Green Peppers
#Jalapeno Peppers
#Black Olives
#Mushrooms
#--------- List of Cheese Toppings ----------
#Cheddar
#Mozerella
#Feta Cheese
#--------- List of Pizza Sauce Options --------
#--------- List of Crust Options ------------
#Thinned
#Stuffed
#Pan Tossed
#--------- Carryout or Delivery Prices -------
#Carryout
#Delivery
#----------- Establishing prices for all of our Pizza Sizes ----------------
#small
#medium
#large
#big



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
#--------- Remember to create another if statement for if they choose no ----------------
echo "Alright so that is a small pizza. What would you like on it $name?"
read -p "Would you like a meat topping? " answer
if [[ $answer == yes ]] ; then
counter=1
meatoptions=(Pepperoni Sausage Beef Ham Bacon Salami)
echo "Here is the list of meat options for your pizza."
echo "----------------"
for t in ${meatoptions[@]}
do
echo "$counter. $t"
((counter++))
done
echo "---------"
echo""
read -p "Please choose a number 1-6 >> " selection
if [ $selection -eq 1 ] ; then
echo "Great you have chosen ${meatoptions[0]}. Nice!"
fi
else 
echo  "Alright $name, on to veggies."
fi


# Choosing a vegetable option---------------
#veggietoppings=( 
#-----End of the first small if loop ---------------

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


#------- Choosing Carryout or Delivery ------------

