class Booklist < ApplicationRecord
	validates :ISBN, presence: true
	validates :genre, presence: true
	validates :title, presence: true
	validates :author, presence: true
	validates :pages, presence: true
	validates :year, presence: true
end
