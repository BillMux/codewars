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
                int number = numbersList[i];
                if (countTable.Contains(number))
                {
                    countTable[number] = (int)countTable[number] + 1;
                }
                else
                {
                    countTable.Add(number, 1);
                }
                if ((int)countTable[number] > limit)
                {
                    numbersList.RemoveAt(i);
                }
            }
            return numbersList.ToArray();
        }

    }
}
