require 'rails_helper'

describe Album do
  # it("has many songs") do
  #   album = Album.create(name: "album")
  #   song1 = Song.create(name: "song1", album_id: album.id)
  #   song2 = Song.create(name: "song2", album_id: album.id)
  #   expect(album.songs()).to(eq([song1, song2]))
  # end
  # これの代わりにshoulda_matchersで
  it { should have_many(:songs) }

  it { should validate_presence_of :name}

  it { should validate_length_of(:name).is_at_most(100)}

  describe Album do
    it("titleizes the name of an album") do
      album = Album.create({name: "giant steps", genre: "jazz"})
      expect(album.name()).to(eq("Giant Steps"))
    end
  end
end