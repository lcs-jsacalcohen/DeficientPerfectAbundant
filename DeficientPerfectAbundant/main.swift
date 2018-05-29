
//  RotatingLetters
//
//  Created by Gordon, Russell on 2018-04-06.
//  Copyright © 2018 Gordon, Russell. All rights reserved.
//
import Foundation

// Prompt the user
print("Input number is? ")

// Input //
var givenInt = 0

// forever prompt the user
while 1 == 1 {
    
    // Process //
    // Test #1: Check if nil
    guard let givenInput = readLine() else {
        continue
    }
    
    // Test #2: Check if integer
    guard let intInput = Int(givenInput) else {
        continue
    }
    
    // Test #3: Check if within range
    if intInput < 1 || intInput > 32500 {
        continue
    }
    
    // Once it goes through all the tests, it puts the number into a variable and breaks the process
    givenInt = intInput
    break
}

// Output
var totalDivisor = 0

for i in 2...givenInt {
    
    if givenInt % i == 0 {
        totalDivisor += i
    }
}

// comparing the total of the divisors to the number to determine what kind of number it is.
if totalDivisor < givenInt {
    print("\(givenInt) is a deficient")
} else if totalDivisor > givenInt {
    print("\(givenInt) is an abundant")
} else if totalDivisor == givenInt {
    print("\(givenInt) is a perfect number")
}
