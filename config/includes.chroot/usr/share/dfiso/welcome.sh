#!/bin/bash
###########

#############
###Interactif
#############
{
# en session live
if [ $(df '/' --output=source | tail -n1) == 'overlay' ]; then
    # lancer le sélecteur de clavier
    sh /usr/share/dfiso/kbd-select.sh
fi

# message d'accueil
zenity --title "Bienvenue sur Debian 12 Bookworm" --info --ok-label "Bonne découverte et @+" --ellipsize --text "<b>Bonjour et bienvenue sur Debian ☺</b>

Votre nouveau système est une Debian agrémentée de quelques outils facilitants, mais une <a href=\"https://www.debian.org/\">Debian</a> avant tout :)

À votre disposition pour vous aider dans votre découverte :
 · <b><a href=\"file:///usr/share/dfiso/debian-facile-manuel-utilisateur.pdf\">le manuel de l'utilisateur</a></b> : un manuel d'utilisation pour une prise en main immédiate de votre système,
 · <b><a href=\"file:///usr/share/lcdd/les_cahiers_du_debutant.pdf\">les cahiers du débutant</a></b> : un manuel complet adapté aux nouveaux venus dans l'univers Debian GNU/Linux,

N'hésitez pas à visiter <a href=\"https://debian-facile.org/projets:iso-debian-facile\">la page du projet</a> et à vous inscrire <a href=\"https://debian-facile.org/forum.php\">sur le forum Debian-Facile</a>
afin de nous faire part de vos retours et suggestions.

Si vous désirez modifier ce système pour vos besoins personnels ou associatifs, les <a href=\"https://salsa.debian.org/debian-facile-team/projetsdf/dfiso-bookworm\">sources</a> sont libres <a href=\"https://www.gnu.org/licenses/quick-guide-gplv3.fr.html\">-GPLv3-</a> ☺.

"
}&

#################
###Non-interactif
#################
# mise en place des bookmarks
mkdir -p "$HOME/.config/gtk-3.0/"
echo "file://$HOME/Documents
file://$HOME/Images
file://$HOME/Musique
file://$HOME/T%C3%A9l%C3%A9chargements
file://$HOME/Vid%C3%A9os
" > "$HOME/.config/gtk-3.0/bookmarks"

# nom de l'utilisateur dans hexchat
f="$HOME/.config/hexchat/hexchat.conf"
if [ -f "$f" ]; then
    me="$(whoami)"
    sed -ri "s|^(irc_nick1 = ).*|\1${me}|" "$f"
    sed -ri "s|^(irc_nick2 = ).*|\1${me}_|" "$f"
    sed -ri "s|^(irc_nick3 = ).*|\1${me}__|" "$f"
    sed -ri "s|^(irc_user_name = ).*|\1${me}|" "$f"
fi

# en session live
if [ $(df '/' --output=source | tail -n1) == 'overlay' ]; then
    # faire confiance au lanceur Calamares sur le bureau
    gio set -t string '/home/humain/Bureau/install-debian.desktop' metadata::xfce-exe-checksum "$(sha256sum /usr/share/applications/install-debian.desktop | awk '{print $1}')"
fi

# suppression du lanceur de l'écran d'accueil
if [ -e /home/$USER/.config/autostart/welcome.desktop ]; then
    rm /home/$USER/.config/autostart/welcome.desktop
fi



