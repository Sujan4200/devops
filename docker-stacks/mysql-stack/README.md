######################
# MYSQL DOCKER SWARM #
######################

--------
# Steps:
--------

# Prerequisites:
----------------
 - Have Docker Installed on machine.
 - Initiated a swarm cluster, with worker node(s) according to the requirements.


# Deploy:
---------

  1. Configure environment variables in 'mysql-stack' file:
  -----------------------------------------------------------


  2. Configure Mount Points:
  --------------------------
	- Execute the script - 'mounts.sh'
		# sudo chmod +x mounts.sh
		# ./mounts.sh

	
  4. Deploy the stack:
  --------------------
	- Execute the script - 'deploy.sh'
		# sudo chmod +x deploy.sh
		# ./deploy.sh
