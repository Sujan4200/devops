#############################
# ELK Stack in Docker Swarm #
#############################

--------
# Steps:
--------

# Prerequisites:
----------------
 - Have Docker Installed on machine.
 - Initiated a swarm cluster, with worker node(s) according to the requirements.

# Deploy:
---------
 - Goto the directory:

  1. Create secrets for elasticsearch username and password:
    
    - Execute the script 'secret.sh':
    ---------------------------------
	# sudo chmod +x secret.sh
	# ./secret.sh

  
  2. Make sure to change the following parameter in 'elk-stack.yml' file, if you have configured worker nodes.

      placement:
        constraints: [node.role == manager]  	-> Default value(in file), for a single-node swarm cluster.

      placement:
        constraints: [node.role == worker]	-> If you have configured hosts for worker nodes.


  3. Deploy the stack:

    - Execute the script 'deploy.sh':
    ---------------------------------
	# sudo chmod +x deploy.sh
	# ./deploy.sh



