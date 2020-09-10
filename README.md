Server Utils
===

A small repo of thought to be handy server utils.  These utils will take advantage 
of the .env file for non-committed values.  A git post-checkout hook will copy the
.env-dist to .env for you. Below is a list of current utils.

1. disk-space.sh - A command that takes a threshold (default 85) and checks current
disk usage.  It will then attempt to use the mail command to email an alert to
a comma separated list of users from the .env.