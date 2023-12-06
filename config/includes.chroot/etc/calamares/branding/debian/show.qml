/* === This file is part of Calamares - <http://github.com/calamares> ===
 *
 *   Copyright 2015, Teo Mrnjavac <teo@kde.org>
 *   Copyright 2018, Jonathan Carter <jcc@debian.org>
 *
 *   Calamares is free software: you can redistribute it and/or modify
 *   it under the terms of the GNU General Public License as published by
 *   the Free Software Foundation, or (at your option) any later version.
 *
 *   Calamares is distributed in the hope that it will be useful,
 *   but WITHOUT ANY WARRANTY; without even the implied warranty of
 *   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
 *   GNU General Public License for more details.
 *
 *   You should have received a copy of the GNU General Public License
 *   along with Calamares. If not, see <http://www.gnu.org/licenses/>.
 */

import QtQuick 2.0;
import calamares.slideshow 1.0;

Presentation
{
    id: presentation

    Timer {
        interval: 20000
        running: true
        repeat: true
        onTriggered: presentation.goToNextSlide()
    }

    Slide {
        Image {
            id: background1
            source: "slide1.png"
            width: 600; height: 360
            fillMode: Image.PreserveAspectFit
            anchors.centerIn: parent
            anchors.verticalCenterOffset: -40
        }
        Text {
            anchors.horizontalCenter: background1.horizontalCenter
            anchors.top: background1.bottom
            text: qsTr("-- Bienvenue sur Debian ! --<br/>"+
                       "Debian 12 s'installe sur votre ordinateur.")
            wrapMode: Text.WordWrap
            width: 600
            horizontalAlignment: Text.Center
        }
    }

    Slide {

        Image {
            id: background2
            source: "slide2.png"
            width: 600; height: 360
            fillMode: Image.PreserveAspectFit
            anchors.centerIn: parent
            anchors.verticalCenterOffset: -40
        }
        Text {
            anchors.horizontalCenter: background2.horizontalCenter
            anchors.top: background2.bottom
            anchors.topMargin: 15
            text: qsTr("-- Debian, le système d'exploitation universel --<br/>"+
                       "Debian GNU/Linux est un système d'exploitation Libre, notamment réputé pour sa stabilité.")
            wrapMode: Text.WordWrap
            width: 600
            horizontalAlignment: Text.Center
        }
    }

    Slide {

        Image {
            id: background3
            source: "slide3.png"
            width: 600; height: 360
            fillMode: Image.PreserveAspectFit
            anchors.centerIn: parent
            anchors.verticalCenterOffset: -40
        }
        Text {
            anchors.horizontalCenter: background3.horizontalCenter
            anchors.top: background3.bottom
            anchors.topMargin: 15
            text: qsTr("-- Debian-Facile, une communauté francophone --<br/>"+
                       "L'association Debian-Facile permet l'entraide entre utilisateurs de Debian<br/>"+
                       "Besoin d'aide ? Rendez-vous sur https://debian-facile.org !")
            wrapMode: Text.WordWrap
            width: 600
            horizontalAlignment: Text.Center
        }
    }

    Slide {

        Image {
            id: background4
            source: "slide4.png"
            width: 600; height: 360
            fillMode: Image.PreserveAspectFit
            anchors.centerIn: parent
            anchors.verticalCenterOffset: -40
        }
        Text {
            anchors.horizontalCenter: background4.horizontalCenter
            anchors.top: background4.bottom
            anchors.topMargin: 15
            text: qsTr("Le système que vous installez a été pré-configuré pour les débutant·e·s par la communauté Debian-Facile<br/>"+
                       "Découvrons votre nouveau système...")
            wrapMode: Text.WordWrap
            width: 600
            horizontalAlignment: Text.Center
        }
    }

    Slide {

        Image {
            id: background5
            source: "slide5.png"
            width: 600; height: 360
            fillMode: Image.PreserveAspectFit
            anchors.centerIn: parent
            anchors.verticalCenterOffset: -40
        }
        Text {
            anchors.horizontalCenter: background5.horizontalCenter
            anchors.top: background5.bottom
            anchors.topMargin: 15
            text: qsTr("-- Les applications internet --<br/>"+
                       "Firefox, pour surfer sur le web, Thunderbird, pour lire et écrire vos e-mails")
            width: 600
            horizontalAlignment: Text.Center
        }
    }

    Slide {

        Image {
            id: background6
            source: "slide6.png"
            width: 600; height: 360
            fillMode: Image.PreserveAspectFit
            anchors.centerIn: parent
            anchors.verticalCenterOffset: -40
        }
        Text {
            anchors.horizontalCenter: background6.horizontalCenter
            anchors.top: background6.bottom
            anchors.topMargin: 15
            text: qsTr("-- La suite complète LibreOffice --<br/>"+
                       "Un traitement de texte (Writer), un tableur (Calc), un éditeur de diaporamas (Impress),<br/>mais aussi des logiciels de dessin (Draw) et de mathématiques (Math).")
            width: 600
            horizontalAlignment: Text.Center
        }
    }

    Slide {

        Image {
            id: background7
            source: "slide7.png"
            width: 600; height: 360
            fillMode: Image.PreserveAspectFit
            anchors.centerIn: parent
            anchors.verticalCenterOffset: -40
        }
        Text {
            anchors.horizontalCenter: background7.horizontalCenter
            anchors.top: background7.bottom
            anchors.topMargin: 15
            text: qsTr("-- De nombreuses applications multimédia --<br/>"+
                       "VLC pour lire vos films et fichiers audio, Rhythmbox pour lire et parcourir votre musique,<br/>Asunder pour extraire vos CD audio, Xfburn pour graver des disques...")
            width: 600
            horizontalAlignment: Text.Center
        }
    }

    Slide {

        Image {
            id: background8
            source: "slide8.png"
            width: 600; height: 360
            fillMode: Image.PreserveAspectFit
            anchors.centerIn: parent
            anchors.verticalCenterOffset: -40
        }
        Text {
            anchors.horizontalCenter: background8.horizontalCenter
            anchors.top: background8.bottom
            anchors.topMargin: 15
            text: qsTr("-- Un menu d'aide, pour accéder à la documentation --<br/>"+
                       "Le manuel utilisateur : notice de prise en main de votre système<br/>"+
                       "Les cahiers du débutant : un manuel pour tout savoir sur Debian !")
            width: 600
            horizontalAlignment: Text.Center
        }
    }
}

