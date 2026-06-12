Lab 3: System Service & Process Debugging

Title: The Zombie API and High CPU
Difficulty Level: Advanced
Objective: Identify and gracefully terminate a rogue process, then manage systemd services.
Prerequisites: htop (run sudo apt install htop).
Environment Setup Commands:

```bash
# Create a dummy script that consumes CPU
mkdir -p ~/labs/cpu-troubleshoot && cd ~/labs/cpu-troubleshoot
cat << 'EOF' > rogue-process.sh
#!/bin/bash
while true; do
  echo "Processing data..." > /dev/null
done
EOF
chmod +x rogue-process.sh   
```


Tasks to Perform:

1. Run ./rogue-process.sh & to start the script in the background.

2. Use top or htop to identify the Process ID (PID) of the script consuming high CPU.

3. Use the kill command to send a SIGTERM (graceful termination) to the process. If it doesn't stop, use SIGKILL.

4. Systemd Task: Check the status of the ssh service. Restart it, and then check the last 10 lines of its logs using journalctl.


ANSWER KEY:
1. ./rogue-process.sh &
2. Use top or htop to find the PID.
3. kill <PID>
4. systemctl status ssh
   systemctl restart ssh
   journalctl -u ssh -n 10