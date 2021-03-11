package team.project.easyTeaching.service;

import team.project.easyTeaching.common.ServerResponse;
import team.project.easyTeaching.pojo.FeedbackInfo;

public interface IFeedbackService {
    ServerResponse<String> UploadInfo(FeedbackInfo feedbackInfo);
}
