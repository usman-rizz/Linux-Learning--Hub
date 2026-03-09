Package managers install, update, and remove software on Linux. They handle dependencies and make it easy to manage software..

# ----------------------------------------------------------------------------------------------------------------
sudo apt update	                # Update package lists (Debian/Ubuntu)

sudo apt install package_name	# Install a package (replace with actual package name)

sudo apt remove package_name	# Remove a package (replace with actual package name)

sudo yum update	-y                # Update package lists (RedHat/CentOS)

sudo yum install git	# Install a package (replace with actual package name)

sudo yum remove docker	# Remove a package (replace with actual package name)   


# --------------------------------------------------------------------------------------
PACKAGE MANAGERS
# --------------------------------------------------------------------------------------


Note: What is yum in Linux?

Yum (Yellowdog Updater Modified) is a package manager used in Red Hat-based Linux distributions to install, update, and remove software packages along with their dependencies.

Syntax: sudo <package-manager> install <software> -y
example: sudo yum install git -y


Note: What is apt in Linux?
Apt (Advanced Package Tool) is a package manager used in Debian-based Linux distributions to manage software packages, including installation, updates, and removal.


Note: What is dnf in Linux?
Dnf (Dandified YUM) is a package manager used in Fedora and newer Red Hat-based Linux distributions to manage software packages, including installation, updates, and removal. It is the successor to yum and offers improved performance and features.