object @seed
extends 'base/show'

node(:@type) { 'Seed' }

attributes :id, :name, :owner_id, :crop_id, :description
