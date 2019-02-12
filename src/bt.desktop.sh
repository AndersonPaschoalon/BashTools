#!/bin/bash

function main()
{
	apt_script_list;
}

#script code goes here

function apt_script_list()
{
    echo "bt.desktop.workspace.sh   : define number of desktop workspaces."
    echo "bt.desktop.create-icon.sh : creates a icon for a application."
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
