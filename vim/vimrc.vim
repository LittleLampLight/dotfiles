" General Vim settings
	syntax on
	let mapleader=","
	set autoindent
	set tabstop=4
	set shiftwidth=4
	set dir=/tmp/
	set relativenumber 
	set number
	aunmenu Help.
	aunmenu Window.
	
	colorscheme gruvbox
	set background=dark

	set ruler
	set completeopt-=preview
	set gcr=a:blinkon0
	set ttyfast

	set cursorline
	hi Cursor ctermfg=White ctermbg=Yellow cterm=bold guifg=white guibg=yellow gui=bold

	set hlsearch
	nnoremap <C-l> :nohl<CR><C-l>:echo "Search Cleared"<CR>
	nnoremap <C-c> :set norelativenumber<CR>:set nonumber<CR>:echo "Line numbers turned off."<CR>
	nnoremap <C-n> :set relativenumber<CR>:set number<CR>:echo "Line numbers turned on."<CR>

	nnoremap n nzzzv
	nnoremap N Nzzzv

	nnoremap H 0
	nnoremap L $
	nnoremap J G
	nnoremap K gg

	map <tab> %

	set backspace=indent,eol,start

	nnoremap <Space> za
	nnoremap <leader>z zMzvzz
	 

	nnoremap vv 0v$

	set listchars=tab:\|\ 
	nnoremap <leader><tab> :set list!<cr>
	set pastetoggle=<F2>
	set mouse=a
	set incsearch

" Language Specific
	" General
		inoremap <leader>for <esc>Ifor (int i = 0; i < <esc>A; i++) {<enter>}<esc>O<tab>
		inoremap <leader>if <esc>Iif (<esc>A) {<enter>}<esc>O<tab>
		

	" Java
		inoremap <leader>sys <esc>ISystem.out.println(<esc>A);
		vnoremap <leader>sys yOSystem.out.println(<esc>pA);

	" Java
		inoremap <leader>con <esc>Iconsole.log(<esc>A);
		vnoremap <leader>con yOconsole.log(<esc>pA);

	" C++
		inoremap <leader>cout <esc>Istd::cout << <esc>A << std::endl;
		vnoremap <leader>cout yOstd::cout << <esc>pA << std:endl;

	" C
		inoremap <leader>out <esc>Iprintf(<esc>A);<esc>2hi
		vnoremap <leader>out yOprintf(, <esc>pA);<esc>h%a

	" Typescript
		autocmd BufNewFile,BufRead *.ts set syntax=javascript
		autocmd BufNewFile,BufRead *.tsx set syntax=javascript

	" Markup
		inoremap <leader>< <esc>I<<esc>A><esc>yypa/<esc>O<tab>


" File and Window Management 
	inoremap <leader>w <Esc>:w<CR>
	nnoremap <leader>w :w<CR>

	inoremap <leader>q <ESC>:q<CR>
	nnoremap <leader>q :q<CR>

	inoremap <leader>x <ESC>:x<CR>
	nnoremap <leader>x :x<CR>

	nnoremap <leader>e :Ex<CR>
	nnoremap <leader>t :tabnew<CR>:Ex<CR>
	nnoremap <leader>v :vsplit<CR>:w<CR>:Ex<CR>
	nnoremap <leader>s :split<CR>:w<CR>:Ex<CR>

" Return to the same line you left off at
	augroup line_return
		au!
		au BufReadPost *
			\ if line("'\"") > 0 && line("'\"") <= line("$") |
			\	execute 'normal! g`"zvzz' |
			\ endif
	augroup END

