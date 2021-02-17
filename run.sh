## Migrate to Centos Stream
# update with DNF
sudo dnf update
# enable stream repo
sudo dnf install centos-release-stream -y
# replace current CentOS repos with CentOS Stream repos
sudo dnf swap centos-{linux,stream}-repos -y
# migrate
sudo dnf distro-sync -y

## Check to see if migration was successful
# check version
if cat /etc/issue |grep Stream
then
echo "Migration complete"
else
echo "Migration failed. Check output"
fi
