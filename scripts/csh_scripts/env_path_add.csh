# Define a helper to safely add a path to LD_LIBRARY_PATH

#        if ( !($?LD_LIBRARY_PATH) ) then
#          setenv LD_LIBRARY_PATH /usr/local/lib
#        endif 
alias add_ld_path 'if ( !($?LD_LIBRARY_PATH) ) then; \
    setenv LD_LIBRARY_PATH ${NEW_LD_PATH}; \
else if ("${LD_LIBRARY_PATH}" !~ *"${NEW_LD_PATH}"* ) then; \
    setenv LD_LIBRARY_PATH "${NEW_LD_PATH}:${LD_LIBRARY_PATH}"; \
endif'

alias remove_ld_path 'if ( $?LD_LIBRARY_PATH ) then; \
    setenv LD_LIBRARY_PATH `echo ${LD_LIBRARY_PATH} | sed -e "s;:${OLD_LD_PATH};;" -e "s;${OLD_LD_PATH}:;;" -e "s;${OLD_LD_PATH};;"`; \
endif'

alias add_path 'if ( !($?PATH) ) then; \
    setenv PATH ${NEW_PATH}; \
else if ("${PATH}" !~ *"${NEW_PATH}"* ) then; \
    setenv PATH "${NEW_PATH}:${PATH}"; \
endif'

alias remove_path 'if ( $?PATH ) then; \
    setenv PATH `echo ${PATH} | sed -e "s;:${OLD_PATH};;" -e "s;${OLD_PATH}:;;" -e "s;${OLD_PATH};;"`; \
endif'

# To use nested inside another alias use eval as follows
# alias new_alias 'eval add_ld_path'
