# Configure aliases and replacement programs
#
# Convenient shortcuts for common programs, and configure
# replacement programs.

# make common programs easier to use
abbr -ga g git

# configure ls and tree replacement
alias exa='exa -s type' # directories first
abbr -ga ls exa -x
abbr -ga ll exa -hl
abbr -ga la exa -ax
abbr -ga tree exa -T

# configure cat replacement
alias cat='bat'
set -x BAT_THEME 'Monokai Extended'

# configure find replacement
abbr -ga find fd

# open files in the default (gui) program
abbr -ga open xdg-open
