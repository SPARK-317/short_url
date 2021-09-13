# URL hash algorithm:
1. Cast each char in address to ASCII int, and sum them
2. Using 'date' module,  get the current time and cast to int. Slice the last 5 digits.
3. Multiply the ASCII total and the 5 time digits.
4. Cast result to hexidecimal.

# Code
def hash(address) # returns a hexidecimal
    time = Time.now.to_i.to_s.split("").last(5).join.to_i
    ascii_address = address.bytes.sum
    return ((time*ascii_address).to_s(16))
 end
