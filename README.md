# Hack Nullable Type and Function Overloading Bug

This repository demonstrates a subtle issue with Hack's type system related to nullable types and function overloading. The function `foo` in `bug.hack` shows unexpected behavior when dealing with `null` values.  The `bugSolution.hack` file presents a corrected version.

## Bug Description
The original `foo` function attempts to handle both nullable and non-nullable integer inputs. The type system's handling of this isn't as intuitive as expected, leading to unexpected results when calling the function with `null`.

## Solution
The solution utilizes explicit type handling to resolve ambiguity. It's important to be precise with type definitions when handling nullable types in Hack.