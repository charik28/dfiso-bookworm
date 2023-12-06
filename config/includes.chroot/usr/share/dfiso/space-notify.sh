#!/bin/sh
# teste l'espace disponible sur la partition système et notifie si >80%
used=$(df / --output=pcent | grep -o [0-9]*)
if test $used -gt 80
then
	notify-send -i dialog-warning -u critical "ATTENTION
Votre partition système est bientôt pleine ($used%).
Pensez à faire de la place."
fi