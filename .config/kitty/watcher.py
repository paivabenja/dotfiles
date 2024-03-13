import subprocess

stdout = subprocess.run(
    ["gsettings", "get", "org.gnome.desktop.interface", "color-scheme"], capture_output=True).stdout

tema = stdout.__str__().split("'")[1]

print(tema)
