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

# Keybindings file for CliFM

# Use the 'kbgen' plugin (compile it first: gcc -o kbgen kbgen.c) to 
# find out the escape code for the key o key sequence you want. Use 
# either octal, hexadecimal codes or symbols.
# Ex: For Alt-/ (in rxvt terminals) 'kbgen' will print the following 
# lines:
# Hex  | Oct | Symbol
# ---- | ---- | ------
# \x1b | \033 | ESC (\e)
# \x2f | \057 | /
# In this case, the keybinding, if using symbols, is: "\e/:function"
# In case you prefer the hex codes it would be: \x1b\x2f:function.
# GNU emacs escape sequences are also allowed (ex: "\M-a", Alt-a
# in most keyboards, or "\C-r" for Ctrl-r).
# Some codes, especially those involving keys like Ctrl or the arrow
# keys, vary depending on the terminal emulator and the system settings.
# These keybindings should be set up thus on a per terminal basis.
# You can also consult the terminfo database via the infocmp command.
# See terminfo(5) and infocmp(1).

# Alt-j
previous-dir:\M-j
# Shift-left (rxvt)
previous-dir2:\e[d
# Shift-left (xterm)
previous-dir3:\e[2D
# Shift-left (others)
previous-dir4:\e[1;2D

# Alt-k
next-dir:\M-k
# Shift-right (rxvt)
next-dir2:\e[c
# Shift-right (xterm)
next-dir3:\e[2C
# Shift-right (others)
next-dir4:\e[1;2C
first-dir:\C-\M-j
last-dir:\C-\M-k

# Alt-u
parent-dir:\M-u
# Shift-up (rxvt)
parent-dir2:\e[a
# Shift-up (xterm)
parent-dir3:\e[2A
# Shift-up (others)
parent-dir4:\e[1;2A

# Alt-e
home-dir:\M-e
# Home key (rxvt)
#home-dir2:\e[7~
# Home key (xterm)
#home-dir3:\e[H
# Home key (Emacs term)
#home-dir4:\e[1~

# Alt-r
root-dir:\M-r
# Alt-/ (rxvt)
root-dir2:\e/
#root-dir3:

pinned-dir:\M-p
workspace1:\M-1
workspace2:\M-2
workspace3:\M-3
workspace4:\M-4

# Help
# F1-3
show-manpage:\eOP
show-manpage2:\e[11~
show-cmds:\eOQ
show-cmds2:\e[12~
show-kbinds:\eOR
show-kbinds2:\e[13~

archive-sel:\C-\M-a
bookmark-sel:\C-\M-b
bookmarks:\M-b
clear-line:\M-c
clear-msgs:\M-t
create-file:\M-n
deselect-all:\M-d
export-sel:\C-\M-e
dirs-first:\M-g
lock:\M-o
mountpoints:\M-m
move-sel:\C-\M-n
new-instance:\C-x
next-profile:\C-\M-p
only-dirs:\M-,
open-sel:\C-\M-g
paste-sel:\C-\M-v
prepend-sudo:\M-v
previous-profile:\C-\M-o
rename-sel:\C-\M-r
remove-sel:\C-\M-d
refresh-screen:\C-r
selbox:\M-s
select-all:\M-a
show-dirhist:\M-h
sort-previous:\M-z
sort-next:\M-x
toggle-hidden:\M-i
toggle-hidden2:\M-.
toggle-light:\M-y
toggle-long:\M-l
toggle-max-name-len:\C-\M-l
toggle-disk-usage:\C-\M-i
trash-sel:\C-\M-t
untrash-all:\C-\M-u

# F6-12
open-mime:\e[17~
open-jump-db:\e[18~
edit-color-scheme:\e[19~
open-keybinds:\e[20~
open-config:\e[21~
open-bookmarks:\e[23~
quit:\e[24~

# Plugins
# 1) Make sure your plugin is in the plugins directory (or use any of the
# plugins in there)
# 2) Link pluginx to your plugin using the 'actions edit' command. Ex:
# "plugin1=myplugin.sh"
# 3) Set a keybinding here for pluginx. Ex: "plugin1:\M-7"

#plugin1:
#plugin2:
#plugin3:
#plugin4:
