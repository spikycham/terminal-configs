if status is-interactive

# Environment paths
# Cargo for rust
set -gx PATH $HOME/.cargo/bin $PATH
# Homebrew
set -gx PATH /opt/homebrew/bin $PATH
# Neovim
set -gx PATH $HOME/.local/bin $PATH
function vim
	nvim $argv
end

# HTTP / HTTPS Proxy
set -gx HTTP_PROXY http://127.0.0.1:7890
set -gx HTTPS_PROXY http://127.0.0.1:7890
# set -gx ALL_PROXY socks5://127.0.0.1:7890

# Styles
set -g fish_greeting ""
set -gx LSCOLORS "fxfxcxdxbxegedabagacad"
# Prompt styles
function git_status_prompt
    # 只在 Git 仓库中显示
    set git_dir (git rev-parse --git-dir ^/dev/null 2>/dev/null)
    if test -d .git -o -n "$git_dir"
        # 当前分支
        set branch (git symbolic-ref --short HEAD 2>/dev/null)
        set dirty ""
        # 工作区有修改
        if not git diff --quiet 2>/dev/null
            set dirty "*"
        end
        # 暂存区有修改
        if not git diff --cached --quiet 2>/dev/null
            set dirty "$dirty+"
        end
        echo "($branch$dirty)"
    end
end
function fish_prompt
    # 自定义用户名和主机名
    set my_user "cham"

    # 当前路径配置
    set full_path (pwd)
    if test $full_path = $HOME
        set rel_path "/"
    else
        set rel_path (basename $full_path)" "
    end

    echo -n $my_user
    set_color normal
    echo -n "@"
    echo -n $rel_path

    set_color green
    echo -n (git_status_prompt)

    set_color normal
    echo -n "\$ "
end

# Tab to accept gray completion suggestion
bind \t accept-autosuggestion

end

# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH

# Auto open tmux
if not set -q TMUX
    exec tmux new-session -A -s main
end

