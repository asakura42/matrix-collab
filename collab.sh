#!/bin/bash
attxt=$(mktemp /tmp/XXXXXXXXX.md)
msg=$(matrix-commander --tail 1 --listen-self 2>/dev/null | sed "1s/.*| //")
if [[ "$msg" == "working" ]] ; then
	echo "Sorry, but your colleague is working now."
else
	matrix-commander -m "working"
	echo "$msg" > "$attxt"
	test $EDITOR && $EDITOR "$attxt" || vi "$attxt"
	matrix-commander -k -m "$(cat $attxt)"
fi
