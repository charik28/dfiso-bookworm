#!/bin/sh
# teste l'état d'installation des paquets

if ! dpkg --audit
then
	notify-send -i dialog-warning -u critical "ATTENTION
Votre gestionnaire de paquet retourne des erreurs !
Voir la sortie de 'dpkg --audit' sur votre console."
fi