package main.RE;

public class Email {
    public Long id;

    public String email;
    
    public Student student;

    @Override
    public String toString() {
        return "Email{" +
                "id=" + id +
                ", email='" + email + '\'' +
                ", student=" + student +
                '}';
    }
}
