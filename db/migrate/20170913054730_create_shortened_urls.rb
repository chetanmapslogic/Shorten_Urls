class CreateShortenedUrls < ActiveRecord::Migration
  def change
    create_table :shortened_urls do |t|
    	t.string :url, :null => false # the original url to shortened link points
      t.string :unique_key, :null => true # a unique key to identify the original link
      t.integer :use_count, :null => false, :default => 0 # how many times a link has been accessed
 
      t.timestamps
      t.timestamps null: false
    end
  end
end
