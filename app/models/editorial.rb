# frozen_string_literal: true

# == Schema Information
#
# Table name: editorials
#
#  id         :bigint           not null, primary key
#  name       :string
#  city       :string
#  pages      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Editorial < ApplicationRecord
  has_many :genders

  validates :name, :city, :pages, presence: true
end
