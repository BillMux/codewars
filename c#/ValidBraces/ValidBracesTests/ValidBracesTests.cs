using NUnit.Framework;
using ValidBraces;

namespace Tests
{
    public class Tests
    {
        [TestCase("", true)]
        [TestCase("()", true)]
        [TestCase("[]", true)]
        [TestCase("]", false)]
        [TestCase("}{", false)]
        [TestCase("()[]", true)]
        [TestCase("()[]{}", true)]
        [TestCase("()[{}", false)]
        [TestCase("({)}", false)]
        [TestCase("{()}", true)]
        [TestCase("{)", false)]
        [TestCase("{[()]}", true)]
        [TestCase("(({{[[]]}}))", true)]
        [TestCase("(((())))", true)]

        public void DivideTest(string braces, bool expect)
        {
            Assert.AreEqual(expect, Brace.ValidBraces(braces));
        }
    }
}