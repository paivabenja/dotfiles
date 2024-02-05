import subprocess
from typing import Any, Dict
from kitty.boss import Boss
from kitty.window import Window


def on_close(boss: Boss, window: Window, data: Dict[str, Any]) -> None:
    if window.default_title != "tmux":
        return

    session_id = window.child_title.split(':')[0]
    subprocess.run(["tmux", "kill-session", "-t", session_id])

    # print("\n child title: ", window.child_title)
    # print("\n session id: ", session_id)
