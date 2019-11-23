class Application
  def call(env)
    if (Time.now < 12)
      resp.write("Good Morning!")
    else
      resp.write("Good Afternoon!")
    end
    resp = Rack::Response.new
    resp.finish
  end
end
