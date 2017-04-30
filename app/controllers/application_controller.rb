class ApplicationController < Sinatra::Base
	configure do
		set :session_secret, "secret"
		enable :sessions

		set :views, Proc.new { File.join(root, "../views/") }
	end

	get '/' do
		erb :index
	end

	
end