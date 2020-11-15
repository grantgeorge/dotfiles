# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/grantgeorge/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  osx
  git
  npm
  brew
  git-extras
  nvm
  zsh-completions
  zsh-autosuggestions
  zsh-syntax-highlighting
  colorize
  pip
  python
  rvm

  history
  virtualenv
  jira
  screen
  tmux
  vagrant
  vagrant-prompt
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
alias zshconfig="subl ~/.zshrc"
alias ohmyzsh="subl ~/.oh-my-zsh"

# ssh
export SSH_KEY_PATH="~/.ssh/rsa_id"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
source $HOME/.npm-run.plugin.zsh/npm-run.plugin.zsh

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/grantgeorge/Downloads/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/grantgeorge/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/grantgeorge/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/grantgeorge/Downloads/google-cloud-sdk/completion.zsh.inc'; fi
export PATH="/usr/local/sbin:$PATH"

alias pg_start="launchctl load ~/Library/LaunchAgents/homebrew.mxcl.postgresql@9.6.plist"
alias pg_stop="launchctl unload ~/Library/LaunchAgents/homebrew.mxcl.postgresql@9.6.plist"
export PATH="/usr/local/opt/postgresql@9.6/bin:$PATH"

# Android Development
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools
export ANDROID_NDK_HOME=$HOME/Library/Android/sdk/ndk-bundle

showPort() {
    lsof -i tcp:$1
}

killPort() {
    lsof -i tcp:$1 | awk 'NR!=1 {print $2}' | xargs kill
}

alias port=showPort
alias killport=killPort

alias gcamnv='git commit -a -m --no-verify'
alias ggpushnv='git push origin "$(git_current_branch)" --no-verify'

# Node path
export NVM_SYMLINK_CURRENT=true

export NVM_DIR="$HOME/.nvm"

alias EMULATOR="emulator -avd Pixel_3_API_28_2"

# adb -s HZAL1670JAJA1801070 install app/build/outputs/apk/release/app-STAGING-release.apk

alias install-nokia="adb -s HZAL1670JAJA1801070 install /Users/grantgeorge/w/um/um-android-rn/android/app/build/outputs/apk/release/app-STAGING-release.apk"
alias install-nokia-prod="adb -s HZAL1670JAJA1801070 install /Users/grantgeorge/w/um/um-android-rn/android/app/build/outputs/apk/release/app-PRODUCTION-release.apk"
alias install-pixel="adb -s 898X06VFV install /Users/grantgeorge/w/um/um-android-rn/android/app/build/outputs/apk/release/app-STAGING-release.apk"
alias install-pixel-prod="adb -s 898X06VFV install /Users/grantgeorge/w/um/um-android-rn/android/app/build/outputs/apk/release/app-PRODUCTION-release.apk"
alias install-emulator="adb -s emulator-5554 install /Users/grantgeorge/w/um/um-android-rn/android/app/build/outputs/apk/release/app-STAGING-release.apk"

alias gradle-clean="./android/gradlew clean && ./android/gradlew --stop"
alias gradle-ass="./android/gradlew assembleRelease"
alias gradle-debug="./android/gradlew assembleDebug"

export SENTRY_AUTH_TOKEN="18199936fdd64486b0b311e9032717f61d57e92500cd4b6c95fceb5a04249982"
export SENTRY_ORG="unitedmasters-ms"
export SENTRY_PROJECT="um-android-rn"
source /Users/grantgeorge/.npm-run.plugin.zsh/npm-run.plugin.zsh

alias vs-settings="subl $HOME/Library/Application\ Support/Code/User/settings.json"
source /Users/grantgeorge/.npm-run.plugin.zsh/npm-run.plugin.zsh
source /Users/grantgeorge/.npm-run.plugin.zsh/npm-run.plugin.zsh
source /Users/grantgeorge/.npm-run.plugin.zsh/npm-run.plugin.zsh
source /Users/grantgeorge/.npm-run.plugin.zsh/npm-run.plugin.zsh
source /Users/grantgeorge/.npm-run.plugin.zsh/npm-run.plugin.zsh

export EXPO_APPLE_ID="grant@grantgeorge.io"
export EXPO_APPLE_PASSWORD="t1c6CrZrohdyn"
export EXPO_APPLE_ID_PASSWORD="t1c6CrZrohdyn"
export FASTLANE_APPLE_APPLICATION_SPECIFIC_PASSWORD="vmvh-abij-ulmz-lofd"
source /Users/grantgeorge/.npm-run.plugin.zsh/npm-run.plugin.zsh
source /Users/grantgeorge/.npm-run.plugin.zsh/npm-run.plugin.zsh
source /Users/grantgeorge/.npm-run.plugin.zsh/npm-run.plugin.zsh
source /Users/grantgeorge/.npm-run.plugin.zsh/npm-run.plugin.zsh
source /Users/grantgeorge/.npm-run.plugin.zsh/npm-run.plugin.zsh

# From Mathias dotfiles...

# Case-insensitive globbing (used in pathname expansion)
setopt nocaseglob;

# Append to the Bash history file, rather than overwriting it
setopt histappend;

# Autocorrect typos in path names when using `cd`
# setopt cdspell;

# Enable some Bash 4 features when possible:
# * `autocd`, e.g. `**/qux` will enter `./foo/bar/baz/qux`
# * Recursive globbing, e.g. `echo **/*.txt`
for option in autocd globstar; do
	setopt "$option" 2> /dev/null;
done;

# Add tab completion for many Bash commands
if which brew &> /dev/null && [ -r "$(brew --prefix)/etc/profile.d/bash_completion.sh" ]; then
	# Ensure existing Homebrew v1 completions continue to work
	export BASH_COMPLETION_COMPAT_DIR="$(brew --prefix)/etc/bash_completion.d";
	source "$(brew --prefix)/etc/profile.d/bash_completion.sh";
elif [ -f /etc/bash_completion ]; then
	source /etc/bash_completion;
fi;

# Enable tab completion for `g` by marking it as an alias for `git`
if type _git &> /dev/null; then
	complete -o default -o nospace -F _git g;
fi;

# Add tab completion for SSH hostnames based on ~/.ssh/config, ignoring wildcards
[ -e "$HOME/.ssh/config" ] && complete -o "default" -o "nospace" -W "$(grep "^Host" ~/.ssh/config | grep -v "[?*]" | cut -d " " -f2- | tr ' ' '\n')" scp sftp ssh;

# Add tab completion for `defaults read|write NSGlobalDomain`
# You could just use `-g` instead, but I like being explicit
complete -W "NSGlobalDomain" defaults;

# Add `killall` tab completion for common apps
complete -o "nospace" -W "Contacts Calendar Dock Finder Mail Safari iTunes SystemUIServer Terminal" killall;

# Avoid issues with `gpg` as installed via Homebrew.
# https://stackoverflow.com/a/42265848/96656
export GPG_TTY=$(tty);