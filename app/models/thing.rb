class Thing < ActiveRecord::Base

  class << columns_hash['date']
    def type
      :date
    end
  end
  attr_accessor :date, :location

end
