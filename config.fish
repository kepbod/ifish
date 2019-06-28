# fisher
if not functions -q fisher
    set -q XDG_CONFIG_HOME; or set XDG_CONFIG_HOME ~/.config
    curl https://git.io/fisher --create-dirs -sLo $XDG_CONFIG_HOME/fish/functions/fisher.fish
    fish -c fisher
end

# keybindings
fish_vi_key_bindings

function fish_user_key_bindings
    for mode in insert default visual
        bind -M $mode \cf forward-char
    end
end

# alias
alias vi="vim -X"
alias tmux="tmux -2"
alias top="htop"
alias wc="wc -l"
alias less="less -S"
