public class FizzBuzz{

	public init(){
	}
	
	public func fizzbuzz(number: Int) -> String {
		if (number % 3 == 0 && number % 5 == 0) {
			return "FizzBuzz"
		} else if (number % 5 == 0) {
			return "Buzz"
		} else if (number % 3 == 0) {
			return "Fizz"
		} else {
			return String(number)
		}
	}

	public func fizzbuzzStream(number: Int) -> String {
		var fb: [String] = []
		for index in 1...number {
			let value = self.fizzbuzz(index)
			fb.append(value)
		}
		return fb.joinWithSeparator(", ")
	}
}
