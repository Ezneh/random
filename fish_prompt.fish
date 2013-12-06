function fish_prompt --description 'Write out the prompt'
   set -l pwd (basename (prompt_pwd))
   set -l prompt_symbol ''
   set -l user_color ''
   switch $USER
       case root
            set user_color red
            set prompt_symbol '#'
       case '*'
            set user_color 00FF00
            set prompt_symbol '$'
   end
   printf "%s[%s%s %s%s%s@%s%s%s]%s%s " (set_color white) (set_color 808080) (date "+%H:%M:%S") (set_color $user_color) $USER (set_color C0C0C0) (set_color 0099CC) $pwd (set_color white) (set_color $user_color) $prompt_symbol
end
