Permissions control WHO can read, write, or execute a file. This is one of the most asked topics in Linux interviews.

# -------------------------------------------------------------------------------------------------------------
chmod 400 file	            # Only owner can read. Nobody else

chmod 755 file	            # Owner: full access. Others: read+execute only

chmod 644 file	            # Owner: read+write. Others: read only

chmod 600 file	            # Only owner can read+write. Nobody else

chmod 777 file	            # Everyone has full access (AVOID in production!)

chmod +x file	            # Adds execute permission so you can run the file

chmod -w file	            # Removes write permission (makes file read-only)

chmod -R 755 dir	        # Applies permission to folder and all files inside

chown user file	            # Changes who OWNS the file

chown user:grp file	        # Changes both owner AND group of the file

chgrp group file	        # Changes only the group (not the owner)
