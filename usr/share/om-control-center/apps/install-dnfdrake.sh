#!/bin/bash
if rpm -q dnfdrake &>/dev/null; then
	kdialog --title $"OpenMandriva" --msgbox $"DnfDrake is already installed."
else
kdialog --title $"OpenMandriva" --msgbox $"Work in progress. Please wait... Step 1 of 3"
dnf clean all;dnf repolist
mkdir /tmp/dnfdrake-download
cd /tmp/dnfdrake-download
dnf install -y dnf-utils python-dnf-plugin-versionlock
enable-repo unsupported
kdialog --title $"OpenMandriva" --msgbox $"Work in progress. Please wait... Step 2 of 3"
dnf download gambas3-gb-dbus gambas3-gb-form gambas3-gb-gtk3 gambas3-gb-gui gambas3-gb-image gambas3-gb-qt5 gambas3-runtime gambas3-gb-form-stock dnfdrake
#
kdialog --title $"OpenMandriva" --msgbox $"Work in progress. Step 3 of 3. Please wait until the process is done, it may take a while"
rpm -ivh --nodeps *.rpm
	if rpm -q dnfdrake &>/dev/null; then
	kdialog --title $"OpenMandriva" --msgbox $"Installation succeeded."
	else
	kdialog --title $"OpenMandriva" --msgbox $"Installation failed."
	fi
fi

exit 0