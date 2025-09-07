#!/usr/bin/env sh
# /qompassai/pipewire/scripts/ps.sh
# Qompass AI Pipewire Pipewire Services Script
# Copyright (C) 2025 Qompass AI, All rights reserved
####################################################
systemctl --user enable pipewire --now
systemctl --user enable pipewire-pulse --now
systemctl --user enable wireplumber --now
systemctl --user daemon-reload
