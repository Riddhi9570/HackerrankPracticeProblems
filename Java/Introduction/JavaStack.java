// Problem : <https://www.hackerrank.com/challenges/java-stack/problem>
// Language: Java
// Difficulty: Medium
// Max Score: 20


import java.io.*;
import java.util.*;

public class Solution {

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        while (sc.hasNext()) {
            String input = sc.next();
            if (check(input)){
                System.out.println("true");
            }
            else {
                System.out.println("false");
            }
        }
    }
    public static boolean check(String s){
        Stack<Character> stack = new Stack<Character>();
        for (int i = 0; i < s.length();i++){
            if (s.charAt(i) == '(') {
                stack.push('(');
            }
            else if (s.charAt(i) == '{') {
                stack.push('{');
            }
            else if (s.charAt(i) == '[') {
                stack.push('[');
            }
            else if (s.charAt(i) == ')') {
                if (stack.isEmpty()) {
                    return false;
                }
                if (stack.pop() != '(') {
                    return false;
                }
            }
            else if (s.charAt(i) == '}') {
                if (stack.isEmpty()) {
                    return false;
                }
                if (stack.pop() != '{') {
                    return false;
                }
            }
            else if (s.charAt(i) == ']') {
                if (stack.isEmpty()) {
                    return false;
                }
                if (stack.pop() != '[') {
                    return false;
                }
            }
        }
        return stack.isEmpty();
    }
}
