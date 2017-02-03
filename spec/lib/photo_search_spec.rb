require 'rails_helper'

describe PhotoSearch do
  it 'returns a list of photos for a given query' do
    photos = [ { id: "16621749905",
                 owner: "50797009@N02",
                 secret: "c440019fb8",
                 server: "8669",
                 farm: 9,
                 title: "Blooming Hillside",
                 ispublic: 1,
                 isfriend: 0,
                 isfamily: 0
                },
               { id: "13912736263",
                 owner: "63229394@N00",
                 secret: "09e14d1180",
                 server: "3801",
                 farm: 4,
                 title: "artichoke",
                 ispublic: 1,
                 isfriend: 0,
                 isfamily: 0
                }
    ]

    client = FlickrClient.new
    allow(client).to receive(:fetch_photos).and_return(photos)
    response = PhotoSearch.new(client).get_photos("search query")

    expect(response).to eq photos
  end
end
