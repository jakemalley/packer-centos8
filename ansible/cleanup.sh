#!/usr/bin/env bash

## Cleanup
systemctl stop rsyslog.service || /bin/true
systemctl stop rsyslog.service || /bin/true
logrotate -f /etc/logrotate.conf
rm -f /etc/ssh/ssh_host_*
rm -f /etc/udev/rules.d/70-persistent-net.rules
find /etc/sysconfig/network-scripts/ -type f -name "ifcfg-e*" -exec sed -i '/^[ \t]*\(HWADDR\|UUID\)/d' {} +
dnf -y remove --oldinstallonly --setopt installonly_limit=1
dnf clean all
rm -rf /var/cache/dnf
test -f /var/log/audit/audit.log && cat /dev/null > /var/log/audit/audit.log
test -f /var/log/messages && cat /dev/null > /var/log/messages
test -f /var/log/wtmp && cat /dev/null > /var/log/wtmp
test -f /var/log/lastlog && cat /dev/null > /var/log/lastlog
test -f /var/log/grubby && cat /dev/null > /var/log/grubby
test -d /var/db/sudo/lectured && rm -f /var/db/sudo/lectured/*
rm -f /var/log/audit/audit.log.*
rm -f /var/log/messages-*
rm -f /var/log/maillog-*
rm -f /var/log/cron-*
rm -f /var/log/spooler-*
rm -f /var/log/secure-*
rm -f /var/log/yum-*
rm -f /var/log/dnf-*
rm -f /var/log/up2date-*
rm -f /var/log/vboxadd-*
rm -f /root/anaconda-ks.cfg
rm -f /root/original-ks.cfg
rm -f /root/.bash_history
rm -f /root/.cshrc
rm -f /root/.tcshrc
rm -rf /root/.cache
rm -f /home/vagrant/.bash_history
rm -f /home/vagrant/VBoxGuestAdditions*
rm -f /home/vagrant/.vbox_version
rm -rf /tmp/*
rm -rf /var/tmp/*
rm -f /etc/motd.d/cockpit
rm -f /etc/dhcp/dhclient-exit-hooks
find /usr/{lib,lib64}/ -type d -name "__pycache__" -exec rm -rf {} +
find /home/vagrant/ -maxdepth 1 -type d ! -name "vagrant" ! -name ".ssh" -exec rm -rf {} +
cat /dev/null > /etc/hostname
echo "127.0.0.1	localhost localhost.localdomain localhost4 localhost4.localdomain4" > /etc/hosts
echo "::1	localhost localhost.localdomain localhost6 localhost6.localdomain6" >> /etc/hosts
