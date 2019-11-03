class Student

  attr_accessor :name, :location, :twitter, :linkedin, :github, :blog, :profile_quote, :bio, :profile_url 

  @@all = []

  def initialize(student_hash)
    #should take in an argument of a hash and use meta-programming to assign the newly created student attributes and values per the key/value pairs of the hash.
    @@all << self
  end

  def self.create_from_collection(students_array)
    #should take in an array of hashes. In fact, we will call Student.create_from_collection with the return value of the Scraper.scrape_index_page method as the argument
    #should iterate over the array of hashes and create a new individual student using each hash
  end

  def add_student_attributes(attributes_hash)
    #should iterate over the given hash and use meta-programming to dynamically assign the student attributes and values per the key/value pairs of the hash.
  end

  def self.all
    @@all
  end
end

