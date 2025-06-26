## miscellaneous
* super+q -> terminal
* super+c -> close active
* to update and install basic packages
```bash
sudo pacman -Syu 
sudo pacman -S git firefox lazygit github-cli wl-clipboard less ttf-font-awesome ttf-jetbrains-mono python-pillow
```

## yay installation
```bash
pacman -S --needed git base-devel && git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si # builds with makepkg
```

## hyprland
* set in hyprland.conf:

    * blur -> false 
    * shadow -> false
    * `force_default_wallpaper = 0`
    * togglesplit -> S
    * killactive -> Q
    * terminal -> RETURN
    * move focus up, left, right, down -> k,h,l,j
    * comment out the special workspace
    * to remap caps -> esc

```conf
$fileManager = kitty python3 ~/ranger/ranger.py
exec-once = dunst & hyprpaper & waybar
bind = $mainMod,w,exec,firefox --private-window 
bind = control_l,b,exec,killall waybar || waybar
bind = control_l,w,exec, killall hyprpaper || hyprpaper

input {
	kb_options = caps:escape
	}
general {
    border_size = 1
    }
```

## terminal
* change theme -> `kitty +kitten themes`	
* change font -> `kitten choose-fonts`
* add this to kitty.conf
```conf
window_padding_width 20
```

## file manager (ranger)
installation
```bash
git clone https://github.com/ranger/ranger/
cd ranger
python3 ./ranger.py
```
* copy default configs -> ranger --copy-config=all
* press backspace to show hidden files in ranger
```conf
set preview_images_method kitty
set preview_images true
set show_hidden true
map <F1> shell hyprctl hyprpaper reload ,%d/%f #pressing f1 will change the wallpaper
```
* make sure `python-pillow` is installed
* add this to `.bashrc` to make sure neovim opens as default text editor or change editor -> neovim in `rifle.py`
```bash
export EDITOR="nvim"
alias st="shutdown -h now"
```
## neovim
To install vim plug:
```bash
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```
run  `:PlugInstall`
* for markdown rendering add these to init.vim
```vim
"markdown
let g:mkdp_auto_start = 1
let g:mkdp_auto_close = 1
```
## screenshot
* add the three files `screenselect`, `screenactive` and `screenshot`
* make sure to install following `grim`, `jq` and `slurp`
* dunst for notification to check if it works use `dunstify "It works"`
* if it doesnot work check if `libnotify` is installed
* add the following lines to the `hyprland.conf`
* refer to this link for [source](https://github.com/equk/dotfiles)
* run `scrn.sh ?` to get help
```conf
bind = control_r,1, exec, ~/scrn.sh f   # screenshot of full screen/monitor
bind = control_r,2, exec, ~/scrn.sh a   # screenshot of active window
bind = control_r,3, exec, ~/scrn.sh s   # screenshot of a selected area
```
## github-cli
login to the gh account using browser
```bash
gh auth login
```
## final .bashrc
```bash
clear
alias sb="source .bashrc"
alias sd="shutdown -a now"
alias n="nvim"
alias lg="lazygit"
alias f="python3 ~/ranger/ranger.py"
```
## check dependencies and install the rest
run the script `check.sh`
## todo
- [x] add yay link
- [ ] add waybar configs link
- [ ] add vim keybinds in a table
