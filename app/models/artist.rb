class Artist

  @@all = []

  attr_reader :name, :years_experience

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience

    @@all << self
  end

  def self.all
    @@all
  end

  def paintings
    Painting.all.select do |painting|
      painting.artist == self
    end
  end

  def galleries
    self.paintings.map do |painting|
      painting.gallery
    end.uniq
  end

  def cities
    self.galleries.map do |gallery|
      gallery.city
    end
  end

  # def self.total_experience
  #   total_years = 0
  #   self.all.each do |i|
  #     total_years += i.years_experience
  #   end
  #   total_years
  # end

  def self.total_experience
    self.all.map(&:years_experience).inject(&:+)
  end

  def self.most_prolific
    self.all.max_by do |i|

    end

  end


end
