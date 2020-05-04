
#! /bin/bash

choice="n"

while [ "$choice" != "Q" ]&&[ "$choice" != "q" ]

do
   clear
   echo "The menu of choice, please make a choice"
   echo " A Create a user account"
   echo " B Delete a user account"
   echo " C Change supplementary group for a user account"
   echo " D Change Intial group for a user account"
   echo " E Change default login shell for a user account"
   echo " F Change account expiration date for a user account"
   echo " Q Quit"

   echo -e "Choice:\c"
   read choice
   echo "You entered $choice"
   sleep 3


if [ "$choice" = "A" ]||[ "$choice" = "a" ]
then
   read -p " Username:" name
   read -p " User's home directory :" directory
   read -p " Default login shell:" shell

  useradd -d $directory -m -s $shell $name

elif [ "$choice" = "B" ]||[ "$choice" = "b" ]
  then
  read -p " Enter the username:" name
   userdel -r $name
elif [ "$choice" = "C" ]||[ "$choice" = "c" ]
   then 
   read -p "Enter a username:" name
   read -p "Enter a group nane:" groupname
    usermod   -G $groupname $name

elif [ "$choice" = "D" ]||[ "$choice" = "d" ]
   then
   read -p "Enter username:" name
   read -p "Enter a groupname:" groupname
   usermod -g $groupname $name

elif [ "$choice" = "E" ]||[ "$choice" = "e" ]
   then  
   read -p "Enter username:" name
   read -p "Enter shell name:" shellname
   usermod -s $shellname $name

elif [ "$choice" = "F" ]||[ "$choice" = "f" ]
  then 
  read -p "Enter username:" name
  read -p "Enter the expiration date:" date
  usermod -e  $date $name
elif [ "$choice" = "Q" ]||[ "$choice" = "q" ]
  then
  exit 1

else

echo " This is a wrong choice"


 fi
done


