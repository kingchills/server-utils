Server Utils
===

A small repo of thought to be handy server utils.  These utils will take advantage 
of the .env file for non-committed values.  Post clone you must copy .env-dist to .env
to take advantage of the non committed values. Currently, any utils that are to be used, 
will need to be set up in a cron of some sort.



####Utils
1. `disk-space.sh` - A command that takes a threshold (default 85) and checks current
disk usage.  It will then attempt to use the mail command to email an alert to
a comma separated list of users from the .env.
1. `dir-clean.sh` - A command that takes two inputs, the directory to operate on, and the
number of files to keep.  This command uses `ls -t` to sort the files by time, and then
the threshold minus total number of files to delete.


####TODOs
1. Set up single access point script that will call all other enabled scripts.
2. Set up install script to create .env files, and add single access script to cron
