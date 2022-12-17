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

source personal/aliases.nu

source default_config.nu

use core/completions.nu *
use core/themes.nu
use core/hooks.nu *
use core/menus.nu *
use core/keybindings.nu *

let custom_config = {
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

  color_config: (themes base16)

  edit_mode: vi
  show_banner: false

  hooks: (hooks)
  menus: (menus)
  keybindings: (keybindings)
}
let-env config = ($env.config | merge $custom_config)

use scripts/misc.nu *
use scripts/community.nu *
use applications/dotfiles.nu
use applications/vm.nu
use applications/venv.nu
use applications/job.nu
use applications/repo.nu
use applications/gf.nu
use applications/hx.nu
use applications/gh.nu
use applications/gpg.nu
use applications/sys.nu

source personal/final.nu
