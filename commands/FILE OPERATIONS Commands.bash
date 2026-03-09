File operations, these commands let you work with files  the most common daily task for any data worker is to create, copy, move, and delete files. These commands are essential for managing your data and organizing your work.


# -------------------------------------------------------------------------------------------------------------


touch filename.txt	            # Create an empty file named filename.txt

cp source.txt destination.txt	# Copy source.txt to destination.txt

mv oldname.txt newname.txt	    # Rename oldname.txt to newname.txt 

rm filename.txt	                # Delete filename.txt

rm -r directory_name	        # Delete a directory and its contents (use with caution)

rmdir dir	                    # Deletes a folder (only if it's empty)

rm -rf dir	                    # Permanently deletes a folder and everything inside
There is NO recycle bin in Linux. rm -rf deletes forever. Before running it, always verify first: 'ls -la /path/you/want/to/delete'

mkdir new_directory	            # Create a new directory named new_directory

ls -l		                    # List files with details to verify your operations

cat file.txt	                # Prints entire file content to screen

cat -n file.txt	                # Same as cat but adds line numbers

less file.txt	                # Opens large file page by page (q to quit)

head -n 10 file.csv             # Shows only the FIRST 10 lines of a file

tail -n 20 file	                # Shows only the LAST 20 lines of a file

tail -f file	                # Watches file LIVE as new lines are added

wc -l file	                    # Counts how many lines are in a file

wc -w file	                    # Counts total words in a file

wc -c file	                    # Counts total bytes (file size)


note: When a Spark or ETL job is running, 'tail -f pipeline.log' shows you LIVE output as it's written. You don't need to keep opening the file. 
Add -n 100 to also see the last 100 lines: tail -fn 100 pipeline.log