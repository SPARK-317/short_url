# URL hash algorithm:

1. Cast each char in address to ASCII int, and sum them
2. Using 'date' module,  get the current time and cast to int. Slice the last 5 digits.
3. Multiply the ASCII total and the 5 time digits.
4. Cast result to hexidecimal.
