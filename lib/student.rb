class Student

  attr_accessor :name, :grade 
  attr_reader :id 
  
  def initialize (id = nil, name, grade)
    @name = name
    @grade = grade
    @id = id
  end 
  
  def self.create_table
    sql = <<-SQL
    create table students(id integer primary key, name text, grade text);
    SQL
    DB[:conn].execute(sql)
  end
  
  def self.drop_table
    sql = "DROP TABLE IF EXISTS students"
    DB[:conn].execute(sql)
  end 
  
end
