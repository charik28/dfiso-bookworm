#!/bin/bash

#Forcer numlockx sur les non-laptop
if ! laptop-detect; then sed -i 's/NUMLOCK=auto/NUMLOCK=on/' '/etc/default/numlockx';echo 'numlockx on' >> '/usr/share/dfiso/welcome.sh';fi

#Mettre à jour les mirroirs Debian
cp "/usr/share/dfiso/sources.list" "/etc/apt/sources.list"

#Changer le fond de lightdm en mode live
#et le supprimer une fois DFiso installée
if [ $(df '/' --output=source | tail -n1) == 'overlay' ]; then
    mv "/usr/share/backgrounds/xfce/Debian12-login-live.png" "/usr/share/backgrounds/xfce/Debian12-login.png"
else
    rm "/usr/share/backgrounds/xfce/Debian12-login-live.png"
fi

#Configuration de grub (splash + acpi_osi)
sed -ri 's|^(GRUB_CMDLINE_LINUX_DEFAULT=)"([^"]*)"|\1"\2 splash"|' "/etc/default/grub"
sed -ri 's|^(GRUB_CMDLINE_LINUX=).*|\1"acpi_osi=Linux"|' "/etc/default/grub"
update-grub

#run once ; then autodestory !
systemctl disable late-setup
rm "/etc/systemd/system/late-setup.service"
systemctl daemon-reload
systemctl reset-failed
