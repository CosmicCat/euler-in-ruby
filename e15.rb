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

class Route
  def initialize()
    @points = [Point.new(0,0)]
  end

  def initialize_copy(source)
    super(source)
    @points = source.points.dup
  end

  attr_accessor :points

  def generateNextRoutes
    l = @points.last
    nextRoutes = []

    points = [Point.new(l.x, l.y+1), Point.new(l.x+1, l.y+1), Point.new(l.x+1, l.y)]
    points.each do |p|
      # toss it out if we walk off the grid
      if p.x > $endx or p.y > $endy
        next
      end
      nextRoute = self.dup
      nextRoute.points.push p
      nextRoutes.push nextRoute
    end
    return nextRoutes
  end
end

def main
  done = false
  routes = [Route.new]
  generation= 0
   
  until done
    puts "starting generation #{generation}"
    generation += 1
    done = true
    nextRoutes = []
    if generation == 11
      return
    end
    routes.each do |r|
      # if all routes are at the end, we are done
      if r.points.last.x == $endx and r.points.last.y == $endy
        done = done and true
        nextRoutes.push(r)
      else
        done = false
        nextRoutes.concat r.generateNextRoutes
      end
    end
    routes = nextRoutes
  end
   
  puts routes.size
end

require 'perftools'
PerfTools::CpuProfiler.start("profile") do
  main
end
