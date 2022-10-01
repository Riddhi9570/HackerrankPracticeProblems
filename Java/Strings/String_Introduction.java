// Problem - https://www.hackerrank.com/challenges/java-strings-introduction/problem
// Score - 5
// Difficulty - Easy

import java.io.*;
import java.util.*;

public class Solution {

    public static void main(String[] args) {
        /* Enter your code here. Read input from STDIN. Print output to STDOUT. Your class should be named Solution. */
        Scanner in = new Scanner(System.in);
        String A = in.next();
        String B = in.next();
        int len = A.length() + B.length();
        System.out.println(len);
        // System.out.println( A.compareTo(B)>0 ? "Yes" : "No" );
        if(A.compareTo(B)  > 0){
            System.out.println("Yes");
        }else{
            System.out.println("No");
        }
        //A.substring(0,1).toUpperCase()+A.substring(1,A.length())+" "+B.substring(0,1).toUpperCase()+B.substring(1,B.length())
        String C = A.substring(0,1).toUpperCase() + A.substring(1);
        String D = B.substring(0,1).toUpperCase() + B.substring(1);
        System.out.println(C + " " + D);
    }
}