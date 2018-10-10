
"
" Unite!
" recreates ST3 command pallette
"
map <leader>p :Denite command <CR>:startinsert<CR>

call denite#custom#map('insert', '<Down>', '<denite:move_to_next_line>', 'noremap')
call denite#custom#map('insert', '<Up>', '<denite:move_to_previous_line>', 'noremap')
