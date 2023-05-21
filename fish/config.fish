if status is-interactive
    # Commands to run in interactive sessions can go here
end
function fish_prompt
	echo -n -s (set_color green)"["(prompt_pwd)"]" (set_color normal)" \$ "
end
function fish_right_prompt
	echo "took $CMD_DURATION ms"
end

function fish_greeting
	set abob (whoami)
	echo "hello, $abob"
end

#
# ALIASES
#

# ls-s
function li # ls with adress
	ls -i
end
function lh # show storage used by file 
	ls -lh $argv | cut -d " " -f 5
end
# git-s
function cmt
	git commit -m "$argv"
end
function add
	git add $argv
end
function psh
	git push
end
function dog # DO Git
	git add -A; cmt $argv; psh
end

# other useful things
function fih # Find In History - fih
	history $argv
end

function upd # update system
	sudo pacman -Syu; shutdown
end

function cls # clear and ls
	clear;ls
end
function car # Compile And Run -  car
	gcc $argv && ./a.out
end

# fun
function 西瓜
	yes "西瓜/watermelon/арбуз/󱁇"
end

