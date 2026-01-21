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
  User.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')
  User.create!(email: 'novena.jaya@utama.com', password: 'fullakses', password_confirmation: 'fullakses')
end

# AdminUser
# AdminUser.destroy_all
# AdminUser.create!(id: 1, email: 'admin@example.com',
#                   encrypted_password: '$2a$12$khftE4rw3hk.HakPdSsvvO7Ql/3.ikumWjhag.ub0TQ7czNqswcia', reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil)
# AdminUser.create!(id: 2, email: 'novena.jaya@utama.com',
#                   encrypted_password: '$2a$12$Fsk.dD0T1rw31YkZpXnUqO7uh4fokqhSLD8p7wRwq1dqbb1eg/6AW', reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil)

# Category
Category.destroy_all
Category.create!(id: 1, name: 'foam laminating', title: 'laminating busa', description: 'laminating busa',
                 slug: 'foam-laminating', tags: nil)
Category.create!(id: 2, name: 'garment laminating', title: 'laminating kain', description: 'laminating kain',
                 slug: 'garment-laminating', tags: nil)
Category.create!(id: 3, name: 'eva laminating', title: 'laminating eva', description: 'laminating eva',
                 slug: 'eva-laminating', tags: nil)

# Product
Product.destroy_all
Product.create!(id: 1, name: 'Jaket Gunung (Outdoor)', description: nil, category_id: 2,
                category_name: 'garment laminating', brand_name: nil, price: nil, slug: 'jaket-gunung-outdoor', tags: nil)
Product.create!(id: 2, name: 'Pakaian Medis (Gaun Operasi)', description: nil, category_id: 2,
                category_name: 'garment laminating', brand_name: nil, price: nil, slug: 'pakaian-medis-gaun-operasi', tags: nil)
Product.create!(id: 3, name: 'Pakaian Olahraga', description: nil, category_id: 2, category_name: 'garment laminating',
                brand_name: nil, price: nil, slug: 'pakaian-olahraga', tags: nil)
Product.create!(id: 4, name: 'Pakaian Dalam (Bra)', description: nil, category_id: 2,
                category_name: 'garment laminating', brand_name: nil, price: nil, slug: 'pakaian-dalam-bra', tags: nil)
Product.create!(id: 5, name: 'Sepatu (Bagian Dalam)', description: 'lapisan sepatu ', category_id: 2,
                category_name: 'garment laminating', brand_name: nil, price: nil, slug: 'sepatu-bagian-dalam', tags: nil)
Product.create!(id: 6, name: 'Sajadah', description: nil, category_id: 1, category_name: 'foam laminating',
                brand_name: nil, price: nil, slug: 'sajadah', tags: nil)
Product.create!(id: 7, name: 'Lapisan Dalam Helm', description: nil, category_id: 1, category_name: 'foam laminating',
                brand_name: nil, price: nil, slug: 'lapisan-dalam-helm', tags: nil)
Product.create!(id: 8, name: 'Lapisan Jok Mobil', description: nil, category_id: 1, category_name: 'foam laminating',
                brand_name: nil, price: nil, slug: 'lapisan-jok-mobil', tags: nil)
Product.create!(id: 9, name: 'Tas Laptop (Padding)', description: nil, category_id: 1,
                category_name: 'foam laminating', brand_name: nil, price: nil, slug: 'tas-laptop-padding', tags: nil)
Product.create!(id: 11, name: 'Padding Bra (Busa)', description: nil, category_id: 1, category_name: 'foam laminating',
                brand_name: nil, price: nil, slug: 'padding-bra-busa', tags: nil)
Product.create!(id: 12, name: 'Industri Sepatu & Sandal', description: nil, category_id: 3,
                category_name: 'eva laminating', brand_name: nil, price: nil, slug: 'industri-sepatu-sandal', tags: nil)
Product.create!(id: 13, name: 'Peralatan Olahraga', description: nil, category_id: 3, category_name: 'eva laminating',
                brand_name: nil, price: nil, slug: 'peralatan-olahraga', tags: nil)
Product.create!(id: 14, name: 'Tas & Bagasi', description: nil, category_id: 3, category_name: 'eva laminating',
                brand_name: nil, price: nil, slug: 'tas-bagasi', tags: nil)
Product.create!(id: 15, name: 'Mainan', description: nil, category_id: 3, category_name: 'eva laminating',
                brand_name: nil, price: nil, slug: 'mainan', tags: nil)
Product.create!(id: 16, name: 'Kemasan', description: nil, category_id: 3, category_name: 'eva laminating',
                brand_name: nil, price: nil, slug: 'kemasan', tags: nil)
