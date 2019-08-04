class Image

  def initialize
    @row = [1, 0, 0, 1]
    @image = Array.new(4) {@row.shuffle}
  end

  def output_image
    @image.each do |line|
    puts line.join
    end

  end

end

image = Image.new
image.output_image
