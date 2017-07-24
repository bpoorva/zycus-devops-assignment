Assignment 2:



Write a bash/python script that takes list of hostnames (comma separated) as an argument.

This script, when executed, should connect to all the servers via. SSH (standard port) (assume password-less connectivity) and give a single prompt to the user.

When the user executes a command on this prompt, the script should run the command on all connected servers and display the output.

Make this as efficient as possible, code comments appreciated.





Steps to run the scripts : 

1. Copy scripts to a directory.
2. Give execute permission to the scripts. # chmod 700 generate-keys.sh executecommand.sh
3. Give hostname as parameter . # ./generate-keys.sh 172.45.36.56,190.65.45.78 -> comma-separated hostnames
				# ./executecommand.sh 172.45.36.56,190.65.45.78


Following Optimization can be done :

1. Code in "else" can be written in a function and it can then be called in else.This will ensure reusability
2. Inorder to execute more commands, if-else or switch-case can be introduced.
3. In order to have empty pass-phrase and yes-no prompt default set to yes. "echo /n/n | ..." can be added or -y parameter can be passed.  
4. Argument check can be added in generate-keys.sh similar to executecommand.sh
