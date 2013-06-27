mount -c /
mount -f $PUBLIC/home /home
mount -f $PUBLIC/googlecl /googlecl
mount -f $PUBLIC/opt /opt
mount -f $PUBLIC/mingw32 /mingw32
mount -f $PUBLIC/php /php
mount -f $PUBLIC/usr/local /usr/local
mount -m > /etc/fstab

# dotfiles
cd /opt/dotfiles
cp .* ~
echo init >> ~/.bash_history
cd $APPDATA
cp -r $OLDPWD/*/ .

# private
cd $HOMEDRIVE/dropbox/private
cp -r .ssh ~
chmod 700 ~/.ssh/id_rsa

# etc
cd /etc
[ -a profile ] && mv profile profile-disable
