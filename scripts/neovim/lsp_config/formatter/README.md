To Format c/c++:-
=================
1. Automatically using .clang-format file.
    1. Generate .clang-format file using
    
            # for microsoft
            clang-format -style=microsoft -dump-config > .clang-format
    
            # for googl
            clang-format -style=google -dump-config > .clang-format
    
            # for llvm
            clang-format -style=llvm -dump-config > .clang-format
    
            # for GNU
            clang-format -style=GNU -dump-config > .clang-format
    
    2. install clang formatter in mason in neovim.
    3. use key \<leader>f for formatting.
2. To Format directly in neovim:-
    1. In normal mode in neovim:

            :%!clang-format -style=google
