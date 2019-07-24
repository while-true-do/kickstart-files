# Choosing mode (graphical|text|cmdline [--non-interactive])
text

# Use network installation
# url --url http://download.fedoraproject.org/pub/fedora/linux/releases/30/Everything/x86_64/os/
url --mirrorlist https://mirrors.fedoraproject.org/mirrorlist?repo=fedora-30&arch=x86_64

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
network --hostname=localhost.localdomain

# Root password
rootpw --lock
# User password
user --groups=wheel --name=admin --password=password

# Partition clearing information
zerombr
clearpart --all

# Disk partitioning information
autopart --nohome

# Reboot the system after installation.
reboot

%packages --retries 5 --timeout 20
@core
%end

%post
%end
