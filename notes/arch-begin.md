## miscellaneous
* super+q -> terminal
* super+c -> close active
* sudo pacman -Syu -> to update
* sudo pacman -S git firefox ranger
## terminal
* change theme -> kitty +kitten themes	
* change font -> kitten choose-fonts
## file manager (ranger)
* copy default configs -> ranger --copy-config=all
* press backspace to show hidden files in ranger
```
set preview_images_method kitty
set preview_images true
```
* make sure `python-pillow` is installed
* add this to `.bashrc` to make sure nvim opens as defult text editor
```
export EDITOR="nvim"
```

## screenshot
* add the three files `screenselect`, `screenactive` and `screenshot`
* make sure to install following `grim`, `jq` and `slurp`
* dunst for notification to check if it works use `dunstify "It works"`
* if it doesnot work check if "libnotify" is installed
* add the following lines to the `hyprland.conf`
```
bind = control_r,1, exec, ~/scripts/scrn/screenshot 
bind = control_r,2, exec, ~/scripts/scrn/screenactive 
bind = control_r,3, exec, ~/scripts/scrn/screenselect 
```
## remap capslock to esc key (hyprland)
```
input {
	kb_options = caps:escape
	}
```


