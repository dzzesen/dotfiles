#!/usr/bin/env nu

def main [] {
    let fuzzel_config = "/home/dzesen/.dotfiles/configs/fuzzel/dmenu.ini"

    # 1. Get the record from niri
    let data = niri msg -j keyboard-layouts | from json
    
    # 2. Extract names and the current index
    let names = $data.names
    let current = $data.current_idx

    # 3. Build the menu list using the index of the list
    let menu_input = $names | enumerate | each {|item|
        let prefix = if $item.index == $current { "* " } else { "  " }
        $"($prefix)($item.index): ($item.item)"
    } | str join "\n"

    # 4. Prompt user
    let selected = $menu_input 
        | fuzzel --config $fuzzel_config --dmenu --prompt "Keyboard layouts: " 
        | str trim

    if ($selected | is-empty) { return }

    # 5. Extract the index from the selection (e.g., "* 0: English")
    # We strip the '*' and take the part before the colon
    let index = $selected 
        | str replace "*" "" 
        | split row ":" 
        | first 
        | str trim

    # 6. Switch if it's not the one already marked with "*"
    if not ($selected | str starts-with "*") {
        niri msg action switch-layout ($index | into int)
    }
}
