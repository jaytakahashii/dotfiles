# conpailer
alias ccw='cc -Wall -Wextra -Werror'
alias ccwfg='cc -Wall -Wextra -Werror -fsanitize=address,undefined -g'
alias cppw='c++ -Wall -Wextra -Werror -pedantic -std=c++98'

# move
alias de='cd ~/Desktop'

alias addalias='vim ~/dotfiles/zsh/aliases.zsh'

alias 42='cd ~/Documents/42Paris'

# git
alias g='git'
alias gc!='git commit --amend'
alias gcno!='git commit --amend --no-edit'
alias gcano!='git commit --all --amend --no-edit'
alias gl1='git log -1'
alias ggpush!='git push -f origin "$(git_current_branch)"'
alias gsur='git submodule update --remote'
alias cz='npx git-cz'

# this file
alias conf='cd ~/ConfigFiles'

# 42
alias grademe='bash -c "$(curl https://grademe.fr)"'
alias norm='norminette'
alias valg='valgrind --leak-check=full --show-leak-kinds=all'
alias restart='exec $SHELL -l'
alias 42lint='python3 -m c_formatter_42 -c'

# ESLint
alias lint='npm run lint:fix'

# python
alias python='python3'
alias p='python3'
alias pip='pip3'
alias activate='source .venv/bin/activate'
alias venv='python -m venv .venv'

# command
alias tree="tree -a --charset unicode -I 'node_modules' -I '.git' -I '_' -I '.obj' -I '.nuxt' -I '.data' -I '.output' -I 'venv' -I '.pytest_cache' -I '.yarn' -I 'dist' -I '.venv' -I '.ruff_cache' -I '__pycache__' -I '.mypy_cache' -I '.gradle'"
alias cpy="pbcopy"
alias do="cd ~/Documents"
