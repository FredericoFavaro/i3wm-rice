#!/usr/bin/env zsh

# Dependencies: jq
# 
# INFO:
# The default settings always focus on primary display. To change that to
# maintain focus on the screen/window focused after run this script, just
# uncomment the two comment lines below (12 and 21).

DISPLAY_CONFIG=($(i3-msg -t get_outputs | jq -r '.[]|select(.active == true) |"\(.current_workspace)"'))
# Uncomment the line below to enable focus following the window currently focused
#ACTIVE_WS=($(i3-msg -t get_workspaces | jq -r '.[]|select(.focused == true) | "\(.name)"'))
for ROW in "${DISPLAY_CONFIG[@]}"
do
read -r CONFIG <<< "${ROW}"
    i3-msg -- workspace --no-auto-back-and-forth "${CONFIG}"
    i3-msg -- move workspace to output right
done
i3-msg -- output primary
# Uncomment the line below to enable focus following the window currently focused
#i3-msg -- workspace "${ACTIVE_WS}"