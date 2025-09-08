#!/usr/bin/env sh
# /qompassai/pipewire/scripts/ps.sh
# Qompass AI Pipewire Services Script
# Copyright (C) 2025 Qompass AI, All rights reserved
####################################################
systemctl --user enable --now pipewire pipewire-pulse wireplumber xdg-desktop-portal xdg-desktop-portal-hyprland xdg-desktop-portal-gtk
systemctl --user daemon-reload
XDG_PORTAL_CONF="$HOME/.config/xdg-desktop-portal/portals.conf"
if [ ! -f "$XDG_PORTAL_CONF" ]; then
	mkdir -p "$HOME/.config/xdg-desktop-portal"
	cat >"$XDG_PORTAL_CONF" <<EOF
[preferred]
default=hyprland;gtk
org.freedesktop.impl.portal.Access=gtk
org.freedesktop.impl.portal.Account=gtk
org.freedesktop.impl.portal.Bluetooth=gtk
org.freedesktop.impl.portal.Camera=gtk
org.freedesktop.impl.portal.Email=gtk
org.freedesktop.impl.portal.FileChooser=gtk
org.freedesktop.impl.portal.GlobalShortcuts=hyprland
org.freedesktop.impl.portal.Inhibit=gtk
org.freedesktop.impl.portal.Location=gtk
org.freedesktop.impl.portal.Notification=gtk
org.freedesktop.impl.portal.OpenURI=gtk
org.freedesktop.impl.portal.PowerProfile=gtk
org.freedesktop.impl.portal.Print=gtk
org.freedesktop.impl.portal.ProxyResolver=gtk
org.freedesktop.impl.portal.Screenshot=hyprland
org.freedesktop.impl.portal.ScreenCast=hyprland
org.freedesktop.impl.portal.RemoteDesktop=hyprland
org.freedesktop.impl.portal.Settings=gtk
org.freedesktop.impl.portal.Speech=gtk
org.freedesktop.impl.portal.Trash=gtk
EOF
fi
