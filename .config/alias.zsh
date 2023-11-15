alias cls='clear'
alias ll='cls;ls -ltrG'
alias la='cls;ll -a'
alias reload='. ~/.zshrc'
alias gpforce='git push --force $(git remote -v|grep origin|awk '\''FNR <= 1 { print $1 }'\'') $(git branch | sed -n -e "s/^\* \(.*\)/\1/p")'
alias gpush='git push $(git remote -v|grep origin|awk '\''FNR <= 1 { print $1 }'\'') $(git branch | sed -n -e "s/^\* \(.*\)/\1/p")'
alias gstatus='git status'
alias gadd='git add -p'
alias gcempty='git commit --amend --allow-empty'
alias grebase="git fetch origin master && git rebase origin/master"
alias reload="source ~/.zshrc"
alias aws-prod="aws --profile production ecr get-login-password | docker login --username AWS --password-stdin 471410223680.dkr.ecr.eu-west-1.amazonaws.com"
alias aws-stg="aws --profile staging ecr get-login-password | docker login --username AWS --password-stdin 471410223680.dkr.ecr.eu-west-1.amazonaws.com"
alias gw-tunnel="ssh -NL 8085:es-service-gateway.stg.jobandtalent.cloud:80 deploy@gateway.staging.jobandtalent.com"
alias tunnel-stg="kitt -e staging vault tunnel start"
alias tunnel-prod="kitt -e production vault tunnel start"
alias stg="kitt -es console ecs"
alias prod="kitt -ep console ecs"
alias t-prod="JT_DISABLE_READONLY_DB_PROTECTION=true kitt k8s shell --env production --service transactions -- rails c -- --nomultiline"
alias t-stg="teleport-login-stg | JT_DISABLE_READONLY_DB_PROTECTION=true kitt k8s shell --env staging --service transactions -- rails c -- --nomultiline"
alias sync="/Users/damo/Documents/projects/jobandtalent/devcloud/script/sync -f $(basename $PWD)"
alias login="saml2aws login"
alias ip="ipconfig getifaddr en0"
alias addipaws-prod="kitt -ep security-group addmyip"
alias addipaws-stg="kitt -es security-group addmyip"
alias teleport-login-stg="tsh kube login jt-stg-products-eks-00"
alias teleport-login-prd="tsh kube login jt-prd-products-eks-00"
alias linter="bundle exec jt-linter --parallel"
alias updevkit="devkit up -d auth auth-front backoffice candidates candidates-consumers candidates-workers companies companies-consumers companies-workers enrolment-es enrolment-es-chrome-browser enrolment-es-workers es-service-gateway farming farming farming-consumers farming-workers gateway integrations-consumers landings minichef staffing staffing-consumers staffing-workers transactions transactions-workers workforce workforce-consumers workforce-workers zeppelin"
