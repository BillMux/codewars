using System;

namespace DontGiveMeFive
{
    public class Kata
    {
        static void Main() {}

        public static int LoseFives(int start, int end)
        {
            int output = 0;
            for (int i = start; i <= end; i++)
            {
                if (!("" + i).Contains("5")) output++;
            }
            return output;
        }
    }
}
