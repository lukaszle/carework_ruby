class Klient < ActiveRecord::Base
  has_many :kontos
  has_many :fakturas
end
