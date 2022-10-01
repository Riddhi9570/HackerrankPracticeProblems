// problem link -> https://www.hackerrank.com/challenges/java-if-else/problem




import java.util.Scanner;
public class if_else {
    public static void main(String[] args) {
        Scanner in = new Scanner(System.in);
        System.out.println("Enter the number between 1-100");

        int n = in.nextInt();
        String ans = "";

        if(n%2!=0){             // if the value of n is odd ans = weird
            ans = "Weird";
        } else if (n>=2 && n <= 5){     // if the value of n is between 2&5 and is even ans = not weird
            ans = "Not Weird";
        } else if (n>=6 && n <= 20) {   // if the value of n i between 6&20 and is even ans = weird
            ans = "Weird";
        } else {                        // if the valur of n>20 and is even ans = not weird
            ans = "Not Weird";
        }
        System.out.println(ans);
    }
}

// Method 2 : by calling a function

import java.util.Scanner;
public class if_else {
    public static void main(String[] args) {
        Scanner in = new Scanner(System.in);
        System.out.println("Enter the value of between 1-100");
        int n = in.nextInt();           // taking input from the user
        System.out.println(check(n));
    }
    static String check(int n) {
        if(n%2!=0) {                       // if the value of n is odd return weird
            return "weird";
        } else if ( n>=2 && n<=5) {        // if the value of n is between 2&5 and is even return not weird
            return "not weird";
        } else if ( n>=6 && n<=20) {       // if the value of n i between 6&20 and is even return weird
            return "weird";
        } else if (n>20) {
            return "not weird";            // if the valur of n>20 and is even return not weird
        }
        return null;
    }
}