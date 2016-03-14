import Swiftest
import Application

class FizzBuzzSpec: Swiftest.Spec {
	let spec = describe("Returning fizz, buzz or fizzbuzz") {
		describe("#fizzbuzz") {

			let game = FizzBuzz()
			
			it("returns 1 for 1") {
				expect(game.fizzbuzz(1)).to.equal("1")
			}

			it("returns 2 for 2") {
				expect(game.fizzbuzz(2)).to.equal("2")
			}

			it("returns Fizz for 3") {
	            expect(game.fizzbuzz(3)).to.equal("Fizz")
	        }

	        it("returns Fizz for 6") {
	        	expect(game.fizzbuzz(6)).to.equal("Fizz")
	        }

			it("returns Buzz for 5") {
				expect(game.fizzbuzz(5)).to.equal("Buzz")
			}

			it("returns Buzz for 10") {
				expect(game.fizzbuzz(10)).to.equal("Buzz")
			}
			
			it("returns FizzBuzz for 15") {
				expect(game.fizzbuzz(15)).to.equal("FizzBuzz")
			} 

			it("returns FizzBuzz for 30") {
				expect(game.fizzbuzz(30)).to.equal("FizzBuzz")
			} 
		}

		describe("#fizzbuzzStream") {
			let game = FizzBuzz()

			it("Returns Fizz, Buzz, and FizzBuzz up to a given number") {
				expect(game.fizzbuzzStream(16)).to.equal("1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz, 16")
			}

		}
	}	
}
