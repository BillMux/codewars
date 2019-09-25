using System;

namespace ValidBraces
{
    public class Brace
    {
        static void Main() {}

        public static bool ValidBraces(string braces)
        {
            int index = 0;

            foreach (char brace in braces)
            {
                if (IsClosing(brace) && index == 0) { return false; }
                if (IsClosing(brace))
                {
                    if (BracesMatch(braces[index - 1], brace))
                    {
                        braces = DeleteBetween(braces, index - 1, index);
                        ValidBraces(braces);
                    }
                    index -= 2;
                }
                index++;
            }
            return braces == "";
        }

        static bool IsClosing(char brace)
        {
            char[] closingChars = { ')', ']', '}' };
            return Array.Exists(closingChars, element => element == brace);
        }

        static bool BracesMatch(char brace1, char brace2)
        {
            bool parenthesiseMatch = brace1 == '(' && brace2 == ')';
            bool squareMatch = brace1 == '[' && brace2 == ']';
            bool curlyMatch = brace1 == '{' && brace2 == '}';

            return parenthesiseMatch || squareMatch || curlyMatch;
        }

        static string DeleteBetween(string braces, int openIdx, int closeIdx)
        {
            string beforePair = braces.Substring(0, openIdx);
            string afterPair = braces.Substring(closeIdx + 1);

            return beforePair + afterPair;
        }
    }
}
