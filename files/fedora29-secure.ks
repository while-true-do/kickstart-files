# Choosing mode (graphical|text|cmdline [--non-interactive])
text

# Use network installation
url --url="http://download.fedoraproject.org/pub/fedora/linux/releases/29/Everything/x86_64/os/"

# Run the Setup Agent on first boot
firstboot --enable

# Keyboard layouts
keyboard --vckeymap=us --xlayouts='us'
# System language
lang en_US.UTF-8
# System timezone
timezone Europe/London --isUtc --ntpservers=0.pool.ntp.org

# Network information
network --bootproto=dhcp --device=eth0 --onboot=on --ipv6=off
network --hostname=default-vm

# Root password
rootpw --lock
# User password
user --groups=wheel --name=admin --password=password

# Firewall configuration
firewall --enabled --ssh

# SELinux
selinux --enforcing

# Partition clearing information
zerombr
clearpart --all

# Disk partitioning information
part /boot      --fstype="xfs"   --size=504
part pv.10      --fstype="lvmpv" --size=13004 --grow
volgroup vg_system pv.10
logvol /        --fstype="xfs"   --size=4000 --name=root --vgname=vg_system
logvol /home    --fstype="xfs"   --size=2000 --name=home --vgname=vg_system
logvol /tmp     --fstype="xfs"   --size=1000 --name=tmp --vgname=vg_system --fsoptions="nodev,nosuid,noexec"
logvol swap     --fstype="swap"  --size=1000 --name=swap --vgname=vg_system
logvol /var     --fstype="xfs"   --size=2000 --name=var --vgname=vg_system
logvol /var/tmp --fstype="xfs"   --size=1000 --name=var_tmp --vgname=vg_system --fsoptions="nodev,nosuid,noexec"
logvol /var/log --fstype="xfs"   --size=1500 --name=var_log --vgname=vg_system --fsoptions="nodev,nosuid,noexec"
logvol /var/log/audit --fstype="xfs" --size=500 --name=var_log_audit --vgname=vg_system --fsoptions="nodev,nosuid,noexec"

# Reboot the system after installation.
reboot

%addon com_redhat_kdump --enable --reserve-mb=auto
%end

%packages
@core
%end

%post
%end
