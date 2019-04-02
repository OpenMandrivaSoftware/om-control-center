#!/bin/bash
DISTRO_ARCH="$(rpm --eval '%{_target_cpu}')"

if rpm --quiet --query openmandriva-repos-cooker; then
	IS_COOKER=1
else
	IS_COOKER=0
fi

if [ -n "$IS_COOKER" ]; then
	dnf config-manager --set-enabled "cooker-${DISTRO_ARCH}-contrib"
else
	dnf config-manager --set-enabled "openmandriva-${DISTRO_ARCH}-contrib" "updates-${DISTRO_ARCH}-contrib"
fi

kdialog --title $"OpenMandriva"  --msgbox  $" Contrib/unsupported repository has been enabled"
