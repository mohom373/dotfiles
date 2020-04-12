#!/bin/sh
#wal -q --backend haishoku -i $HOME/Wallpapers/ -o pywal-discord
wal --backend colorthief --saturate 0.90 -i $HOME/Wallpapers/pinkflowers.jpg  
cp $HOME/.config/BetterDiscord/themes/pywal-discord.theme.css $HOME/snap/discord/109/.config/BetterDiscord/themes/pywal-discord.theme.css
/home/linuxbrew/.linuxbrew/bin/spicetify -q apply
