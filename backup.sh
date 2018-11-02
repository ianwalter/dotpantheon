#!/bin/bash

background=$(gsettings get io.elementary.terminal.settings background)
foreground=$(gsettings get io.elementary.terminal.settings foreground)
cursor=$(gsettings get io.elementary.terminal.settings cursor-color)
palette=$(gsettings get io.elementary.terminal.settings palette)

printf "$background\n$foreground\n$cursor\n$palette\n" > backup
