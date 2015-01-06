#!/bin/bash

if [ "$(uname -m)" = "x86_64" ]; then 
      kdialog --title $"OpenMandriva"  --msgbox  $"Waiting ... script adding 32bit repositories will support 64bit arch";
      /usr/sbin/urpmi.addmedia main32 http://abf-downloads.rosalinux.ru/openmandriva2014.0/repository/i586/media/main/release/
      /usr/sbin/urpmi.addmedia main32_updates http://abf-downloads.rosalinux.ru/openmandriva2014.0/repository/i586/media/main/updates/
      /usr/sbin/urpmi.addmedia non-free32 http://abf-downloads.rosalinux.ru/openmandriva2014.0/repository/i586/media/non-free/release/
      /usr/sbin/urpmi.addmedia non-free32_updates http://abf-downloads.rosalinux.ru/openmandriva2014.0/repository/i586/media/non-free/updates/
      /usr/sbin/urpmi.addmedia restricted32 http://abf-downloads.rosalinux.ru/openmandriva2014.0/repository/i586/media/restricted/release/
      /usr/sbin/urpmi.addmedia restricted32_updates http://abf-downloads.rosalinux.ru/openmandriva2014.0/repository/i586/media/restricted/updates/
      /usr/sbin/urpmi.addmedia contrib32 http://abf-downloads.rosalinux.ru/openmandriva2014.0/repository/i586/media/contrib/release/
      /usr/sbin/urpmi.addmedia contrib32_updates http://abf-downloads.rosalinux.ru/openmandriva2014.0/repository/i586/media/contrib/updates/
      /usr/sbin/drakrpm-edit-media
      kdialog --title $"OpenMandriva"  --msgbox  $" Repositories 32 bits in 64bit arch successfully added";
      
	else 
      kdialog --title $"OpenMandriva"  --msgbox  $"Your system is at 32bits";
	    fi
    fi