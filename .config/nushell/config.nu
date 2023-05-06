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

source default_config.nu

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
    menus: (menus set)
    keybindings: (keybindings set)
})

use goatfiles/nu_scripts/scripts/misc.nu *
use goatfiles/nu_scripts/scripts/community.nu *
use goatfiles/nu_scripts/scripts/dotfiles.nu
use goatfiles/nu_scripts/scripts/vm.nu
use goatfiles/nu_scripts/scripts/venv.nu
use goatfiles/nu_scripts/scripts/job.nu
use goatfiles/nu_scripts/scripts/gf.nu
use goatfiles/nu_scripts/scripts/hx.nu
use goatfiles/nu_scripts/scripts/gpg.nu
use goatfiles/nu_scripts/scripts/sys.nu
use goatfiles/nu_scripts/scripts/docker.nu
use goatfiles/nu_scripts/scripts/downloads.nu
use goatfiles/nu_scripts/scripts/ipfs.nu
use goatfiles/nu_scripts/scripts/ssh.nu
use goatfiles/nu_scripts/scripts/trash.nu
use goatfiles/nu_scripts/scripts/xdg.nu

use nushell/nu_scripts/custom-completions/cargo/cargo-completions.nu *
use nushell/nu_scripts/custom-completions/glow/glow-completions.nu *
use nushell/nu_scripts/custom-completions/make/make-completions.nu *

use nu-git-manager/mod.nu *
use nu-git-manager/sugar/git.nu
use nu-git-manager/sugar/gh.nu
use nu-git-manager/sugar/gist.nu
use nu-git-manager/sugar/completions.nu *

source personal/aliases.nu
source personal/final.nu

# start `starship`
# > **Note**  
# > this is the value given by `$env.STARSHIP_CACHE | path join "init.nu"`
source ~/.cache/starship/init.nu

use std clip
