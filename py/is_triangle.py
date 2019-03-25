# @pyth(on)agoras theorem

# this method takes three integers
# and return whether or not a triangle
# can be made with three lines of those lengths

def is_triangle(a, b, c):
    return (a + b > c and b + c > a and c + a > b)
