#!/usr/bin/make -f -j9
PROG_NAME = NeteXt73
OPT_DIR = /opt
PREFIX = /usr
datarootdir = $(PREFIX)/share
MOVE_COMMAND = mv
MKDIR = mkdir
INSTALL = install -m
APM_DIR = APM
APM_FILES = $(wildcard $(APM_DIR)/*)
PAKIETY_DIR = pakiety
PAKIETY_FILES = $(wildcard $(PAKIETY_DIR)/*)
DESKTOPFILES_DIR = desktopfiles
DESKTOPFILES_FILES=$(wildcard $(DESKTOPFILES_DIR)/*.desktop)
GRAPHIC_KERNEL_PREMIUM_DIR = kernel-premium
GRAPHIC_KERNEL_PREMIUM_FILES = $(wildcard $(GRAPHIC_KERNEL_PREMIUM_DIR)/*.desktop)
GRAPHIC_KERNEL_PREMIUM_AMD_DIR = kernel-premium-amd
GRAPHIC_KERNEL_PREMIUM_AMD_FILES = $(wildcard $(GRAPHIC_KERNEL_PREMIUM_AMD_DIR)/*.desktop)
GRAPHIC_BASE_DIR = ikony
GRAPHIC_BASE_FILES = $(wildcard $(GRAPHIC_BASE_DIR)/*.png)
CONTACTS_DIR = kontakty
CONTACTS_FILES = $(wildcard $(CONTACTS_DIR)/*.desktop)
TRANSLATIONS_DIR = tlumaczenia
make: nothing_to_make
nothing_to_make:

	@echo -e '\033[1;32mNie będę budował NeteXt73 :)...\033[0m'

install: install_desktopfiles \
	 install_desktopicons \
	 install_desktopfiles_kernel_premium \
	 install_desktopfiles_kernel_premium_amd \
	 install_contacts \
	 install_translations_files \
	 install_APM \
	 install_pakiety \
	 install_file_LICENSE \
	 install_file_NeteXt73 \
	 install_file_menu \
	 install_file_NeteXt73.desktop \
	 install_file_apm \
	 install_file_changelog \
	 install_file_config \
	 install_file_deinstalator \
	 install_file_gpg \
	 install_file_grub \
	 install_file_help \
	 install_file_kernele \
	 install_file_logi \
	 install_file_microcode \
	 install_file_monitor \
	 install_file_grafiki \
	 install_file_procedury \
	 install_file_repo \
	 install_file_skrypty \
	 install_file_update \
	 install_file_uslugi \
	 install_file_czekaj

	 $(MKDIR) -p $(DESTDIR)$(OPT_DIR)/$(PROG_NAME)

install_desktopfiles:
	$(MKDIR) -p $(DESTDIR)$(OPT_DIR)/$(PROG_NAME)/$(DESKTOPFILES_DIR)/
	$(INSTALL) 0755 $(DESKTOPFILES_FILES) $(DESTDIR)$(OPT_DIR)/$(PROG_NAME)/$(DESKTOPFILES_DIR)/

install_desktopicons:
	$(MKDIR) -p $(DESTDIR)$(OPT_DIR)/$(PROG_NAME)/$(GRAPHIC_BASE_DIR)/
	$(INSTALL) 0755 $(GRAPHIC_BASE_FILES) $(DESTDIR)$(OPT_DIR)/$(PROG_NAME)/$(GRAPHIC_BASE_DIR)

install_APM:
	$(MKDIR) -p $(DESTDIR)$(OPT_DIR)/$(PROG_NAME)/$(APM_DIR)/
	$(INSTALL) 0755 $(APM_FILES) $(DESTDIR)$(OPT_DIR)/$(PROG_NAME)/$(APM_DIR)

install_pakiety:
	$(MKDIR) -p $(DESTDIR)$(OPT_DIR)/$(PROG_NAME)/$(PAKIETY_DIR)/
	$(INSTALL) 0755 $(PAKIETY_FILES) $(DESTDIR)$(OPT_DIR)/$(PROG_NAME)/$(PAKIETY_DIR)

install_desktopfiles_kernel_premium:
	$(MKDIR) -p $(DESTDIR)$(OPT_DIR)/$(PROG_NAME)/$(GRAPHIC_KERNEL_PREMIUM_DIR)/
	$(INSTALL) 0755 $(GRAPHIC_KERNEL_PREMIUM_FILES) $(DESTDIR)$(OPT_DIR)/$(PROG_NAME)/$(GRAPHIC_KERNEL_PREMIUM_DIR)

install_desktopfiles_kernel_premium_amd:
	$(MKDIR) -p $(DESTDIR)$(OPT_DIR)/$(PROG_NAME)/$(GRAPHIC_KERNEL_PREMIUM_AMD_DIR)/
	$(INSTALL) 0755 $(GRAPHIC_KERNEL_PREMIUM_AMD_FILES) $(DESTDIR)$(OPT_DIR)/$(PROG_NAME)/$(GRAPHIC_KERNEL_PREMIUM_AMD_DIR)

install_contacts:
	$(MKDIR) -p $(DESTDIR)$(OPT_DIR)/$(PROG_NAME)/$(CONTACTS_DIR)/
	$(INSTALL) 0755 $(CONTACTS_FILES) $(DESTDIR)$(OPT_DIR)/$(PROG_NAME)/$(CONTACTS_DIR)

install_translations_files:
	$(MKDIR) -p $(DESTDIR)$(OPT_DIR)/$(PROG_NAME)/$(TRANSLATIONS_DIR)/
	$(INSTALL) 0755 $(TRANSLATIONS_DIR)/* $(DESTDIR)$(OPT_DIR)/$(PROG_NAME)/$(TRANSLATIONS_DIR)

install_file_LICENSE:
	$(INSTALL) 0755 LICENSE $(DESTDIR)$(OPT_DIR)/$(PROG_NAME)
install_file_NeteXt73:
	$(INSTALL) 0755 NeteXt73 $(DESTDIR)$(OPT_DIR)/$(PROG_NAME)
install_file_menu:
	$(INSTALL) 0755 menu $(DESTDIR)$(OPT_DIR)/$(PROG_NAME)
install_file_NeteXt73.desktop:
	$(INSTALL) 0755 NeteXt73.desktop $(DESTDIR)$(OPT_DIR)/$(PROG_NAME)
install_file_apm:
	$(INSTALL) 0755 apm $(DESTDIR)$(OPT_DIR)/$(PROG_NAME)/
install_file_changelog:
	$(INSTALL) 0755 changelog $(DESTDIR)$(OPT_DIR)/$(PROG_NAME)
install_file_config:
	$(INSTALL) 0755 config $(DESTDIR)$(OPT_DIR)/$(PROG_NAME)
install_file_deinstalator:
	$(INSTALL) 0755 deinstalator $(DESTDIR)$(OPT_DIR)/$(PROG_NAME)
install_file_grub:
	$(INSTALL) 0755 grub $(DESTDIR)$(OPT_DIR)/$(PROG_NAME)
install_file_gpg:
	$(INSTALL) 0755 gpg $(DESTDIR)$(OPT_DIR)/$(PROG_NAME)
install_file_help:
	$(INSTALL) 0755 help $(DESTDIR)$(OPT_DIR)/$(PROG_NAME)
install_file_kernele:
	$(INSTALL) 0755 kernele $(DESTDIR)$(OPT_DIR)/$(PROG_NAME)
install_file_logi:
	$(INSTALL) 0755 logi $(DESTDIR)$(OPT_DIR)/$(PROG_NAME)
install_file_microcode:
	$(INSTALL) 0755 microcode $(DESTDIR)$(OPT_DIR)/$(PROG_NAME)
install_file_monitor:
	$(INSTALL) 0755 monitor $(DESTDIR)$(OPT_DIR)/$(PROG_NAME)
install_file_grafiki:
	$(INSTALL) 0755 grafiki $(DESTDIR)$(OPT_DIR)/$(PROG_NAME)
install_file_procedury:
	$(INSTALL) 0755 procedury $(DESTDIR)$(OPT_DIR)/$(PROG_NAME)
install_file_repo:
	$(INSTALL) 0755 repo $(DESTDIR)$(OPT_DIR)/$(PROG_NAME)
install_file_skrypty:
	$(INSTALL) 0755 skrypty $(DESTDIR)$(OPT_DIR)/$(PROG_NAME)
install_file_update:
	$(INSTALL) 0755 update $(DESTDIR)$(OPT_DIR)/$(PROG_NAME)
install_file_uslugi:
	$(INSTALL) 0755 uslugi $(DESTDIR)$(OPT_DIR)/$(PROG_NAME)
install_file_czekaj:
	$(INSTALL) 0755 czekaj.py $(DESTDIR)$(OPT_DIR)/$(PROG_NAME)

