// Problem - https://www.hackerrank.com/challenges/java-int-to-string/problem
// Score - 10
// Difficulty - Easy

import java.io.*;
import java.util.*;

public class Solution {

    public static void main(String[] args) {
        /* Enter your code here. Read input from STDIN. Print output to STDOUT. Your class should be named Solution. */
        Scanner in = new Scanner(System.in);
        int n = in.nextInt();
        String s = Integer.toString(n);
        if (n == Integer.parseInt(s)) {
            System.out.println("Good job");
        }
        else{
            System.out.println("Wrong answer");
        }
    }
}