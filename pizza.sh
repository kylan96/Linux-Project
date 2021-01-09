#!/bin/bash
clear

# Creators: Kylan Roberts, Joe Mitchell, Rachid, Byron Davis

#--------- List of Topping ------------
#------ List of Cheese Toppings ----------
#cheddar
#mozarella
#feta
#--------- List of Crust Options ------------
stuffprice=2.00
#--------- Carryout or Delivery Prices -------
deliveryprice=2.00
#----------- Establishing prices for all of our Pizza Sizes ----------------
small=3.00
medium=5.00
large=7.00
big=9.00
#---------- Intro --------------
# ------ BP Spinning Animation--------
for ((i=0;i<3;i++)); do
printf "\r   |  "
sleep 0.2
printf "\r  ( )  "
sleep 0.2
printf "\r ( BP )"
sleep 0.2
printf "\r  ( )  "
sleep 0.2
printf "\r   |   "
sleep 0.2
printf  "\r  ( )  "
sleep 0.2
printf "\r( BP ) "
done

if (( $RANDOM % 2 )); then
printf "\r( BP )\n"
computer_choice=1
else
printf "\r( PB )\n"
computer_choice=2
fi

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

if [[ $answer == y* ]] ; then
echo "Alright $name, you're almost done."
read -p "Would you like your order for pickup or would you like it delivered? Please type pickup or delivery. >>  " order
if [[ $order == pickup ]] ; then
echo "Alright we will review your order to make sure it is correct. "
echo "So you are getting the world famous BIG pizza with extra cheese for a total of..."
subtotal=19.00
sleep 2
printf "$"; echo "scale=2; 10/100*$subtotal+$subtotal" | bc -l
echo ""
echo "-----" 
else
read -p "Please enter a delivery address " address
echo "Alright that delivery address is $address. >> "
echo "So $name your total will be...."
subtotal=19.00
sleep 2
printf "$"; echo "scale=2; 10/100*$subtotal+$subtotal+$deliveryprice" | bc -l
fi

read -p "$name would you like to place your order? >> " answer
if [[ $answer == yes ]] ; then
echo "Alright $name your order will be ready in about 15 minutes. Hope you enjoy!"
else
echo "Alright, please create your own pizza."
fi
#--------- End of if statement for if they want the Big Pizza. 

#-------------- if they want to buid their own pizza -------------------
else 
echo "No problem $name. Let's get started creating your pizza. First you'll choose a size."
read -p "Please type small, medium, large, or big. >> " pizzasize
if [[ $pizzasize == small ]]; then
subtotal=3.00
elif [[ $pizzasize == medium ]]; then
subtotal=5.00
elif [[ $pizzasize == large ]]; then
subtotal=7.00
elif [[ $pizzasize == big ]]; then
subtotal=9.00
else 
subtotal=5.00
echo "We will put you down for a small."
fi
#--------- Remember to create another if statement for if they choose no ----------------
echo "So that is a $pizzasize pizza. What would you like on it $name?"
read -p "Would you like any meat or veggie toppings? Please type yes or no. " answer
if [[ $answer == y* ]] ; then
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
read -p "How many toppings would you like? >> " selection
if [ $selection -eq 1 ] ; then
read -p "Please type the topping you would like on your pizza. " top
echo "Awesome so you want $top on your pizza for $onetop."
topprice=0.25
elif [ $selection -eq 2 ] ; then
read -p "Please type the toppings you would like on your pizza. " top
echo "Awesome so you want $top on your pizza for $twotop."
topprice=0.50
elif [ $selection -eq 3 ] ; then
read -p "Please type the toppings you would like on your pizza. " top
echo "Awesome so you want $top on your pizza for $threetop."
topprice=0.75
elif [ $selection -eq 4 ] ; then
read -p "Please type the toppings you would like on your pizza. " top
echo "Awesome so you want $top on your pizza for $fourtop."
topprice=1.00
elif [ $selection -ge 5 ] ; then
read -p "Please type the toppings you would like on your pizza. " top
echo "Awesome so you want all of these toppings on your pizza."
topprice=1.25
fi
else 
echo "Alright $name let's move on."
topprice=0.00
fi
#---------- end of toppings if statement ---------------

#---------- end of topping selection if --------------------
echo "Now let's choose some cheeses."
counter=1
cheeseoptions=(Cheddar Mozzarella Feta)
echo "Here is the list of cheese options for your pizza."
echo "----------------"
for t in ${cheeseoptions[@]}
do
echo "$counter. $t"
((counter++))
done
echo "---------"
echo""
echo "Please choose a number 1-3 for your cheese. >>" 
read cheese
case $cheese in
1) echo "You chose Cheddar.";;
2) echo "You chose Mozzarella.";;
3) echo "You chose Feta.";;
*) echo "We will just put you with mozzarella, the cheese of all pizzas!";; 
esac

#------------ End of cheese case------------------
#------------ Crust Options if statement-----------------
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
echo "Please choose a number 1-3 for your cheese. >>" 
read crust
case $crust in
1) echo "Alright, so a thin crust!";;
2) echo "Alright, stuffed crust.";;
3) echo "Alright original hand tossed. Nice choice";;
*) echo "Alright $name, we will put you down for our traditional crust.";; 
esac
#fi
 
#------------ Carry out or Delivery ---------
echo "Alright $name, you're almost done."
echo "Would you like your order for pickup or would you like it delivered? "
read -p "Type pickup or delivery" order
if [[ $order == pickup ]] ; then
echo "Let's review that order."
echo "So $name that's a $pizzasize pizza with $top with $cheese cheese and a $crust crust."
echo "Your total will be....."
sleep 2
printf "$"; echo "scale=2; 10/100*$subtotal+$subtotal+$topprice" | bc -l
echo ""
echo "-----" 
else
read -p "Please enter a delivery address >> " address
echo "Alright that delivery address is $address. "
echo "So $name that's a $pizzasize pizza with $top with $cheese cheese and a $crust crust."
echo "Your total will be...."
printf "$"; echo "scale=2; 10/100*$subtotal+$topprice+$subtotal+$deliveryprice" | bc -l
echo ""
echo "-----" 
fi


#-------------end of carryout or pick up if------------------------
read -p "Would you like to place your order $name? Please type yes or no. " answer
if [[ $answer == y* ]] ; then
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

#---------------- End of executable ---------------
fi