Product.create!(id: 17, name: 'Interior Otomotif', description: nil, category_id: 3, category_name: 'eva laminating',
                brand_name: nil, price: nil, slug: 'interior-otomotif', tags: nil)
Product.create!(id: 18, name: 'Cosplay & Aksen Kostum', description: nil, category_id: 3,
                category_name: 'eva laminating', brand_name: nil, price: nil, slug: 'cosplay-aksen-kostum', tags: nil)
Product.create!(id: 19, name: 'Perlengkapan Bayi', description: nil, category_id: 1, category_name: nil,
                brand_name: nil, price: nil, slug: 'perlengkapan-bayi', tags: nil)
Product.create!(id: 20, name: 'Perlengkapan Sepatu ', description: '', category_id: 1, category_name: nil,
                brand_name: nil, price: nil, slug: 'perlengkapan-sepatu-sandal-insole', tags: nil)
Product.create!(id: 21, name: 'Perlengkapan Boneka', description: nil, category_id: 1, category_name: nil,
                brand_name: nil, price: nil, slug: 'perlengkapan-boneka', tags: nil)
Product.create!(id: 22, name: 'Perlengkapan Tas Golf', description: nil, category_id: 1, category_name: nil,
                brand_name: nil, price: nil, slug: 'perlengkapan-tas-golf', tags: nil)
Product.create!(id: 23, name: 'Perlengkapan Koper', description: nil, category_id: 1, category_name: nil,
                brand_name: nil, price: nil, slug: 'perlengkapan-koper', tags: nil)
Product.create!(id: 24, name: 'Perlengkapan Militer (Foam)', description: nil, category_id: 1, category_name: nil,
                brand_name: nil, price: nil, slug: 'perlengkapan-militer-foam', tags: nil)
Product.create!(id: 25, name: 'Perlengkapan Militer (Fabric)', description: nil, category_id: 2, category_name: nil,
                brand_name: nil, price: nil, slug: 'perlengkapan-militer-fabric', tags: nil)
Product.create!(id: 26, name: 'Perlengkapan Militer (EVA)', description: nil, category_id: 3, category_name: nil,
                brand_name: nil, price: nil, slug: 'perlengkapan-militer-eva', tags: nil)
Product.create!(id: 27, name: 'Perlengkapan Jok Mobil', description: nil, category_id: 1, category_name: nil,
                brand_name: nil, price: nil, slug: 'perlengkapan-jok-mobil', tags: nil)
Product.create!(id: 28, name: 'Perlengkapan Celana Olahraga (Sepeda)(Fabric)', description: nil, category_id: 2,
                category_name: nil, brand_name: nil, price: nil, slug: 'perlengkapan-celana-olahraga-sepeda-fabric', tags: nil)
Product.create!(id: 29, name: 'Perlengkapan Celana Olahraga (Sepeda)(EVA)', description: nil, category_id: 3,
                category_name: nil, brand_name: nil, price: nil, slug: 'perlengkapan-celana-olahraga-sepeda-eva', tags: nil)
Product.create!(id: 30, name: 'Perlengkapan Masker (Foam)', description: nil, category_id: 1, category_name: nil,
                brand_name: nil, price: nil, slug: 'perlengkapan-masker-foam', tags: nil)
Product.create!(id: 31, name: 'Perlengkapan Masker (EVA)', description: nil, category_id: 3, category_name: nil,
                brand_name: nil, price: nil, slug: 'perlengkapan-masker-eva', tags: nil)
Product.create!(id: 32, name: 'Perlengkapan Body Protector (Foam)', description: nil, category_id: 1,
                category_name: nil, brand_name: nil, price: nil, slug: 'perlengkapan-body-protector-foam', tags: nil)
Product.create!(id: 33, name: 'Perlengkapan Body Protector (EVA)', description: nil, category_id: 3,
                category_name: nil, brand_name: nil, price: nil, slug: 'perlengkapan-body-protector-eva', tags: nil)
Product.create!(id: 34, name: 'Perlengkapan Hijab / Topi (Foam)', description: nil, category_id: 1, category_name: nil,
                brand_name: nil, price: nil, slug: 'perlengkapan-hijab-topi-foam', tags: nil)
Product.create!(id: 35, name: 'Perlengkapan Hijab / Topi (Eva)', description: nil, category_id: 3, category_name: nil,
                brand_name: nil, price: nil, slug: 'perlengkapan-hijab-topi-eva', tags: nil)
