" ===============================================
" chalk 
" ===============================================
"
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
let s:red=['#e06c75', '204']
let s:green=['#98c379', '114']
let s:yellow=['#e5c07b', '180']
let s:orange=['#d19a66', '173']
let s:blue=['#61afef', '39']
let s:purple=['#c678dd', '170']
let s:cyan=['#56b6c2', '38']
let s:white=['#abb2bf', '145']
let s:black=['#282c34', '235']
let s:gray=['#3e4452', '237']
" }}}

let s:normal1   = [s:black[0], s:green[0],  s:black[1],  s:green[1]]
let s:normal2   = [s:black[0], s:green[0],  s:black[1],  s:green[1]]
let s:normal3   = [s:black[0], s:green[0],  s:black[1],  s:green[1]]
let s:inactive1 = [s:black[0], s:gray[0],   s:black[1],  s:gray[1]]
let s:inactive2 = [s:black[0], s:gray[0],   s:black[1],  s:gray[1]]
let s:inactive3 = [s:black[0], s:gray[0],   s:black[1],  s:gray[1]]
let s:insert1   = [s:black[0], s:blue[0],   s:black[1],  s:blue[1]]
let s:insert2   = [s:black[0], s:blue[0],   s:black[1],  s:blue[1]]
let s:insert3   = [s:black[0], s:blue[0],   s:black[1],  s:blue[1]]
let s:replace1  = [s:black[0], s:purple[0], s:black[1],  s:purple[1]]
let s:replace2  = [s:black[0], s:purple[0], s:black[1],  s:purple[1]]
let s:replace3  = [s:black[0], s:purple[0], s:black[1],  s:purple[1]]
let s:visual1   = [s:black[0], s:orange[0], s:black[1],  s:orange[1]]
let s:visual2   = [s:black[0], s:orange[0], s:black[1],  s:orange[1]]
let s:visual3   = [s:black[0], s:orange[0], s:black[1],  s:orange[1]]
let s:ctrlp1    = [s:black[0], s:cyan[0],   s:black[1],  s:cyan[1]]
let s:ctrlp2    = [s:black[0], s:cyan[0],   s:black[1],  s:cyan[1]]
let s:ctrlp3    = [s:black[0], s:cyan[0],   s:black[1],  s:cyan[1]]
let s:warning   = [s:black[0], s:yellow[0], s:black[1],  s:yellow[1]]
let s:error     = [s:black[0], s:red[0],    s:black[1],  s:red[1]]

let g:airline#themes#chalk#palette = {}
let g:airline#themes#chalk#palette.normal = airline#themes#generate_color_map(s:normal1, s:normal2, s:normal3)
let g:airline#themes#chalk#palette.normal.airline_warning = s:warning
let g:airline#themes#chalk#palette.normal.airline_error = s:error
let g:airline#themes#chalk#palette.insert = airline#themes#generate_color_map(s:insert1, s:insert2, s:insert3)
let g:airline#themes#chalk#palette.insert.airline_warning = s:warning
let g:airline#themes#chalk#palette.insert.airline_error = s:error
let g:airline#themes#chalk#palette.replace = airline#themes#generate_color_map(s:replace1, s:replace2, s:replace3)
let g:airline#themes#chalk#palette.replace.airline_warning = s:warning
let g:airline#themes#chalk#palette.replace.airline_error = s:error
let g:airline#themes#chalk#palette.visual = airline#themes#generate_color_map(s:visual1, s:visual2, s:visual3)
let g:airline#themes#chalk#palette.visual.airline_warning = s:warning
let g:airline#themes#chalk#palette.visual.airline_error = s:error
let g:airline#themes#chalk#palette.inactive = airline#themes#generate_color_map(s:inactive1, s:inactive2, s:inactive3)
let g:airline#themes#chalk#palette.inactive.airline_warning = s:warning
let g:airline#themes#chalk#palette.inactive.airline_error = s:error
