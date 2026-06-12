Lab 2: Financial Backend User & Permission Isolation

Title: Secure Deployment Directory Setup
Difficulty Level: Intermediate
Objective: Configure strict ownership and permissions using users, groups, chmod, and chown for a multi-tenant environment.
Prerequisites: sudo privileges.
Environment Setup Commands:
    
```bash
sudo mkdir -p /opt/banking-api/config
sudo touch /opt/banking-api/config/db-credentials.yml
sudo touch /opt/banking-api/app.jar
```
Tasks to Perform:

Tasks to Perform:

1. Create a new group named app-deployers.

2. Create a user named release-bot and assign them to the app-deployers group.

3. Change the group ownership of the /opt/banking-api directory (and everything inside it) to app-deployers.

4. Secure the db-credentials.yml file so that the owner has read/write, the group has read-only, and others have zero access.

5. Set the permissions of app.jar so anyone can execute it, but only the owner can write to it.

ANSWER KEY:

1. sudo groupadd app-deployers

2. sudo useradd -G app-deployers release-bot

3. sudo chown -R :app-deployers /opt/banking-api

4. sudo chmod 640 /opt/banking-api/config/db-credentials.yml

5. sudo chmod 755 /opt/banking-api/app.jar