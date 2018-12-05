package com.offcn;

import com.offcn.bean.Student;
import com.offcn.service.StudentService;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.util.List;

public class Servicetest {

    public static void main(String[] args) {
        ClassPathXmlApplicationContext context = new ClassPathXmlApplicationContext("spring/spring-dao.xml", "spring/spring-service.xml");
        StudentService service = context.getBean(StudentService.class);
        List<Student> allStudent = service.getAllStudent();
        for (Student student:allStudent){
            System.out.println(student);
        }
    }
}
