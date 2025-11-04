if status is-interactive
  set -g fish_greeting ""
  set -gx LSCOLORS f

# Homebrew
set -gx PATH /opt/homebrew/bin $PATH

# Neovim
set -gx PATH $HOME/.local/bin $PATH

# HTTP / HTTPS Proxy
set -gx HTTP_PROXY http://127.0.0.1:7890
set -gx HTTPS_PROXY http://127.0.0.1:7890

function vim
	nvim $argv
end

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
        echo " ($branch$dirty)"
    end
end

function fish_prompt
    # 自定义用户名和主机名
    set my_user "cham"
    set my_host "Mac"

    if status is-interactive
      set full_path (pwd)
      set home_dir $HOME
      set rel_path (string replace -r "^$home_dir" "" $full_path)

      # 如果是家目录本身，显示为自定义符号 ~ 或 :
      if test "$rel_path" = ""
          set rel_path "~"  # 或者 ":"
      end

      # 显示用户名@主机名 当前路径
      # set_color green
      # echo -n $my_user
      set_color normal
      # echo -n "@"$my_host":"
      echo -n $rel_path

      set_color green
      echo -n (git_status_prompt)
    else
      # Do nothing
    end

    set_color normal
    echo -n "\$ "
end

# 自动采取灰色提示
bind \t accept-autosuggestion

else

  function fish_prompt
      set_color normal
      echo -n "\$ "
  end

end
