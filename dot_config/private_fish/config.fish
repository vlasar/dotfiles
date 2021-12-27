if status is-interactive
  rbenv init - fish | source
  starship init fish | source
  zoxide init fish | source

  abbr --add --global g git
  abbr --add --global n nvim
  
  alias tk="tmux kill-server"
  alias rc="bin/rails c"
  alias rs="bin/rails s"
end
