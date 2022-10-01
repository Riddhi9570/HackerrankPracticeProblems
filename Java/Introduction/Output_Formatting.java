// Problem - https://www.hackerrank.com/challenges/java-output-formatting/problem
// Score - 10
// Difficulty - Easy

import java.util.Scanner;

public class Solution {

    public static void main(String[] args) {
            Scanner sc=new Scanner(System.in);
            System.out.println("================================");
            for(int i=0;i<3;i++){
                String s1=sc.next();
                System.out.printf("%-14s ",s1);
                int x=sc.nextInt();
                System.out.printf("%03d\n",x);
                //Complete this line
                //System.out.printf("%-14s %03d\n", s1, x);
            }
            System.out.println("================================");

    }
}