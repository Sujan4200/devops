#########################
# VAULT BITWARDEN STACK #
#########################

--------
# Steps:
--------

# Prerequisites:
----------------
 - Have Docker Installed on machine.
 - Initiated a swarm cluster, with worker node(s) according to the requirements.


# Deploy:
---------

  1. Configure the 'vault.env' file (Make sure to edit these parameters):
  -----------------------------------------------------------------------
	
	DATABASE_URL=

	WEBSOCKET_ENABLED=
	WEBSOCKET_ADDRESS=
	WEBSOCKET_PORT=

	ADMIN_TOKEN=

	INVITATIONS_ALLOWED=
	INVITATION_ORG_NAME=

	DOMAIN=

	SMTP_HOST=
	SMTP_FROM=
	SMTP_FROM_NAME=
	SMTP_PORT=
	SMTP_USERNAME=
	SMTP_PASSWORD=


  2. Configure 'database.env' file:
  ---------------------------------
	- Edit the variables inside the database.env file for database configurations.


  3. Configure Mount Points:
  --------------------------
	- Execute the script - 'mounts.sh'
		# sudo chmod +x mounts.sh
		# ./mounts.sh

	
  4. Deploy the stack:
  --------------------
	- Execute the script - 'deploy.sh'
		# sudo chmod +x deploy.sh
		# ./deploy.sh
