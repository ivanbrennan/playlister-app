require 'spec_helper'

describe Song do
  context 'with artists' do
    describe '#artist_name=' do
      it 'assigns an artist by name' do
        song = Song.new
        song.artist_name = "Michael Jackson"
        song.save

        song.artist.should eq(Artist.find_by(:name => "Michael Jackson"))
      end
    end
  end
end
