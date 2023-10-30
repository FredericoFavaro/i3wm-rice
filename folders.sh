#!/bin/bash

# Direciona os arquivos referentes aos dotfiles, fontes e scripts para seus respectivos diretórios.

# Verifica se o diretório ~/.fonts existe, para fazer a copia para o local correto.
if [ -e ~/.fonts ]; then
    cp -vr fonts/* ~/.fonts
else
    cp -vr fonts ~/.fonts
fi
# Verifica se o diretório ~/.scripts existe, para fazer a copia para o local correto.
if [ -e ~/.scripts ]; then
    cp -vr scripts/* ~/.scripts
else
    cp -vr scripts ~/.scripts
fi
# Configuracoes bash (alias e personalizacoes)
cp -v ./dotfiles/.bashrc ~/
# Configuracoes de temas para gtk 2 e 3.
cp -v ./dotfiles/.gtkrc-2.0 ~/
cp -vr gtk-3.0 ~/.config/
# Configuracoes do compositor (compton)
cp -vr /dotfiles/compton ~/.config/
# Configuracoes do gerenciador de janelas (i3-gaps)
cp -vr i3 ~/.config/
# Configuracoes da barra de status (polybar)
cp -vr polybar ~/.config/
# Configuracoes do gerenciador de arquivos (ranger)
cp -vr ranger ~/.config/
# Configuracoes do filtro de luz azul (redshift)
cp -vr redshift ~/.config/
# Configuracoes do lancador de aplicativos (rofi)
cp -vr rofi ~/.config/
# Configuracoes da tela inicial tty, caso nao use gerenciador de logins (necessario acesso root)
sudo cp -v ./dotfiles/issue /etc/