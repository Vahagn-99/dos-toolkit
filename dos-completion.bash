#!/bin/bash

_dos_autocomplete() {
    local cur prev opts
    COMPREPLY=()
    cur="${COMP_WORDS[COMP_CWORD]}"
    prev="${COMP_WORDS[COMP_CWORD-1]}"

    opts="up down build shell artisan composer npm help"

    if [[ ${COMP_CWORD} -eq 1 ]]; then
        COMPREPLY=( $(compgen -W "${opts}" -- "$cur") )
    else
        case "${COMP_WORDS[1]}" in
            artisan)
                COMPREPLY=( $(compgen -W "migrate migrate:rollback migrate:fresh db:seed cache:clear route:list" -- "$cur") )
                ;;
            composer)
                COMPREPLY=( $(compgen -W "install update dump-autoload require" -- "$cur") )
                ;;
            npm)
                COMPREPLY=( $(compgen -W "install run dev prod build" -- "$cur") )
                ;;
        esac
    fi
}

complete -F _dos_autocomplete dos
