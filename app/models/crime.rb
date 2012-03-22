class Crime < ActiveRecord::Base
  belongs_to :villain

  before_create :fill_location

  private
  def fill_location
    self.location = "41.85,-87.65"
  end
end
