# frozen_string_literal: true

# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

if Rails.env.development?
  AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')
  AdminUser.create!(email: 'novena.jaya@utama.com', password: 'fullakses', password_confirmation: 'fullakses')
end

Category.create!([
                   { name: 'foam laminating', title: 'laminating busa', description: 'laminating busa' },
                   { name: 'fabric laminating', title: 'laminating kain', description: 'laminating kain' }
                 ])

category_fabric = Category.find_by(name: 'fabric laminating')
category_foam = Category.find_by(name: 'foam laminating')

Product.create!([
                  { name: 'Jaket Gunung (Outdoor)', category: category_fabric, category_name: category_fabric.name },
                  { name: 'Pakaian Medis (Gaun Operasi)', category: category_fabric,category_name: category_fabric.name },
                  { name: 'Pakaian Olahraga', category: category_fabric, category_name: category_fabric.name },
                  { name: 'Pakaian Dalam (Bra)', category: category_fabric, category_name: category_fabric.name },
                  { name: 'Sepatu (Bagian Dalam)', category: category_fabric, category_name: category_fabric.name },
                  { name: 'Sajadah', category: category_foam, category_name: category_foam.name },
                  { name: 'Lapisan Dalam Helm', category: category_foam, category_name: category_foam.name },
                  { name: 'Lapisan Jok Mobil', category: category_foam, category_name: category_foam.name },
                  { name: 'Tas Laptop (Padding)', category: category_foam, category_name: category_foam.name },
                  { name: 'Insole Sepatu', category: category_foam, category_name: category_foam.name },
                  { name: 'Padding Bra (Busa)', category: category_foam, category_name: category_foam.name }
                ])
