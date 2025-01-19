# Unhandled Empty Array Access in Dart API Call

This repository demonstrates a common error in Dart when handling API responses that might return empty JSON arrays. The code attempts to access the first element of the array (data[0]) without checking if the array is empty, which can lead to an `IndexOutOfRangeException`.

The `bug.dart` file contains the erroneous code, while `bugSolution.dart` provides a corrected version that handles the potential empty array scenario gracefully.

## How to Reproduce

1. Clone the repository.
2. Run `bug.dart`.  If the API returns an empty array, an exception will be thrown.
3. Run `bugSolution.dart`. This version handles the empty array case without error.

## Solution

The solution involves checking for the empty array condition before attempting to access any elements. The improved code adds a check using `data.isEmpty` to prevent the exception.