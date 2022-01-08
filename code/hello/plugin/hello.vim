function! SayHello() 
    echo "Hello World"
endfunction
       
command! Hello call SayHello()
noremap ss :Hello<CR>
