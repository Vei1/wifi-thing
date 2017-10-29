#! /bin/bash
#veil

#Colours
   
   red="\033[1;31m"
   yellow="\033[1;33m"
   blue="\033[1;34m"
   green="\033[1;32m"
   transparent="\e[0m"

   if [[ $EUID -ne 0 ]]; then
        echo -e "\e[1;31mYou don't have admin privilegies, execute the script as root or with sudo""\e[0m"""
        exit 1
fi

if [ -z "${DISPLAY:-}" ]; then
    echo -e "\e[1;31mThe script should be executed inside a X (graphical) session.""\e[0m"""
    exit 1
fi

clear

trap close SIGINT SIGHUP

function close() {
	clear
sudo airmon-ng stop $mon 




	exit
}

function dependencestop() {
  echo -e $red
echo -e " checking dependences"
echo -e "----------------------"
echo 

}

function checkdependences() {
  echo -ne "aircrack-ng........"
  if ! hash aircrack-ng 2>/dev/null; then
    echo -e "\e[1;31mNot installed"$transparent"" 
      exit=1
    
  else
    echo -e "\e[1;32mInstalled!"$transparent""
  fi
}

function dep(){
  dependencestop()
 sleep 1
  checkdependences()
}

dep()


