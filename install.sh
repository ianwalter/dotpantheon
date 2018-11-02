#!/bin/bash

# Backup current configuration to backup file.
background=$(gsettings get io.elementary.terminal.settings background)
foreground=$(gsettings get io.elementary.terminal.settings foreground)
cursor=$(gsettings get io.elementary.terminal.settings cursor-color)
palette=$(gsettings get io.elementary.terminal.settings palette)
printf "$background\n$foreground\n$cursor\n$palette\n" > backup

# TODO: Dracula theme
COLOR_01="#44475a"                # HOST
COLOR_02="#ff5555"                # SYNTAX_STRING
COLOR_03="#50fa7b"                # COMMAND
COLOR_04="#ffb86c"                # COMMAND_COLOR2
COLOR_05="#8be9fd"                # PATH
COLOR_06="#bd93f9"                # SYNTAX_VAR
COLOR_07="#ff79c6"                # PROMP
COLOR_08="#94A3A5"                #

COLOR_09="#a3a1a1"                #
COLOR_10="#ff5555"                # COMMAND_ERROR
COLOR_11="#50fa7b"                # EXEC
COLOR_12="#ffb86c"                #
COLOR_13="#8be9fd"                # FOLDER
COLOR_14="#bd93f9"                #
COLOR_15="#ff79c6"                #
COLOR_16="#ffffff"                #

BACKGROUND_COLOR="#282a36"        # Background Color
FOREGROUND_COLOR="#dddfe6"        # Text
CURSOR_COLOR="$FOREGROUND_COLOR"  # Cursor

# Set terminal color theme settings.
gsettings set io.elementary.terminal.settings background "${BACKGROUND_COLOR}"
gsettings set io.elementary.terminal.settings foreground "${FOREGROUND_COLOR}"
gsettings set io.elementary.terminal.settings cursor-color "${CURSOR_COLOR}"
gsettings set io.elementary.terminal.settings palette "${COLOR_01}:${COLOR_02}:${COLOR_03}:${COLOR_04}:${COLOR_05}:${COLOR_06}:${COLOR_07}:${COLOR_08}:${COLOR_09}:${COLOR_10}:${COLOR_11}:${COLOR_12}:${COLOR_13}:${COLOR_14}:${COLOR_15}:${COLOR_16}"

# Drops you in the same directory as the last tab when opening a new tab.
gsettings set io.elementary.terminal.settings follow-last-tab true

# Make the cursor an I-Beam instead of a Block.
gsettings set io.elementary.terminal.settings cursor-shape I-Beam
