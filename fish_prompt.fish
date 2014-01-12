function fish_prompt --description 'Write out the prompt'
    set -l date_format "+%H:%M:%S"
    set -l pwd (basename (prompt_pwd))
    set -l symbol "@"
    set -l prompt_symbol ''
    set -l user_color ''
    set -l brackets_color white
    set -l date_color 808080
    set -l symbol_color C0C0C0
    set -l cwd_color 0099CC
    switch $USER
        case root
             set user_color red
             set prompt_symbol '#'
        case '*'
             set user_color 00FF00
             set prompt_symbol '$'
    end
    printf "%s[%s%s %s%s%s%s%s%s%s]%s%s " (set_color $brackets_color) (set_color $date_color) (date $date_format) (set_color $user_color) $USER (set_color $symbol_color) $symbol (set_color $cwd_color) $pwd (set_color $brackets_color) (set_color $user_color) $prompt_symbol
end
