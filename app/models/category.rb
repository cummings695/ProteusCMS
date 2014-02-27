class Category
  include Mongoid::Document
  field :name, type: String
  field :code, type: String
  field :description, type: String

  recursively_embeds_many
  #has_and_belongs_to_many :Parents,  class_name: category
  #has_and_belongs_to_many :Children, class_name: category
end
