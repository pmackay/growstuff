collection @seeds
attributes :id, :name, :owner_id, :crop_id, :description

node :created_at do |crop|
  crop.created_at.time
end

node :updated_at do |crop|
  crop.updated_at.time
end

