" Maintainer:   Kacper Kocot <kocotian@kocotian.pl>

" Shortcuts to open html document in browser
autocmd FileType html nnoremap <F24><F24> <Esc><Esc>:!$BROWSER file:///'%:p' &<CR>
autocmd FileType html nnoremap <F24>q <Esc><Esc>:!qutebrowser file:///'%:p' &<CR>
autocmd FileType html nnoremap <F24>s <Esc><Esc>:!surf file:///'%:p' &<CR>
autocmd FileType html nnoremap <F24>c <Esc><Esc>:!chromium file:///'%:p' &<CR>

" == Basic Vim Macros ==
let @B = "069lf r\n"
nnoremap ;BB 9999@B

" == <C-O> is just o, but without going to insert mode, meta is like shift ==
nnoremap <C-O> o<Esc>
nnoremap <C-M-O> O<Esc>

" == Line moving ==
nnoremap <C-S-K> kkjjddkP
nnoremap <C-S-J> jkddp
vnoremap <C-S-K> kkjjddkP
vnoremap <C-S-J> jkddp
inoremap <C-S-K> <Esc>kkjjddkPi
inoremap <C-S-J> <Esc>jkddpi

" == Semicolon Macros ==
vnoremap ;s :sort<CR>
inoremap ;M <++>

" Spaces
inoremap <Space><Space> <Esc>0/<++><CR>4s
inoremap <Space>d<Space> <Esc>0/<++><CR>ddi
inoremap <Space>k<Space> <Esc>0/<+++><CR>5s

inoremap <Space>n<Space> <Esc>/<++><CR>4s
inoremap <Space>dn<Space> <Esc>/<++><CR>ddi
inoremap <Space>kn<Space> <Esc>/<+++><CR>5s

inoremap <Space>p<Space> <Esc>?<++><CR>4s
inoremap <Space>dp<Space> <Esc>?<++><CR>ddi
inoremap <Space>kp<Space> <Esc>?<+++><CR>5s

nnoremap <Space> i<Space><Esc>l

" HTML, PHP
autocmd FileType html,php inoremap ;! <!DOCTYPE html><CR><html><CR><head><CR><meta charset="UTF-8" /><CR><title><+++></title><CR><++><CR></head><CR><body><CR><++><CR></body><CR></html><Esc>?<+++><CR>5s
autocmd FileType html,php,stac inoremap ;o <CR><+++><CR><Esc>?<+++><CR>5s
autocmd FileType html,php,stac inoremap ;1 <h1><+++></h1><++><Esc>?<+++><CR>5s
autocmd FileType html,php,stac inoremap ;2 <h2><+++></h2><++><Esc>?<+++><CR>5s
autocmd FileType html,php,stac inoremap ;3 <h3><+++></h3><++><Esc>?<+++><CR>5s
autocmd FileType html,php,stac inoremap ;4 <h4><+++></h4><++><Esc>?<+++><CR>5s
autocmd FileType html,php,stac inoremap ;5 <h5><+++></h5><++><Esc>?<+++><CR>5s
autocmd FileType html,php,stac inoremap ;6 <h6><+++></h6><++><Esc>?<+++><CR>5s
autocmd FileType html,php,stac inoremap ;b <b><+++></b><++><Esc>?<+++><CR>5s
autocmd FileType html,php,stac inoremap ;i <i><+++></i><++><Esc>?<+++><CR>5s
autocmd FileType html,php,stac inoremap ;u <u><+++></u><++><Esc>?<+++><CR>5s
autocmd FileType html,php,stac inoremap ;st <s><+++></s><++><Esc>?<+++><CR>5s
autocmd FileType html,php,stac inoremap ;a <a href="<+++>"><++></a><Esc>?<+++><CR>5s
autocmd FileType html,php,stac inoremap ;I <img src="" /><Esc>3li
autocmd FileType html,php,stac inoremap ;p <p><+++></p><Esc>?<+++><CR>5s
autocmd FileType html,php,stac inoremap ;d <div><CR><++><CR></div><Esc>?<++><CR>4s
autocmd FileType html,php,stac inoremap ;Dc <div class="<+++>"><++></div><Esc>?<+++><CR>5s
autocmd FileType html,php,stac inoremap ;sp <span><+++></span><Esc>?<+++><CR>5s
autocmd FileType html,php,stac inoremap ;sup <sup><+++></sup><Esc>?<+++><CR>5s
autocmd FileType html,php,stac inoremap ;sub <sub><+++></sub><Esc>?<+++><CR>5s
autocmd FileType html,php,stac inoremap ;t <Tagname><++></Tagname><Esc>2?Tagname<CR>
autocmd FileType html noremap ;: <Esc>:set ft=php<CR>
autocmd FileType php noremap ;: <Esc>:set ft=html<CR>
autocmd FileType stac inoremap ;! @template = basic<CR><p><CR>	<+++><CR>%%<CR><Backspace></p><Esc>?<+++><CR>5s

