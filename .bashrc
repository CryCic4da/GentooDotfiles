# /etc/skel/.bashrc

# This file is sourced by all *interactive* bash shells on startup,
# including some apparently interactive shells such as scp and rcp
# that can't tolerate any output.  So make sure this doesn't display
# anything or bad things will happen !


# Test for an interactive shell.  There is no need to set anything
# past this point for scp and rcp, and it's important to refrain from
# outputting anything in those cases.
if [[ $- != *i* ]] ; then
	# Shell is non-interactive.  Be done now!
	return
fi

#PS1 setup 
PS1="\n\[\e[38;5;231m\]┌─[\[\e[38;5;99m\e[1mLil'Poro\e[1;37m\] :: \e[1;32m\w $\e[38;5;231m]──[\[\e[38;5:99m\]Gentoaster\[\e[38;5;231m\]]\[\e[1;35m\]\[\e[1;37m\]\n\[\e[38;5;381m\]└──╼\[\e[1;35m\] \[\e[00;00m\]"


#Launch Neofetch at the beginning of a session launch
neofetch

#cowthink "Profanity is one language all programmers know best"
