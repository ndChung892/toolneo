using System;

namespace AutoTool;

internal static class ArrayExtensions
{
	public static int IndexOf<T>(this T[] array, T value)
	{
		return System.Array.IndexOf<T>(array, value);
	}
}
