"""
    add(x, y)

Add two numbers `x` and `y`.

# Arguments
- `x`: The first number.
- `y`: The second number.

# Returns
The sum of `x` and `y`.
"""
function add(x, y)
    return x + y
end

"""
    subtract(x, y)

Subtract `y` from `x`.

# Arguments
- `x`: The number to subtract from.
- `y`: The number to subtract.

# Returns
The result of subtracting `y` from `x`.
"""
function subtract(x, y)
    return x - y
end

"""
    multiply(x, y)

Multiply two numbers `x` and `y`.

# Arguments
- `x`: The first number.
- `y`: The second number.

# Returns
The product of `x` and `y`.
"""
function multiply(x, y)
    return x * y
end

"""
    divide(x, y)

Divide `x` by `y`.

# Arguments
- `x`: The number to be divided.
- `y`: The number to divide by.

# Returns
The result of dividing `x` by `y`.

# Notes
If `y` is zero, an error message is printed and `nothing` is returned.
"""
function divide(x, y)
    if y != 0
        return x / y
    else
        println("Error: Division by zero is not allowed.")
        return nothing
    end
end

"""
    take_input(prompt::String)

Take user input from the console.

# Arguments
- `prompt`: The prompt message to display.

# Returns
The user input as a `Float64` value.
"""
function take_input(prompt::String)
    println(prompt)
    return parse(Float64, readline())
end

"""
    main()

The main function of the calculator program.
"""
function main()
    println("Welcome to the calculator program.")
    x = take_input("Enter the first number: ")
    y = take_input("Enter the second number: ")
    operation = take_input("Enter the operation (1 for addition, 2 for subtraction, 3 for multiplication, 4 for division): ")

    if operation == 1
        result = add(x, y)
    elseif operation == 2
        result = subtract(x, y)
    elseif operation == 3
        result = multiply(x, y)
    elseif operation == 4
        result = divide(x, y)
    else
        println("Invalid operation.")
        return
    end

    println("The result is: ", result)
end

main()