#*
#*                  _    __ _ _
#*   __ _ ___  __ _| |_ / _(_) |___ ___  WEBSITE: https://goatfiles.github.io
#*  / _` / _ \/ _` |  _|  _| | / -_|_-<  REPOS:   https://github.com/goatfiles
#*  \__, \___/\__,_|\__|_| |_|_\___/__/  LICENCE: https://github.com/goatfiles/dotfiles/blob/main/LICENSE
#*  |___/
#*          MAINTAINERS:
#*              AMTOINE: https://github.com/amtoine antoine#1306 7C5EE50BA27B86B7F9D5A7BA37AAE9B486CFF1AB
#*              ATXR:    https://github.com/atxr    atxr#6214    3B25AF716B608D41AB86C3D20E55E4B1DE5B2C8B
#*

# base up-to-date with Nushell version 0.67.0

source ~/.local/share/nupm/load.nu

use core/hooks.nu
use core/menus.nu
use core/keybindings.nu

let-env config = ($env.config | merge {
    ls: {
        use_ls_colors: true
        clickable_links: false
    }
    rm: {
        always_trash: true
    }
    cd: {
        abbreviations: true
    }
    history: {
        file_format: "sqlite"
    }
    cursor_shape: {
        vi_insert: underscore
        vi_normal: underscore
    }
    table: {
        mode: rounded
        index_mode: always
        show_empty: false
    }

    color_config: $dark_theme

    edit_mode: vi
    show_banner: false

    hooks: (hooks set)
    menus: ($env.config.menus | append (menus set))
    keybindings: (keybindings set)
})

source personal/aliases.nu
source personal/final.nu

source ~/.cache/starship/init.nu

use std clip
