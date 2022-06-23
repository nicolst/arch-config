" Plugins
call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-repeat'

Plug 'vimsence/vimsence'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
let g:airline_powerline_fonts = 1

Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Plug 'ycm-core/YouCompleteMe'
" let g:ycm_autoclose_preview_window_after_completion = 1
" let g:ycm_path_to_python_interpreter='/usr/bin/python'
" let g:ycm_language_server = [
" \   { 'name': 'fortran',
" \     'filetypes': [ 'fortran' ],
" \     'cmdline': [ 'fortls' ],
" \   },
" \ ]
" let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
" let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
" let g:SuperTabDefaultCompletionType = '<C-n>'

Plug 'tpope/vim-sensible'

Plug 'arcticicestudio/nord-vim'

Plug 'preservim/nerdtree' |
            \ Plug 'Xuyuanp/nerdtree-git-plugin'

Plug 'lervag/vimtex'
let g:tex_flavor='latex'
let g:vimtex_view_method='zathura'
let g:vimtex_quickfix_mode=0
set conceallevel=1
let g:tex_conceal='abdmg'
let g:vimtex_compiler_latexmk = {
        \ 'options' : [
        \   '-pdf' ,
        \   '-shell-escape' ,
        \   '-verbose' ,
        \   '-file-line-error',
        \   '-synctex=1' ,
        \   '-interaction=nonstopmode' ,
        \ ],
        \ 'build_dir' : 'build',
        \}

Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install' }

Plug 'sirver/ultisnips'
let g:UltiSnipsExpandTrigger = '<c-j>'
let g:UltiSnipsJumpForwardTrigger = '<c-j>'
let g:UltiSnipsJumpBackwardTrigger = '<c-k>'
let g:UltiSnipsSnippetDirectories=[$HOME.'/.vim/ultisnips']

Plug 'tpope/vim-commentary'

Plug 'tpope/vim-surround'

Plug 'ledger/vim-ledger'

Plug 'preservim/tagbar'

Plug 'tpope/vim-fugitive'

Plug 'myusuf3/numbers.vim'

Plug 'ericcurtin/CurtineIncSw.vim'

Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }

call plug#end()

" Other settings
set nocompatible
colo molokai
filetype plugin indent on
syntax enable

" Fixes background issue
let &t_ut=''

set number
set encoding=utf8

set expandtab
set tabstop=4
set shiftwidth=4

set foldmethod=marker

set undolevels=1000

set clipboard=unnamed

set exrc
set secure

"""""" Remaps
let mapleader=","

""" Quickfix list
nnoremap <silent> <leader>cn :cnext<CR>
nnoremap <silent> <leader>ck :cprev<CR>
nnoremap <silent> <leader>cj :cnext<CR>
nnoremap <silent> <leader>cf :cfirst<CR>
nnoremap <silent> <leader>cl :clast<CR>
nnoremap <silent> <leader>co :copen<CR>
nnoremap <silent> <leader>cc :cclose<CR>
nnoremap <silent> <leader>ce :cexpr []<CR>:echon ''<CR>
nnoremap <leader>ci :cc

""" Use YCM for GoTo dec/def
" au FileType cpp,c,fortran,python nnoremap <silent> <buffer> gd :YcmCompleter GoToDeclaration<CR>
" au FileType cpp,c,fortran,python nnoremap <silent> <buffer> gD :YcmCompleter GoToDefinition<CR>
" au FileType cpp,c,fortran,python nnoremap <silent> <buffer> gr :YcmCompleter GoToReferences<CR>

""" Run Python files
au FileType python nnoremap <silent> <buffer> <leader>rr :w<CR>:!clear;python %<CR>
au FileType python nnoremap <silent> <buffer> <leader>rv :w<CR>:ter python "%"<CR>
au FileType python nnoremap <silent> <buffer> <leader>rb :w<CR>:vert ter python "%"<CR>

" C++ stuff
au FileType cpp nnoremap <silent> <buffer> <leader>rr :w<CR>:!clear;g++ -std=c++20 % && ./a.out<CR>
au FileType cpp nnoremap <silent> <buffer> <leader>rv :w<CR>:ter ++shell g++ -std=c++20 % && ./a.out<CR>
au FileType cpp nnoremap <silent> <buffer> <leader>rb :w<CR>:vert ter ++shell g++ -std=c++20 % && ./a.out<CR>
" Switch between source/header
au FileType cpp nnoremap <silent> <buffer> <leader>l :call CurtineIncSw()<CR>

""" Spellcheck
au FileType latex,text,markdown setlocal spell

""" Line wrapping
au FileType markdown,tex,text setlocal textwidth=80


" Easier terminal access
nnoremap <silent> <leader>tt :term<CR>
nnoremap <silent> <leader>tv :vert term<CR>
noremap <silent> <Leader>' :Commentary<CR>



inoremap jk <Esc>
command NT NERDTree
command W w
command Q q
command Wq wq
command WQ wq
command Spongebob au InsertCharPre * if rand()%2 | let v:char = toupper(v:char) | endif
command QQ q!

nnoremap <C-N> :NERDTreeToggle<CR>
nnoremap <C-Q> :TagbarToggle<CR>

hi MatchParen ctermfg=208 ctermbg=bg



""" COC !!!
" Set internal encoding of vim, not needed on neovim, since coc.nvim using some
" unicode characters in the file autoload/float.vim
set encoding=utf-8

" TextEdit might fail if hidden is not set.
set hidden

" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup

" Give more space for displaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("nvim-0.5.0") || has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ CheckBackspace() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call ShowDocumentation()<CR>

function! ShowDocumentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('K', 'in')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying codeAction to the current buffer.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

" Run the Code Lens action on the current line.
nmap <leader>cl  <Plug>(coc-codelens-action)

" Map function and class text objects
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)

" Remap <C-f> and <C-b> for scroll float windows/popups.
if has('nvim-0.4.0') || has('patch-8.2.0750')
  nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
  inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
  inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
  vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
endif

" Use CTRL-S for selections ranges.
" Requires 'textDocument/selectionRange' support of language server.
nmap <silent> <C-s> <Plug>(coc-range-select)
xmap <silent> <C-s> <Plug>(coc-range-select)

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocActionAsync('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocActionAsync('runCommand', 'editor.action.organizeImport')

" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Mappings for CoCList
" Show all diagnostics.
nnoremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions.
nnoremap <silent><nowait> <space>e  :<C-u>CocList extensions<cr>
" Show commands.
nnoremap <silent><nowait> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document.
nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols.
nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent><nowait> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent><nowait> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list.
nnoremap <silent><nowait> <space>p  :<C-u>CocListResume<CR>
