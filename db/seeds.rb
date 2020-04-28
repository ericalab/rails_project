# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
if Rails.env == 'development'
    (1..20).each do |i|
        Board.create!(
            name: Faker::Name.name,
            title: Faker::CryptoCoin.coin_name,
            body: Faker::Lorem.paragraph(2)
        )
    end

    Tag.create!([
        { name: 'ニュース'},
        { name: '意見交換'},
        { name: '勉強会'},
        { name: 'セミナー'},
        { name: 'その他'}
    ]) 
end