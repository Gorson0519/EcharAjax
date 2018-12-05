package com.offcn;

import com.offcn.bean.Student;
import com.offcn.dao.StudentDao;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.util.List;

public class Daotest {

    public static void main(String[] args) {
        ClassPathXmlApplicationContext context = new ClassPathXmlApplicationContext("spring/spring-dao.xml");
        StudentDao studentDao = context.getBean(StudentDao.class);
        List<Student> student = studentDao.getAllStudent();
        for (Student student1 :student){
            System.out.println(student1);
        }
    }
}
