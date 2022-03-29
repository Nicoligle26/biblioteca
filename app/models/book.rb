# frozen_string_literal: true

# == Schema Information
#
# Table name: books
#
#  id           :bigint           not null, primary key
#  name         :string
#  review       :string
#  price        :decimal(, )
#  languaje     :string
#  number_pages :integer
#  image        :text
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  author_id    :bigint
#  gender_id    :bigint
#
class Book < ApplicationRecord
  belongs_to :author
  belongs_to :gender

  validates :name, :price, :languaje, :image, presence: true
end
