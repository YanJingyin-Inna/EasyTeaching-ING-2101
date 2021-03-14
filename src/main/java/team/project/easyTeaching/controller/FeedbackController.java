package team.project.easyTeaching.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import team.project.easyTeaching.common.ServerResponse;
import team.project.easyTeaching.pojo.FeedbackInfo;
import team.project.easyTeaching.service.IFeedbackService;

import java.util.Date;

/**
 * @Classname FeedbackController
 * @Description TODO
 * @Created by 颜
 */

@Controller
@RequestMapping("/feedback/")
public class FeedbackController {

    @Autowired
    private IFeedbackService iFeedbackService;

    /**
     * 学生上传反馈信息
     * @param feedbackInfo
     * @return
     */
    @RequestMapping(value = "uploadInfo.do")
    @ResponseBody
    public ServerResponse<String> UploadInfo(FeedbackInfo feedbackInfo){
        // TODO: 增加课程id和教师id的获取
//        FeedbackInfo feedbackInfo1 = new FeedbackInfo();
//        feedbackInfo1.setContent("test");
        return  iFeedbackService.UploadInfo(feedbackInfo);

    }

}
