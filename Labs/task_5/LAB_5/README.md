Lab 5: The Immortal Process (Systemd Management)
Title: Creating a Self-Healing Service
Difficulty Level: Advanced / Production-Level
Objective: Write a custom system daemon that starts automatically on boot and restarts itself if it crashes (a core SRE requirement).


Environment Setup Commands:

# Create a fragile application that crashes if you send it a specific input
mkdir -p ~/labs/services && cd ~/labs/services
cat << 'EOF' > fragile-app.sh
#!/bin/bash
echo "Starting critical payment processor..."
while true; do
    sleep 2
    echo "Processing payments..."
done
EOF
chmod +x fragile-app.sh



Tasks to Perform:

Create a systemd unit file at /etc/systemd/system/payment-processor.service.

Configure the unit file to execute your fragile-app.sh script.

Add the configuration Restart=always and RestartSec=3 to the service file.

Reload the systemd daemon (systemctl daemon-reload) so it sees your new file.

Start the service and enable it to run on boot.

The Chaos Test: Find the PID of the fragile-app.sh process and violently kill it (kill -9 <PID>).

Immediately check systemctl status payment-processor to watch systemd automatically resurrect it.



Expected Outcome: A background service that physically cannot be kept offline unless properly stopped via systemctl.