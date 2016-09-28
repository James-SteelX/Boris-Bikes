require 'bike'

describe Bike do

	it 'bike can be reported broken' do
	subject.report_broken
	expect(subject).to be_broken
  end

end
