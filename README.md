# HyprLand
<b> HyprLand Setup  </b>

<b> ArchInstall </b>
* Using ArchInstall Script Install Archlinux on bare metal.
* After Booting into HyprLand, Open terminal and install Aur Helper called Paru

<b> Install Paru (Aur Helper)</b>

```
git clone https://aur.archlinux.org/paru-bin.git
```
* cd paru-bin

* makepkg -Si


<b>Install Dependencies / Packages </b>

```
paru -S fnm hyprland keyb rofi-file-browser-extended-git imv brightnessctl yazi waybar playerctl wf-recorder kvantum swaylock-effects-git qt5ct qt6ct nwg-look mpv-mpris pacman-contrib swayidle pavucontrol pamixer file-roller htop adobe-source-code-pro-fonts ttf-fira-code ttf-jetbrains-mono-nerd ttf-jetbrains-mono noto-fonts-emoji ttf-droid otf-font-awesome ttf-cascadia-code-nerd ttf-bitstream-vera ttf-croscore ttf-dejavu ttf-droid ttf-ibm-plex ttf-liberation noto-fonts gnu-free-fonts linux-headers alsa-utils less wlroots vlc thunar thunar-volman thunar-archive-plugin udiskie mtpfs jmtpfs gvfs-gphoto2 gvfs-mtp mousepad rofi-lbonn-wayland-git network-manager-applet lsd cava geany geany-plugin swaync tumbler unzip zip unrar polkit-gnome xdg-user-dirs grim slurp gnome-system-monitor jq blueberyy-wayland polkit-kde-agent cbonsai zathura-pdf-mupdf zathura yt-dlp ffmpegthumbnailer xdotool wmctrl zsh lazygit xdg-desktop-portal-gtk gtk-engine-murrine lxappearance xsel bc
```

> **Warning**
>
> DO NOT blindly run this. Backup your dots beforehand.

<b> Install GTK Themes,Icons,Cursor


* Dotfiles

```
cd Downloads
git clone https://github.com/S4NKALP/hyprland.git

cd hyprland
cp -r wallpapers ~/Pictures
cp -r config/* ~/.config

cd misc
cp -r fonts ~/.local/
cp .zshenv ~/
cp -r bin ~/.local/

chmod +x ~/.config/hypr/scripts/*
chmod +x ~/.config/hypr/UserScripts/*
```

* GTK Themes

 ```
git clone https://github.com/Fausto-Korpsvart/Tokyo-Night-GTK-Theme.git
cd Tokyo-Night-GTK-Theme/
sudo cp -r themes/Tokyonight-Dark-BL-LB /usr/share/themes/
sudo cp -r icons/Tokyonight-Dark /usr/share/icons/

sudo tar -xf "assets/Bibata-Modern-Ice.tar.xz" -C /usr/share/icons/
```

```
After this Press SUPER + SHIFT + W and choose wallpaper And Restart Your System and boom!
```

# Credits:
- These dotfiles are highly inspired by ~~shamefully copied from~~[JaKooLit](https://github.com/JaKooLit/Hyprland-Dots) dots.

<details>
<summary><i>
📸 Screenshots
</i></summary>
<img src="assets/Rice.png">
<img src="assets/RofiLauncher.png">
<img src="assets/RofiEmoji.png">
<img src="assets/RofiNotes.png">
<img src="assets/RofiTmux.png">
<img src="assets/RofiWallpaper.png">
<img src="assets/RofiMusic.png">
<img src="assets/RofiMusicControl.png">
<img src="assets/ScreenRecorder.png">
<img src="assets/RofiPowermenu.png">
<img src="assets/Keybinds.png">
<img scr="assets/RofiTodoList.png">
<img scr="assets/QuickLink.png">
</details>

