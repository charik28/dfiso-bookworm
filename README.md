## DFiso : Debian préconfigurée par Debian-Facile

Pour toute information, visitez [la page principale du projet](http://debian-facile.org/projets:iso-debian-facile).

Pour contribuer et participer aux discussions, rendez-vous [sur le forum](https://debian-facile.org/viewtopic.php?id=33230)

Pour discuter en direct, debian-facile a ouvert un salon IRC #df-iso sur le serveur OFTC ([version en ligne](https://webchat.oftc.net/?channels=df-iso))

## Liens DFiso : téléchargements, documentation et tutoriels

* les images ISO : https://debian-facile.org/dflinux/isos/ & https://arpinux.org/dfiso/
* la documentation à jour : https://debian-facile.org/projets:iso-debian-facile
* le tutoriel vidéo d'installation Calamares : https://video.tedomum.net/w/i8iWo6DzeEndXVN9P7DmmK & https://arpinux.org/df-mini-tutos/DFiso-Bookworm-installation-calamares.mp4
* le tutoriel vidéo d'installation Classique : https://video.tedomum.net/w/imiVvpvRncNDoXz8VgSgWD & https://arpinux.org/df-mini-tutos/DFiso-Bookworm-installation-classique.mp4
* le déroulé gif de l'installation Calamares : https://debian-facile.org/images/file-Rfd25dd2066788717c0a206b59d1e5a0c.png
* le déroulé gif de l'installation Classique : https://debian-facile.org/images/file-Rc484a0f7c08a0f966a81d8d076cdc06c.png
* l'annonce mastodon : https://framapiaf.org/@df/110763891658769893

## Construction de l'ISO à partir des sources

```
sudo apt install git live-build
sudo apt install live-build
apt install live-build
git clone https://salsa.debian.org/debian-facile-team/projetsdf/dfiso-bookworm.git
chmod +x ./DFbuild
./DFbuild 64
```
### error : debootstrap command not found
root@debian:/home/charik# debootstrap stable /stable-chroot
bash: debootstrap : commande introuvable
### fix
dpkg -L debootstrap | grep bin

export PATH=$PATH:/usr/sbin


