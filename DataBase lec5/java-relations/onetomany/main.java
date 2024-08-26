package onetomany;


import java.util.ArrayList;
import java.util.List;

public class main {

    public static void main(String[] args) {
        Student student = new Student();
        student.setId(1);
        student.setName("ahmed");
        student.setAge(20);

        Email email1 = new Email();
        email1.setId(1);
        email1.setEmail("eslam1@gmail.com");
        email1.setStudent(student);

        Email email2 = new Email();
        email2.setId(2);
        email2.setEmail("eslam2@gmail.com");
        email2.setStudent(student);

        Email email3 = new Email();
        email3.setId(3);
        email3.setEmail("eslam3@gmail.com");
        email3.setStudent(student);

        List<Email> emails = new ArrayList<>();
        emails.add(email1);
        emails.add(email2);
        emails.add(email3);

        student.setEmails(emails);

        System.out.println(student.getEmails().size());
        System.out.println(email1.getStudent().getName());
    }
}
