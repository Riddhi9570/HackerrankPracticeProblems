// Problem - https://www.hackerrank.com/challenges/java-string-compare/problem
// Score - 10
// Difficulty - Easy

import java.io.*;
import java.util.*;

public class Solution {

    public static void main(String[] args) {
        /* Enter your code here. Read input from STDIN. Print output to STDOUT. Your class should be named Solution. */
        Scanner in = new Scanner(System.in);
        String S = in.next();
        int c = in.nextInt();
        String A = S.substring(0,c);
        String B = S.substring(0,c);
        for(int i = 0; i <= S.length() - c; i++){
            String sTemp = S.substring(i, i + c);
            if(sTemp.compareTo(A) < 0) {
                A = sTemp;
            }       
            if(sTemp.compareTo(B) > 0) {
                B = sTemp;
            } 
            
        }
        System.out.println(A + "\n" + B);
    }
}
