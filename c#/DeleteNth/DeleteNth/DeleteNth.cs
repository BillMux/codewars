using System.Collections;
using System.Collections.Generic;

namespace Kata
{
    public class DeleteNth
    {
        static void Main() {}

        public int[] Run(int[] numbers, int limit)
        {
            List<int> numbersList = new List<int>(numbers);
            Hashtable countTable = new Hashtable();

            for (int i = 0; i < numbersList.Count; i++)
            {
                CountNumbers(countTable, numbersList[i]);
                if ((int)countTable[numbersList[i]] > limit)
                {
                    numbersList.RemoveAt(i);
                }
            }
            return numbersList.ToArray();
        }

        private void CountNumbers(Hashtable table, int number)
        {
            if (table.Contains(number)) table[number] = (int)table[number] + 1;
            else table.Add(number, 1);
        }
    }
}
