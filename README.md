# Personal nvim configuration

This file contains personal neovim configuration that can also be used with VIM.

Puglins are installed via Plug

# Plug in can be installed via curl:

VIM
```
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

NEOVIM
```
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```

# Main key binding

  1. space + w   ---> :w save current file
  2. space + q   ---> :q quit current file
  3. space + fq  ---> :q! forces quit without saving
  4. space + t   ---> <Plugin> remove empty spaces on the document
  5. space + p   ---> run prettier
  6. space + cc  ---> comments a line or block
  7. space + cu  ---> uncoments a line or block
  8. space + b   ---> <Plugin> shows Conquer Of Completition options
  9. space + nt  ---> <Plugin> opens nerd tree navigation
  10. space + s  ---> <Plugin> easymotion allows navigation with two letters
  11. space + h  ---> :tabl navigates to frist left tab document
  12. space + j  ---> :tabp navigates to left tab document
  13. space + k  ---> :tabn navigates to the right tab document
  14. space + l  ---> :tabr navigates to the last right tab document
  
