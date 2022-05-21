
# int(input())

b1 = 1
b2 = 1
a1 = 1
a2 = 1
r1 = 3
r2 = 2

def circleArea (r):
  return 3.14 * pow(r, 2)

def rectangleArea(sideA, sideB):
  return sideA * sideB

print(circleArea(r1) + circleArea(r2) + rectangleArea(a1, b1) + rectangleArea(a2, b2))
