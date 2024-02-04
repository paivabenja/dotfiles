import json
import sys

option = sys.argv[1]

# filename = '/home/paivita/.config/waybar/config.json'
filename = '/home/paivita/dotfiles/.config/waybar/config.json'  # because i use stow

with open(filename, 'r') as file:
    data = json.load(file)

chapter_number = int(data['custom/naruto']["on-click"][-3:])
on_click = data['custom/naruto']["on-click"][:-3]

if (option == "next"):
    chapter_number += 1
elif (option == "prev"):
    chapter_number -= 1

data['custom/naruto']["on-click"] = on_click + str(chapter_number)

with open(filename, 'w') as file:
    json.dump(data, file, indent=2)

print(data['custom/naruto']["on-click"])
