######################################
# Prometheus/Grafana in Docker Swarm #
######################################

--------
# Steps:
--------

# Prerequisites:
----------------
 - Have Docker Installed on machine.
 - Initiated a swarm cluster, with worker node(s) according to the requirements.

# Deploy:
---------
 - Goto the directory and follow these steps:

  1. Make sure to change the following parameter in 'monit-stack.yml' file, if you have configured worker nodes.

      placement:
        constraints: [node.role == manager]     -> Default value(in file), for a single-node swarm cluster.

      placement:
        constraints: [node.role == worker]      -> If you have configured hosts for worker nodes.

  2. Create mount points:

    - Execute the script mounts.sh:
    -------------------------------
	# sudo chmod +x mounts.sh
	# ./mounts.sh

  3. Deploy the stack:

    - Execute the script 'deploy.sh':
    ---------------------------------
        # sudo chmod +x deploy.sh
        # ./deploy.sh
