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
require 'rails_helper'

RSpec.describe Gender, type: :model do
  describe 'relationship' do
    it { should belong_to(:editorial) }
    it { should have_many(:books) }
  end

  describe 'validations' do
    it { should validate_presence_of(:name) }
  end
end
