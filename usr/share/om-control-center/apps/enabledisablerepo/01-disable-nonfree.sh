#!/bin/bash
DISTRO_ARCH="$(rpm --eval '%{_target_cpu}')"

if rpm --quiet --query openmandriva-repos-cooker; then
	IS_COOKER=1
else
	IS_COOKER=0
fi

if [ -n "$IS_COOKER" ]; then
	dnf config-manager --set-disabled "cooker-${DISTRO_ARCH}-non-free"
else
	dnf config-manager --set-disabled "openmandriva-${DISTRO_ARCH}-non-free" "updates-${DISTRO_ARCH}-non-free"
fi

kdialog --title $"OpenMandriva"  --msgbox  $" Non-free repository has been disabled"
