Data engineers constantly search for config files, log files, large files, or recently changed files. These commands find anything instantly.

# -------------------------------------------------------------------------------------------------------------

find /path/to/search -name "filename.txt"	# Find files by name (replace with actual path and filename)  or
find / -name 'f.csv'                        # Search entire system for f.csv (can be slow, use specific paths when possible)

find /path/to/search -type f -size +100M	# Find files larger than 100MB

find /path/to/search -type f -mtime -7	    # Find files modified in the last 7 days
find . -mtime -7                            # Find files modified in the last 7 days in the current directory

find . -type f -name '.log'	                            # Finds only files (not folders)

find /path/to/search -type f -name "*.log"	        # Find all log files

find /path/to/search -type f -user username	        # Find files owned by a specific user (replace with actual username)

find /path/to/search -type f -group groupname	    # Find files owned by a specific group (replace with actual group name)

find /path/to/search -type f -name "*.csv" -exec head -n 5 {} \;	# Find CSV files and show the first 5 lines of each

find /path/to/search -type f -name "*.log" -exec tail -n 10 {} \;	# Find log files and show the last 10 lines of each

which python3	        # Shows the full path of a command

whereis java	        # Shows path of binary + manual pages

grep 'X' file	        # Find lines containing X	grep ERROR log.txt

Note: find is most powerful when combined with actions: 'find /tmp -mtime +7 -type f -delete' deletes all files older than 7 days. 

sudo 