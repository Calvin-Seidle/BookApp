class Comment < ApplicationRecord
  belongs_to :booklist
  ratyrate_rateable "rating"
end
