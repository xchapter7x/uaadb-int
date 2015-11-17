#!/bin/bash
set -e
sudo mkdir /tmp
sudo chmod 777 -R /tmp
sudo /etc/init.d/ssh start
sudo -H -u vcap bash -c '/var/vcap/packages/postgres/bin/postgres -D /var/vcap/store/postgres -h 0.0.0.0 -p 2544'
sudo tail -f /var/log/syslog
