class Image

  def initialize(row1, row2, row3, row4)
    @image = [row1, row2, row3, row4]

  end

  def output_image
    @image.shuffle!
    @image.each do |line|
    puts line.join
    end

  end

end

image = Image.new([0, 0, 0 ,0], [0, 1, 0, 1], [0, 1, 0, 0], [0, 0, 0 , 1])
image.output_image
