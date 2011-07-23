
class foods::provider::fedora-15 inherits foods::provider::foods-v2 {
	Package["foods"] { name => "foods2" }	
	Service["foods"] { name => "foods2" }
}