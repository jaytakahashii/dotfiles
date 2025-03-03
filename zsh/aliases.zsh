# conpailer
alias ccw='cc -Wall -Wextra -Werror'
alias ccwfg='cc -Wall -Wextra -Werror -fsanitize=address,undefined -g'

# move
alias de='cd ~/Desktop'

alias addalias='vim ~/dotfiles/zsh/aliases.zsh'

alias 42='cd /home/jay/Desktop/42tokyo/42cursus'

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
alias p='python3'

# command
alias tree="tree -a -I 'node_modules' -I '.git' -I '_' -I '.obj'"
