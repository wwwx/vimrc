function! CommentReact()

python3 << EOF

import vim

mark_start = "{/* "
mark_end = " */}"
mark_start_len = len(mark_start)
mark_end_len = len(mark_end)
print(vim.current)

def add_comment():
    cb = vim.current.buffer
    cw = vim.current.window
    row = cw.cursor[0]
    line_str = cb[row-1].strip()
    line_str_start = line_str[:mark_start_len]
    line_str_end = line_str[-mark_end_len:]
    if line_str_start == mark_start and line_str_end == mark_end:
        cb[row-1] = cb[row-1].replace(mark_start, "")
        cb[row-1] = cb[row-1].replace(mark_end, "")
    else:
        cb[row-1] = mark_start + " " + cb[row-1] + " " + mark_end
    return

add_comment()

EOF

endfunction

command! CommentReact call CommentReact()
