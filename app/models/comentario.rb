class Comentario < ActiveRecord::Base
  belongs_to :task
  attr_accessible :cuerpo

  validates :cuerpo, presence: true
  default_scope order: 'comentarios.created_at DESC'
  
end
