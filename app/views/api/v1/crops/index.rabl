collection @crops

node(:@id) { |item| url_for(:only_path => false) + '/' + item.id.to_s }
node(:@type) { 'Crop' }

attributes :id, :name, :plantings_count, :creator_id, :en_wikipedia_url

node :created_at do |crop|
  crop.created_at.time
end

node :updated_at do |crop|
  crop.updated_at.time
end

node(:url) { |crop| crop_url(crop) }
