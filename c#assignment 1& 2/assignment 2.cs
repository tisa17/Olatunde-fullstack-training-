using System;
using System.Collections.Generic;

namespace day_1
{
    class Program
    {
        static int[] FindPrimesInRange(int startNum, int endNum)
        {
            List<int> prime = new List<int>();

            for (int i=startNum; i<= endNum; i++)
            {
                for (int j = 2; i <= Math.Sqrt(i); j++)
                {
                    if (i % j == 0)
                    {
                        continue;
                    }
                     else
                    {
                        prime.Add(i);
                    }

                   
                }
            }
            int[] result = prime.ToArray();
            return result;
        }
            
        
        static void Main(string[] args)
        {

            //01copy an array 
               /* int[] arr = { 1, 2, 3, 4, 5, 6, 7, 8, 9, 10 };
                int[] copyArr = new int[arr.Length];
                arr.CopyTo(copyArr, 0);

                foreach (int i in arr)
                {
                    Console.Write("{0} ", i);
                }
                Console.WriteLine("");
                foreach (int i in copyArr)
                {
                    Console.Write("{0} ", i);
                }*/

         
                

        }
    }
}
