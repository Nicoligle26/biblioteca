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
require 'rails_helper'

RSpec.describe Book, type: :model do
  describe 'relationship' do
    it { should belong_to(:author) }
    it { should belong_to(:gender) }
  end

  describe 'validations' do
    it { should validate_presence_of(:name) }
  end
end
