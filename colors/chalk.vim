" Chalk
"
" Setup {{{
set background=dark
hi clear
if exists("syntax_on")
	syntax reset
endif
let g:colors_name="Chalk"
" }}}

" Italics {{{
let g:chalk_terminal_italic = get(g:, 'chalk_terminal_italic', 0)
let s:italic = ""
if g:chalk_terminal_italic == 1
	let s:italic = "italic"
endif
" }}}

" Bold {{{
let g:chalk_terminal_bold = get(g:, 'chalk_terminal_bold', 0)
let s:bold = ""
if g:chalk_terminal_bold == 1
	let s:bold = "bold"
endif
" }}}

" Color Reference {{{

" +---------------------------------------------+
" |  Color Name  |         RGB        |   Hex   |
" |--------------+--------------------+---------|
" | Black        | rgb(40, 44, 52)    | #282c34 |
" |--------------+--------------------+---------|
" | White        | rgb(171, 178, 191) | #abb2bf |
" |--------------+--------------------+---------|
" | Light Red    | rgb(224, 108, 117) | #e06c75 |
" |--------------+--------------------+---------|
" | Dark Red     | rgb(190, 80, 70)   | #be5046 |
" |--------------+--------------------+---------|
" | Green        | rgb(152, 195, 121) | #98c379 |
" |--------------+--------------------+---------|
" | Light Yellow | rgb(229, 192, 123) | #e5c07b |
" |--------------+--------------------+---------|
" | Dark Yellow  | rgb(209, 154, 102) | #d19a66 |
" |--------------+--------------------+---------|
" | Blue         | rgb(97, 175, 239)  | #61afef |
" |--------------+--------------------+---------|
" | Magenta      | rgb(198, 120, 221) | #c678dd |
" |--------------+--------------------+---------|
" | Cyan         | rgb(86, 182, 194)  | #56b6c2 |
" |--------------+--------------------+---------|
" | Gutter Grey  | rgb(76, 82, 99)    | #4b5263 |
" |--------------+--------------------+---------|
" | Comment Grey | rgb(92, 99, 112)   | #5c6370 |
" +---------------------------------------------+

" }}}

" Colors {{{
let s:red = ['#E06C75', '204']
let s:dark_red = ['#BE5046', '196']
let s:green = ['#98C379', '114']
let s:yellow = ['#E5C07B', '180']
let s:orange = ['#D19A66', '173']
let s:blue = ['#61AFEF', '39']
let s:purple = ['#C678DD', '170']
let s:cyan = ['#56B6C2', '38']
let s:white = ['#ABB2BF', '145']
let s:black = ['#282C34', '235']
let s:visual_black = ['NONE', 'NONE']
let s:comment_gray = ['#5C6370', '59']
let s:gutter_fg_gray = ['#4B5263', '238']
let s:cursor_gray = ['#2C323C', '236']
let s:visual_gray = ['#3E4452', '237']
let s:menu_gray = ['#3E4452', '237']
let s:special_gray = ['#384048', '238']
let s:vertsplit = ['#181A1F', '59']
" }}}

function! s:h(group, fg, bg, attr, attrsp)
	" fg, bg, attr, attrsp
	if !empty(a:fg)
		exec "hi " . a:group . " guifg=" . a:fg[0]
		exec "hi " . a:group . " ctermfg=" . a:fg[1]
	endif
	if !empty(a:bg)
		exec "hi " . a:group . " guibg=" . a:bg[0]
		exec "hi " . a:group . " ctermbg=" . a:bg[1]
	endif
	if a:attr != ""
		exec "hi " . a:group . " gui=" . a:attr
		exec "hi " . a:group . " cterm=" . a:attr
	endif
	if !empty(a:attrsp)
		exec "hi " . a:group . " guisp=" . a:attrsp[0]
	endif
endfunction

