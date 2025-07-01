if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(git kubectl sudo dotenv docker npm zsh-autosuggestions zsh-syntax-highlighting fzf-tab fzf-tab-source)

source $ZSH/oh-my-zsh.sh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

source ~/.config/zsh/aliases

export LESSOPEN="|/usr/bin/lesspipe.sh %s"
export OLLAMA_API_BASE=http://127.0.0.1:11434
export PYENV_ROOT="$HOME/.pyenv"
export KUBECONFIG=~/.kube/navarcos-dev.kubeconfig
export GOPRIVATE=gitlab.ccoe.activadigital.it
export GIT_TERMINAL_PROMPT=0
export GIT_ASKPASS=/go/git-askpass.sh
export PATH=$PATH:$HOME/.krew/bin
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:/usr/local/apache-maven-3.9.1/bin
export PATH=$PATH:~/.local/bin
export PATH=$PATH:/opt/node-v20.17.0-linux-x64/bin
export PATH=$PATH:/opt/Citrix/ICAClient/
export PATH="$PYENV_ROOT/bin:$PATH"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
# lombok for jdtls nvim
export JDTLS_JVM_ARGS="-javaagent:$HOME/.local/share/java/lombok.jar"



eval $(thefuck --alias fk)
eval "$(zoxide init zsh)"
eval "$(fzf --zsh)"
eval "$(pyenv init --path)"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

# (yazi)
export EDITOR="nvim"
function y() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
	yazi "$@" --cwd-file="$tmp"
	if cwd="$(command cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
		builtin cd -- "$cwd"
	fi
	rm -f -- "$tmp"
}

