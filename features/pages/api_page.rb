class Api
  include HTTParty
  require_relative "../hooks/api_hooks"
  base_uri "https://reqres.in"

  def initialize(body)
    @options = { :body => body }
  end

  def postAPI
    self.class.post("/api/users", @options)
  end

  def getAPI
    self.class.get("/api/users/7", @options)
  end

  def putAPI
    self.class.put("/api/users/7", @options)
  end

  def deleteAPI
    self.class.delete("/api/users/7", @options)
  end

  def patchAPI
    self.class.patch("/api/users/7", @options)
  end
end
