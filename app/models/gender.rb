# frozen_string_literal: true

# == Schema Information
#
# Table name: genders
#
#  id           :bigint           not null, primary key
#  name         :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  editorial_id :bigint
#
class Gender < ApplicationRecord
  belongs_to :editorial
  has_many :books

  validates :name, presence: true
end