call s:h('Bold',                       '',               '',               'bold',      '')
call s:h('Debug',                      s:yellow,         '',               '',          '')
call s:h('Directory',                  s:blue,           '',               '',          '')
call s:h('ErrorMsg',                   s:black,          s:red,            '',          '')
call s:h('Exception',                  s:purple,         '',               '',          '')
call s:h('FoldColumn',                 s:comment_gray,   '',               '',          '')
call s:h('Folded',                     s:comment_gray,   s:gutter_fg_gray, s:italic,    '')
call s:h('IncSearch',                  s:black,          s:cyan,           '',          '')
call s:h('Italic',                     '',               '',               s:italic,    '')
call s:h('Macro',                      s:purple,         '',               '',          '')
call s:h('MatchParen',                 s:blue,           '',               'underline', '')
call s:h('ModeMsg',                    s:green,          '',               '',          '')
call s:h('MoreMsg',                    s:green,          '',               '',          '')
call s:h('Question',                   s:cyan,           '',               '',          '')
call s:h('Search',                     s:black,          s:yellow,         '',          '')
call s:h('SpecialKey',                 s:special_gray,   '',               '',          '')
call s:h('TooLong',                    '',               '',               '',          '')
call s:h('Underlined',                 '',               '',               '',          '')
call s:h('Visual',                     s:visual_black,   s:visual_gray,    '',          '')
call s:h('VisualNOS',                  s:visual_black,   s:visual_gray,    '',          '')
call s:h('WarningMsg',                 s:yellow,         '',               '',          '')
call s:h('WildMenu',                   s:black,          s:blue,           '',          '')
call s:h('Title',                      s:green,          '',               '',          '')
call s:h('Conceal',                    '',               '',               '',          '')
call s:h('Cursor',                     s:black,          s:blue,           '',          '')
call s:h('NonText',                    s:special_gray,   '',               '',          '')
call s:h('Normal',                     s:white,          s:black,          '',          '')
call s:h('EndOfBuffer',                '',               '',               '',          '')
call s:h('LineNr',                     s:gutter_fg_gray, '',               '',          '')
call s:h('SignColumn',                 '',               '',               '',          '')
call s:h('StatusLine',                 s:white,          s:cursor_gray,    '',          '')
call s:h('StatusLineNC',               s:comment_gray,   '',               '',          '')
call s:h('VertSplit',                  s:vertsplit,      '',               '',          '')
call s:h('ColorColumn',                '',               s:cursor_gray,    '',          '')
call s:h('CursorColumn',               '',               s:cursor_gray,    '',          '')
call s:h('CursorLine',                 '',               s:cursor_gray,    '',          '')
call s:h('CursorLineNR',               '',               '',               '',          '')
call s:h('CursorLineNr',               '',               '',               '',          '')
call s:h('PMenu',                      '',               s:menu_gray,      '',          '')
call s:h('PMenuSel',                   s:black,          s:blue,           '',          '')
call s:h('PmenuSbar',                  '',               s:special_gray,   '',          '')
call s:h('PmenuThumb',                 '',               s:white,          '',          '')
call s:h('TabLine',                    s:comment_gray,   '',               '',          '')
call s:h('TabLineFill',                '',               '',               '',          '')
call s:h('TabLineSel',                 s:white,          '',               '',          '')
call s:h('helpExample',                '',               '',               '',          '')
call s:h('helpCommand',                '',               '',               '',          '')

