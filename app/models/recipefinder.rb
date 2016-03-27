#require 'httparty' #require command is for importing the code from somewhere (like a library in c)
#if we included gem 'httparty' into the Gemfile then we need not to require 'httparty'
class Recipefinder
	include HTTParty #this command includes the HTTParty module from the HTTParty file required before

	base_uri "http://food2fork.com/api"
	default_params key: ENV['FOOD2FORK_KEY'] #a key(q:) => value("search")
	format :json #symbole

	def self.for(searchText)
		@myHash = Hash.new
		@myHash = get("/search",query: {q: searchText})
		@myHash["recipes"]
	end
end