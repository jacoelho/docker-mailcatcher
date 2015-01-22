#!/bin/bash -ex

DEV_PKG="build-essential ruby-dev libsqlite3-dev"

apt-get install $DEV_PKG ruby sqlite3

gem install mailcatcher --no-ri --no-rdoc

apt-get remove --purge --auto-remove $DEV_PKG

mkdir -p /etc/service/mailcatcher

cat <<EOF > /etc/service/mailcatcher/run
#!/bin/sh
exec /usr/local/bin/mailcatcher --ip 0.0.0.0 --http-port 80 --smtp-port 25 -f
EOF

chmod 755 /etc/service/mailcatcher/run