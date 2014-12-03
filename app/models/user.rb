require "active_model"

class User
  include ActiveModel::Model

  validates_numericality_of :age, strict: true

  attr_accessor :age

  def some_method
    20.times {
      puts "Hello World"
    }
  end
end
