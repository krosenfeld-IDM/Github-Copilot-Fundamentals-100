using System;

class Program
{
    const int MAX = 100;

    static int Sum(int[] arr)
    {
        int result = 0;
        for (int i = 0; i < arr.Length; i++)
        {
            result += arr[i];
        }
        return result;
    }

    static int ReadInt(string prompt, int min, int max)
    {
        int n;
        do
        {
            Console.Write(prompt);
        } while (!int.TryParse(Console.ReadLine(), out n) || n < min || n > max);
        return n;
    }

    static void Main()
    {
        int n = ReadInt("Enter the number of elements (1-100): ", 1, MAX);

        var arr = new int[n];

        Console.WriteLine($"Enter {n} integers:");
        for (int i = 0; i < n; i++)
        {
            arr[i] = ReadInt($"Enter integer {i+1}: ", int.MinValue, int.MaxValue);
        }

        int total = Sum(arr);

        Console.WriteLine($"Sum of the numbers: {total}");
    }
}