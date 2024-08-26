package com.manytoone;


import java.util.Arrays;
import java.util.List;

public class main {

    public static void main(String[] args) {
        Student student1 = new Student(1, "ahmed");
        Student student2 = new Student(2, "osama");
        Student student3 = new Student(3, "Ali");

        Course course1 = new Course(1,"c++");
        Course course2 = new Course(2,"java");
        Course course3 = new Course(3,"C#");

        List<Student> students = Arrays.asList(student1, student2, student3);
        List<Course> courses = Arrays.asList(course1, course2, course3);

        student1.setCourses(courses);
        student2.setCourses(courses);
        student3.setCourses(courses);

        course1.setStudents(students);
        course2.setStudents(students);
        course3.setStudents(students);

        System.out.println(course1.getStudents().get(0).getName());
        System.out.println(course1.getStudents().get(1).getName());
        System.out.println(course1.getStudents().get(2).getName());

        System.out.println("----------------------------------");

        System.out.println(student1.getCourses().get(0).getName());
        System.out.println(student1.getCourses().get(1).getName());
        System.out.println(student1.getCourses().get(2).getName());

    }
}
