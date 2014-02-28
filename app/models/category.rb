class Category
  include Mongoid::Document

  field :name, type: String
  field :code, type: String
  field :description, type: String

  #recursively_embeds_many
  #has_and_belongs_to_many :Parents,  class_name: category
  #has_and_belongs_to_many :Children, class_name: category

  rails_admin do
    list do
      field :code do
        label "Category Code"
      end
      field :name do
        label "Name of Category"
      end
    end
    object_label_method do
      :custom_label_method
    end
    edit do
      group :default do
        label "Category Definition"
        field :name do
          label "Category Name"
        end
        field :code do
          label "Category Code"
        end
      end
      group :content do
        label "Site Content"
        field :description do
          label "Category Description"
        end
      end
    end
  end

  def custom_label_method
    "Category #{self.name}"
  end
end
