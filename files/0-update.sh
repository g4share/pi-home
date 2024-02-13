#! /bin/sh

apt update; apt upgrade -y;

# vim
apt remove vim-tiny -y;
apt purge vim-tiny -y;
apt install vim -y;

# mc
sudo apt install mc -y

# sppedtest by ookla
if ! [ -x "$(command -v speedtest -V)" ]; then
    echo '>>> speedtest'
    curl -s https://packagecloud.io/install/repositories/ookla/speedtest-cli/script.deb.sh | sudo bash
    apt install speedtest
fi

if ! grep -q 'data' /etc/fstab ; then
    echo '#' >> /etc/fstab
    echo '# data' >> /etc/fstab
    echo '/dev/nvme0n1p3             /mnt/data       ext4    defaults          0       2' >> /etc/fstab

    echo '/etc/fstab'
fi

echo 'done'