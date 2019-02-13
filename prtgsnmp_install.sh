#!/bin/bash
#Create by Robert Hua 2019/02/13
if [ "$(id -u)" != "0" ]; then
echo "This script must be run as root" 1>&2
exit 1
fi

apt-get update
sleep 3
apt-get install -y apt
sleep 3
apt install -y snmpd
sleep 3
apt install -y snmp
sleep 3
apt install -y snmp-mibs-downloader
sleep 3
mv /etc/snmp/snmpd.conf /etc/snmp/snmpd.conf.old
cp ./snmpd.conf /etc/snmp/
service snmpd restart
