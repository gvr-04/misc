## miscellaneous
* super+q -> terminal
* super+c -> close active
* sudo pacman -Syu -> to update
* sudo pacman -S git firefox ranger

## hyprland
* set in hyprland.conf:
    * animation -> yes to no 
    * blur -> false 
    * shadow -> false
    * `force_default_wallpaper = 0`
    * togglesplit -> S
    * killactive -> Q
    * terminal -> RETURN
    * move focus up, left, right, down -> k,h,l,j
    * comment out the special workspace
* to remap caps -> esc

```
$fileManager = kitty ranger
exec-once = dunst & hyprpaper & waybar
bind = $mainMod,w,exec,firefox --private-window 
bind = control_l,b,exec,killall waybar || waybar
bind = control_l,w,exec, killall hyprpaper || hyprpaper

input {
	kb_options = caps:escape
	}
general {
    border_size = 0
    }
```

## terminal
* change theme -> kitty +kitten themes	
* change font -> kitten choose-fonts

## file manager (ranger)
* install ranger-git from aur instead of pacman
* copy default configs -> ranger --copy-config=all
* press backspace to show hidden files in ranger
```
set preview_images_method kitty
set preview_images true
set show_hidden true
map <F1> shell hyprctl hyprpaper reload ,%d/%f #pressing f1 will change the wallpaper
```
* make sure `python-pillow` is installed
* add this to `.bashrc` to make sure neovim opens as default text editor
```
export EDITOR="nvim"
```

## neovim
To install vim plug:
```
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```
run  `:PlugInstall`

for markdown rendering add these to init.vim
```
"markdown
let g:mkdp_auto_start = 1
let g:mkdp_auto_close = 1
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


## todo
- [ ] add yay link
- [ ] add waybar configs link

