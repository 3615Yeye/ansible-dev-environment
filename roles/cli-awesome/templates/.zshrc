# Loading antigen plugin manager
source ~/.zsh/antigen.zsh

# Getting bash defined aliases
source ~/.bash_aliases
if [ -f ~/.bash_aliases_env ]; then
    source ~/.bash_aliases_env
fi
if [ -f ~/.bash_proxy ]; then
    source ~/.bash_proxy
fi

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle heroku
antigen bundle pip
antigen bundle lein
antigen bundle command-not-found

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting

# Load the theme.
antigen theme https://github.com/caiogondim/bullet-train-oh-my-zsh-theme bullet-train

# Bullet train theme customization
BULLETTRAIN_NVM_FG=black
BULLETTRAIN_DIR_FG=black
BULLETTRAIN_CONTEXT_DEFAULT_USER=ronan

# Tell Antigen that you're done.
antigen apply
