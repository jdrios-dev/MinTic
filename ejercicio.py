matrix = [[1,2,5], [5,2,3], [9,6,2]]

def sum_in_matrix(matrix, num):
  result = 0
  for row in matrix:
    for element in row:
      if element == num:
        result += element
  return result

print(sum_in_matrix(matrix, 2))