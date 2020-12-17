class Author < ApplicationRecord
    has_many :books

    validates_presence_of :last_name, :first_name

    def full_name
        "#{self.first_name} #{self.last_name}".titleize
    end


end
