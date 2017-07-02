solr: bundle exec rake sunspot:solr:run
resque: bundle exec rake environment resque:work QUEUE=enju_leaf,mailers TERM_CHILD=1
#web: bundle exec rails s
web: bundle exec unicorn -p $PORT -c ./config/unicorn.rb
