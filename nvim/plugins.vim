" =============================================================================
" Plugins
" =============================================================================
"
call plug#begin('~/.vim/plugged')


let vimsettings = "~/.config/nvim/plugins"
let uname = system("uname -s")

for fpath in split(globpath(vimsettings, "*.vim"), "\n")
  if (fpath == expand(vimsettings) . "/set-keymap-mac.vim") && uname[:4] ==? "linux"
    continue " skip mac mappings for linux
  endif

  exe 'source' fpath
endfor


" Plug 'terryma/vim-multiple-cursors'
Plug 'sheerun/vim-polyglot'


" =============================================================================
" Code helpers
" =============================================================================
"
Plug 'tpope/vim-surround'               " Provides mappings to delete, change and add surroundings 
Plug 'editorconfig/editorconfig-vim'    " Enable editor config on vim

call plug#end()

