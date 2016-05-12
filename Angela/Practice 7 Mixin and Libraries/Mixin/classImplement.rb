require_relative "moduleGreets"
require_relative "moduleGoodBy"
class Implement
	include GoodBye
	include Greets
end

impl=Implement.new
impl.greet1
impl.greet2
impl.greet3
impl.bye1
impl.bye2
impl.bye3