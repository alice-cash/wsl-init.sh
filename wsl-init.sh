#!/bin/bash

# Add new shortcut under the following directory
# "C:\Users\%USERNAME%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup"
# Make the shortcut here the following is an example, assuming this file is /etc/wsl-init.sh
# You can change the 3 to 5 for example if for example you used x11
# C:\Windows\System32\bash.exe -c "/usr/bin/sudo /etc/wsl-init.sh 3"

[[ -z $1 ]] && { echo "Need to specify a run level"; exit 127; }

run_level=$1

[[ -d /etc/rc${run_level}.d/ ]] ||  { echo "Need to specify a run level"; exit 127; }

for rc_service in /etc/rc${run_level}.d/K*; do
        [[ -e "$rc_service" ]] && $rc_service stop
done

for rc_service in /etc/rc${run_level}.d/S*; do
        [[ -e "$rc_service" ]] && $rc_service start
done
