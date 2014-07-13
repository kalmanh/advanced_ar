class Hobby < ActiveRecord::Base
  has_and_belongs_to_many :persons
  has_and_belongs_to_many :people, class_name: "Person"

  default_scope { order name: :asc }
end
