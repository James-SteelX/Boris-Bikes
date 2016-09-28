class Bike

  def initialize
    @broken = false
  end

  def report_broken
    @broken = true
  end

  def broken?
    @broken
  end

end

=begin
 report broken bike in docking
 not release broken bikes
 docking station always accept bike
=end
