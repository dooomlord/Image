#Require necessary files
require './ImageArray.rb'
#Set variables
convertCheck = 0
arrayForImage = []
#Get input from user and file
puts "What image would you like?(start with ./ and end with .jpg) (./test.jpg is an adorable penguin)"
direc = gets.chomp
puts "How would you like to edit the image? (flip, rotate (Only works on squares), lines)"
changes = gets.chomp.downcase
imageRow = ImageArray.new(direc)
arrayForImage = []
        imageRow.each do |pixelRow|
                arrayForImageRow = []
                pixelRow.each do |pixel|
                        arrayForImageRow.push(pixel)
                end
                arrayForImage.push(arrayForImageRow)
        end
imageRow.write("./test.jpg")