" Standard syntax highlighting
call s:h('Boolean',                    s:yellow,         '',               '',          '')
call s:h('Character',                  s:yellow,         '',               '',          '')
call s:h('Comment',                    s:comment_gray,   '',               s:italic,    '')
call s:h('Conditional',                s:purple,         '',               '',          '')
call s:h('Constant',                   s:cyan,           '',               '',          '')
call s:h('Define',                     s:purple,         '',               '',          '')
call s:h('Delimiter',                  '',               '',               '',          '')
call s:h('Float',                      s:green,          '',               '',          '')
call s:h('Function',                   s:blue,           '',               '',          '')
call s:h('Identifier',                 s:red,            '',               '',          '')
call s:h('Include',                    s:blue,           '',               '',          '')
call s:h('Keyword',                    s:red,            '',               '',          '')
call s:h('Label',                      s:purple,         '',               '',          '')
call s:h('Number',                     s:green,          '',               '',          '')
call s:h('Operator',                   s:purple,         '',               '',          '')
call s:h('PreProc',                    s:yellow,         '',               '',          '')
call s:h('Repeat',                     s:purple,         '',               '',          '')
call s:h('Special',                    s:blue,           '',               '',          '')
call s:h('SpecialChar',                '',               '',               '',          '')
call s:h('Statement',                  s:purple,         '',               '',          '')
call s:h('StorageClass',               s:yellow,         '',               '',          '')
call s:h('String',                     s:orange,         '',               '',          '')
call s:h('Structure',                  s:yellow,         '',               '',          '')
call s:h('Tag',                        '',               '',               '',          '')
call s:h('Todo',                       s:purple,         '',               '',          '')
call s:h('Type',                       s:yellow,         '',               '',          '')
call s:h('Typedef',                    s:yellow,         '',               '',          '')
call s:h('SpellBad',                   s:red,            '',               'undercurl', '')
call s:h('SpellLocal',                 s:orange,         '',               'undercurl', '')
call s:h('SpellCap',                   s:orange,         '',               'undercurl', '')
call s:h('SpellRare',                  s:orange,         '',               'undercurl', '')

" call s:h('csClass',                    s:base0A,         '',               '',          '')
" call s:h('csAttribute',                s:base0A,         '',               '',          '')
" call s:h('csModifier',                 s:base0E,         '',               '',          '')
" call s:h('csType',                     s:base08,         '',               '',          '')
" call s:h('csUnspecifiedStatement',     s:base0D,         '',               '',          '')
" call s:h('csContextualStatement',      s:base0E,         '',               '',          '')
" call s:h('csNewDecleration',           s:base08,         '',               '',          '')
" call s:h('cOperator',                  s:base0C,         '',               '',          '')
" call s:h('cPreCondit',                 s:base0E,         '',               '',          '')

call s:h('cssColor',                   s:white,          '',               '',          '')
call s:h('cssBraces',                  s:blue,           '',               '',          '')
call s:h('cssClassName',               s:yellow,         '',               '',          '')
call s:h('DiffAdd',                    s:black,          s:green,          'bold',      '')
call s:h('DiffChange',                 s:yellow,         '',               '',          '')
call s:h('DiffDelete',                 s:black,          s:red,            '',          '')
call s:h('DiffText',                   s:yellow,         '',               '',          '')
call s:h('DiffAdded',                  s:green,          '',               'bold',      '')
call s:h('DiffFile',                   s:yellow,         '',               '',          '')
call s:h('DiffNewFile',                s:green,          '',               '',          '')
call s:h('DiffLine',                   s:yellow,         '',               '',          '')
call s:h('DiffRemoved',                s:red,            '',               'bold',      '')
" call s:hi('Error',                      s:base08, s:none,   'undercurl',          '')
" call s:hi('NvimInternalError',          s:base08, s:none,   '',          '')
" call s:hi('NvimInternalError',          s:base08, s:none,   '',          '')
call s:h('gitCommitOverflow',          s:red,            '',               '',          '')
call s:h('gitCommitSummary',           s:blue,           '',               '',          '')

call s:h('htmlBold',                   '',               '',               s:bold,      '')
call s:h('htmlItalic',                 '',               '',               s:italic,    '')
call s:h('htmlTag',                    s:cyan,           '',               '',          '')
call s:h('htmlEndTag',                 s:cyan,           '',               '',          '')
call s:h('htmlArg',                    s:orange,         '',               '',          '')
call s:h('htmlTagName',                s:red,            '',               '',          '')
call s:h('htmlTitle',                  s:yellow,         '',               '',          '')
call s:h('javaScript',                 s:orange,         '',               '',          '')
call s:h('javaScriptNumber',           s:green,          '',               '',          '')
call s:h('javaScriptBraces',           s:white,          '',               '',          '')

