inoremap ; <esc>
xnoremap ; <esc>
nnoremap <Enter> :noh<CR>

let mapleader=","

set incsearch " Find the next match as we type the search
set hlsearch " Highlight searches by default
set ignorecase " Ignore case when searching...
set smartcase " ...unless we type a capital

xnoremap <silent> <Leader>g <Cmd>call VSCodeNotify('workbench.action.quickOpen')<CR>
nnoremap <silent> <leader>g <Cmd>call VSCodeNotify('workbench.action.quickOpen')<CR>
nnoremap <silent> <leader>w <Cmd>call VSCodeNotify('workbench.action.files.save')<CR>
xnoremap <silent> <leader>w <Cmd>call VSCodeNotify('workbench.action.files.save')<CR>

nnoremap <silent> gn <Cmd>call VSCodeNotify('editor.action.marker.next')<CR>
xnoremap <silent> gn <Cmd>call VSCodeNotify('editor.action.marker.next')<CR>
nnoremap <silent> gN <Cmd>call VSCodeNotify('editor.action.marker.nextInFiles')<CR>
xnoremap <silent> gN <Cmd>call VSCodeNotify('editor.action.marker.nextInFiles')<CR>

nnoremap <silent> gp <Cmd>call VSCodeNotify('editor.action.marker.prev')<CR>
xnoremap <silent> gp <Cmd>call VSCodeNotify('editor.action.marker.prev')<CR>
nnoremap <silent> gP <Cmd>call VSCodeNotify('editor.action.marker.prevInFiles')<CR>
xnoremap <silent> gP <Cmd>call VSCodeNotify('editor.action.marker.prevInFiles')<CR>

nnoremap <silent> gt <Cmd>call VSCodeNotify('editor.action.goToTypeDefinition')<CR>

nnoremap <silent> <leader>cc <Cmd>call VSCodeNotifyVisual('editor.action.commentLine', 0)<CR><esc>
xnoremap <silent> <leader>cc <Cmd>call VSCodeNotifyVisual('editor.action.commentLine', 0)<CR><esc>

nnoremap <silent> <leader>cb <Cmd>call VSCodeNotifyVisual('editor.action.blockComment', 0)<CR><ESC>
xnoremap <silent> <leader>cb <Cmd>call VSCodeNotifyVisual('editor.action.blockComment', 0)<CR><ESC>

nnoremap <silent> <leader>e <Cmd>call VSCodeNotify('workbench.files.action.showActiveFileInExplorer')<CR>

nnoremap <silent> <leader>b <Cmd>call VSCodeNotify('workbench.action.showAllEditorsByMostRecentlyUsed')<CR>
nnoremap <silent> <leader>q <Cmd>call VSCodeNotify('workbench.action.closeActiveEditor')<CR>
nnoremap <silent> <leader>a <Cmd>call VSCodeNotify('workbench.action.findInFiles')<CR>

nnoremap <silent> <leader>x <Cmd>call VSCodeNotify('vscode-neovim.send', ':')<CR>
xnoremap <silent> <leader>x <Cmd>call VSCodeNotifyVisual('vscode-neovim.send', 0, ':')<CR>



set clipboard+=unnamed,unnamedplus


function! VSCodeNotifyVisual(cmd, leaveSelection, ...)
    let mode = mode()
    if mode ==# 'V'
        let startLine = line('v')
        let endLine = line('.')
        call VSCodeNotifyRange(a:cmd, startLine, endLine, a:leaveSelection, a:000)
    elseif mode ==# 'v' || mode ==# "\<C-v>"
        let startPos = getpos('v')
        let endPos = getpos('.')
        call VSCodeNotifyRangePos(a:cmd, startPos[1], endPos[1], startPos[2], endPos[2] + 1, a:leaveSelection, a:000)
    else
        call VSCodeNotify(a:cmd, a:000)
    endif
endfunction

xnoremap <leader>r <Cmd>call VSCodeNotifyVisual('editor.action.quickFix', 1)<CR>
nnoremap <leader>r <Cmd>call VSCodeNotifyVisual('editor.action.quickFix', 1)<CR>
nnoremap gi <Cmd>call VSCodeNotifyVisual('editor.action.goToImplementation', 1)<CR>
xnoremap gi <Cmd>call VSCodeNotifyVisual('editor.action.goToImplementation', 1)<CR>


lua << EOF
vim.g.clipboard = {
  cached_enabled = 1,
  copy = {
    ["*"] = { "xsel", "-i", "-p" },
    ["+"] = { "xsel", "-i", "-b" },
  },
  paste = {
    ["*"] = { "xsel", "-o", "-p" },
    ["+"] = { "xsel", "-o", "-b" },
  },
}
EOF
