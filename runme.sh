#!/bin/bash

function main {

        check $@
        echo "$h"
        echo "$e"



}

function check() {
        local OPTIND opt i
        while getopts "he:" opt; do
                case $opt in
                        h) h=1 ;;
                        e) e=$OPTARG ;;
                        \?) echo  "use an argument please for the love of god" ;;
                esac
        done
}

main $@
exit 0