call s:h('markdownCode',               s:green,          '',               '',          '')
call s:h('markdownCodeBlock',          s:green,          '',               '',          '')
call s:h('markdownHeadingDelimiter',   s:cyan,           '',               '',          '')
call s:h('markdownItalic',             '',               '',               s:italic,    '')
call s:h('markdownBold',               '',               '',               s:bold,      '')
call s:h('markdownCodeDelimiter',      s:green,          '',               '',          '')
call s:h('markdownError',              s:red,            '',               '',          '')

call s:h('NeomakeErrorSign',           s:red,            '',               '',          '')
call s:h('NeomakeWarningSign',         s:yellow,         '',               '',          '')
call s:h('NeomakeInfoSign',            s:cyan,           '',               '',          '')
call s:h('NeomakeError',               s:red,            '',               'undercurl', s:red)
call s:h('NeomakeWarning',             s:yellow,         '',               'undercurl', s:yellow)

call s:h('NERDTreeExecFile',           s:purple,         '',               '',          '')
call s:h('NERDTreeDirSlash',           s:cyan,           '',               '',          '')
call s:h('NERDTreeOpenable',           s:blue,           '',               '',          '')
call s:h('NERDTreeFile',               s:white,          '',               '',          '')
call s:h('NERDTreeFolder',             s:blue,           '',               '',          '')
call s:h('NERDTreeFlags',              s:yellow,         '',               '',          '')

call s:h('pythonRepeat',               s:yellow,         '',               '',          '')
call s:h('pythonOperator',             s:purple,         '',               '',          '')

" call s:h('sassidChar',                 s:base08,         '',               '',          '')
" call s:h('sassClassChar',              s:base09,         '',               '',          '')
" call s:h('sassInclude',                s:base0E,         '',               '',          '')
" call s:h('sassMixing',                 s:base0E,         '',               '',          '')
" call s:h('sassMixinName',              s:base0D,         '',               '',          '')

" call s:h('vimfilerLeaf',               s:base05,         '',               '',          '')
" call s:h('vimfilerNormalFile',         s:base05,         s:base00,         '',          '')
" call s:h('vimfilerOpenedFile',         s:base0D,         '',               '',          '')
" call s:h('vimfilerClosedFile',         s:base0D,         '',               '',          '')

" call s:h('GitGutterAdd',               s:base0B,         s:base00,         s:bold,      '')
" call s:h('GitGutterChange',            s:base0D,         s:base00,         s:bold,      '')
" call s:h('GitGutterDelete',            s:base08,         s:base00,         s:bold,      '')
" call s:h('GitGutterChangeDelete',      s:base0E,         s:base00,         s:bold,      '')

" call s:h('SignifySignAdd',             s:base0B,         s:base00,         s:bold,      '')
" call s:h('SignifySignChange',          s:base0D,         s:base00,         s:bold,      '')
" call s:h('SignifySignDelete',          s:base08,         s:base00,         s:bold,      '')
" call s:h('SignifySignChangeDelete',    s:base0E,         s:base00,         s:bold,      '')
" call s:h('SignifySignDeleteFirstLine', s:base08,         s:base00,         s:bold,      '')

call s:h('xmlTag',                     s:cyan,           '',               '',          '')
call s:h('xmlTagName',                 s:cyan,           '',               '',          '')
call s:h('xmlEndTag',                  s:cyan,           '',               '',          '')


" }}}

let g:terminal_color_0=s:black[0]
let g:terminal_color_8=s:visual_gray[0]

let g:terminal_color_1=s:red[0]
let g:terminal_color_9=s:dark_red[0]

let g:terminal_color_2=s:green[0]
let g:terminal_color_10=s:green[0]

let g:terminal_color_3=s:yellow[0]
let g:terminal_color_11=s:orange[0]

let g:terminal_color_4=s:blue[0]
let g:terminal_color_12=s:blue[0]

let g:terminal_color_5=s:purple[0]
let g:terminal_color_13=s:purple[0]

let g:terminal_color_6=s:cyan[0]
let g:terminal_color_14=s:cyan[0]

let g:terminal_color_7=s:white[0]
let g:terminal_color_15=s:comment_gray[0]

let g:terminal_color_background=s:black[0]
let g:terminal_color_foreground=s:white[0]


