#!/usr/bin/env bash
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

XDG_STATE=${XDG_STATE_HOME:-$HOME/.local/state}
[ ! -d "$XDG_STATE/bspwm/" ] && mkdir "$XDG_STATE/bspwm/"
LOG_FILE="$XDG_STATE/bspwm/bspwm.log"
[ ! -f "$LOG_FILE" ] && touch "$LOG_FILE"


timestamp () {
    date +"[%y/%m/%d][%H:%M:%S][%N]"
}


log_any () {
    echo "[$1]$(timestamp)$3 $2" | tee -a "$LOG_FILE";
}


log_err () {
    log_any "ERROR.." "$1" "$2"
}


log_warning () {
    log_any "WARNING" "$1" "$2"
}


log_debug () {
    log_any "DEBUG.." "$1" "$2"
}


log_info () {
    log_any "INFO..." "$1" "$2"
}


log_ok () {
    log_any "OK....." "$1" "$2"
}


notify_ok () {
  [ -n "$WM_NOTIFY_AT_STARTUP" ] && dunstify -u low -t 10000 -- "$1"
  log_ok "$1" "[scripts.autostart]"
}


notify_err () {
  [ -n "$WM_NOTIFY_AT_STARTUP" ] && dunstify -u critical -t 10000 -- "$1"
  log_err "$1" "[scripts.autostart]"
}


does_command_exist () {
  # Check if a command exist on the system.
  #
  # Args:
  #   $1: the name of the command.
  #
  # Returns:
  #   code: the same error code, saying whether the command exists or not.
  command -v "$1" &> /dev/null
}


kill_if_running () {
  # Kill a program only if running.
  #
  # Args:
  #   $1: the program to kill.
  #
  if pgrep -f "$1" 1> /dev/null; then
    killall "$1"
  fi
}


NO_BEGINNER="$XDG_STATE/bspwm/nobeginner"
run_conky () {
  # Run all the conky needed by bspwm, only once.
  #
  # Now, there is a help conky at $CONKY_HELP and a clock at $CONKY_CLOCK.
  #
  if [ ! -f "$NO_BEGINNER" ]; then
    conky --config "$WM_CONKY_HELP" --daemonize
    conky --config "$WM_CONKY_CLOCK" --daemonize
    mkdir -p "$(dirname "$NO_BEGINNER")"
    touch "$NO_BEGINNER"
  fi
}

