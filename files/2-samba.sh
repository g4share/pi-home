#! /bin/sh

sudo apt install samba samba-common-bin -y

sudo mkdir -p /mnt/data/shared
sudo chmod 777 -R /mnt/data/shared

if ! grep -q '\[shared\]' /etc/samba/smb.conf ; then
    echo '[shared]'                >> /etc/samba/smb.conf
    echo 'path = /mnt/data/shared' >> /etc/samba/smb.conf
    echo 'writeable=Yes'           >> /etc/samba/smb.conf
    echo 'create mask=0666'        >> /etc/samba/smb.conf
    echo 'directory mask=0777'     >> /etc/samba/smb.conf
    echo 'public=Yes'              >> /etc/samba/smb.conf

    sudo systemctl restart smbd
fi

echo 'done'