#!/bin/bash

_print_header_helper1()
{
	local H=$1;
	local h=$2
	local title=$3;
	echo ""
	echo ${H};
	echo ${h} " " ${title}
	echo ${H};
}

_print_header_helper2()
{
	local h=$1;
	local title=$2;
	echo ""
	echo ${h} " " ${title}
}

# print a header
# $1: header type, h1 to h6 (default h1)
# $2: header title to be printed
_print_header()
{

	local type=$1;
	local title=$2;
	local _h1='# ';
	local _h2='@ ';
	local _h3='- ';
	local _H1='###############################################################################';
	local _H2='@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@';
	local _H3='-------------------------------------------------------------------------------';
	local _h4='### ';
	local _h5='@@@ ';
	local _h6='--- ';
	
	
	if [[ "${type}" == "h1" ]]; then
		_print_header_helper1 ${_H1} ${_h1} ${title};	
	elif [[ "${type}" == "h2" ]]; then
		_print_header_helper1 ${_H2} ${_h2} ${title};	
	elif [[ "${type}" == "h3" ]]; then
		_print_header_helper1 ${_H3} ${_h3} ${title};	
	elif [[ "${type}" == "h4" ]]; then
		_print_header_helper2 ${_h4} ${title};	
	elif [[ "${type}" == "h5" ]]; then
		_print_header_helper2 ${_h5} ${title};	
	elif [[ "${type}" == "h6" ]]; then
		_print_header_helper2 ${_h6} ${title};	
	else
		_print_header_helper1 ${_h1} ${_h1} ${title};	
	fi
}


#_print_header ${1} ${2}

