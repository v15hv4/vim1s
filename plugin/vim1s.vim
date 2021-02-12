" vim1s
" Author: Vishva R
" Version: 1.0
" License: The Unlicense

if exists("g:loaded_vim1s")
    finish
endif
let g:loaded_vim1s = 1

function! Vim1s(repo)
    echo 'Fetching repo...'
    let repo_id = join(split(substitute(a:repo, "\\(https\\|git\\).\\{-}\\.com\\(/\\|:\\)\\(.\\{-}\\)\\(\\.git\\|$\\)", "\\3", "g"), "/"), "_")
    let target_dir = '/tmp/' . repo_id
    silent execute '!rm -rf ' . target_dir
    if stridx(a:repo, "https://") >= 0 || stridx(a:repo, "git@github.com:") >= 0
        silent execute '!git clone --depth 1 ' . a:repo . ' ' . target_dir
    else
        silent execute '!git clone --depth 1 '. 'https://github.com/' . a:repo . '.git' . ' ' . target_dir
    endif
    execute 'lcd' target_dir
    edit .
endfunction

command! -nargs=1 Vim1s call Vim1s(<f-args>)
