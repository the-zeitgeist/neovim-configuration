echo 'Installing extensions'

:!sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

:PlugInstall
echo "Installing completition features"
:CocInstall coc-tabnine coc-pairs coc-lists coc-html coc-git coc-eslint coc-yaml coc-tslint coc-sh coc-rome coc-python coc-json coc-go coc-css
" :q
