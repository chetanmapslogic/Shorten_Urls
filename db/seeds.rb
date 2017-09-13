# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
ShortenedUrl.create(:url => "https://www.quora.com/Is-it-worth-spending-up-to-2-lac-on-a-Royal-Enfield-bike-as-compared-to-other-bikes-even-though-it-has-less-features-in-comparison-Is-it-just-an-emotional-value-bike-Im-not-against-Enfield-or-pro-any-other-brand-I-want-to-buy-a-worthy-bike", :unique_key => "pz4qe", :use_count => 3)
ShortenedUrl.create(:url => "https://www.quora.com/A-flight-takes-1-5-hours-to-get-from-Delhi-to-Mumbai-but-the-return-flight-only-takes-90-minutes-How-is-this-possible", :unique_key => "p0g89", :use_count => 2)
ShortenedUrl.create(:url => "https://www.quora.com/What-are-some-things-that-make-you-sad", :unique_key => "p0g89", :use_count => 5)
