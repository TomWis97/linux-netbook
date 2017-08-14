# TomWis97/linux-netbook
Installing Arch
1. Install from ISO   
Create partitions with `parted /dev/sda -a optimal`:
```
mklabel msdos
mkpart primary ext4 0% -4GB
mkpart primary linux-swap -4GB 100%
set 1 boot on
quit
```

```
mkswap /dev/sda2
swapon /dev/sda2
mkfs.ext4 /dev/sda1
mount /dev/sda1 /mnt

timedatectl set-ntp true
timedatectl status

vi /etc/pacman.d/mirrorlist

pacstrap /mnt base
genfstab -U /mnt >> /mnt/etc/fstab

arch-chroot /mnt

ln -sf /usr/share/zoneinfo/Europe/Amsterdam /etc/localtime
hwclock --systohc

vi /etc/locale.gen
locale-gen
echo 'LANG=en_US.UTF-8' > /etc/locale.conf

passwd

pacman -S grub networkmanager sudo git sshd
grub-install --target=i386-pc /dev/sda
grub-mkconfig -o /boot/grub/grub.cfg

systemctl enable NetworkManager
systemctl enable sshd

useradd -mU -G wheel tom
passwd tom
vi /etc/sudoers

exit
umount /mnt
reboot
```

2. After install configuration   
Login as user.
```
hostnamectl set-hostname CLNT-Netbook
git clone https://github.com/TomWis97/linux-netbook
cd linux-netbook
./setup.sh
```
