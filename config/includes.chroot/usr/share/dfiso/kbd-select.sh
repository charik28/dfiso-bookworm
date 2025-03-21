#! /bin/bash
# simple keyboard-selector with zenity
# ------------------------------------

# configure dialog window & kbd list
LAYOUT=`zenity --list --title "Sêlecteur de clavier" --height='500' --width='350' --text "Choisissez votre clavier \nTaper \"fr\" pour trouver rapidement :)" --column "codes" --column "dispositions"\
            "ad" "Catalan us"\
            "af" "Afghani"\
            "al" "Albanian"\
            "am" "Armenian"\
            "ara" "Arabic"\
            "at" "German (Austria)"\
            "az" "Azerbaijani"\
            "ba" "Bosnian"\
            "be" "French (Belgique)"\
            "bg" "Bulgarian"\
            "br" "Portuguese (Brazil)"\
            "bw" "Tswana us"\
            "by" "Belarusian"\
            "ca" "French (Canada)"\
            "cd" "French (Congo)"\
            "ch" "German (Switzerland)"\
            "cm" "English (Cameroon)"\
            "cn" "Tibetan"\
            "cz" "Czech"\
            "de" "German"\
            "dk" "Danish"\
            "ee" "Estonian"\
            "epo" "Esperanto"\
            "es" "Spanish"\
            "fi" "Finnish"\
            "fo" "Faroese"\
            "fr" "Français"\
            "gb" "English (UK)"\
            "ge" "Georgian"\
            "gh" "English (Ghana)"\
            "gr" "Greek"\
            "hr" "Croatian"\
            "hu" "Hungarian"\
            "ie" "Irish"\
            "il" "Hebrew"\
            "iq" "Iraqi"\
            "ir" "Persian"\
            "is" "Icelandic"\
            "it" "Italian"\
            "jp" "Japanese"\
            "ke" "Swahili (Kenya)"\
            "kg" "Kyrghyz"\
            "kr" "Korean"\
            "kz" "Kazakh"\
            "la" "Lao"\
            "lt" "Lithuanian"\
            "lv" "Latvian"\
            "ma" "French (Morocco)"\
            "mao" "Maori"\
            "me" "Montenegrin"\
            "mk" "Macedonian"\
            "mn" "Mongolian"\
            "mt" "Maltese"\
            "ng" "English (Nigeria)"\
            "nl" "Dutch"\
            "no" "Norwegian"\
            "np" "Nepali"\
            "ph" "Filipino"\
            "pk" "Urdu (Pakistan)"\
            "pl" "Polish"\
            "pt" "Portuguese"\
            "ro" "Romanian"\
            "rs" "Serbian"\
            "ru" "Russian"\
            "se" "Swedish"\
            "si" "Slovenian"\
            "sk" "Slovak"\
            "sn" "Wolof"\
            "sy" "Syriac"\
            "th" "Thai"\
            "tj" "Tajik"\
            "tm" "Turkmen"\
            "tr" "Turkish"\
            "tw" "Taiwanese"\
            "tz" "Swahili (Tanzania)"\
            "ua" "Ukrainian"\
            "us" "English US"\
            "uz" "Uzbek"\
            "vn" "Vietnamese"\
            "za" "English (South Africa)"`

# set keyboard layout
setxkbmap $LAYOUT

exit 0
