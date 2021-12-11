#!/usr/bin/env bash
#User is having sudo privileges or not

#sudo -v 1>/dev/null 2>/dev/null && echo "the user $(id -un) is haveing sudo privilages on this host $(hostname) " || echo "the user $(id -un) not have sudo privilages on this host $(hostname)"

if sudo -v 1>/dev/null 2>/dev/null
then
	echo "the user $(id -un) is haveing sudo privilages on this host $(hostname) "
else
	echo "the user $(id -un) not have sudo privilages on this host $(hostname)"
fi
