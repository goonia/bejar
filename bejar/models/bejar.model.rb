require "data_mapper"

database = "sqlite://#{Dir.pwd}/db/development.db"
DataMapper.setup(:default, database)

class User
    include DataMapper::Resource

    property :id, Serial
    property :email, String
    property :password, BCryptHash
    property :username, String
    property :role, Integer

    property :created_at, DateTime
    property :updated_at, DateTime
end

DataMapper.finalize
DataMapper.auto_upgrade!
