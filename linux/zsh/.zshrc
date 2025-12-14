# Powerlevel10k instant prompt (must be first)
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Environment
export PATH="$HOME/.bun/bin:$PATH"
export PATH="$PATH:/usr/local/go/bin"

# Oh My Zsh
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="powerlevel10k/powerlevel10k"
zstyle ':omz:update' mode auto
plugins=(git zsh-syntax-highlighting zsh-autosuggestions)
source "$ZSH/oh-my-zsh.sh"

# Tools
source "$HOME/.atuin/bin/env"
eval "$(atuin init zsh)"
[[ -s "$HOME/.bun/_bun" ]] && source "$HOME/.bun/_bun"

# Prompt
[[ -f "$HOME/.p10k.zsh" ]] && source "$HOME/.p10k.zsh"
