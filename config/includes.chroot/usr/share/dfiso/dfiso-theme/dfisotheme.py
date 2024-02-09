#! /bin/python3
# coding: Utf-8

# changeur de thème rapide pour DFiso / Xfce
# sources : HandyTheme par @prx https://framagit.org/handylinux/debdev/-/blob/master/handylinuxlook/handylinuxlook-1.1/HandyTheme/handytheme.py
# mise à jour python3 par @Elzen https://debian-facile.org/viewtopic.php?id=34488

# TODO : ajouter la configuration de la taille de xfce4-panel via xfconf-query

import os, gi
gi.require_version("Gtk", "3.0")
from gi.repository import Gtk as gtk
import subprocess as sub

class Theme:

  def __init__(self,font="",xfceTheme="",xfwmTheme="",cursorName="",cursorSize=""):
    self.xfceFont = font
    self.xfwmFont = font
    self.xfceTheme = xfceTheme
    self.xfwmTheme = xfwmTheme
    self.cursorName = cursorName
    self.cursorSize = cursorSize

  def apply(self,widget):
    os.system('xfconf-query -s "' + self.xfceFont + '" -c xfwm4 -p /general/title_font')
    os.system('xfconf-query -s "' + self.xfwmFont + '" -c xsettings -p /Gtk/FontName')
    os.system('xfconf-query -s "' + self.xfceTheme + '" -c xsettings -p /Net/ThemeName')
    os.system('xfconf-query -s "' + self.xfwmTheme + '" -c xfwm4 -p /general/theme')
    os.system('xfconf-query -s "' + self.cursorName + '" -c xsettings -p /Gtk/CursorThemeName')
    os.system('xfconf-query -s "' + self.cursorSize + '" -c xsettings -p /Gtk/CursorThemeSize')

  def getCurrent(self):
    self.xfceFont = sub.check_output(['xfconf-query','-c','xfwm4','-p','/general/title_font']).rstrip(b'\n').decode()
    self.xfwmFont = sub.check_output(['xfconf-query','-c','xsettings','-p','/Gtk/FontName']).rstrip(b'\n').decode()
    self.xfceTheme = sub.check_output(['xfconf-query','-c','xsettings','-p','/Net/ThemeName']).rstrip(b'\n').decode()
    self.xfwmTheme = sub.check_output(['xfconf-query','-c','xfwm4','-p','/general/theme']).rstrip(b'\n').decode()
    self.cursorName = sub.check_output(['xfconf-query','-c','xsettings','-p','/Gtk/CursorThemeName']).rstrip(b'\n').decode()
    self.cursorSize = sub.check_output(['xfconf-query','-c','xsettings','-p','/Gtk/CursorThemeSize']).rstrip(b'\n').decode()

class Main:
  def Quitter(self, widget):
    gtk.main_quit()

  def __init__(self):
    smallLightTheme = Theme("DejaVu Sans Condensed 10", "Arc", "Arc", "Adwaita", "22")
    normalLightTheme = Theme("DejaVu Sans Condensed 12", "Arc", "Arc", "Adwaita", "22")
    largeLightTheme = Theme("DejaVu Sans Bold 18", "Adwaita", "Default-hdpi", "Adwaita", "48")
    smallDarkTheme = Theme("DejaVu Sans Condensed 10", "Arc-Dark", "Arc-Dark", "DMZ-White", "22")
    normalDarkTheme = Theme("DejaVu Sans Condensed 12", "Arc-Dark", "Arc-Dark", "DMZ-White", "22")
    largeDarkTheme = Theme("DejaVu Sans Bold 18", "Adwaita-dark", "Default-hdpi", "DMZ-White", "48")

    currentTheme = Theme()
    currentTheme.getCurrent()

    window = gtk.Window()
    window.set_title("Changeur de Theme")
    window.connect("destroy", self.Quitter)
    window.set_default_size(450, 250)

    table = gtk.Table(3,3,False)

    boutonSmallLight =  gtk.Button()
    imgSmallLight = gtk.Image()
    imgSmallLight.set_from_file("icons/smallLight.png")
    boutonSmallLight.set_image(imgSmallLight)
    boutonSmallLight.connect("clicked", smallLightTheme.apply)

    boutonNormalLight =  gtk.Button()
    imgNormalLight = gtk.Image()
    imgNormalLight.set_from_file("icons/normalLight.png")
    boutonNormalLight.set_image(imgNormalLight)
    boutonNormalLight.connect("clicked", normalLightTheme.apply)

    boutonLargeLight =  gtk.Button()
    imgLargeLight = gtk.Image()
    imgLargeLight.set_from_file("icons/largeLight.png")
    boutonLargeLight.set_image(imgLargeLight)
    boutonLargeLight.connect("clicked", largeLightTheme.apply)

    boutonSmallDark =  gtk.Button()
    imgSmallDark = gtk.Image()
    imgSmallDark.set_from_file("icons/smallDark.png")
    boutonSmallDark.set_image(imgSmallDark)
    boutonSmallDark.connect("clicked", smallDarkTheme.apply)

    boutonNormalDark =  gtk.Button()
    imgNormalDark = gtk.Image()
    imgNormalDark.set_from_file("icons/normalDark.png")
    boutonNormalDark.set_image(imgNormalDark)
    boutonNormalDark.connect("clicked", normalDarkTheme.apply)

    boutonLargeDark =  gtk.Button()
    imgLargeDark = gtk.Image()
    imgLargeDark.set_from_file("icons/largeDark.png")
    boutonLargeDark.set_image(imgLargeDark)
    boutonLargeDark.connect("clicked", largeDarkTheme.apply)

    boutonReset = gtk.Button(stock=gtk.STOCK_UNDO)
    boutonReset.connect("clicked", currentTheme.apply)

    table.attach(boutonSmallLight,0,1,0,1)
    table.attach(boutonNormalLight,1,2,0,1)
    table.attach(boutonLargeLight,2,3,0,1)

    table.attach(boutonSmallDark,0,1,1,2)
    table.attach(boutonNormalDark,1,2,1,2)
    table.attach(boutonLargeDark,2,3,1,2)

    table.attach(boutonReset,0,3,2,3)

    table.set_row_spacings(5)
    table.set_col_spacings(5)
    table.set_row_spacing(1,10)

    window.add(table)
    window.show_all()

if __name__ == "__main__":
  Main()
  gtk.main()
