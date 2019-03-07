#!/bin/bash

if [[ -z $CI ]]; then
    clear
    echo -e "$RED"
    echo -e " ┌─┐ ┌ ┬ ┬ ┌┐  ┬ ┬ ┌─┐ ┌ ┌─┬─┐ ┬ ┬"
    echo -e " │ │ │ │ │ ├┴┐ │ │ │ │ │   │   │ │"
    echo -e " ┘ └─┘ └─┘ └─┘ └─┘ ┘ └─┘   ┴   └─┘$CYAN"
    echo -e "    ___             "
    echo -e "       | _  _ ||_/.|_ "
    echo -e "       |(_)(_)|| \\||_ $ENDCOLOR"
    echo
fi
