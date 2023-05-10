if status is-interactive
    # Commands to run in interactive sessions can go here
end
function fish_prompt
	echo -n -s (set_color cyan)"["(prompt_pwd)"]" (set_color normal)" \$ "
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
	ls -i $argv
end
function du # show storage used by file 
	du -h $argv
end
# git-s
function cmt
	git commit -m "$argv"
end
function ada
	git add -A
end
function psh
	git push
end
function dog # DO Git
	ada; cmt $argv; psh
end

function fih # Find In History - fih
	history $argv
end

function upd # update system
	sudo pacman -Syu --noconfirm; shutdown
end

function 西瓜
	yes "西瓜/watermelon/арбуз/󱁇"
end

function cls
	clear;ls
end
