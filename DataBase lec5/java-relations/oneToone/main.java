package oneToone;

import oneToone.Student;
import oneToone.StudentInfo;

public class main {

    public static void main(String[] args) {
        Student student = new Student();
        student.setId(1);
        student.setName("ahmed");
        student.setAge(20);

        StudentInfo studentInfo = new StudentInfo();
        studentInfo.setId(1);
        studentInfo.setAddress("cairo");
        studentInfo.setGPA(5.5F);

        student.setStudentInfo(studentInfo);
        studentInfo.setStudent(student);

        System.out.println(student.getStudentInfo().getAddress());
        System.out.println(studentInfo.getStudent().getAge());
    }
}
