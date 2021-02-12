" vim1s
" Author: Vishva R
" Version: 1.0
" License: The Unlicense

function! Vim1s(repo)
    echo 'Fetching repo...'
    let repo_id = join(split(substitute(a:repo, "\\(https\\|git\\).\\{-}\\.com\\(/\\|:\\)\\(.\\{-}\\)\\.git", "\\3", "g"), "/"), "_")
    let target_dir = '/tmp/' . repo_id
    silent execute '!rm -rf ' . target_dir
    silent execute '!git clone --depth 1 ' . a:repo . ' ' . target_dir
    execute 'lcd' target_dir
    edit .
endfunction

command! -nargs=1 Vim1s call Vim1s(<f-args>)
