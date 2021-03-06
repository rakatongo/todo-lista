class Task < ActiveRecord::Base
  attr_accessible :descripcion, :estado, :nombre, :tipo
  has_many :comentarios
  
  validates :descripcion, :nombre, :tipo, presence: true

  default_scope order: "tasks.created_at DESC"
end
