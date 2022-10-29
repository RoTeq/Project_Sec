#!/bin/bash

function hi() {
	local OPTIND opt i
	while getopts "he:" opt; do
		case $opt in
			h) echo hello ;;
			e) echo hello $OPTARG ;;
			\?)echo  "use an argument please for the love of god" ;;
		esac
	done
}


hi $@
