class Application

  @@items = []

  def  call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)

    item_name = params
    if req.path.match(/items/)
      item
      resp.write item.price
    else
      resp.write "Route not found"
      resp.status = 404
    end
  end
end
