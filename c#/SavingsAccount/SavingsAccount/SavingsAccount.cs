using System;

namespace SavingsAccount
{
    public class Account
    {
        public static void Main()
        {
        }

        public static int CalculateYears(
            double principal,
            double interest,
            double tax,
            double desiredPrincipal
            )
        {
            int years = 0;

            while (principal < desiredPrincipal)
            {
                principal *= ((1 + interest) - (interest * tax));
                years++;
            }

            return years;
        }
    }
}
