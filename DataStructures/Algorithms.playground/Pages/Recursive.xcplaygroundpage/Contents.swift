import Foundation
import UIKit

print("""
Sum of natural numbers
        
       { 0              if n == -1
F(n) = {
       { n + F(n-1)     otherwise

""")

func sumOfNaturalNumbers(n: Int) -> Int
{
    if n == -1
    {
        return 0
    }
    return n + sumOfNaturalNumbers(n: n-1)
}

print("SumOfNaturalNumbers \(sumOfNaturalNumbers(n: 3))")

print("- - - - - - - - - - - - - - - - - - - - - - - - -")

print("""
Factorial of a number
n! = n * (n-1) * (n-2) * - - - * 1
0! = 1
        
       { 0              if n == 0
F(n) = {
       { n * F(n-1)     otherwise

""")
func factorialOfNumber(n: Int) -> Int
{
    if n == 0
    {
        return 1
    }
    return n * factorialOfNumber(n: n-1)
}

print("Factorial Of Number \(factorialOfNumber(n: 3))")

print("- - - - - - - - - - - - - - - - - - - - - - - - -")

print("""
Sum of array elements

       { -1             if n == 0
F(n) = {
       { a[n] + F(a, n-1)     otherwise

""")
func sumOfArrayElements(a: [Int], n: Int) -> Int
{
    if n == -1
    {
        return 0
    }
    return a[n] + sumOfArrayElements(a: a, n: n-1)
}

print("Sum Of Array Elements \(sumOfArrayElements(a: [1, 1, 1, 1, 1], n: 4))")
