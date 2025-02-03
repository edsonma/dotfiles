# rbenv stuff
status --is-interactive; and ~/.rbenv/bin/rbenv init - fish | source

# startship
starship init fish | source

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/edsonma/Downloads/google-cloud-sdk/path.fish.inc' ]; . '/Users/edsonma/Downloads/google-cloud-sdk/path.fish.inc'; end

set -x JAVA_HOME (/usr/libexec/java_home  -v 20.0.1)

fish_add_path /opt/homebrew/bin

function nvm
  bass source (brew --prefix nvm)/nvm.sh --no-use ';' nvm $argv
end

set -x NVM_DIR ~/.nvm
nvm use default --silent

