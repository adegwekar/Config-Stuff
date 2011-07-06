# .bash_profile	
#
# default for linux users
# Put together in a hurry by PKO 1/26/2001
#
#
#############################################################################
#############################################################################
##     DO NOT MAKE ADDITIONS TO THIS FILE. IF YOU WISH TO CHANGE YOUR      ##
##     ENVIRONMENT, CREATE AND EDIT A .bashrc FILE IN YOUR HOME DIRECTORY. ##
#############################################################################
#############################################################################
#
#
#
if [ -f /usr/local/etc/bashrc.global ] ; then
	. /usr/local/etc/bashrc.global
fi

#
# source the user's local .bashrc file, if it exists
#
#
if [ -f ~/.bashrc ] ; then
	. ~/.bashrc
fi


