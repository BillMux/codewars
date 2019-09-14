using Kata;
using NUnit.Framework;

namespace Tests
{
    public class Tests
    {
        DeleteNth test = new DeleteNth();

        [TestCase(
            new int[] { 1, 2, 3 }, 2,
            ExpectedResult = new int[] { 1, 2, 3 }
        )]

        [TestCase(
            new int[] { 1, 2, 3, 3, 3 }, 2,
            ExpectedResult = new int[] { 1, 2, 3, 3 }
        )]

        [TestCase(
            new int[] { 1, 1, 3, 3, 7, 2, 2, 2, 2 }, 3,
            ExpectedResult = new int[] { 1, 1, 3, 3, 7, 2, 2, 2 }
        )]

        public int[] DivideTest(int[] input, int limit)
        {
            return test.Run(input, limit);
        }
    }
}