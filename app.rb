require('sinatra')
  require('sinatra/reloader')
  also_reload('lib/**/*.rb')
  require("pg")

get("/") do
  erb(:index)
end

get("/contact") do
  erb(:contact)
end

get("/about") do
  erb(:about)
end

get("/portfolio") do
  erb(:portfolio)
end

not_found do
  status 404
  erb(:oops)
end
