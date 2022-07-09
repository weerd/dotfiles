#!/usr/bin/env bash


# ------------------------------------------------------------------------------
# Clone Repositories
# ------------------------------------------------------------------------------



dir="$HOME/Code"

source "$dir/dotfiles/extras/colors"

cd $dir

repositories=(

	DoSomething/analytics
	DoSomething/aurora
	DoSomething/babel-config
	DoSomething/bertly
	DoSomething/carmen
	DoSomething/communal-docs
	DoSomething/docs
	DoSomething/environment-badge
	DoSomething/eslint-config
	DoSomething/experiments
	DoSomething/forge
	DoSomething/gateway
	DoSomething/gateway-js
	DoSomething/graphql
	DoSomething/hubot-george
	DoSomething/infrastructure
	DoSomething/lambda-papertrail
	DoSomething/longshot
	DoSomething/northstar
	DoSomething/northstar-js
	DoSomething/phoenix
	DoSomething/phoenix-contentful-widgets
	DoSomething/phoenix-next
	DoSomething/puck
	DoSomething/puck-client
	DoSomething/rogue
	DoSomething/sixpack
	DoSomething/webpack-config

	SpicyBoyz/grimoire

	weerd/apollo-pages
	weerd/chronos-events
	weerd/composer-package-starter
	weerd/pantheon
	weerd/veritas-logs
	weerd/vulcan-crud
)



# Clone Repositories
# ------------------------------------------------------------------------------

for repository in "${repositories[@]}"
do
	git clone "git@github.com:$repository.git"
done

printf "\n$SUCCESS%s$RESET\n" "Repositories cloned into $dir."
