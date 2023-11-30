function fish_prompt
    if test -n "$SSH_TTY"
        echo -n (set_color brred)"$USER"(set_color white)'@'(set_color yellow)(prompt_hostname)' '
    end

    # echo -n (set_color blue)(prompt_pwd)' '

    set_color -o
    if fish_is_root_user
        echo -n (set_color red)'# '
    end
    echo (set_color blue)'░▒▓'(set_color 000000 -b blue)' 󰣇 '(set_color blue -b cyan)''(set_color black -b cyan)' '(prompt_pwd)(set_color -b cyan)' '(set_color cyan -b normal)''
    echo -n (set_color blue)'❯ '
    set_color normal
end
