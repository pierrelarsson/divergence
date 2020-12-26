About
=====
Uniform themes/color schemes based on the xterm-256color palette, with its main focus on "divergence" in colors to improve readability instead of focusing on aesthetics.

It defines eight different colors/hues, each with four different tint/shades plus ten(*ish*) gray-scales.

Installation
============
git clone https://github.com/pierrelarsson/divergence.git ~/.themes/divergence

vim
---
![image](https://user-images.githubusercontent.com/248880/103152236-61630080-4786-11eb-961f-1491ac00d1a2.png)   
Symlink the **vim** file into your ```~/.vim/colors``` directory, eg.
```sh
mkdir --verbose --parents ~/.vim/colors
ln --symbolic ../../.themes/divergence/vim ~/.vim/colors/divergence.vim
```
Then specify the colorscheme in your ```~/.vimrc```, eg.
```vim
colorscheme divergence
```

xterm
-----
![image](https://user-images.githubusercontent.com/248880/103152442-51e4b700-4788-11eb-84de-7ea09836acd6.png)  
Include **xterm** from ```~/.Xresources```, eg.
```xdefaults
#include ".themes/divergence/xterm"
```

xscreensaver
------------
Include **xscreensaver** from ```~/.Xresources```, eg.
```xdefaults
#include ".themes/divergence/xscreensaver"
```

mutt
----
Source the file **mutt** into ```~/.muttrc```, eg.
```muttrc
source ~/.themes/divergence/mutt
```

dircolors
---------
Add this to your shell rc-file ```~/.bashrc```, eg. 
```sh
eval $(dircolors -b ~/.themes/divergence/dircolors)
```

xfce4-notifyd
-------------
If this git-repository was cloned into ```~/.themes/divergence```, the theme should be selectable in ```xfce4-notifyd-config```.
Or you can manually configure it in ```~/.config/xfce4/xfconf/xfce-perchannel-xml/xfce4-notifyd.xml```, eg.
```xml
<property name="theme" type="string" value="divergence"/>
```

rofi
----
![image](https://user-images.githubusercontent.com/248880/103152086-c74e8880-4784-11eb-842f-358627fee30a.png)   
Specify the theme in ```.config/rofi/config```, eg.
```
configuration {
    rofi.theme: ~/.themes/divergence/rofi
}
```

i3
--
**TODO**
