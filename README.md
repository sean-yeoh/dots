# Arch Linux Setup

## Install Arch

### 1. Connect to internet
```shell
$ iwctl
[iwd] device list
[iwd] station <device name> scan 
[iwd] station <device name> get-networks
[iwd] station <device name> connect <SSID>
[iwd] exit
```

### 2. Update system clock
```shell
timedatectl
```

### 3. Partition disks using cdfisk
- Create 1GB partition for boot efi
- Create partition according to ram size for swap
- Use remaining size for root
```shell
cfdisk /dev/nvme0n1
```

### 4. Format partitions
```shell
mkfs.ext4 /dev/<root partition>
mkswap /dev/<swap partition>
mkfs.fat -F 32 /dev/<boot partition>
```

### 5. Mount disks
```shell
mount /dev/<root_partition> /mnt
mkdir -p /mnt/boot
mount /dev/<boot partition> /mnt/boot
swapon /dev/<swap partition>
lsblk # Check partitions are mounted correctly
```

### 6. Install packages
```shell
pacstrap -K /mnt base linux linux-firmware base-devel git grub efibootmgr vim networkmanager reflector sudo
```

### 7. Configure the system
```shell
genfstab -U /mnt >> /mnt/etc/fstab
```

### 8. Switch to new system
```shell
arch-chroot /mnt
```

### 9. Set time zone
```shell
ln -sf /usr/share/zoneinfo/Asia/Kuala_Lumpur /etc/localtime
hwclock --systohc # Sync hardware clock
```

### 10. Localization
```shell
vim /etc/locale.gen # Uncomment needed locale
locale-gen
```

Edit `/etc/locale.conf` and enter `LANG=en_SG.UTF-8`.

### 11. Hostname and host configuration
Edit `/etc/hostname` and enter `arch`.
 

Edit `/etc/hosts` and enter:

```
127.0.0.1 localhost
::1 localhost
127.0.1.1 arch
```

### 12. Setup root and user
```shell
passwd
useradd -mG wheel sean
passwd sean

EDITOR=vim visudo # Uncomment to let members of group wheel execute any action
```

### 13. Deploy grub
```shell
grub-install --target=x86_64-efi --efi-directory=/boot --bootloader-id=GRUB
grub-mkconfig -o /boot/grub/grub.cfg
```

### 14. Unmount and reboot
```shell
systemctl enable NetworkManager
exit # exit from chroot
umount -R /mnt
```

### 15. 
```shell
nmcli device wifi connect <SSID> password <password> # connect to wifi
timedatectl set-ntp true # start time synchronization service
```