" Future stuff
	"Swap line
	"Insert blank below and above

	set nocompatible              " be iMproved, required
	filetype off                  " required

	"=====================================================
	" Vundle settings
	"=====================================================
	" set the runtime path to include Vundle and initialize
	set rtp+=~/.vim/bundle/Vundle.vim
	call vundle#begin()

	Plugin 'gmarik/Vundle.vim'		" let Vundle manage Vundle, required

	"---------=== Code/project navigation ===-------------
	Plugin 'scrooloose/nerdtree' 	    	" Project and file navigation
	Plugin 'majutsushi/tagbar'          	" Class/module browser

	"------------------=== Other ===----------------------
	Plugin 'bling/vim-airline'   	    	" Lean & mean status/tabline for vim
	Plugin 'vim-airline/vim-airline-themes'
	Plugin 'fisadev/FixedTaskList.vim'  	" Pending tasks list
	Plugin 'rosenfeld/conque-term'      	" Consoles as buffers
	Plugin 'tpope/vim-surround'	   	" Parentheses, brackets, quotes, XML tags, and more
	Plugin 'dracula/vim'
	Plugin 'morhetz/gruvbox'
	Plugin 'vim-syntastic/syntastic'
	Plugin 'nvie/vim-flake8'



	"--------------=== Snippets support ===---------------
	Plugin 'garbas/vim-snipmate'		" Snippets manager
	Plugin 'MarcWeber/vim-addon-mw-utils'	" dependencies #1
	Plugin 'tomtom/tlib_vim'		" dependencies #2
	Plugin 'honza/vim-snippets'		" snippets repo

	"---------------=== Languages support ===-------------
	" --- Python ---
	Plugin 'klen/python-mode'	        " Python mode (docs, refactor, lints, highlighting, run and ipdb and more)
	Plugin 'davidhalter/jedi-vim' 		" Jedi-vim autocomplete plugin
	Plugin 'mitsuhiko/vim-jinja'		" Jinja support for vim
	Plugin 'mitsuhiko/vim-python-combined'  " Combined Python 2/3 for Vim

	call vundle#end()            		" required
	filetype on
	filetype plugin on
	filetype plugin indent on

	" syntastic
	let g:syntastic_check_on_open = 1
	" let g:syntastic_auto_loc_list = 1
	
	let g:syntastic_python_checkers=['pyflakes']

	set statusline+=%#warningmsg#
	set statusline+=%{SyntasticStatuslineFlag()}
	set statusline+=%*

	let g:syntastic_always_populate_loc_list = 1
	let g:syntastic_auto_loc_list = 1
	let g:syntastic_check_on_open = 1
	let g:syntastic_check_on_wq = 0

	syntax on

	autocmd vimenter * NERDTree

	tab sball
	set switchbuf=useopen

	set visualbell t_vb= 
	set novisualbell 

	set enc=utf-8     " utf-8 по дефолту в файлах
	set	 ls=2             " всегда показываем статусбар
	set incsearch     " инкреминтируемый поиск
	set hlsearch     " Ð	¿одсветка результатов поиска
	set nu          	   " показывать номера строк
	set scrolloff=5     	" 5 строк при скролле за раз

	set nobackup 	     " no backup files
	set nowritebackup    " only in case you don't want a backup file while editing
	set noswapfile 	     " no swap files

	set smarttab
	set tabstop=8

	augroup vimrc_autocmds
		autocmd!
		autocmd FileType ruby,python,javascript,c,cpp highlight Excess ctermbg=DarkGrey guibg=Black
		autocmd FileType ruby,python,javascript,c,cpp match Excess /\%80v.*/
		autocmd FileType ruby,python,javascript,c,cpp set nowrap
	augroup END

	let laststatus=2
	let g:airline_theme='badwolf'
	let g:airline_powerline_fonts = 1
	let g:airline#extensions#tabline#enabled = 1
	let g:airline#extensions#tabline#formatter = 'unique_tail'

	let g:snippets_dir = "~/.vim/vim-snippets/snippets"

	map <F4> :TagbarToggle<CR>
	let g:tagbar_autofocus = 0 " автофокус на Tagbar при открытии

	map <F3> :NERDTreeToggle<CR>
	let NERDTreeIgnore=['\~$', '\.pyc$', '\.pyo$', '\.class$', 'pip-log\.txt$', '\.o$']  

	map <F2> :TaskList<CR> 	   " отобразить список тасков на F2

	map <C-q> :bd<CR> 	   " CTRL+Q - закрыть текущий буффер

	"=====================================================
	"" Python-mode settings
	"=====================================================
	let g:pymode_rope = 0
	let g:pymode_rope_completion = 0
	let g:pymode_rope_complete_on_dot = 0

	" документация
	let g:pymode_doc = 0
	let g:pymode_doc_key = 'K'
	" проверка кода
	let g:pymode_lint = 1
	let g:pymode_lint_checker = "pyflakes,pep8"
	let g:pymode_lint_ignore="E501,W601,C0110"
	" провека кода после сохранения
	let g:pymode_lint_write = 1
	
	" поддержка virtualenv
	let g:pymode_virtualenv = 1
	
	" установка breakpoints
	let g:pymode_breakpoint = 1
	let g:pymode_breakpoint_key = '<leader>b'
	
	" подстветка синтаксиса
	let g:pymode_syntax = 1
	let g:pymode_syntax_all = 1
	let g:pymode_syntax_indent_errors = g:pymode_syntax_all
	let g:pymode_syntax_space_errors = g:pymode_syntax_all
	let python_highlight_all=1

	
	" отключить autofold по коду
	let g:pymode_folding = 0
	
	" возможность запускать код
	let g:pymode_run = 0

	" Disable choose first function/method at autocomplete
	let g:jedi#popup_select_first = 0
	let g:jedi#use_tabs_not_buffers = 1
	let g:jedi#use_splits_not_buffers = "left"
	let g:jedi#popup_on_dot = 0




	"=====================================================
	" Languages support
	"=====================================================
	" --- Python ---
	"autocmd FileType python set completeopt-=preview " раскомментируйте, в случае, если не надо, чтобы jedi-vim показывал документацию по методу/классу
	autocmd FileType python setlocal expandtab shiftwidth=4 tabstop=8
	\ formatoptions+=croq softtabstop=4 smartindent
	\ cinwords=if,elif,else,for,while,try,except,finally,def,class,with
	autocmd FileType pyrex setlocal expandtab shiftwidth=4 tabstop=8 softtabstop=4 smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class,with

	" --- JavaScript ---
	let javascript_enable_domhtmlcss=1
	autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
	autocmd BufNewFile,BufRead *.json setlocal ft=javascript

	" --- HTML ---
	autocmd FileType html set omnifunc=htmlcomplete#CompleteTags

	" --- template language support (SGML / XML too) ---
	autocmd FileType html,xhtml,xml,htmldjango,htmljinja,eruby,mako setlocal expandtab shiftwidth=2 tabstop=2 softtabstop=2
	autocmd bufnewfile,bufread *.rhtml setlocal ft=eruby
	autocmd BufNewFile,BufRead *.mako setlocal ft=mako
	autocmd BufNewFile,BufRead *.tmpl setlocal ft=htmljinja
	autocmd BufNewFile,BufRead *.py_tmpl setlocal ft=python
	let html_no_rendering=1
	let g:closetag_default_xml=1
	let g:sparkupNextMapping='<c-l>'
	autocmd FileType html,htmldjango,htmljinja,eruby,mako let b:closetag_html_style=1
	autocmd FileType html,xhtml,xml,htmldjango,htmljinja,eruby,mako source ~/.vim/scripts/closetag.vim
	let g:NERDTreeQuitOnOpen = 1
	let g:Powerline_symbols = 'fancy'

	" --- CSS ---
	autocmd FileType css set omnifunc=csscomplete#CompleteCSS
	autocmd FileType css setlocal expandtab shiftwidth=4 tabstop=4 softtabstop=4

