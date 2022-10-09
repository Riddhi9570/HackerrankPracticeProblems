//#Problem Link - https://www.hackerrank.com/challenges/java-static-initializer-block/problem?isFullScreen=true
//#Problem - Java Static initializer block
//#Language - JAVA
//#Subdomain - Introduction
//#Max-Score - 10
//#Difficulty - Easy
import java.util.*;

public class Solution {
// Creation of individual static variables 
static Scanner in=new Scanner(System.in);
static int B=in.nextInt();
static int H=in.nextInt();
static boolean flag=true;
// Adding conditionals in static block
static{
    try{
        if(B<=0 || H<=0)
        {
            flag=false;
            // Creating exception and executing it if condition is satisfied
            throw new Exception("Breadth and height must be positive");
        }
    }
        catch(Exception e){
            System.out.println(e);
        }
}

public static void main(String[] args){
		if(flag){
			int area=B*H;
			System.out.print(area);
		}
		
	}//end of main

}//end of class

