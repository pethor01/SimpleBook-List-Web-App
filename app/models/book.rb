class Book < ApplicationRecord
    belongs_to :author
    has_many :comments

    validates_presence_of :name

    scope :created_books, ->(author_id){ where(author_id: author_id) }
    scope :all_books, -> { all.order(created_at: :desc)}
    # Ex:- scope :active, -> {where(:active => true)}

end
