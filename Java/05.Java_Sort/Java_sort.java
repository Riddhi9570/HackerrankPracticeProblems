import java.io.*;
import java.util.*;


class Student implements Comparable<Student> {
    
    private int id;
    private String fname;
    private double cgpa;
    
    public Student(int id, String fname, double cgpa) {
        this.id = id;
        this.fname = fname;
        this.cgpa = cgpa;
    }
    
    public int getId() {
        return id;
    }
    
    public String getFname() {
        return fname;
    }
    
    public double getCgpa() {
        return cgpa;
    }
    
    @Override
    public int compareTo(Student anotherStudent) {
        return Comparator.comparingDouble(Student::getCgpa)
            .reversed()
            .thenComparing(Student::getFname)
            .thenComparingInt(Student::getId)
            .compare(this, anotherStudent);
    }
}

public class Solution {
    
    public static void main(String[] args) {
        List<Student> studentList = new ArrayList<Student>();
        try (Scanner in = new Scanner(System.in)) {
            int testCases = Integer.parseInt(in.nextLine());
            while (testCases > 0) {
                int id = in.nextInt();
                String fname = in.next();
                double cgpa = in.nextDouble();
            
                Student student = new Student(id, fname, cgpa);
                studentList.add(student);
            
                testCases--;
            }
        }
        Collections.sort(studentList);
        studentList.forEach(student -> System.out.println(student.getFname()));
    }
}