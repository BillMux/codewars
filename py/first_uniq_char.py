# when passed an array, this method returns the
# first unique value 

def find_uniq(arr):
    for x in arr:
        if arr.count(x) == 1:
            return x


print(find_uniq([1, 1, 2])) # should return 2
