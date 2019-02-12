#!/bin/bash

function main()
{
	$arg1=$*;
    if [[ ${arg1} == "--help" ]];
    then
        print_help;
    elif [[ ${arg1} != "" ]];
    then
        lazy_git "${arg1}";
    else
        print_help;
    fi
}

function lazy_git()
{
    arg1=$1;
    git add .;
    git commit -m "${arg1}";
    git push;

}

################################################################################
# Main function
################################################################################
# use --source-only to import this code on another script
if [[ "${1}" != "--source-only" ]];
then
    main "${@}";
fi


