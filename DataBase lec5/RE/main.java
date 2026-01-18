package main.RE;

import java.util.HashSet;
import java.util.Set;

public class main {
    public static void main(String[] args) {

        Student student = new Student();
        student.id = 1L; student.username = "ahmed"; student.password = "123";

        Email email1 = new Email();
        email1.id = 1L; email1.email = "ahmed@gmail.com";

        Email email2 = new Email();
        email2.id = 2L; email2.email = "ahmed1@gmail.com";

        // student to emails
        Set<Email> emails = new HashSet<>();
        emails.add(email1); emails.add(email2);
        student.emails = emails;

        // emails to student
        email1.student = student;
        email2.student = student;

        student.emails.stream().forEach(email -> System.out.println("email is " + email));

        System.out.println(email1.student.username);
        System.out.println(email2.student.username);
















//        Account account = new Account();
//        account.id = 1L;
//        account.username = "ahmed";
//        account.password = "123";
//
//        AccountDetails accountDetails = new AccountDetails();
//        accountDetails.id = 1L;
//        accountDetails.address = "alex";
//        accountDetails.phoneNumber = "0111";
//        accountDetails.age = "15";
//
//        account.accountDetails = accountDetails;
//        accountDetails.account = account;
//
//
//        System.out.println(accountDetails.account.username);
//        System.out.println(account.accountDetails.address);





    }

}
