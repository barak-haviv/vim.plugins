" ~/.vim/sessions/default.vim:
" Vim session script.
" Created by session.vim 2.2 on 30 May 2013 at 12:43:06.
" Open this file in Vim and run :source % to restore your session.

set guioptions=aegimrLtT
silent! set guifont=Courier
if exists('g:syntax_on') != 1 | syntax on | endif
if exists('g:did_load_filetypes') != 1 | filetype on | endif
if exists('g:did_load_ftplugin') != 1 | filetype plugin on | endif
if exists('g:did_indent_on') != 0 | filetype indent off | endif
if &background != 'dark'
	set background=dark
endif
if !exists('g:colors_name') || g:colors_name != 'desert' | colorscheme desert | endif
call setqflist([])
let SessionLoad = 1
if &cp | set nocp | endif
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/examples/rails/my_rails_casts/raffler
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +2 config/routes.rb
badd +1 app/views/layouts/application.html.erb
silent! argdel *
edit app/views/layouts/application.html.erb
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
exe 'vert 1resize ' . ((&columns * 21 + 113) / 227)
exe 'vert 2resize ' . ((&columns * 205 + 113) / 227)
" argglobal
enew
" file NERD_tree_1
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal nofen
wincmd w
" argglobal
setlocal fdm=marker
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 11 - ((10 * winheight(0) + 26) / 53)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
11
normal! 02l
wincmd w
2wincmd w
exe 'vert 1resize ' . ((&columns * 21 + 113) / 227)
exe 'vert 2resize ' . ((&columns * 205 + 113) / 227)
tabnext 1
if exists('s:wipebuf')
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filnxtToO
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
tabnext 1
1wincmd w
let s:bufnr_save = bufnr("%")
let s:cwd_save = getcwd()
NERDTree ~/examples/rails/my_rails_casts/raffler
if bufnr("%") != s:bufnr_save
  execute "bwipeout" s:bufnr_save
endif
execute "cd" fnameescape(s:cwd_save)
1resize 53|vert 1resize 21|2resize 53|vert 2resize 205|
tabnext 1
2wincmd w
doautoall SessionLoadPost
unlet SessionLoad
" vim: ft=vim ro nowrap smc=128
