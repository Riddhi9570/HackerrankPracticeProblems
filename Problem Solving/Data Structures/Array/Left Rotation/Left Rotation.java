// Problem Link: https://www.hackerrank.com/challenges/array-left-rotation/problem
// Problem: Left Rotation
// Language: Java
// Subdomain: Arrays
// Difficulty: Easy
// Max Score: 20

import java.io.*;
import java.math.*;
import java.security.*;
import java.text.*;
import java.util.*;
import java.util.concurrent.*;
import java.util.function.*;
import java.util.regex.*;
import java.util.stream.*;
import static java.util.stream.Collectors.joining;
import static java.util.stream.Collectors.toList;

class Result {

    /*
     * Complete the 'rotateLeft' function below.
     *
     * The function is expected to return an INTEGER_ARRAY.
     * The function accepts following parameters:
     *  1. INTEGER d
     *  2. INTEGER_ARRAY arr
     */

    public static void helpRotate(int s, int e, List < Integer > arr) {
        while (s < e) {
            int temp = arr.get(s);
            arr.set(s, arr.get(e));
            arr.set(e, temp);
            s++;
            e--;
        }
    }

    public static List < Integer > rotateLeft(int d, List < Integer > arr) {
        int n = arr.size();
        d %= n;
        helpRotate(0, n - 1, arr);
        helpRotate(0, n - 1 - d, arr);
        helpRotate(n - d, n - 1, arr);
        return arr;
    }

}

public class Solution {
    public static void main(String[] args) throws IOException {
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(System.in));
        BufferedWriter bufferedWriter = new BufferedWriter(new FileWriter(System.getenv("OUTPUT_PATH")));

        String[] firstMultipleInput = bufferedReader.readLine().replaceAll("\\s+$", "").split(" ");

        int n = Integer.parseInt(firstMultipleInput[0]);

        int d = Integer.parseInt(firstMultipleInput[1]);

        List < Integer > arr = Stream.of(bufferedReader.readLine().replaceAll("\\s+$", "").split(" "))
            .map(Integer::parseInt)
            .collect(toList());

        List < Integer > result = Result.rotateLeft(d, arr);

        bufferedWriter.write(
            result.stream()
            .map(Object::toString)
            .collect(joining(" ")) +
            "\n"
        );

        bufferedReader.close();
        bufferedWriter.close();
    }
}
