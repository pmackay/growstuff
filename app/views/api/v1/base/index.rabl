
node(:@id) { |item| url_for(:only_path => false) + '/' + item.id.to_s }

attributes :id, :name

node(:url) { |crop| crop_url(crop) }
