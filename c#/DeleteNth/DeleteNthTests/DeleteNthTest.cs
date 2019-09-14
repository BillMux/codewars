using Kata;
using NUnit.Framework;

namespace Tests
{
    public class Tests
    {
        DeleteNth test = new DeleteNth();

        [Test]
        public void TestListNotExceedingLimitReturnsSameList()
        {
            int[] input = { 1, 2, 3 };
            int[] expect = test.Run(input, 2);
            Assert.AreEqual(expect, input);
        }

        [Test]
        public void TestListOneNumberExceedsLimit()
        {
            int[] input = { 1, 2, 3, 3, 3 };
            int[] expect = { 1, 2, 3, 3 };
            int[] result = test.Run(input, 2);
            Assert.AreEqual(expect, result);
        }

        [Test]
        public void RandomTest1()
        {
            int[] input = { 1, 1, 3, 3, 7, 2, 2, 2, 2 };
            int[] expect = { 1, 1, 3, 3, 7, 2, 2, 2 };
            int[] result = test.Run(input, 3);
            Assert.AreEqual(expect, result);
        }
    }
}