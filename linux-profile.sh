DISTRO=$(. /etc/os-release; echo "$ID")
CODENAME=$(lsb_release -cs)
ARCH=$(dpkg --print-architecture)
#echo $DISTRO $CODENAME $ARCH