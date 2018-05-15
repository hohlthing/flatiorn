class Application

  def call(env)
    resp = Rack::Response.new
    resp.write "Hello, my name is h o h l t h i n g"
    resp.finish
  end

end
