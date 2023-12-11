class Head < ApplicationRecord
  has_many :head_projects
  has_many :projects, through: :head_projects
end
