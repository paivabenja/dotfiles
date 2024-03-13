#!/usr/bin/env python

import sys
import subprocess

search = ""
if len(sys.argv) > 1:
    search = sys.argv[1]

subprocess.run(
    f"flatpak run com.raggesilver.BlackBox -c \"tmux new-session -c ~/Code/{search} -s\"", shell=True)
