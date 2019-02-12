#!/bin/bash
source ./bt.src.sh

function main()
{
    arg1=$1
	_print_header "h4" ${arg1}
}

################################################################################
# Main function
################################################################################
# use --source-only to import this code on another script
if [[ "${1}" != "--source-only" ]];
then
    main "${@}";
fi