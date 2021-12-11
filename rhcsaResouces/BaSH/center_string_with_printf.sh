#!/usr/bin/env bash
title="Hello how are you whats up ?"
COLUMNS=$(tput cols)
title_size=${#title}
span=$((($COLUMNS + $title_size) / 2))
printf "%${COLUMNS}s\n" " " | tr " " "*"
printf "%${span}s\n" "$title"
printf "%${COLUMNS}s" " " | tr " " "*"
