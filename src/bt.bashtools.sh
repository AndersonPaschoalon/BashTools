#!/bin/bash

function main()
{
	# main procedure
}

#script code goes here
function print_info()
{
    echo "Use 'source bt.bashtools.sh' to source all the bash tools script"

}

#script code ends here

################################################################################
# Main function
################################################################################
# use --source-only to import this code on another script
if [[ "${1}" != "--source-only" ]];
then
    main "${@}";
else
    source bt.apt.cleanup.sh --source-only;
    source bt.desktop.workspaces --source-only;
    source bt.echo.blue.sh  --source-only;
    # todo
fi

