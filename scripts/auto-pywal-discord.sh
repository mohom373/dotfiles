#!/bin/sh
wal -q -i $HOME/Wallpapers/ -o pywal-discord
cp $HOME/.config/BetterDiscord/themes/pywal-discord.theme.css $HOME/snap/discord/109/.config/BetterDiscord/themes/pywal-discord.theme.css
/home/linuxbrew/.linuxbrew/bin/spicetify -q apply
