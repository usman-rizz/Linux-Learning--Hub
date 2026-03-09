As a data worker, you connect to remote servers, transfer files, and test network connections daily. These commands are essential for cloud work.

# -------------------------------------------------------------------------------------------------------------
ssh username@hostname	                            # Connect to a remote server (replace with actual username and hostname)

scp localfile.txt username@hostname:/remote/path/	# Copy a local file to a remote server (replace with actual paths)

scp username@hostname:/remote/path/remotefile.txt /local/path/	   # Copy a remote file to your local machine (replace with actual paths)

scp -r localdir username@hostname:/remote/path/	                   # Copy a local directory to a remote server (replace with actual paths)

scp -r username@hostname:/remote/path/remotedir /local/path/  # Copy a remote directory to your local machine (replace with actual paths)

ping hostname	            # Test network connection to a server (replace with actual hostname)

traceroute hostname	        # Trace the route packets take to a server (replace with actual hostname)   

netstat -tuln	            # Show active network connections and listening ports

ifconfig	                # Show network interfaces and IP addresses

ip addr show	            # Alternative to ifconfig for showing network interfaces and IP addresses

curl http://hostname	    # Test HTTP connection to a server (replace with actual hostname)

curl -I http://hostname	    # Show HTTP response headers (replace with actual hostname)

curl -X POST http://hostname/api	    # Test POST request to a server API (replace with actual hostname and API endpoint)