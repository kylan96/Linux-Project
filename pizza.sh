#!/bin/bash
clear

# Creators: Kylan Roberts, Joe Mitchell, Rachid, Byron Davis

#--------- List of Topping Prices ------------
onetop=0.50
twotop=0.75
threetop=1.00
fourtop=1.25
fivetop=2.00 
#--------- List of Cheese Toppings ----------
#cheddar
#mozarella
#feta
#--------- List of Crust Options ------------
thinprice=1.00
stuffprice=2.00
pantossprice=1.00
#--------- Carryout or Delivery Prices -------
deliveryprice=2.00
#----------- Establishing prices for all of our Pizza Sizes ----------------
small=3.00
medium=5.00
large=7.00
big=9.00
#---------- Intro --------------
# ------ BP Spinning Animation--------

#for ((i=0;i<3;i++)); do
#   printf "\r   |  "
#   sleep 0.2
#   printf "\r  ( )  "
#   sleep 0.2
#   printf "\r ( BP )"
#   sleep 0.2
#   printf "\r  ( )  "
#   sleep 0.2
#   printf "\r   |   "
#   sleep 0.2
#  printf  "\r  ( )  "
#   sleep 0.2
#   printf "\r( BP ) "
#done

#  if (( $RANDOM % 2 )); then
#      printf "\r( BP )\n"
#      computer_choice=1
#   else
#      printf "\r( PB )\n"
#      computer_choice=2
#   fi

echo "Welcome to Big Pizza! Home of the best pizza in the world!"
sleep 3
read -p "Who do we have the pleasure of serving today? >> " name
sleep 3
echo "It is our pleasure to serve you $name, let's get you started."
sleep 1 
echo "$name our world famous Big Pizza comes with these toppings."
#------------ List toppings for the world famous big pizza ------------------------
counter=1
toppings=(Pepperoni Sausage Beef Bacon Onions Banana_Peppers Green_Peppers Jalapenos Olives Mushrooms)
echo "Here is the list of toppings for the Big Pizza."
echo "----------------"
for t in ${toppings[@]}
do
echo "$counter. $t"
((counter++))
done
echo "---------"
echo""
 
echo "It also comes with extra cheese, and a cheese filled stuff crust!"
read -p "Would you like to try our world famous Big Pizza? Please type yes or no. >> " answer

if [[ $answer == yes ]] ; then
echo "Alright let's review your order $name." 
echo "Awesome, would you like delivery or carry out?"
echo "Alright $name, you're almost done."
read -p "Would you like your order for pickup or would you like it delivered? Please type pickup or delivery. >>  " order
if [[ $order == pickup ]] ; then
echo "Alright we will review your order to make sure it is correct. "
tax=0.10
total=$(($big + $tax))
echo "So you are getting the world famous BIG pizza with extra cheese for a total of $total."
else
read -p "Please enter a delivery address " address
echo "Alright that delivery address is $address. "
total=$(($big + $tax + $deliveryprice)) 
echo "So $name your total will be $($total)."
fi

read -p "Would you like to place your order $name? Please type yes or no. " answer
if [[ $answer == yes ]] ; then
echo "Alright $name your order will be ready in about 15 minutes. Hope you enjoy!" 
else 
echo "Alright."
fi
#---------- End of if for placing order --------------------
read -p "Would you like to pay with cash or card? " pay
if [[ $pay == card ]] ; then
echo "Alright. Please enter your card information."
read -p "Name on the card. "
read -p "Card number. 12 digit "
read -p "Security code, 3 digit code on the back of card. "
echo "Alright, your order has been placed."
else
echo "Alright. Please have your cash ready!"
fi

#--------- End of if statement for if they want the Big Pizza. 

