Lab 4: Network Port Troubleshooting ("The Silent Service")

Title: Is the Port Open?
Difficulty Level: Intermediate → Advanced
Objective: Master networking commands (ss, curl, nc) to verify if a service is actively listening and reachable, which is step one of any microservice connectivity outage.
Prerequisites: Standard WSL environment. (Ensure netcat is installed: sudo apt install netcat-openbsd).
Environment Setup Commands:
# Start a simple background web server on port 8080
mkdir -p ~/labs/networking && cd ~/labs/networking
echo "Welcome to the internal API" > index.html
python3 -m http.server 8080 &




Tasks to Perform:

Your monitoring system says a service is running on this machine, but you don't know the port. Use the ss (socket statistics) command to list all currently listening TCP ports and their associated processes. Find the python process.

Once you confirm it is listening on 8080, use curl to fetch the HTTP headers ONLY (do not download the page body) to verify it returns a 200 OK.

Simulate a database connection check. Use nc (Netcat) to scan port 8080 and print whether the connection succeeded without actually sending any data.

Kill the background python process cleanly using pkill or by finding its PID.

Expected Outcome: You successfully query the listening ports, fetch HTTP headers, ping the TCP port via Netcat, and terminate the server.
Validation Steps:

ss -tulpn | grep 8080 should show the Python process.

curl -I http://localhost:8080 should output HTTP/1.0 200 OK.

nc -zv localhost 8080 should output Connection to localhost 8080 port [tcp/http-alt] succeeded!
Common Mistakes: Forgetting sudo with ss -tulpn (you can't see process names without root). Using ping to test a specific port (ping only tests ICMP/IP routing, not application ports).