#!/bin/bash
bold=$(tput bold)
normal=$(tput sgr0)
HEADER='#################################################\n Installing Vim Plugins \n#################################################\n'
DONE='#################################################\n All Done! \n#################################################\n'
clear
while true; do
	clear
	tput cup 0 0 
	printf "${HEADER}"
	printf "\n"
	printf "Sync Plugins\n"
	echo -ne '\n' | vim +'PlugInstall --sync' +qa
	clear
	tput cup 0 0 
	printf "${HEADER}"
	printf "\n"
	printf "Creating new directory for CoC\n"
	echo -ne '\n' | vim +'PlugInstall --sync' +qa
	clear
	tput cup 0 0 
	printf "${HEADER}"
	printf "\n"
	COMPLETE=.complete
	if test -f "$COMPLETE"; then
			tput cup 0 0 
			printf "${HEADER}"
	    printf "CoC extensions already installed\n"
			printf "Update CoC Plugins"
			sleep 3s
			vim +'CocUpdateSync' +qall
			clear
			printf "${HEADER}"
			break
	fi
	printf "Installing CoC plugins.\n"
	printf "\n"
	printf "Installing typescript Language Server.\n${bold}The screen will be blank while this package is installing.${normal}\n"
	sleep 3s
	vim +'CocInstall -sync coc-tsserver' +qall
	clear
	tput cup 0 0 
	printf "${HEADER}"
	printf "\n"
	printf "Finished installing typescript Language Server.\n"
	printf "\n"
	printf "Install json Language Server.\n${bold}The screen will be blank while this package is installing.${normal}\n"
	sleep 3s
	vim +'CocInstall -sync coc-json' +qall
	clear
	tput cup 0 0 
	printf "${HEADER}"
	printf "\n"
	printf "Finished installing json Language Server.\n"
	printf "\n"
	printf "Install sh Language Server.\n${bold}The screen will be blank while this package is installing.${normal}\n"
	sleep 3s
	vim +'CocInstall -sync coc-sh' +qall
	clear
	tput cup 0 0 
	printf "${HEADER}"
	printf "\n"
	touch .complete
	echo "Just a way to ensure you don't have to reinstall the CoC plugins again" > .complete
	printf "${DONE}"
	printf "\n"
	# Set the filename
	#filename='vim_setup.sh'
	# Create an empty file
	#touch $filename
	# Check the file is exists or not
	#if [ -f $filename ]; then
	#   rm vim_setup.sh
	#   echo "$filename has been removed"
	#fi
	sleep 2s
	break
done
