" vim: set filetype=vim: sw=2 tw=0 ts=4 sw=4
" -----------------------------------------------------------------------------
" File: divergence.vim
" Description: a bright on dark theme
" Author: Pierre Larsson <pierre.rj.larsson@gmail.com>
" -----------------------------------------------------------------------------

highlight clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "divergence"

" syntax colors
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
hi! Comment                 cterm=none ctermbg=none ctermfg=242

hi! Constant                cterm=bold ctermbg=none ctermfg=213
 hi! String                 cterm=none ctermbg=none ctermfg=186
 hi! Character              cterm=bold ctermbg=none ctermfg=186
 hi! Number                 cterm=none ctermbg=none ctermfg=167
 hi! Boolean                cterm=bold ctermbg=none ctermfg=113
 hi! Float                  cterm=bold ctermbg=none ctermfg=167

hi! Identifier              cterm=none ctermbg=none ctermfg=154
 hi! Function               cterm=bold ctermbg=none ctermfg=112

hi! Statement               cterm=bold ctermbg=none ctermfg=75
 hi! Conditional            cterm=bold ctermbg=none ctermfg=214
 hi! Repeat                 cterm=bold ctermbg=none ctermfg=214
 hi! Label                  cterm=none ctermbg=none ctermfg=214
 hi! Operator               cterm=none ctermbg=none ctermfg=214
 hi! Keyword                cterm=bold ctermbg=none ctermfg=99
 hi! Exception              cterm=bold ctermbg=none ctermfg=203

hi! PreProc                 cterm=bold ctermbg=none ctermfg=73
 hi! Include                cterm=bold ctermbg=none ctermfg=67
 hi! Define                 cterm=none ctermbg=none ctermfg=67
 hi! Macro                  cterm=none ctermbg=none ctermfg=67
 hi! PreCondit              cterm=bold ctermbg=none ctermfg=116

hi! Type                    cterm=bold ctermbg=none ctermfg=112
hi! StorageClass            cterm=bold ctermbg=none ctermfg=75
hi! Structure               cterm=none ctermbg=none ctermfg=154
hi! Typedef                 cterm=bold ctermbg=none ctermfg=64

hi! Special                 cterm=none ctermbg=none ctermfg=179
 hi! SpecialChar            cterm=bold ctermbg=none ctermfg=179
 hi! Tag                    cterm=bold ctermbg=none ctermfg=87
 hi! Delimiter              cterm=none ctermbg=none ctermfg=254
 hi! SpecialComment         cterm=bold ctermbg=none ctermfg=247
 hi! Debug                  cterm=bold ctermbg=none ctermfg=184

hi! Underlined              cterm=underline ctermbg=none ctermfg=80

hi! Error                   cterm=bold ctermbg=none ctermfg=203

hi! Todo                    cterm=bold ctermbg=none ctermfg=247

" vim colors
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
hi! MatchParen              cterm=bold ctermbg=254 ctermfg=233
hi! Search                  cterm=none ctermbg=208 ctermfg=233
 hi! link IncSearch Search

hi! NonText                 cterm=none ctermbg=233 ctermfg=242

hi! SpecialKey              cterm=none ctermbg=none ctermfg=247

hi! Visual                  ctermbg=238

hi! ErrorMsg                cterm=bold ctermbg=none ctermfg=203
hi! WarningMsg              cterm=bold ctermbg=none ctermfg=208

hi! MoreMsg                 cterm=underline ctermbg=none ctermfg=184
hi! Question                cterm=underline ctermbg=none ctermfg=184

hi! pMenu                   cterm=none ctermbg=233 ctermfg=none
hi! pMenuSel                cterm=bold ctermbg=208 ctermfg=233
hi! StatusLine              cterm=bold ctermfg=254 ctermbg=238
hi! StatusLineNC            cterm=none ctermfg=244 ctermbg=238
hi! CursorLine              cterm=none ctermbg=235

set background=dark
