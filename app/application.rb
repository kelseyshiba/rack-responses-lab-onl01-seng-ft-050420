class Application

  def call(env)
    resp = Rack::Response.new
    
    if Time.now.to_i.between?(0,13)
      resp.write "Morning"
    else
      resp.write "Good Afternoon!"
    end
    resp.finish
  end
  
end

