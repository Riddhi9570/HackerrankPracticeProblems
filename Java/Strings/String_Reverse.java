// Problem - https://www.hackerrank.com/challenges/java-string-reverse/problem
// Score - 10
// Difficulty - Easy

import java.io.*;
import java.util.*;

public class Solution {

    public static void main(String[] args) {
        /* Enter your code here. Read input from STDIN. Print output to STDOUT. Your class should be named Solution. */
        Scanner in = new Scanner(System.in);
        String str = in.next();
        StringBuilder sb=new StringBuilder(str);  
        sb.reverse(); 
        String rev = sb.toString(); 
        if(str.equals(rev)){
            System.out.println("Yes");
        }else{
        System.out.println("No");
        }
    }
}
