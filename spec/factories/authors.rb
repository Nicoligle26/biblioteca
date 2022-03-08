# frozen_string_literal: true

# == Schema Information
#
# Table name: authors
#
#  id          :bigint           not null, primary key
#  name        :string
#  nationality :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
FactoryBot.define do
  factory :author do
    name { 'Gabriel garcia' }
    nationality { 'Colombia' }
  end
end
