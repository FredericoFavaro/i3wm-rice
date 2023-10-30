#!/bin/bash

ISO=$(sha256sum /home/fredericofavaro/Downloads/Torrent/Fedora-Workstation-Live-x86_64-38/Fedora-Workstation-Live-x86_64-38-1.6.iso | awk '{print $1}')
CHECK="7a444a2e19012023bf0b015ae30135bafc5fd20f4f333310d42b118745093992"
echo -e "ISO:   $ISO"
echo -e "CHECK: $CHECK"

if [[ "$ISO" == "$CHECK" ]]; then
    echo -e "\x1b[92m\x1b[1mSUCESSO: As assinaturas são iguais!.\x1b[0m"
else
    echo -e "\e[31;1mERRO: As assinaturas são diferentes!\e[0m"
fi
