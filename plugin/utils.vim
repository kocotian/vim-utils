" Maintainer:   Kacper Kocot <kocotian@kocotian.pl>

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
autocmd FileType html,php,c,cpp,vimwiki,tex inoremap <Space><Space> <Esc>0/<++><CR>4s
autocmd FileType html,php,c,cpp,vimwiki,tex inoremap <Space>d<Space> <Esc>0/<++><CR>ddi
autocmd FileType html,php,c,cpp,vimwiki,tex inoremap <Space>k<Space> <Esc>0/<+++><CR>5s

autocmd FileType html,php,c,cpp,vimwiki,tex inoremap <Space>n<Space> <Esc>/<++><CR>4s
autocmd FileType html,php,c,cpp,vimwiki,tex inoremap <Space>dn<Space> <Esc>/<++><CR>ddi
autocmd FileType html,php,c,cpp,vimwiki,tex inoremap <Space>kn<Space> <Esc>/<+++><CR>5s

autocmd FileType html,php,c,cpp,vimwiki,tex inoremap <Space>p<Space> <Esc>?<++><CR>4s
autocmd FileType html,php,c,cpp,vimwiki,tex inoremap <Space>dp<Space> <Esc>?<++><CR>ddi
autocmd FileType html,php,c,cpp,vimwiki,tex inoremap <Space>kp<Space> <Esc>?<+++><CR>5s

autocmd FileType html,php,c,cpp,vimwiki,tex nnoremap <Space> i<Space><Esc>l

" HTML, PHP
autocmd FileType html,php inoremap ;! <!DOCTYPE html><CR><html><CR><head><CR><meta charset="UTF-8" /><CR><title><+++></title><CR><++><CR></head><CR><body><CR><++><CR></body><CR></html><Esc>?<+++><CR>5s
autocmd FileType html,php inoremap ;o <CR><+++><CR><Esc>?<+++><CR>5s
autocmd FileType html,php inoremap ;1 <h1><+++></h1><++><Esc>?<+++><CR>5s
autocmd FileType html,php inoremap ;2 <h2><+++></h2><++><Esc>?<+++><CR>5s
autocmd FileType html,php inoremap ;3 <h3><+++></h3><++><Esc>?<+++><CR>5s
autocmd FileType html,php inoremap ;4 <h4><+++></h4><++><Esc>?<+++><CR>5s
autocmd FileType html,php inoremap ;5 <h5><+++></h5><++><Esc>?<+++><CR>5s
autocmd FileType html,php inoremap ;6 <h6><+++></h6><++><Esc>?<+++><CR>5s
autocmd FileType html,php inoremap ;b <b><+++></b><++><Esc>?<+++><CR>5s
autocmd FileType html,php inoremap ;i <i><+++></i><++><Esc>?<+++><CR>5s
autocmd FileType html,php inoremap ;u <u><+++></u><++><Esc>?<+++><CR>5s
autocmd FileType html,php inoremap ;st <s><+++></s><++><Esc>?<+++><CR>5s
autocmd FileType html,php inoremap ;a <a href="<+++>"><++></a><Esc>?<+++><CR>5s
autocmd FileType html,php inoremap ;I <img src="" /><Esc>3li
autocmd FileType html,php inoremap ;p <p><+++></p><Esc>?<+++><CR>5s
autocmd FileType html,php inoremap ;d <div><CR><++><CR></div><Esc>?<++><CR>4s
autocmd FileType html,php inoremap ;Dc <div class="<+++>"><++></div><Esc>?<+++><CR>5s
autocmd FileType html,php inoremap ;sp <span><+++></span><Esc>?<+++><CR>5s
autocmd FileType html,php inoremap ;sup <sup><+++></sup><Esc>?<+++><CR>5s
autocmd FileType html,php inoremap ;sub <sub><+++></sub><Esc>?<+++><CR>5s
autocmd FileType html,php inoremap ;t <Tagname><++></Tagname><Esc>2?Tagname<CR>
autocmd FileType html noremap ;: <Esc>:set ft=php<CR>
autocmd FileType php noremap ;: <Esc>:set ft=html<CR>

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

" VimWiki
autocmd FileType vimwiki inoremap ;1 =  =<CR><++><Esc>k01la
autocmd FileType vimwiki inoremap ;2 ==  ==<CR><++><Esc>k02la
autocmd FileType vimwiki inoremap ;3 ===  ===<CR><++><Esc>k03la
autocmd FileType vimwiki inoremap ;4 ====  ====<CR><++><Esc>k04la
autocmd FileType vimwiki inoremap ;5 =====  =====<CR><++><Esc>k05la
autocmd FileType vimwiki inoremap ;b *<+++>* <++><Esc>?<+++><CR>5s
autocmd FileType vimwiki inoremap ;i _<+++>_ <++><Esc>?<+++><CR>5s
autocmd FileType vimwiki inoremap ;l [[<+++>]]<Esc>?<+++><CR>5s

" Colors for my VimWiki build
autocmd FileType vimwiki inoremap ;,r ,r,r<Esc>hi
autocmd FileType vimwiki inoremap ;,g ,g,g<Esc>hi
autocmd FileType vimwiki inoremap ;,y ,y,y<Esc>hi
autocmd FileType vimwiki inoremap ;,b ,b,b<Esc>hi
autocmd FileType vimwiki inoremap ;,m ,m,m<Esc>hi
autocmd FileType vimwiki inoremap ;,c ,c,c<Esc>hi
autocmd FileType vimwiki inoremap ;,R ,R,R<Esc>hi
autocmd FileType vimwiki inoremap ;,G ,G,G<Esc>hi
autocmd FileType vimwiki inoremap ;,Y ,Y,Y<Esc>hi
autocmd FileType vimwiki inoremap ;,B ,B,B<Esc>hi
autocmd FileType vimwiki inoremap ;,M ,M,M<Esc>hi
autocmd FileType vimwiki inoremap ;,C ,C,C<Esc>hi

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

command Once call Once()
