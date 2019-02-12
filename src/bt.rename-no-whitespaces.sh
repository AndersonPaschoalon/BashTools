#!/bin/bash


#!/bin/bash

function main()
{
    if [[ "${1}" != "--help" ]];
    then
        rename_all_files_dirs;
    else
        help_function
    fi
}

#script code goes here
function rename_all_files_dirs()
{
    echo "Replacing all blank spaces in the files and directories names at " `pwd`
    find -name "* *" -type d | rename 's/ /_/g'    # do the directories first
    find -name "* *" -type f | rename 's/ /_/g'
}

function help_function()
{
    echo "This scripts replaces all blank spaces on the names of directories and files with "_". "
    echo "Usage:";
    echo "    bt.rename-no-whitespace.sh        : execute the script."
    echo "    bt.rename-no-whitespace.sh --help : display this help manu."

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
