class Project < ApplicationRecord
    has_many :head_projects
    has_many :heads, through: :head_projects
end
