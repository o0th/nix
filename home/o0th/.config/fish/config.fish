if status is-interactive
  # start tmux on startup
  if not set -q TMUX
    exec tmux
  end

  # disable welcome message
  set -U fish_greeting

  # aliases
  alias v="nvim"
end
