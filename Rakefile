namespace :db do
  desc 'Migrate Database'
  task :migrate do
    require_relative 'bejar/models/bejar.model.rb'
    DataMapper.finalize
    DataMapper.auto_upgrade!
  end
end
