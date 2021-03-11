package team.project.easyTeaching.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import team.project.easyTeaching.common.ServerResponse;
import team.project.easyTeaching.dao.FeedbackInfoMapper;
import team.project.easyTeaching.pojo.FeedbackInfo;
import team.project.easyTeaching.service.IFeedbackService;

/**
 * @Classname FeedbackServiceImpl
 * @Description TODO
 * @Created by 颜
 */

@Service("iFeedbackService")
public class FeedbackServiceImpl implements IFeedbackService {

    @Autowired
    private FeedbackInfoMapper feedbackInfoMapper;

    @Override
    public ServerResponse<String> UploadInfo(FeedbackInfo feedbackInfo) {
        int resultCount = feedbackInfoMapper.insertSelective(feedbackInfo);
        System.out.println(resultCount);
        if (resultCount == 0){
            return ServerResponse.createByErrorMessage("提交失败");
        }
        return ServerResponse.createBySuccess("提交成功","success");
    }
}
