using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using System.Diagnostics;

namespace StringMatch
{
  class BoyerMoore_Demo
  {
    public static void Main(string[] args)
    {
     

      
        string text = "hello world";
        string pattern = "world";

        //Console.WriteLine("Finding all occurrences of {0} in {1} ({2} characters in length)", pattern, args[0], text.Length);
        BoyerMoore bm = new BoyerMoore(pattern);

        // make sure everything is JIT'd
        foreach (int index in bm.BCLMatch(text))
          ;
        foreach (int index in bm.HorspoolMatch(text))
          ;
        foreach (int index in bm.BoyerMooreMatch(text))
          ;
        foreach (int index in bm.TurboBoyerMooreMatch(text))
          ;
        foreach (int index in bm.ApostolicoGiancarloMatch(text))
          ;

        // measure the algorithms
        Stopwatch sw = new Stopwatch();
        int matches;

        sw.Reset();
        sw.Start();
        matches = 0;
        foreach (int index in bm.BCLMatch(text))
          matches++;
        sw.Stop();
        Console.WriteLine("String.indexOf found {0} matches in {1} seconds", matches, sw.Elapsed.TotalSeconds);

        sw.Reset();
        sw.Start();
        matches = 0;
        foreach (int index in bm.HorspoolMatch(text))
          matches++;
        sw.Stop();
        Console.WriteLine("Horspool found {0} matches in {1} seconds", matches, sw.Elapsed.TotalSeconds);

        sw.Reset();
        sw.Start();
        matches = 0;
        foreach (int index in bm.BoyerMooreMatch(text))
          matches++;
        sw.Stop();
        Console.WriteLine("Boyer-Moore found {0} matches in {1} seconds", matches, sw.Elapsed.TotalSeconds);

        sw.Reset();
        sw.Start();
        matches = 0;
        foreach (int index in bm.TurboBoyerMooreMatch(text))
          matches++;
        sw.Stop();
        Console.WriteLine("Turbo Boyer-Moore found {0} matches in {1} seconds", matches, sw.Elapsed.TotalSeconds);

        sw.Reset();
        sw.Start();
        matches = 0;
        foreach (int index in bm.ApostolicoGiancarloMatch(text))
          matches++;
        sw.Stop();
        Console.WriteLine("Apostolico-GiancarloMatch found {0} matches in {1} seconds", matches, sw.Elapsed.TotalSeconds);
        Console.ReadLine();
      }
    }
  }

