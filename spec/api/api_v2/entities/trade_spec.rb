require 'spec_helper'

describe APIv2::Entities::Trade do

  let(:trade) { create(:trade) }

  subject { OpenStruct.new APIv2::Entities::Trade.represent(trade, side: 'sell').serializable_hash }

  its(:id)               { should == trade.id }
  its(:price)            { should == trade.price }
  its(:volume)           { should == trade.volume }
  its(:market)           { should == trade.currency }
  its(:created_at)       { should == trade.created_at.iso8601 }
  its(:side)             { should == 'sell' }

end
