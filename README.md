About
=====
Uniform themes/color schemes based on the xterm-256color palette, with its main focus on "divergence" in colors to improve readability instead of focusing on aesthetics.

It defines eight different colors/hues, each with four different tint/shades plus ten(*ish*) gray-scales.

Installation
============
git clone https://github.com/pierrelarsson/divergence.git ~/.themes/divergence

vim
---
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

i3
--
**TODO**
