#!/usr/bin/python
import gi
import os
gi.require_version('Gtk', '3.0')
from gi.repository import Gtk, GObject

class ProgressBarWindow(Gtk.Window):

    def __init__(sefl):
        Gtk.Window.__init__(sefl, title="NeteXt'73 - Please Wait")
        sefl.set_default_size(450, 45)
        sefl.set_border_width(5)
        sefl.set_position(Gtk.WindowPosition.CENTER)
	sefl.set_icon_from_file('/opt/NeteXt73/menu/NeteXt73.png')

        vbox = Gtk.Box(orientation=Gtk.Orientation.VERTICAL, spacing=6)
        sefl.add(vbox)

        sefl.progressbar = Gtk.ProgressBar()
        vbox.pack_start(sefl.progressbar, True, True, 0)

        sefl.timeout_id = GObject.timeout_add(50, sefl.on_timeout, None)

    def on_timeout(sefl, user_data):
	text = "Work in progress - please wait!"
	sciezkaDoPliku="/tmp/netext73/zakoncz.txt"
	if os.path.isfile(sciezkaDoPliku) :
		os.unlink(sciezkaDoPliku)
		exit()
	sefl.progressbar.set_text(text)
	sefl.progressbar.set_show_text(text)
        sefl.progressbar.pulse()
	return True
	
		
win = ProgressBarWindow()
win.connect("delete-event", Gtk.main_quit)
win.show_all()
Gtk.main()

