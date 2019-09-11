using NUnit.Framework;
using DontGiveMeFive;

namespace Tests
{
    public class Tests
    {
        [Test]
        public void TestWithoutFives()
        {
            int result = Kata.LoseFives(0, 4);
            Assert.AreEqual(5, result);
        }

        [Test]
        public void TestWithFive()
        {
            int result = Kata.LoseFives(0, 5);
            Assert.AreEqual(5, result);
        }

        [Test]
        public void TestHigherNumbers()
        {
            int result = Kata.LoseFives(4, 17);
            Assert.AreEqual(12, result);
        }
    }
}