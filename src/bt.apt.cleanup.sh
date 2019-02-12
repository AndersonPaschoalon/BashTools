#!/bin/bash
# done

function main()
{
    apt_clean;
}

function apt_clean()
{
	sudo apt-get clean
	sudo apt-get clean up
	sudo apt-get autoclean
	sudo apt-get autoremove
	sudo apt-get -f install
	sudo apt-get autoremove
	sudo apt-get clean
	sudo apt-get clean up
	sudo apt-get autoclean
}


################################################################################
# Main function
################################################################################
if [[ "${1}" != "--source-only" ]];
then
    main "${@}";
fi


