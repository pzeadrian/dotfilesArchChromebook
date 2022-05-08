## Removable Media
For get the computer recognizing USB, Android phones and even NTFS disks, I recommend:
```bash
sudo pacman -S udiskie
sudo pacman -S mtpfs gvfs-mtp gvfs-gphoto2 usb-utils
pikaur -S jmtpfs
```

## Touchpad
If you are using a laptop, I recommend you to do this for have all gestures working correctly.
```bash
sudo pacman -S xf86-input-libinput
cd /etc/X11/xorg.conf.d
sudo nano 30-touchpad.conf
```

Now put this in the file and save changes:
```bash
Section "Inputclass"
  Identifier "devname"
  Driver "libinput"
  Option "Tapping" "on"
  Option "NaturalScrolling" "true"
EndSection
```

Now log out or reboot your laptop.

## Audio
For this, I recommend you to use pulseaudio, so you have to install two packages.
```bash
# Pulseaudio
sudo pacman -S pulseaudio
# Pavucontrol, for a graphical GUI
sudo pacman -S pavucontrol
```

## Bluetooth
Three steps to configure bluetooth
- Step 1: Install utilities
- Step 2: Enable Bluetooth service
- Step 3: Pair with Arch Linux


***UTILITIES***
```bash
# Bluez
sudo pacman -S bluez
# Bluex Utils
sudo pacman -S bluez-utils
# Blueman
sudo pacman -S blueman
```

Now, let's check if all is OK.
```bash
lsmod | grep btusb
sudo nano /etc/bluetooth/main.conf
```

The following command will tell you if the adapter is connected or is blocked.
```bash
sudo rfkill list
```

In the case that your adapter is blocking the connectivity, input the following command to unblock the connection.
```bash
sudo rfkill unblock bluetooth
```

And finally, enable bluetooth.
```bash
sudo systemctl start bluetooth.service
sudo systemctl enable bluetooth.service
```

If you already installed pulseaudio, you can do something for see bluetooth volume in pavucontrol
```bash
sudo pacman -S pulseaudio-bluetooth
reboot
```

## File Managing
### - GUI
I recommend you to use [pcmanfm](https://github.com/lxde/pcmanfm) for have a GUI and [File-Roller](https://github.com/GNOME/file-roller) for managing compressed files in pcmanfm
```bash
sudo pacman -S pcmanfm file-roller
```

### - Terminal
Give a try to [ranger](https://github.com/ranger/ranger)
```bash
sudo pacman -S ranger
```

## Trash

If you don't want to *rm* all the time and potentially lose files, you need a
trashing system. Luckily, that's pretty easy to do, using
[some of these tools](https://wiki.archlinux.org/index.php/Trash_management#Trash_creation)
such as **[glib2](https://www.archlinux.org/packages/core/x86_64/glib2/)**,
and for GUIs like *pcmanfm* you need **[gvfs](https://www.archlinux.org/packages/extra/x86_64/gvfs/)**:

```bash
sudo pacman -S glib2 gvfs
# CLI usage
gio trash path/to/file
# Empty trash
gio trash --empty
```

With *pcmanfm* you can open the trash clicking on the left panel, but on the command
line you can use:

```bash
ls ~/.local/share/Trash/files
```

## GTK Theming
For GTK themes, I recommend you to use [lxappearance](https://github.com/lxde/lxappearance)
```bash
sudo pacman -S lxappearance
```

## Qt Theming

GTK themes will not be applied to Qt programs, but you can use
[**Kvantum**](https://archlinux.org/packages/?name=kvantum-qt5) to change the
default theme:

```bash
sudo pacman -S kvantum-qt5
echo "export QT_STYLE_OVERRIDE=kvantum" >> ~/.profile
```

## Images

Personally, I like [Viewnior](https://github.com/hellosiyan/Viewnior), because of its elegancy and simplicity:

```bash
sudo pacman -S viewnior
```

## Video and audio

You should give a try to 
[vlc](https://wiki.archlinux.org/index.php/VLC_media_player_(Espa%C3%B1ol))

```bash
sudo pacman -S vlc
```

## Network
For managing networks, I use [Network Manager](https://wiki.archlinux.org/title/NetworkManager) with the terminal command nmcli

## List of installed packages
I have included a list of all my currently installed packages in case you want to check
