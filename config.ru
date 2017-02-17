require "sinatra/base"

class Web < Sinatra::Base
  get "/" do
    %{
      <h1>Hello CloudFoundry</h1>
      <p>
         This is your web app. There may be many like it,
         but this one is serving you.
      </p>
      <p>Instance Index: #{ENV["INSTANCE_INDEX"]}</p>
      <p>Instance GUID : #{ENV["INSTANCE_GUID"]}</p>
    }
  end
end

run Web.new
