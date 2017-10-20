package cn.savory.demoproject.controllsers;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

@RestController
@RequestMapping("/api/student")
public class PromotionListController {

    /**
     * 获取优惠券列表
     */
    @RequestMapping(path = "list", method = RequestMethod.POST)
    @ResponseBody
    public ReturnValue getPromotionList() throws SQLException {

        ReturnValue returnValue = new ReturnValue();

        List<Student> studentList = new ArrayList<>();
        for (int i = 0; i < 5; i++) {
            Student student = new Student();

            student.setId(i + 1);
            student.setName(String.format("Student_%d", i + 1));
            student.setAge(i * 2 + 1);

            studentList.add(student);
        }

        returnValue.setStudents(studentList);

        return returnValue;
    }
}
