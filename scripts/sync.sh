#!/usr/bin/env zsh

# Sincroniza todos os arquivos de configuração com o diretorio de versionamento.

bkp_root=/home/fredericofavaro/workspace/sys_rice
#cd ~/scripts

#rsync -avu --delete "../.fonts/" "$bkp_root/"
#rsync -avu --delete "../scripts/" "$bkp_root/"
#rsync -avu --delete "../.bashrc" "$bkp_root/"
#rsync -avu --delete "../.gtkrc-2.0" "$bkp_root/dotfiles/"
#rsync -avu --delete "../.config/gtk-3.0" "$bkp_root/dotfiles/"
#rsync -avu --delete "../.config/picom" "$bkp_root/dotfiles/"
#rsync -avu --delete "../.config/i3" "$bkp_root/dotfiles/"
#rsync -avu --delete "../.config/polybar" "$bkp_root/dotfiles/"
#rsync -avu --delete "../.config/ranger" "$bkp_root/dotfiles/"
#rsync -avu --delete "../.config/redshift" "$bkp_root/dotfiles/"
#rsync -avu --delete "../.config/rofi" "$bkp_root/dotfiles/"
#rsync -avu --delete "../.Xresources" "$bkp_root/dotfiles/"
#rsync -avu --delete "../.themes" "$bkp_root/themes"
#rsync -avu --delete "../.zshrc" "$bkp_root/dotfiles/"
#rsync -avu --delete "../.config/alacritty" "$bkp_root/dotfiles/"
#rsync -avu --delete "../.config/flameshot" "$bkp_root/dotfiles/"
#sudo rsync -avu --delete "/etc/lightdm/lightdm-webkit2-greeter.conf" "$bkp_root/dotfiles/lightdm"
#sudo rsync -avu --delete "/usr/share/lightdm-webkit/themes/" "$bkp_root/dotfiles/lightdm"

#cp -r "../.fonts/" "$bkp_root/"
cp -r "/home/fredericofavaro/scripts/" "$bkp_root/"
cp -r "/home/fredericofavaro/.bashrc" "$bkp_root/"
cp -r "/home/fredericofavaro/.gtkrc-2.0" "$bkp_root/dotfiles/"
cp -r "/home/fredericofavaro/.config/gtk-3.0" "$bkp_root/dotfiles/"
cp -r "/home/fredericofavaro/.config/picom" "$bkp_root/dotfiles/"
cp -r "/home/fredericofavaro/.config/i3" "$bkp_root/dotfiles/"
cp -r "/home/fredericofavaro/.config/polybar" "$bkp_root/dotfiles/"
cp -r "/home/fredericofavaro/.config/ranger" "$bkp_root/dotfiles/"
cp -r "/home/fredericofavaro/.config/redshift" "$bkp_root/dotfiles/"
cp -r "/home/fredericofavaro/.config/rofi" "$bkp_root/dotfiles/"
cp -r "/home/fredericofavaro/.Xresources" "$bkp_root/dotfiles/"
cp -r "/home/fredericofavaro/.themes" "$bkp_root/"
cp -r "/home/fredericofavaro/.zshrc" "$bkp_root/dotfiles/"
cp -r "/home/fredericofavaro/.config/alacritty" "$bkp_root/dotfiles/"
cp -r "/home/fredericofavaro/.config/flameshot" "$bkp_root/dotfiles/"
sudo cp -r "/etc/lightdm/lightdm-webkit2-greeter.conf" "$bkp_root/lightdm"
sudo cp -r "/usr/share/lightdm-webkit/themes/" "$bkp_root/lightdm"
