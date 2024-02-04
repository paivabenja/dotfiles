import json

# filename = '/home/paivita/.config/waybar/config.json'
filename = '/home/paivita/dotfiles/.config/waybar/config.json'  # because i use stow

with open(filename, 'r') as file:
    data = json.load(file)

chapter_number = data['custom/naruto']["on-click"][-3:]

print(chapter_number)