" C
autocmd FileType c,cpp inoremap ;! #include <stdio.h><CR><CR>int<CR>main(int argc, char *argv[])<CR>{<CR><+++><CR>}<Esc>?<+++><CR>5s
autocmd FileType c,cpp inoremap ;in #include <<+++>><CR><++><Esc>?<+++><CR>5s
autocmd FileType c,cpp inoremap ;IS #include <stdio.h><CR>#include <stdlib.h><CR>#include <string.h><CR>#include <unistd.h><CR><CR>
autocmd FileType c,cpp inoremap ;de #define<Space>
autocmd FileType c,cpp inoremap ;vi int
autocmd FileType c,cpp inoremap ;vc char
autocmd FileType c,cpp inoremap ;vs char *
autocmd FileType c,cpp inoremap ;vp <+++> *<++>
autocmd FileType c,cpp inoremap ;fc <+++>(<++>);<CR><++><Esc>?<+++><CR>5s
autocmd FileType c,cpp inoremap ;fn <+++>(<++>)<CR>{<CR><++><CR>}<Esc>?<+++><CR>5s
autocmd FileType c,cpp inoremap ;mm int<CR>main(int argc, char *argv[])<CR>{<CR><+++><CR>}<Esc>?<+++><CR>5s
autocmd FileType c,cpp inoremap ;mv int<CR>main(void)<CR>{<CR><+++><CR>}<Esc>?<+++><CR>5s
autocmd FileType c,cpp inoremap ;cm <++> /* <+++> */<Esc>?<+++><CR>5s
autocmd FileType c,cpp inoremap ;co <++><Esc>o/* <+++> */<Esc>?<+++><CR>5s
autocmd FileType c,cpp inoremap ;cO <++><Esc>O/* <+++> */<Esc>?<+++><CR>5s
autocmd FileType c,cpp inoremap ;ca <++><Esc>A<Space>/* <+++> */<Esc>?<+++><CR>5s
autocmd FileType c,cpp inoremap ;ci <++><Esc>I/* <+++> */<Space><Esc>?<+++><CR>5s
autocmd FileType c,cpp inoremap ;pf printf("<+++>"<++>);<CR><++><Esc>?<+++><CR>5s
autocmd FileType c,cpp inoremap ;if if (<+++>) {<CR><++><CR>} <++><Esc>?<+++><CR>5s
autocmd FileType c,cpp inoremap ;ei else if (<+++>) {<CR><++><CR>} <++><Esc>?<+++><CR>5s
autocmd FileType c,cpp inoremap ;el else {<CR><+++><CR>}<CR><++><Esc>?<+++><CR>5s
autocmd FileType c,cpp inoremap ;wh while (<+++>) {<CR><++><CR>}<CR><++><Esc>?<+++><CR>5s
autocmd FileType c,cpp inoremap ;fo for (<+++>) {<CR><++><CR>}<CR><++><Esc>?<+++><CR>5s
autocmd FileType c,cpp inoremap ;do do {<CR><++><CR>} while (<+++>);<CR><++><Esc>?<+++><CR>5s
autocmd FileType c,cpp inoremap ;st typedef struct {<CR><++><CR>} <+++>;<CR><++><Esc>?<+++><CR>5s
autocmd FileType c,cpp inoremap ;un typedef union {<CR><++><CR>} <+++>;<CR><++><Esc>?<+++><CR>5s
autocmd FileType c,cpp inoremap ;en typedef enum { <++> } <+++>;<CR><++><Esc>?<+++><CR>5s
autocmd FileType c,cpp inoremap ;PP <++><Esc>f)i,<Space>
autocmd FileType c,cpp inoremap ;Ps %s<++><Esc>f)i,<Space>
autocmd FileType c,cpp inoremap ;Pd %d<++><Esc>f)i,<Space>
autocmd FileType c,cpp inoremap ;Pc %c<++><Esc>f)i,<Space>
autocmd FileType c,cpp inoremap ;Pp %p<++><Esc>f)i,<Space>

autocmd FileType c,cpp nnoremap ;if Iif (<Esc>A) {<CR><+++><CR>} <++><Esc>?<+++><CR>5s
autocmd FileType c,cpp nnoremap ;ei Ielse if (<Esc>A) {<CR><+++><CR>} <++><Esc>?<+++><CR>5s
autocmd FileType c,cpp nnoremap ;wh Iwhile (<Esc>A) {<CR><+++><CR>}<CR><++><Esc>?<+++><CR>5s
autocmd FileType c,cpp nnoremap ;fo Ifor (<Esc>A) {<CR><+++><CR>}<CR><++><Esc>?<+++><CR>5s
autocmd FileType c,cpp nnoremap ;do Ido {<CR><+++><CR>} while (<Esc>A);<CR><++><Esc>?<+++><CR>5s

