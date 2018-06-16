#!/bin/bash
#
# cbman - clipboard manager
# allows joining multiple copied text for a final pase

board_file=~/.cbman_board

print_help(){
    cat << _EOF_
        cbman - clipboard manager
        usage: cbman [-c] | [-a STRING...] | [-l] | [-p] | [-r]
        cbman board file located at: ~/.cman_board
        You can change the cbman board file in the cbman.sh script file
        
        -c              append current clipboard to the cbman board
        -a STRING...    append STRING(s) to the cbman board.
        -l              prints the contents of cbman board to stdout
        -p              retrieve the cbman board into clipboard
        -r              reset the cbman board
_EOF_
}

if (( $# < 1 )); then
    echo "Invalid arguments, see -h for help" >&2
    exit 1
fi

case $1 in
    -h | --help)
        print_help
        ;;
    -c)
        echo -n $(xclip -o) >> $board_file 
        echo -n " " >> $board_file
        ;;
    -a)
        while [[ -n $2 ]]; do
            echo -n "$2" >> $board_file
            echo -n " " >> $board_file
            shift
        done
        ;;
    -l)
        cat $board_file
        ;;
    -p)
        xclip -i -selection "clipboard" $board_file
        ;;
    -r)
        cat /dev/null > $board_file
        ;;
    *)
        echo "Invalid arguments, see -h for help" >&2
        ;;
esac
