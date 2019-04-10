#!/bin/bash
DISTRO_ARCH="$(rpm --eval '%{_target_cpu}')"

if rpm --quiet --query openmandriva-repos-cooker; then
	IS_COOKER=1
else
	IS_COOKER=0
fi

if [ -n "$IS_COOKER" ]; then
	dnf config-manager --set-disabled "cooker-${DISTRO_ARCH}-unsupported"
else
	dnf config-manager --set-disabled "openmandriva-${DISTRO_ARCH}-unsupported" "updates-${DISTRO_ARCH}-unsupported"
fi

kdialog --title $"OpenMandriva"  --msgbox  $" Unsupported repository has been disabled"
