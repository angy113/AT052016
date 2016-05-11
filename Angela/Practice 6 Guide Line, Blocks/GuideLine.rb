=begin
FORMAT
 For the format of data type ,
 it will become integer or floating the input string 
 when entering.
 whichever is applicable
=end

#In case of string
name=gets.chomp
#In case of float
weight=gets.chomp.to_f
#In case of int
age=gets.chomp.to_i


=begin
CLASSES
 The class is gont to have the same name as the file.
 We are goint to use camel case starting with capital letter
=end

class GuideLine
end

=begin
METHODS
 We are goint to use camel case starting with lower case
 The parameters that recieve the method don't going to have parentesis
 The return word is going to trat to be omitted
=end
def methodExample parameter
	parameter=parameter
end

=begin
VARIABLES GETTER/SETTER
 To create getters and setters I going to use the following keywords 
 To getters: attr_reader
 To setters: attr_writer
 both: attr_accessor
=end
class GuideLine
 attr_reader :name
 attr_writer :name
 attr_accessor :name
end

=begin
IF CONDITION
One of the forms that anybody are customed is the following:
result = (condition) ? (expression-if-true) : (expression-if-false)
=end
result = (0==a) ? ("Cero es igual a'a'") : ("Cero es distinto de a")