" VimWiki
autocmd FileType vimwiki,scratch inoremap ;1 =  =<CR><++><Esc>k01la
autocmd FileType vimwiki,scratch inoremap ;2 ==  ==<CR><++><Esc>k02la
autocmd FileType vimwiki,scratch inoremap ;3 ===  ===<CR><++><Esc>k03la
autocmd FileType vimwiki,scratch inoremap ;4 ====  ====<CR><++><Esc>k04la
autocmd FileType vimwiki,scratch inoremap ;5 =====  =====<CR><++><Esc>k05la
autocmd FileType vimwiki,scratch inoremap ;b *<+++>* <++><Esc>?<+++><CR>5s
autocmd FileType vimwiki,scratch inoremap ;i _<+++>_ <++><Esc>?<+++><CR>5s
autocmd FileType vimwiki,scratch inoremap ;l [[<+++>]]<Esc>?<+++><CR>5s

" Colors for my VimWiki build
autocmd FileType vimwiki,scratch inoremap ;,r ,r,r<Esc>hi
autocmd FileType vimwiki,scratch inoremap ;,g ,g,g<Esc>hi
autocmd FileType vimwiki,scratch inoremap ;,y ,y,y<Esc>hi
autocmd FileType vimwiki,scratch inoremap ;,b ,b,b<Esc>hi
autocmd FileType vimwiki,scratch inoremap ;,m ,m,m<Esc>hi
autocmd FileType vimwiki,scratch inoremap ;,c ,c,c<Esc>hi
autocmd FileType vimwiki,scratch inoremap ;,R ,R,R<Esc>hi
autocmd FileType vimwiki,scratch inoremap ;,G ,G,G<Esc>hi
autocmd FileType vimwiki,scratch inoremap ;,Y ,Y,Y<Esc>hi
autocmd FileType vimwiki,scratch inoremap ;,B ,B,B<Esc>hi
autocmd FileType vimwiki,scratch inoremap ;,M ,M,M<Esc>hi
autocmd FileType vimwiki,scratch inoremap ;,C ,C,C<Esc>hi

" LaTeX
autocmd FileType tex inoremap ;! \documentclass{article}<CR>\author{<+++>}<CR>\title{<++>}<CR><CR>\begin{document}<CR>\maketitle<CR>\tableofcontents<CR><CR><++><CR>\end{document}<Esc>?<+++><CR>5s
autocmd FileType tex inoremap ;bf \textbf{} <++><Esc>T{i
autocmd FileType tex inoremap ;it \textit{} <++><Esc>T{i
autocmd FileType tex inoremap ;tt \texttt{} <++><Esc>T{i
autocmd FileType tex inoremap ;beg \begin{something}<CR><++><CR>\end{something}<Esc>2?something<CR>
autocmd FileType tex inoremap ;1 \section{<+++>}<CR><++><Esc>?<+++><CR>5s
autocmd FileType tex inoremap ;2 \subsection{<+++>}<CR><++><Esc>?<+++><CR>5s
autocmd FileType tex inoremap ;3 \subsubsection{<+++>}<CR><++><Esc>?<+++><CR>5s
autocmd FileType tex inoremap ;up \usepackage{<+++>}<Esc>?<+++><CR>5s

" == Functions ==
function g:Once()
	let macroname = "_" . substitute(expand('%:t'), '\.', '_', 'g')
	execute "normal i#ifndef " . macroname . "\egUiwA\r#define " . macroname . "\egUiwA\r\t<+++>\r#endif\e?<+++>\r5s"
endfunction

" Scratchpad
	autocmd BufRead,BufNewFile scratch.* set filetype=scratch
	autocmd BufRead,BufNewFile scratch.* normal G
	autocmd BufRead,BufNewFile scratch.* startinsert

command Once call Once()

" Evaluating simple math in vimscript
nnoremap <C-M-e> "myy:execute "echo " . @m<CR>
inoremap <C-M-e> <Esc>"myy:execute "echo " . @m<CR>
vnoremap <C-M-e> "my:execute "echo " . @m<CR>

" Getting function from Manual
function! ManGetFunctionCall()
	normal "myiwe
	try
		execute "split man://" . @m . ".3"
	catch
		echoe "An error occured while opening manual"
		exit
	endtry
	normal gg
	execute "/[^a-zA-Z0-9]" . @m . "("
	call setreg('m', "")
	normal ^f("mya(
	close
	normal "mpF(
endfunction

command ManGetFunctionCall call ManGetFunctionCall()
nnoremap <silent> gK :ManGetFunctionCall<CR>
