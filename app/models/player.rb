class Player < ActiveRecord::Base
  has_many :reviews

  validate :name, :presence => true
  validates_length_of :name, :minimum => 1, :allow_blank => false, :message => "You need to specify a name."

  validate :email, :presence => true
  validates_format_of :email, :with => /^([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})$/i, :allow_blank => false, :message => "You need to specify a valid email."
end
