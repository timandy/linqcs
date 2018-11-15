using System;

namespace System.Collections
{
    public class ArrayUtils
    {
        public static void Fill<T>(T[] array, T value)
        {
            if (array == null)
            {
                throw new ArgumentNullException(nameof(array));
            }

            for (int i = 0; i < array.Length; i++)
            {
                array[i] = value;
            }
        }
    }
}
