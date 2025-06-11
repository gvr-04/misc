CURRENT_WALL=$(hyprctl hyprpaper listloaded)

NEW_WALL=$(find ~/Pictures/wallpapersdirectory/ -type f ! -name "$(basename "$CURRENT_WALL")" | shuf -n 1)

path1=~/.config/hypr/hyprpaper.conf

echo "">$path1
echo "preload=$NEW_WALL" >> $path1
echo "wallpaper=,$NEW_WALL" >> $path1
 
hyprctl hyprpaper reload ,$NEW_WALL
