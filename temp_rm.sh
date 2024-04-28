#!/usr/bin/env bash
# This script create a function called <rrm> that store a file in a recycle bin at the home directory
# before deleting it.


rrm() {
	if [ "$1" == "--help" ]; then
		# Display help message
		echo "Usage: rrm [OPTIONS] [FILES]"
		echo "OPTIONS:"
		echo "  --list        List contents of the recycle bin"
		echo "  --restore     Restore a file from the recycle bin"
		echo "  --empty       Empty the recycle bin"
		echo "FILES:          Files to be removed or restored"
		return
	fi
	if [ "$1" == "--list" ]; then
        # List contents of the recycle bin
        ls -l ~/Recycle_Bin
        return
    fi

    if [ "$1" == "--restore" ]; then
        # Restore files from the recycle bin
        if [ -z "$2" ]; then
            echo "Usage: rrm --restore <file>"
            return 1
        fi
        if [ -e ~/Recycle_Bin/"$2" ]; then
            mv ~/Recycle_Bin/"$2" ./
            echo "Restored '$2' from recycle bin"
        else
			echo "rrm --restore: cannot restore ~/Recycle_Bin/\"$2\": No such file or directory"
        fi
        return
    fi

    if [ "$1" == "--empty" ]; then
        # Empty the recycle bin
        rm -rf ~/Recycle_Bin/*
        echo "Recycle bin emptied"
        return
    fi

	flag=0
	# check if Recycle_Bin directory exists
	if ! [ -d "$HOME/Recycle_Bin/" ]; then 
		mkdir "$HOME/Recycle_Bin/"
	fi
	for arg in "$@"; do
		flag=1
		if [ -e "$arg" ]; then
			mv "$arg" "$HOME/Recycle_Bin/"
			echo "$arg removed successfully"
		else
			echo "rrm: cannot remove \"$arg\": No such file or directory"
		fi
	done
	# if no file is provided
	if [ "$flag" -eq 0 ]; then
		echo "rrm: missing operand"
	fi
}
rrm --help
rrm --list
rrm kunle
echo "rrm successfully installed"
