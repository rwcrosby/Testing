#!/bin/bash

lookup_branch() {

    test_val="$1"
    search_string="$2"

    if ( echo "$test_val" | gsed "/$search_string/!{q1}" ) &> /dev/null ; then
        printf "\033[0;32mFound\033[0m\n"
    else
        printf "\033[0;31mNot Found\033[0m\n" 
        is_valid=false
    fi

}

is_valid=true

lookup_branch "test 1" "1"

lookup_branch "test 1" "2"

if [[ $is_valid = true  ]]; then
    printf "Success\n"
else
    printf "Failure\n"
    exit 42
fi