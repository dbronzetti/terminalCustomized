#Console
alias cls='clear'
alias ll='cls;ls -ltrG'
alias la='cls;ll -a'
alias reload='. ~/.zshrc'
alias volumes='cd /Volumes/'

#Git
alias gpforce='git push --force $(git remote -v | grep origin | awk '\''FNR <= 1 { print $1 }'\'') $(git branch | sed -n -e "s/^\* \(.*\)/\1/p")'
alias gpush='git push $(git remote -v|grep origin | awk '\''FNR <= 1 { print $1 }'\'') $(git branch | sed -n -e "s/^\* \(.*\)/\1/p")'
alias gstatus='git status'
alias gadd='git add -p'
alias gpull='git pull'
alias gdiff='git diff'
alias gcempty='git commit --amend --allow-empty'
alias gdefaultbranch='git branch -rl '\''*/HEAD'\'' | awk -F/ '\''{print $NF}'\'
alias grebase='DEFAULTBRANCH=`gdefaultbranch` && git fetch origin $DEFAULTBRANCH && git rebase origin/$DEFAULTBRANCH'
alias gshow='git show --pretty="" HEAD'
alias gshowname='git show --pretty="" --name-only HEAD'
alias sshtest='ssh -T git@github.com'

#Robly
alias vr='cd ~/Documents/projects/robly/ && vagrant up && vagrant ssh'
alias vl='cd ~/Documents/projects/lead/ && vagrant up && vagrant ssh'
alias vrssh='cd ~/Documents/projects/robly/ && vagrant ssh'

#TalentHack
alias rebuild-test='~/Documents/projects/talent_hack/rebuild_test.sh'
alias rc-th='heroku run --app release-thetalenthack rails c'
alias rc-staging='heroku run --app staging-thetalenthack rails c'
alias rc-preprod='heroku run --app staging-th rails c'

#Job&Talent
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
alias jt-linter="bundle exec jt-linter --parallel"
alias updevkit="devkit up -d auth auth-front backoffice candidates candidates-consumers candidates-workers companies companies-consumers companies-workers enrolment-es enrolment-es-chrome-browser enrolment-es-workers es-service-gateway farming farming farming-consumers farming-workers gateway integrations-consumers landings minichef staffing staffing-consumers staffing-workers transactions transactions-workers workforce workforce-consumers workforce-workers zeppelin"

#Amenitiz
alias amenitiz-up='make run/deps && bundle && pnpm install && migrate && bin/dev'
alias amenitiz-up-sidekiq='make run/deps && bundle && yarn install && migrate && bin/dev_sidekiq'
alias amenitiz-stripe-listener='stripe listen --forward-to webhooks.lvh.me:3000/stripe_express/account_event'
alias amenitiz-e2e-start='bin/e2e'
alias amenitiz-e2e-test='pnpm install && pnpm run cy:open'
alias amenitiz-e2e-pw-test='pnpm install && npx playwright test'
alias amenitiz-e2e-pw-ui='pnpm install && npx playwright test --ui'
alias amenitiz-e2e-pw-report='cd ~/Documents/projects/amenitiz/e2e-pw/ && npx playwright show-report'
alias amenitiz-e2e-test-mobile='pnpm install && pnpm run cy:open-mobile'
alias amenitiz-prod-console='heroku run "rails console" -a amenitiz-production'
alias amenitiz-linter='npm run linter'
alias amenitiz-linter-fix='npm run linter-and-fix'
alias amenitiz-secrets='aws-vault exec a6z-development -- make config/application.yml'
alias amenitiz-ds-start='pnpm install && pnpm run storybook'
alias amenitiz-ds-cm='pnpm run cm'
alias amenitiz-tr-build='cd ~/Documents/projects/turbo-frontend && pnpm install && pnpm build'
alias amenitiz-tr-start='amenitiz-tr-build && cd - && pnpm run storybook'
alias amenitiz-tr-lint='pnpm lint'
alias amenitiz-tr-test='pnpm test'
alias amenitiz-fint-compile-run='task build:gen && task run:bin'
alias amenitiz-pull-loco='rake loco:pull_admin_locales'
alias amenitiz-config='op item get ${tuusernamedeaws} --totp | pbcopy; && aws-vault exec a6z-development -- make config/application.yml && cat /dev/null > pbcopy'

#Docker
alias dkstop='docker stop $(docker ps -q)'
alias dkbash='docker-compose run web bash'
alias dkrails='docker run -ti -v "$PWD":/app -p 3000:3000 rails-base bash'
alias gateway='route -n get default'

#Rails
alias migrate='rake db:migrate'
alias migrate-test='RAILS_ENV=test rake db:migrate'
alias console='rails c'
alias routes='rails routes'
alias test-console='rails c -e test'
alias swagger='bundle exec rails rswag:specs:swaggerize'

#coding
alias rubymine='open -na "RubyMine.app"'
