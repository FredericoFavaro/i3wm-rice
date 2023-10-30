#!/usr/bin/env bash
#Source: https://github.com/victortrac/polybar-scripts/tree/master/polybar-scripts/pipewire

function main() {
    DEFAULT_SOURCE=$(pw-record --list-targets | sed -n 's/^*[[:space:]]*[[:digit:]]\+: description="\(.*\)" prio=[[:digit:]]\+$/\1/p')
    DEFAULT_SINK_ID=$(pw-play --list-targets | sed -n 's/^*[[:space:]]*\([[:digit:]]\+\):.*$/\1/p')
    DEFAULT_SINK=$(pw-play --list-targets | sed -n 's/^*[[:space:]]*[[:digit:]]\+: description="\(.*\)" prio=[[:digit:]]\+$/\1/p')
    VOLUME=$(pamixer --get-volume-human)

    action=$1
    if [ "${action}" == "up" ]; then
        pamixer --increase 10
    elif [ "${action}" == "down" ]; then
        pamixer --decrease 10
    elif [ "${action}" == "mute" ]; then
        pamixer --toggle-mute
    else
        echo "  ${VOLUME}"
    fi
}

main "$@"

