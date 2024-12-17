if status is-interactive
    # Commands to run in interactive sessions can go here

    # Remove fish welcome message
    set fish_greeting

    # Tip: use fish_key_reader to get the key name
    # Map Ctrl+Backspace to delete word on the left
    bind \b backward-kill-word
    # Map Ctrl+Delete to delete word on the right
    bind \e\[3\;5~ kill-word

    # ssh-agent is handle by a fish plugin
    # `fisher install danhper/fish-ssh-agent`
    function help_ssh_add
      echo 'Run `ssh-add` to add your ssh key'
    end
    ssh-add -L &> /dev/null || help_ssh_add


    alias gs='git status'
    alias gbc='git branch --show-current'
    alias gdc='git diff --cached'
    alias gd='git diff'
    alias ga='git add'
    alias gc='git checkout'
    alias gcm='git commit -m'
    alias gr='git-recent'
    alias gitroot='cd $(git rev-parse --show-toplevel)'
   # Git logs
    alias gl='git log --oneline --color=always --decorate --max-count=10'
    alias gla='git log --oneline --color=always --decorate'
    alias gg='git log --graph --all --decorate --oneline --color=always'
    alias ggraph='git log --graph --decorate --oneline --color=always'
    alias ggh='git log --graph --all --decorate --oneline --color=always | head'
    # the '--exclude' option MUST be before the --all option
    alias gg_no_bk='git log --graph --decorate --oneline --color=always --exclude=refs/*backup* --all'
end
