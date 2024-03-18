def hello_world():
    return "Hello, World!" 

def quadratic(a, b, c):
    return (-b + (b**2 - 4*a*c)**0.5) / (2*a), (-b - (b**2 - 4*a*c)**0.5) / (2*a)

def factorial(n):
    if n == 0:
        return 1
    else:
        return n * factorial(n-1)