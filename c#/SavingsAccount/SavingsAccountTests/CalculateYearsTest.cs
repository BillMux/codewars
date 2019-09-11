using System;
using NUnit.Framework;
using SavingsAccount;

namespace Tests
{
    public class Tests
    {
        [Test]
        public void TestZeroYear()
        {
            int result = Account.CalculateYears(1000.0, 0.05, 0.18, 1000.00);
            Assert.AreEqual(0, result);
        }

        public void TestOneYear()
        {
            int result = Account.CalculateYears(1000.0, 0.05, 0.18, 1100.00);
            Assert.AreEqual(1, result);
        }
    }
}