// Problem: https://www.hackerrank.com/challenges/java-anagrams/problem?isFullScreen=true
// Max Score: 10
// Difficulty: Easy
// Language: Java

import java.io.*;
import java.util.*;

public class Solution {

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        String s1 = sc.next();
        String s2 = sc.next();
        s1 = s1.toLowerCase();
        s2 = s2.toLowerCase();
        int n = isAnagram(s1, s2);
        if (n == 1)
            System.out.println("Anagrams");
        else
            System.out.println("Not Anagrams");
    }

    static int isAnagram(String s1, String s2) {

        if (s1.length() == s2.length()) {
            int[] a = new int[256];
            int[] b = new int[256];
            for (int i = 0; i < s1.length(); i++) {
                ++a[(int) s1.charAt(i)];
                ++b[(int) s2.charAt(i)];
            }
            for (int i = 0; i < 256; i++) {
                if (a[i] != b[i])
                    return -1;
            }
            return 1;
        } else
            return -1;
    }
}
