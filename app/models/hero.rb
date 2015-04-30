class Hero < ActiveRecord::Base

  validates_presence_of :name, with: /\A\D+\z/, message: "isn't a correctly formatted name: e.g. Zeus", allow_blank: false

  validates_format_of :movespeed, with: /\A\d{3}\z/, message: "isn't a correctly formatted move speed: e.g. 420", allow_blank: true

  validates_format_of :turnrate, with: /\A\d{1}.\d{1,2}\z/, message: "isn't a correctly formatted turn rate: e.g. 0.4", allow_blank: true

  validates_format_of :sightrange, with: /\A\d{4}\/\d{3,4}\z/, message: "isn't a correctly formatted sight range: e.g. 1800/800", allow_blank: true

  def self.search(search)
    if search
      where('name LIKE ?', "%#{search}%")
    else
      all
    end
  end

end