#-------------- if they want to buid their own pizza -------------------
else 
echo "No problem $name. Let's get started creating your pizza. First you'll choose a size."
read -p "Please choose small, medium, large, or big. >> " pizzasize
#--------- Remember to create another if statement for if they choose no ----------------
echo "Alright so that is a $pizzasize pizza for $smallprice dollars. What would you like on it $name?"
read -p "Would you like any toppings? Please type yes or no. " answer
if [[ $answer == yes ]] ; then
counter=1
toppings=(Pepperoni Sausage Beef Bacon Onions Banana_Peppers Green_Peppers Jalapeno_Peppers Black_Olives Mushrooms)
echo "Here is the list of toppings for your pizza."
echo "----------------"
for t in ${toppings[@]}
do
echo "$counter. $t"
((counter++))
done
echo "---------"
echo""
fi
#---------- end of toppings if statement ---------------
read -p "How many toppings would you like? >> " selection
if [ $selection -eq 1 ] ; then
read -p "Please type the topping you would like on your pizza. " top
echo "Awesome so you want $top on your pizza for $onetop."
subtotal=$(( $onetop + $pizzasize ))
elif [ $selection -eq 2 ] ; then
read -p "Please type the toppings you would like on your pizza. " top
echo "Awesome so you want $top on your pizza for $twotop."
subtotal=$(( $twotop + $pizzasize ))
elif [ $selection -eq 3 ] ; then
read -p "Please type the toppings you would like on your pizza. " top
echo "Awesome so you want $top on your pizza for $threetop."
subtotal=$(( $threetop + $pizzasize ))
elif [ $selection -eq 4 ] ; then
read -p "Please type the toppings you would like on your pizza. " top
echo "Awesome so you want $top on your pizza for $fourtop."
subtotal=$(( $fourtop + $pizzasize ))
elif [ $selection -ge 5 ] ; then
read -p "Please type the toppings you would like on your pizza. " top
echo "Awesome so you want all of these toppings on your pizza."
subtotal=$(( $fivetop + $pizzasize ))
fi
#---------- end of topping selection if --------------------
echo "Now let's choose some cheeses."
counter=1
cheeseoptions=(Cheddar Mozeralla Feta)
echo "Here is the list of cheese options for your pizza."
echo "----------------"
for t in ${cheeseoptions[@]}
do
echo "$counter. $t"
((counter++))
done
echo "---------"
echo""
read -p "Please choose a number 1-3 for your cheese >> " selection
if [ $selection -eq 1 ] ; then
echo "Great you have chosen ${cheeseoptions[0]} for your pizza."
elif [ $selection -eq 2 ] ; then
echo "Great you have chosen ${cheeseoptions[1]} for your pizza. "
elif [ $selection -eq 3 ] ; then
echo "Great you have chosen ${cheeseoptions[2]} for your pizza.  "
fi
#------------ End of cheese selection if ------------------
#------------ Crust Options if statement  -----------------
echo "Alright $name last thing. Crust options!!"
echo "Here are our different crusts."
crustoptions=(Thin Stuffed Hand_Tossed)
echo "Here is the list of crust options for your pizza."
echo "----------------"
counter=1
for t in ${crustoptions[@]}
do
echo "$counter. $t"
((counter++))
done
echo "---------"
echo""
read -p "Please choose a number 1-3 for your crust >> " selection
if [ $selection -eq 1 ] ; then
echo "Great you have chosen ${crustoptions[0]} for your pizza."
elif [ $selection -eq 2 ] ; then
echo "Great you have chosen ${crustoptions[1]} for your pizza."
elif [ $selection -eq 3 ] ; then
echo "Great you have chosen ${crustoptions[2]} for your pizza."
fi
 
#------------ Carry out or Delivery ---------
echo "Alright $name, you're almost done."
read -p "Would you like your order for pickup or would you like it delivered? " order
if [[ $order == pickup ]] ; then
echo "Alright we will review your order to make sure it is correct. "
tax=1
total=$(( $subtotal + $tax ))
echo "So you are getting a $pizzasize pizza with $top with cheese and a crust for a total of $subtotal dollars plus a tax of $tax dollar which would be a total of $total dollars."
else
read -p "Please enter a delivery address " address
echo "Alright that delivery address is $address. "
total=$(( $subtotal + $tax + $deliveryprice ))
fi
#-------------end of carryout or pick up if------------------------
read -p "Would you like to place your order $name? Please type yes or no. " answer
if [[ $answer == yes ]] ; then
echo "Alright $name your order will be ready in about 15 minutes. Hope you enjoy!" 
else 
echo "Alright."
fi
#---------- End of if for placing order --------------------
read -p "Would you like to pay with cash or card? " pay
if [[ $pay == card ]] ; then
echo "Alright. Please enter your card information."
read -p "Name on the card. "
read -p "Card number. 12 digit "
read -p "Security code, 3 digit code on the back of card. "
echo "Alright, your order has been placed."
else
echo "Alright. Please have your cash ready!"
fi
#---------------- End of the first small if loop ---------------
fi