Product.create!(id: 36, name: 'Perlengkapan Bordir', description: nil, category_id: 2, category_name: nil,
                brand_name: nil, price: nil, slug: 'perlengkapan-bordir', tags: nil)
Product.create!(id: 37, name: 'Perlengkapan Karpet', description: nil, category_id: 1, category_name: nil,
                brand_name: nil, price: nil, slug: 'perlengkapan-karpet', tags: nil)

# Service
Service.destroy_all
Service.create!(id: 1, name: 'All-in Resource & Material dari Pabrik',
                description: "Kami menyediakan layanan laminating lengkap (end-to-end) dengan seluruh sumber daya, mesin, dan material langsung dari pabrik kami sendiri. Klien tidak perlu menyediakan bahan tambahan apa pun.\r\n\r\nCakupan layanan:\r\n\r\n- Penyediaan bahan laminating (film, adhesive, coating, dll)\r\n- Mesin laminating industri berstandar pabrik\r\n- Operator berpengalaman\r\n- Quality control di setiap tahap produksi\r\n- Konsistensi hasil dan ketepatan waktu produksi\r\n\r\nKeunggulan:\r\n- Biaya lebih efisien karena tanpa pihak ketiga\r\n- Kontrol kualitas penuh dari awal hingga akhir\r\n- Stabil untuk produksi skala besar maupun berulang", active: false, tags: nil, string: nil, slug: 'all-in-resource-material-dari-pabrik')
Service.create!(id: 2, name: 'Jasa Laminating Sesuai Kebutuhan & Requirement Klien',
                description: "Kami melayani jasa laminating custom berdasarkan spesifikasi dan kebutuhan klien, baik dari sisi material, fungsi, maupun hasil akhir.\r\n\r\nJenis requirement yang dapat kami tangani:\r\n\r\n- Laminating untuk kebutuhan industri & manufaktur\r\n- Laminating untuk kemasan, printing, atau material khusus\r\n- Pilihan finishing: glossy, matte, atau custom lainnya\r\n- Penyesuaian ketebalan, daya tahan, dan karakter permukaan\r\n- Produksi massal maupun proyek khusus\r\n\r\nAlur kerja kami:\r\n\r\n- Diskusi kebutuhan & spesifikasi klien\r\n- Rekomendasi material & metode laminating\r\n- Proses produksi di pabrik\r\n- Quality control & pengiriman", active: false, tags: nil, string: nil, slug: 'jasa-laminating-sesuai-kebutuhan-requirement-klien')

# Banner
Banner.destroy_all
Banner.create!(id: 1, title: 'Mountains ', description: '')
Banner.create!(id: 2, title: 'sky', description: '')
Banner.create!(id: 3, title: 'green', description: '')

# About
About.destroy_all
About.create!(id: 1, name: 'Tentang Kami: PT Novena Jaya Utama',
              description: "Komitmen dan Visi Perusahaan\r\nPT Novena Jaya Utama adalah perusahaan manufaktur yang berlandaskan komitmen untuk menghasilkan produk berkualitas tinggi sekaligus berperan aktif dalam pembangunan sumber daya manusia dan industri nasional.\r\nKami percaya bahwa pertumbuhan bisnis harus berjalan seiring dengan kontribusi sosial yang nyata.\r\n\r\nSejarah dan Lini Bisnis\r\nDidirikan pada tahun 2022, PT Novena Jaya Utama merupakan pengembangan dan perluasan dari bisnis tekstil dan material yang telah dirintis oleh Bapak Yudi Diharja sejak tahun 2004, yang awalnya dikenal melalui PT Sakura Laminating.\r\n\r\nKami bergerak dalam rantai pasok dari hulu ke hilir, menghasilkan produk jadi maupun bahan baku penting untuk berbagai sektor industri.\r\n\r\nFokus utama PT Novena Jaya Utama meliputi:\r\n\r\n- Produksi Produk Jadi: Memproduksi kasur busa dan ranjang susun berkualitas.\r\n- Penyuplai Material: Berperan sebagai pemasok bahan baku yang krusial, termasuk bahan sepatu untuk berbagai pabrikan besar hingga memenuhi kebutuhan material untuk sektor pertahanan (militer/TNI).", active: true)

# Contact
Contact.destroy_all
Contact.create!(id: 1, wa_number: '6287766009666',
                wa_title: 'Halo, saya tertarik dengan produk tekstil laminating Novena.', email: 'novenajayautama@gmail.com', active: true)

# Tentang
Tentang.destroy_all
Tentang.create!(id: 1, name: 'PT Novena Jaya Utama', active: false)

# Address
Address.destroy_all
