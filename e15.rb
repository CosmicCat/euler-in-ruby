#Starting in the top left corner of a 2x2 grid, there are 6 routes (without backtracking) to the bottom right corner.

#How many routes are there through a 20x20 grid?

$endx = 20
$endy = 20

class Point
  def initialize(x, y)
    @x = x
    @y = y
  end

  attr_accessor :x, :y

  def next
    nextX = @x + 1
    nextY = @y - 1
    return Point.new(nextX, nextY)
  end

  def valid?
    return @x <= $endx && @y >= 0
  end

  def nextDiagonalOrigin
    if @y == $endy && @x == $endx
      return Point.new(-1, -1)
    elsif @y == $endy
      return Point.new(@x + 1, @y)
    else
      return Point.new(@x, @y + 1)
    end
  end

  def previousPoints
    points = []
    if @y != 0
      points.push(Point.new(@x, @y - 1))
    end
    if @x != 0
      points.push(Point.new(@x - 1, @y))
    end
    return points
  end
  
  def to_s
    "x: #{@x} y: #{@y}"
  end
end

grid = []

def dump(g)
  g.each do |row|
    row.each {|x| print " #{x}"}
    puts ''
  end
end

($endx+1).times do
  grid.push(Array.new($endy+1) { 0 })
end

grid [0][0] = 1
startOrigin = Point.new(0,0)

while startOrigin.valid?
  puts "startOrigin: #{startOrigin}"
  currentPoint = startOrigin
  while currentPoint.valid?
    puts "current: #{currentPoint}"
    prevPoints = currentPoint.previousPoints
    grid[currentPoint.y][currentPoint.x] = prevPoints.inject(0) do |sum, point|
      sum += grid[point.y][point.x]
    end unless prevPoints.empty?

    currentPoint = currentPoint.next
  end
  startOrigin = startOrigin.nextDiagonalOrigin
end

#dump(grid)
puts grid[$endy][$endx]
