# rbenv stuff
status --is-interactive; and ~/.rbenv/bin/rbenv init - fish | source

# startship
starship init fish | source

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/edsonma/Downloads/google-cloud-sdk/path.fish.inc' ]; . '/Users/edsonma/Downloads/google-cloud-sdk/path.fish.inc'; end

set -x JAVA_HOME (/usr/libexec/java_home  -v 20.0.1)

