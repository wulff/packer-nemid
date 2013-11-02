apt-get -y install openbox
apt-get -y install xinit
apt-get -y install xterm
apt-get -y install chromium-browser
apt-get -y install icedtea-7-plugin

mkdir -p /home/nemid/.config/chromium/Default
mkdir -p /home/nemid/.config/openbox

chown -R nemid.nemid /home/nemid/.config

sed -i '/exec/c\exec /bin/login -f nemid < /dev/tty1 > /dev/tty1 2>&1' /etc/init/tty1.conf
