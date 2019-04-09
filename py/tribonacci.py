# Like Fibonacci, but adding the previous three nums

def tribonacci(signature, n):
    for _ in range(n-len(signature)):
        signature.append(sum(signature[-3:]))
    return signature[:n]
