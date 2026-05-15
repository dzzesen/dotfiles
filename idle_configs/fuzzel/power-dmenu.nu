#!/usr/bin/env nu

def main [] {
    # Define your commands and labels in a record
    let power_options = {
        "Power Off": { systemctl poweroff }
        "Lock":      { swaylock }
        "Logout":    { niri msg action quit }
        "Cancel":    { } # Do nothing
    }

    # Extract the keys (labels) for the menu
    let menu_input = $power_options | columns | str join "\n"

    # Call fuzzel
    let selected = $menu_input | fuzzel --config /home/dzesen/.dotfiles/configs/fuzzel/dmenu.ini --dmenu --prompt "Power Menu: " | str trim

    # Execute the command associated with the selection
    if ($selected | is-empty) or $selected == "Cancel" {
        return
    }

    if ($selected in $power_options) {
        do ($power_options | get $selected)
    }
}
