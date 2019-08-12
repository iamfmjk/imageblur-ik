class Image

  def initialize(row0, row1, row2, row3)
    @image = [row0, row1, row2, row3]
    # @image.shuffle!

  end

  def output_image
    @image.each do |row|
    puts row.inspect
    end
  end

  def blur
    pixels_to_blur = [] # stores "coordinates" of all pixels that need to be changed to 1
    # select and store all pixels that should be changed to 1:
    @image.each_with_index do |row, y|
      row.each_with_index do |column, x|
        if column == 1
          unless row == @image.first
            pixels_to_blur << [y - 1, x] # select pixel above
          end
          unless row == @image.last
            pixels_to_blur << [y + 1, x] # select pixel below
          end
          unless column == row.first
            pixels_to_blur  << [y, x - 1] # select pixel to the left
          end
          unless column == row.last
            pixels_to_blur << [y, x + 1] # select pixel to the right
          end
        end
      end
    end
    # change every pixel selected above to 1:
    pixels_to_blur.each do |pixel|
      y = pixel[0]
      x = pixel[1]
      @image[y][x] = 1
    end
  end

end



image = Image.new([0, 0, 0 ,0], [0, 0, 1, 0], [0, 1, 0, 0], [0, 0, 0 , 1])
image.output_image
puts "The blurred image:"
image.blur
image.output_image
