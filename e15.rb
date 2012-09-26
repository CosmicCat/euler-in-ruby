#Starting in the top left corner of a 2x2 grid, there are 6 routes (without backtracking) to the bottom right corner.

#How many routes are there through a 20x20 grid?

$endx = 19
$endy = 19

class Point
  def initialize(x, y)
    @x = x
    @y = y
  end

  attr_accessor :x, :y
end

def main
  done = false
  generation = [Point.new(0,0)]
  generationCount = 0
   
  until done
    puts "starting generation #{generationCount} with #{generation.size} elements"
    generationCount += 1
    nextGeneration = []
    done = true

    generation.each do |l|
      # move single node forward if we have reached the bottom right corner
      if l.x == $endx and l.y == $endy
        nextGeneration.push(l)
        done = done and true
      else
        done = false
        # otherwise generate next iterations
        points = [Point.new(l.x, l.y+1), Point.new(l.x+1, l.y+1), Point.new(l.x+1, l.y)]
        points.each do |p|
          # toss it out if we walk off the grid
          next if p.x > $endx or p.y > $endy
          nextGeneration.push(p)
        end
      end
    end

    generation = nextGeneration
  end

  puts generation.size
end

main
