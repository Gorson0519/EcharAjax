package com.offcn.controller;

import com.offcn.bean.Student;
import com.offcn.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
public class StudentController {
    @Autowired
    private StudentService studentService;
    @RequestMapping("getAllStudent")
    @ResponseBody
    public List<Student> getAllStudent(){
        return studentService.getAllStudent();
    }

}
