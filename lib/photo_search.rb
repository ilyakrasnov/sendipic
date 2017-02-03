class PhotoSearch

  def initialize(client)
    @client = client
  end

  def get_photos(query)
    @client.fetch_photos
  end
end
