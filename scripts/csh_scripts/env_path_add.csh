# Define a helper to safely add a path to LD_LIBRARY_PATH

#        if ( !($?LD_LIBRARY_PATH) ) then
#          setenv LD_LIBRARY_PATH /usr/local/lib
#        endif 
alias add_ld_path 'if ( !($?LD_LIBRARY_PATH) ) then; \
    setenv LD_LIBRARY_PATH ${NEW_LD_PATH}; \
else if ("${LD_LIBRARY_PATH}" !~ *"${NEW_LD_PATH}"* ) then; \
    setenv LD_LIBRARY_PATH "${LD_LIBRARY_PATH}:${NEW_LD_PATH}"; \
endif'

alias remove_ld_path 'if ( $?LD_LIBRARY_PATH ) then; \
    setenv LD_LIBRARY_PATH `echo ${LD_LIBRARY_PATH} | sed -e "s;:${OLD_LD_PATH};;" -e "s;${OLD_LD_PATH}:;;" -e "s;${OLD_LD_PATH};;"`; \
endif'

