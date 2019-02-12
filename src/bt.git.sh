#!/bin/bash

function main()
{
	apt_script_list;
}

#script code goes here

function apt_script_list()
{
    echo "bt.git.commitall.sh   : "
    echo "bt.git.gitkeep.sh     : "
    echo "bt.git.large-files.sh : "
}

#script code ends here

################################################################################
# Main function
################################################################################
# use --source-only to import this code on another script
if [[ "${1}" != "--source-only" ]];
then
    main "${@}";
fi
