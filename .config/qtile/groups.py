#       ____ |__ \ ____              _____      personal page: https://a2n-s.github.io/ 
#      / __ `/_/ // __ \   ______   / ___/      github   page: https://github.com/a2n-s 
#     / /_/ / __// / / /  /_____/  (__  )       my   dotfiles: https://github.com/a2n-s/dotfiles 
#     \__,_/____/_/ /_/           /____/
#                              _____             __         __  _ __           __
#            _________  ____  / __(_)___ _     _/_/  ____ _/ /_(_) /__       _/_/  ____ __________  __  ______  _____         ____  __  __
#           / ___/ __ \/ __ \/ /_/ / __ `/   _/_/   / __ `/ __/ / / _ \    _/_/   / __ `/ ___/ __ \/ / / / __ \/ ___/        / __ \/ / / /
#      _   / /__/ /_/ / / / / __/ / /_/ /  _/_/    / /_/ / /_/ / /  __/  _/_/    / /_/ / /  / /_/ / /_/ / /_/ (__  )   _    / /_/ / /_/ /
#     (_)  \___/\____/_/ /_/_/ /_/\__, /  /_/      \__, /\__/_/_/\___/  /_/      \__, /_/   \____/\__,_/ .___/____/   (_)  / .___/\__, /
#                                /____/              /_/                        /____/                /_/                 /_/    /____/
#
# Description:  TODO
# Dependencies: TODO
# License:      https://github.com/a2n-s/dotfiles/blob/main/LICENSE 
# Contributors: Stevan Antoine

from typing import List  # noqa: F401

from libqtile.config import Group
from libqtile.config import Key
from libqtile.dgroups import simple_key_binder
from libqtile.lazy import lazy


def init_groups():
    """
        TODO
    """
    groups = [
        Group("D1",  layout="TALL"),
        Group("I2",  layout="TALL"),
        Group("S3",  layout="TALL"),
        Group("W4",  layout="TALL"),
        Group("C5",  layout="TALL"),
        Group("M6",  layout="TALL"),
        Group("V7",  layout="TALL"),
    ]
    # groups = [Group(i) for i in "123456789"]
    return groups


def link_groups_to_keys(groups, keys, mod):
    """
        TODO
    """
    for i, group in enumerate(groups):
        keys.extend([
            Key([mod],          str(i+1), lazy.group[group.name].toscreen(),                  desc="Switch to group {}".format(group.name)),
            Key([mod, "shift"], str(i+1), lazy.window.togroup(group.name, switch_group=True), desc="Switch to (& move if true) focused window to group {}".format(group.name)),
        ])


# # Allow MODKEY+[0 through 9] to bind to groups,
# see https://docs.qtile.org/en/stable/manual/config/groups.html
# # MOD4 + index Number : Switch to Group[index]
# # MOD4 + shift + index Number : Send active window to another Group
dgroups_key_binder = simple_key_binder("mod4")
dgroups_app_rules = []  # type: List