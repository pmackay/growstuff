
node(:@id) { url_for(:only_path => false) }

node :created_at do |item|
  #@item.created_at.time
  item.created_at.time
end

node :updated_at do |item|
  item.updated_at.time
end

node(:url) { |item| crop_url(item) }

