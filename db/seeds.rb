# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#

User.create!(name: 'juan', email: 'juan@example.com', password: 'Tacos123!', password_confirmation: 'Tacos123!',
             confirmed_at: Date.today, role: 'admin')
puts 'Las seed han sido creadas'
