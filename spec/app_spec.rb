require 'open3'

describe "Application" do
  let(:result) do
  result = ""
    Open3.popen2('ruby ./app.rb') do |i, o, th|
      i.puts "PLACE 0,0,NORTH"
      i.puts "MOVE"
      i.puts "REPORT"
      i.close
      result = o.read
    end
    result
  end

  it "should display pacman's coordinates" do
    expect(result).to match(/0, 1, NORTH/)
  end

  let(:result_1) do
  result = ""
    Open3.popen2('ruby ./app.rb') do |i, o, th|
      i.puts "PLACE 0,0,NORTH"
      i.puts "LEFT"
      i.puts "REPORT"
      i.close
      result = o.read
    end
    result
  end

  it "should display pacman's coordinates" do
    expect(result_1).to match(/0, 0, WEST/)
  end

  let(:result_2) do
  result = ""
    Open3.popen2('ruby ./app.rb') do |i, o, th|
      i.puts "PLACE 0,0,NORTH"
      i.puts "LEFT"
      i.puts "REPORT"
      i.close
      result = o.read
    end
    result
  end

  it "should display pacman's coordinates" do
    expect(result_2).to match(/0, 0, WEST/)
  end

  let(:result_3) do
  result = ""
    Open3.popen2('ruby ./app.rb') do |i, o, th|
      i.puts "PLACE 1,2,EAST"
      i.puts "MOVE"
      i.puts "MOVE"
      i.puts "LEFT"
      i.puts "MOVE"
      i.puts "REPORT"
      i.close
      result = o.read
    end
    result
  end

  it "should display pacman's coordinates" do
    expect(result_3).to match(/3, 3, NORTH/)
  end

end
