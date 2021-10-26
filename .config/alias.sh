alias cls='clear'
alias ll='cls;ls -ltrG'
alias la='cls;ll -a'
alias reload='. ~/.profile'
alias volumes='cd /Volumes/'
alias vr='cd ~/Documents/projects/robly/ && vagrant up && vagrant ssh'
alias vl='cd ~/Documents/projects/lead/ && vagrant up && vagrant ssh'
alias vrssh='cd ~/Documents/projects/robly/ && vagrant ssh'
alias rebuild-test='~/Documents/projects/talent_hack/rebuild_test.sh'
alias rc-th='heroku run --app release-thetalenthack rails c'
alias dkstop='docker stop $(docker ps -q)'
alias dkbash='docker-compose run web bash'
alias dkrails='docker run -ti -v "$PWD":/app -p 3000:3000 rails-base bash'
alias gateway='route -n get default'
alias gpforce='git push --force $(git remote -v|grep origin|awk '\''FNR <= 1 { print $1 }'\'') $(git branch | sed -n -e "s/^\* \(.*\)/\1/p")'
alias gpush='git push $(git remote -v|grep origin|awk '\''FNR <= 1 { print $1 }'\'') $(git branch | sed -n -e "s/^\* \(.*\)/\1/p")'
alias gstatus='git status'
alias gadd='git add -p'
alias migrate='rails db:migrate'
alias console='rails c'
alias routes='rails routes'
alias test-console='rails c -e test'
