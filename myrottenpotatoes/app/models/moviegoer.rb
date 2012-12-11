class Moviegoer < ActiveRecord::Base
# place a copy of the following line anywhere inside the Movie class
#  AND inside the Moviegoer class (idiomatically, it should go right
#  after 'class Movie' or 'class Moviegoer'):
  has_many :reviews
  include ActiveModel::MassAssignmentSecurity
  attr_accessible :uid, :provider, :name # see text for explanation
  def self.create_with_omniauth(auth)
    Moviegoer.create!(
      :provider => auth["provider"],
      :uid => auth["uid"],
      :name => auth["info"]["name"])
  end
end
