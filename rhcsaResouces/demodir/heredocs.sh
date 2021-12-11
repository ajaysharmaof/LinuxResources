#!/bin/bash
cat << EOF | grep "USER"
USER: $USER
HOME: $HOME
EOF
