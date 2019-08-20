//
//  UrlConst.h
//  HanTalk
//
//  Created by 曹云霄 on 2018/3/28.
//  Copyright © 2018年 上海韩创科技有限公司. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface UrlConst : NSObject


//WebSocket正式Url
UIKIT_EXTERN NSString *const SocketBaseUrlReleae;
//WebSocket测试Url
UIKIT_EXTERN NSString *const SocketBaseUrlDebug;
//开发BaseUrl
UIKIT_EXTERN NSString *const BaseUrlDeveloper;
//测试BaseUrl
UIKIT_EXTERN NSString *const BaseUrlDebug;
//正式BaseUrl
UIKIT_EXTERN NSString *const BaseUrlReleae;
//轮询BaseUrl
UIKIT_EXTERN NSString *const BaseUrl;
//用户自身用户信息
UIKIT_EXTERN NSString *const GetStaffSelf;
//轮询BaseUrl
UIKIT_EXTERN NSString *const BaseUrl;
//获取公告列表
UIKIT_EXTERN NSString *const GetNotice;
//判断个人是否已读群公告
UIKIT_EXTERN NSString *const GetgroupNotice;
//获取所有群公告
UIKIT_EXTERN NSString *const GetAllNotice;
//公告标记已读
UIKIT_EXTERN NSString *const ReadNotice;
//删除群公告
UIKIT_EXTERN NSString *const DeleteNotice;
//修改群公告
UIKIT_EXTERN NSString *const EditNotice;
//置顶群公告
UIKIT_EXTERN NSString *const StickNotice;
//发布群公告
UIKIT_EXTERN NSString *const PublishNotice;
UIKIT_EXTERN NSString *const PublishtestNotice;
//获取最新消息及未读
UIKIT_EXTERN NSString *const GetLastMessage;
//发送消息
UIKIT_EXTERN NSString *const SendChatMessage;
//更新消息状态
UIKIT_EXTERN NSString *const UpdateMessageState;
//创建新群组
UIKIT_EXTERN NSString *const CreateGroup;
UIKIT_EXTERN NSString *const CreateGroup1;
//拉人入群
UIKIT_EXTERN NSString *const InviteJoinGroup;
//踢人出群
UIKIT_EXTERN NSString *const EvictGroup;
//退出群组
UIKIT_EXTERN NSString *const QuitGroup;
//解散群组
UIKIT_EXTERN NSString *const DismissGroup;
//获取会话列表
UIKIT_EXTERN NSString *const GetChatList;
//删除会话
UIKIT_EXTERN NSString *const DeleteChat;
//会话置顶
UIKIT_EXTERN NSString *const ChatTop;
//取消会话置顶
UIKIT_EXTERN NSString *const ChatUnTop;
//更新最新阅读id
UIKIT_EXTERN NSString *const UpdateReadMessageId;
//更新所有的消息已读
UIKIT_EXTERN NSString *const UpdateAllMessage;
//群屏蔽
UIKIT_EXTERN NSString *const GroupIsShield;
//会议地点列表
UIKIT_EXTERN NSString *const ActivityPlaces;
//会议室未来5天数据
UIKIT_EXTERN NSString *const FutureFiveData;
//确认收到会议
UIKIT_EXTERN NSString *const ActivityRead;
//删除会议
UIKIT_EXTERN NSString *const ActivityRemove;
//群信息修改
UIKIT_EXTERN NSString *const ModifyGroupInfo;
//获取七牛图片上传token
UIKIT_EXTERN NSString *const GetImgQiniuToken;
//获取会议地点
UIKIT_EXTERN NSString *const GetActivityPlaces;
//更新用户头像
UIKIT_EXTERN NSString *const UpdateStaffAvatar;
//创建会议
UIKIT_EXTERN NSString *const MeetingActivityCreate;
//修改会议
UIKIT_EXTERN NSString *const MeetingActivityUpdate;
//会议人员
UIKIT_EXTERN NSString *const MeetingActivityUsers;
//获取其他员工信息
UIKIT_EXTERN NSString *const GetStaffInfo;
//获取公众号信息
UIKIT_EXTERN NSString *const OfficialAccount;
//获取公众号列表
UIKIT_EXTERN NSString *const OfficialAccountList;
//确认会议
UIKIT_EXTERN NSString *const MeetInforead;
//群组信息修改
UIKIT_EXTERN NSString *const GroupInfoModify;
//群转让
UIKIT_EXTERN NSString *const GroupShift;
//获取群信息
UIKIT_EXTERN NSString *const GetGroupInfo;
//获取群信息V2
UIKIT_EXTERN NSString *const GetGroupInfoV2;
//审批历史按照时间顺序
UIKIT_EXTERN NSString *const LeaveHistoryTime;
//获取请假类型列表
UIKIT_EXTERN NSString *const LeaveTypes;
//审批历史按照成员分组
UIKIT_EXTERN NSString *const LeaveHistoryMember;
//获取请假类型警告
UIKIT_EXTERN NSString *const LeaveWarn;
//设置群管理员
UIKIT_EXTERN NSString *const SetGroupManager;
//删除群管理员
UIKIT_EXTERN NSString *const DeleteGroupManager;
//socket 注册token
UIKIT_EXTERN NSString *const RegisterToken;
//获取会话图片附件
UIKIT_EXTERN NSString *const GetChatAttachment;
//获取群公告详情
UIKIT_EXTERN NSString *const GetAnnouncementDetail;
//获取启动图数据
UIKIT_EXTERN NSString *const GetLaunch;
//语音转文字
UIKIT_EXTERN NSString *const TransformText;
//社区未读个数
UIKIT_EXTERN NSString *const CommunityUnread;
//ios启动获取客户端设置和社区未读
UIKIT_EXTERN NSString *const AppLaunchedCommunityUnreadSet;
//社区已读
UIKIT_EXTERN NSString *const CommunityRead;
//公司制度
UIKIT_EXTERN NSString *const CompanySystem;
//文章类型
UIKIT_EXTERN NSString *const TypeOfArticle;
//调查分析列表
UIKIT_EXTERN NSString *const SurveyAndAnalysisList;
//调查分析详情
UIKIT_EXTERN NSString *const InvestigationAndAnalysisDetails;
//打卡配置
UIKIT_EXTERN NSString *const PunchCardConfig;
//获取会话图库
UIKIT_EXTERN NSString *const GetChatImages;
//搜索会话文件（当前/全局）
UIKIT_EXTERN NSString *const SearchChatImages;
//获取我的群组列表
UIKIT_EXTERN NSString *const GetMyGroup;
//获取群助手列表
UIKIT_EXTERN NSString *const GetGroupHide;
//获取最近活跃的群
UIKIT_EXTERN NSString *const GetRecentGroups;
//获取表情包组
UIKIT_EXTERN NSString *const GetMessageFaceGroup;
//通过组id 获取表情
UIKIT_EXTERN NSString *const GetMessageFace;
//获取员工通讯录
UIKIT_EXTERN NSString *const GetContacts;
//个人请假统计
UIKIT_EXTERN NSString *const GetLeaveHistory;
//请假类型
UIKIT_EXTERN NSString *const GetLeaveType;
//电脑管理统计
UIKIT_EXTERN NSString *const ComputerStatistics;
//闲置电脑可用
UIKIT_EXTERN NSString *const Computeravailable;
//电脑统计搜索
UIKIT_EXTERN NSString *const ComputerStatisticsSearch;
//重新分配电脑
UIKIT_EXTERN NSString *const ComputerDistribute;
//电脑可分配部门
UIKIT_EXTERN NSString *const ComputerDistributeTeam;
//请假申请
UIKIT_EXTERN NSString *const LeaveApply;
//搜索群名获取群信息
UIKIT_EXTERN NSString *const GetGroupInfoBySearch;
//加群申请
UIKIT_EXTERN NSString *const GroupApply;
//加群审核
UIKIT_EXTERN NSString *const GroupReview;
//调查分析列表
UIKIT_EXTERN NSString *const GetDocumentList;
//调查分析详情
UIKIT_EXTERN NSString *const GetDocumentDetail;
//文档列表
UIKIT_EXTERN NSString *const GetDocumentFileLists;
//文档详情
UIKIT_EXTERN NSString *const GetDocumentFileDetail;
//获取群动态
UIKIT_EXTERN NSString *const GetGroupDynamics;
//群动态回复
UIKIT_EXTERN NSString *const GroupDynamicsComment;
//群动态编辑
UIKIT_EXTERN NSString *const UpdateGroupDynamics;
//群动态删除
UIKIT_EXTERN NSString *const DeleteGroupDynamics;
//群动态删除
UIKIT_EXTERN NSString *const DeleteGroupDynamicsComment;
//群动态详情
UIKIT_EXTERN NSString *const GroupDynamicsDetail;
//置顶 or 取消置顶群动态
UIKIT_EXTERN NSString *const GroupDynamicsStick;
//创建群动态
UIKIT_EXTERN NSString *const CreateGroupDynamics;
//群动态评论列表
UIKIT_EXTERN NSString *const GroupDynamicsCommentList;
//获取我的思维导图
UIKIT_EXTERN NSString *const GetmyXmindlist;
//思维导图 搜索
UIKIT_EXTERN NSString *const GetsearchXmindlist;
//分享给我的思维导图
UIKIT_EXTERN NSString *const GetShareXmindlist;
//分享思维导图创建
UIKIT_EXTERN NSString *const PostXmindShare;
//分享导图分享时创建快照
UIKIT_EXTERN NSString *const PostXmindmapold;
//获取我的hanword
UIKIT_EXTERN NSString *const GetmyHanWordlist;
//搜索我的hanword
UIKIT_EXTERN NSString *const GetsearchHanWordlist;
//获取分享我的hanword列表
UIKIT_EXTERN NSString *const GetHanWordSharelist;
//与我共享的
UIKIT_EXTERN NSString *const GetHanWordShareMe;
//分享hanword创建
UIKIT_EXTERN NSString *const PostHanwordShare;
//hanword时是否可以保存到我的
UIKIT_EXTERN NSString *const SaveMeHanWord;
//获取我的hanword详情
UIKIT_EXTERN NSString *const GetHanWordDetail;
//检测是否有人在编辑
UIKIT_EXTERN NSString *const GetHanWordIsHas;
//设置人编辑
UIKIT_EXTERN NSString *const SetHanWordEditUser;
//检测是否有编辑权限
UIKIT_EXTERN NSString *const GetHanWordIsInfo;
//HanWord分享详情
UIKIT_EXTERN NSString *const GetShareHanWordInfo;
//删除Hanword
UIKIT_EXTERN NSString *const DelHanWord;
//获取我的hanword快照
UIKIT_EXTERN NSString *const GetHanWordOld;
//创建Hanword
UIKIT_EXTERN NSString *const CreateHanWord;
//更新Hanword
UIKIT_EXTERN NSString *const UpdateHanWord;
//添加共享协作人Hanword
UIKIT_EXTERN NSString *const AddHanWordMember;
//共享协作人列表
UIKIT_EXTERN NSString *const WordMemberList;
//共享协作人删除
UIKIT_EXTERN NSString *const WordMemberDel;
//检查版本更新
UIKIT_EXTERN NSString *const CheckUpgrade;
//维护会话
UIKIT_EXTERN NSString *const CreateConversation;
//反馈打卡异常
UIKIT_EXTERN NSString *const UploadPunchError;
//帮助中心
UIKIT_EXTERN NSString *const HelpCenter;
//聊天界面全文搜索
UIKIT_EXTERN NSString *const SearchAllSo;
//获取社区内容
UIKIT_EXTERN NSString *const Url_ApiUserCommunity;
//获取社区单个内容
UIKIT_EXTERN NSString *const Url_ApiUserCommunityCid;
//社区内容点赞
UIKIT_EXTERN NSString *const Url_ApiUserCommunityDianZan;
//保存社区话题评论
UIKIT_EXTERN NSString *const Url_ApiUserCommunityCommment;
//社区发表内容
UIKIT_EXTERN NSString *const Url_ApiUserCommunityPublish;
//删除社区内容
UIKIT_EXTERN NSString *const Url_ApiUserCommunityDel;
//替换考勤打卡接口
UIKIT_EXTERN NSString *const Url_ApiUserPunch;
//按日获取个人考勤记录
UIKIT_EXTERN NSString *const Url_ApiUserPunchGetDayAttend;
//查询月考勤记录
UIKIT_EXTERN NSString *const Url_ApiUserPunchGetMonthAttend;
//获取文章分类
UIKIT_EXTERN NSString *const Url_ArticleGetArticleClass;
//获取文章列表信息
UIKIT_EXTERN NSString *const Url_ApiUserCommunityArticleList;
//获取自定义表情
UIKIT_EXTERN NSString *const Url_ApiMessageCustomEmoji;
//自定义表情添加表情
UIKIT_EXTERN NSString *const Url_ApiMessageEmojiAdd;
//自定义表情添加批量表情
UIKIT_EXTERN NSString *const Url_ApiMessageEmojiAdds;
//自定义表情删除
UIKIT_EXTERN NSString *const Url_ApiMessageEmojiDel;
//上传同步数据
UIKIT_EXTERN NSString *const Url_ApiToolUserUpload;
//取回同步数据
UIKIT_EXTERN NSString *const Url_ApiToolUserRetrieval;
//app轮播图
UIKIT_EXTERN NSString *const GetAppBanner;
//根据uid和time_type获取请假列表
UIKIT_EXTERN NSString *const Url_ApiUserLeaveHistoryMy;
//意见反馈
UIKIT_EXTERN NSString *const Url_ApiToolUserFeedBack;
//获取请假小组信息
UIKIT_EXTERN NSString *const Url_ApiUserLeaveGroups;
//登录
UIKIT_EXTERN NSString *const Login;
UIKIT_EXTERN NSString *const LoginOld;
//修改密码
UIKIT_EXTERN NSString *const PassWordChange;
//长轮询获取最新消息
UIKIT_EXTERN NSString *const GetNewMessage;
//获取群状态
UIKIT_EXTERN NSString *const GetGroupState;
//获取用户在线状态
UIKIT_EXTERN NSString *const GetUserOnLine;
//群分组取消置顶群组管理
UIKIT_EXTERN NSString *const ToppingGroupmyManagement;
//获取服务器消息
UIKIT_EXTERN NSString *const GetServerMessage;
//获取我参与的相关活动
UIKIT_EXTERN NSString *const Url_ActivityGetMyActivity;
//审核请假列表
UIKIT_EXTERN NSString *const Url_LeaveCheck;
//处理审核请假
UIKIT_EXTERN NSString *const Url_LeaveDoCheck;
//请假申请修改
UIKIT_EXTERN NSString *const LeaveEditApply;
//保存版本号
UIKIT_EXTERN NSString *const SaveVersion;
//获取个人信息和保存版本号（合并接口）
UIKIT_EXTERN NSString *const GetSelfInfoV2;
//获取轮播图、广告图、检查更新、取回同步数据
UIKIT_EXTERN NSString *const GetMergeConfigV2;
//获取收藏列表
UIKIT_EXTERN NSString *const GetCollectionList;
//新增收藏
UIKIT_EXTERN NSString *const AddCollection;
//用户收藏统一接口
UIKIT_EXTERN NSString *const CollectionAllData;
//获取所有的标签
UIKIT_EXTERN NSString *const GetAllTags;
//获取所有的类型
UIKIT_EXTERN NSString *const GetAllTypes;
//删除收藏
UIKIT_EXTERN NSString *const DeleteCollection;
//收藏内容添加标签
UIKIT_EXTERN NSString *const SetupCollectionTag;
//修改笔记
UIKIT_EXTERN NSString *const EditCollectionNote;
//收藏文档
UIKIT_EXTERN NSString *const DocumentCollection ;
//收藏笔记
UIKIT_EXTERN NSString *const AaddCollectionNote;
//轮岗审批
UIKIT_EXTERN NSString *const WorkShiftApprove;
//加群审批
UIKIT_EXTERN NSString *const JoinGroupApprove;
//是否连接Socket
UIKIT_EXTERN NSString *const ConnectSocket;
//获取他山石列表加简介
UIKIT_EXTERN NSString *const PostCollegeStones;
//获取他山石评论列表
UIKIT_EXTERN NSString *const PostCollegeStoneComment;
//他山石播放，增加浏览量
UIKIT_EXTERN NSString *const PostCollegeStoneClick;
//删除他山石收藏视频资源
UIKIT_EXTERN NSString *const PostDeleteCollectCollege;
//获取置顶消息
UIKIT_EXTERN NSString *const GetmessageTop;
//置顶
UIKIT_EXTERN NSString *const MessageTop ;
//取消置顶
UIKIT_EXTERN NSString *const MessageNoTop ;
//置顶详情
UIKIT_EXTERN NSString *const MessageTopDeatil ;
//关闭置顶
UIKIT_EXTERN NSString *const MessageCloseTop;
//群动态评论/回复未读数量
UIKIT_EXTERN NSString *const PostDynamicsNum;
//推送设置屏蔽弹窗
UIKIT_EXTERN NSString *const ApiShortCutKeySet;
//获取新消息推送
UIKIT_EXTERN NSString *const ApiShortCytKeyGet;
//创建语音视频通话
UIKIT_EXTERN NSString *const PostCreateConnect;
//加入语音视频通话
UIKIT_EXTERN NSString *const PostJoinConnect;
//取消语音视频通话
UIKIT_EXTERN NSString *const PostCancelConnect;
//挂断语音视频通话
UIKIT_EXTERN NSString *const GetHangUpConnect;
//拒绝语音视频通话
UIKIT_EXTERN NSString *const PostRefuseConnect;
//创建连接获取RoomToken
UIKIT_EXTERN NSString *const GetRoomToken;
//获取RoomToken 加入房间
UIKIT_EXTERN NSString *const GetJoinRoomToken;
//同步会话聊天记录
UIKIT_EXTERN NSString *const PostSyncmMssageLogging;
//断线重连后调取判断是否有未接会话
UIKIT_EXTERN NSString *const PostRePushCreate;
//@群成员消息提示
UIKIT_EXTERN NSString *const PostMessageCall;
//已读所有@消息提示
UIKIT_EXTERN NSString *const PostRenewMessageCall;
//查看名片详情-获取群信息
UIKIT_EXTERN NSString *const ApiChatBusinessCardDetail;
//保存极光推送token
UIKIT_EXTERN NSString *const PostSaveJPUSHToken;
//待办提醒测试路径
UIKIT_EXTERN NSString *const HanMissionUrl;
//待办提醒正式路径
UIKIT_EXTERN NSString *const HanMissionReleaseUrl;
//待办任务测试路径
UIKIT_EXTERN NSString *const HanMissionUrlTask;
//待办任务正式路径
UIKIT_EXTERN NSString *const HanMissionReleaseUrlTask;
//清空所有点赞评论消息
UIKIT_EXTERN NSString *const DeleteAllPraiseAndComments;
//获取社区未读点赞评论消息
UIKIT_EXTERN NSString *const GetUnReadCommunityMsg;
//获取社区所有点赞评论消息
UIKIT_EXTERN NSString *const GetAllPraiseCommentsMsg;
//word 的转发已读
UIKIT_EXTERN NSString *const PostHanWordshareUrl;
//word 的转发已读
UIKIT_EXTERN NSString *const PostHanMindshareUrl;
//获取社区点赞评论未读的数目
UIKIT_EXTERN NSString *const CommunityNoticeNum;
//更新token
UIKIT_EXTERN NSString *const GetToken;
//获取base url
UIKIT_EXTERN NSString *const PostBaseUrl;
//pv和uv埋点统计
UIKIT_EXTERN NSString *const GetpvUv;
//公众号免打扰
UIKIT_EXTERN NSString *const Postbackstage;
//补卡审批
UIKIT_EXTERN NSString *const PostCorrectReview;  
//考勤汇总
UIKIT_EXTERN NSString *const PunchSummary;
//补卡申请
UIKIT_EXTERN NSString *const PunchEditApply;
//点击菜单
UIKIT_EXTERN NSString *const MenuClick;
//获取BaseUrl
UIKIT_EXTERN NSString *const PostGetBaseUrl;
//设置BaseUrl
UIKIT_EXTERN NSString *const PostSetBaseUrl;
//保存日志文件
UIKIT_EXTERN NSString *const PostSaveLog;
//发布会议推荐
UIKIT_EXTERN NSString *const PublishMeetingRecommend;
//获取群分组信息
UIKIT_EXTERN NSString *const GetgroupTagInfro;
//待办评论
UIKIT_EXTERN NSString *const MissionCommentTaskId;
//话题列表
UIKIT_EXTERN NSString *const CommunityTopics;
//社区删除评论
UIKIT_EXTERN NSString *const CommunityDeleteTopic;
//App冷启动、几个重要接口统计
UIKIT_EXTERN NSString *const EfficiencyLog;
//下载单个/所有表情包
UIKIT_EXTERN NSString *const StickerDownloadGroup;
//置顶列表，群公告未读，群动态未读合并 api/v2/group/box
UIKIT_EXTERN NSString *const GroupBoxGroupinfro;


/******************************APP统计**************************************/

//上传统计数据
UIKIT_EXTERN NSString *const UploadLogs;
//打开app次数
UIKIT_EXTERN NSString *const click_open;
//打开消息列表
UIKIT_EXTERN NSString *const click_msg;
//打开通讯录
UIKIT_EXTERN NSString *const click_contacts;
//打开应用页
UIKIT_EXTERN NSString *const click_appliance;
//打开我的
UIKIT_EXTERN NSString *const click_mine;
//发送消息总数
UIKIT_EXTERN NSString *const click_allmsg;
//发送文本消息
UIKIT_EXTERN NSString *const click_text;
//发送图片消息
UIKIT_EXTERN NSString *const click_pic;
//发送文件消息
UIKIT_EXTERN NSString *const click_file;
//发送语音消息
UIKIT_EXTERN NSString *const click_voice;
//发送表情消息
UIKIT_EXTERN NSString *const click_face;
//手动打卡次数
UIKIT_EXTERN NSString *const click_clock;
//自动打卡次数
UIKIT_EXTERN NSString *const click_clock_automatic;
//打卡界面
UIKIT_EXTERN NSString *const click_clock_page;
//手动打卡失败
UIKIT_EXTERN NSString *const click_clock_fail;
//自动打卡失败
UIKIT_EXTERN NSString *const click_clock_automatic_fail;
//查看范围
UIKIT_EXTERN NSString *const click_range;
//查看范围失败
UIKIT_EXTERN NSString *const click_range_fail;
//月历
UIKIT_EXTERN NSString *const click_monthly_calendar;
//月历失败
UIKIT_EXTERN NSString *const click_monthly_calendar_fail;
//请假界面
UIKIT_EXTERN NSString *const click_leave;
//提交审核
UIKIT_EXTERN NSString *const click_leave_submit;
//提交审核失败
UIKIT_EXTERN NSString *const click_leave_submit_fail;
//请假规则
UIKIT_EXTERN NSString *const click_leave_rule;
//请假记录
UIKIT_EXTERN NSString *const click_leave_record;
//本月
UIKIT_EXTERN NSString *const click_month;
//请假审批
UIKIT_EXTERN NSString *const click_leave_approval;
//员工页面
UIKIT_EXTERN NSString *const click_person;
//群组
UIKIT_EXTERN NSString *const click_group;
//项目组
UIKIT_EXTERN NSString *const click_items;
//职位
UIKIT_EXTERN NSString *const click_job;
//职能
UIKIT_EXTERN NSString *const click_function;
//员工搜索
UIKIT_EXTERN NSString *const click_person_search;
//社区进入
UIKIT_EXTERN NSString *const click_community_start;
//社区离开
UIKIT_EXTERN NSString *const click_community_end;
//发帖
UIKIT_EXTERN NSString *const click_post;
//回复
UIKIT_EXTERN NSString *const click_answer;
//点赞
UIKIT_EXTERN NSString *const click_laud;
//上传图片数
UIKIT_EXTERN NSString *const click_upload_pic;
//带图贴
UIKIT_EXTERN NSString *const click_post_pic;
//文章进入
UIKIT_EXTERN NSString *const click_article_start;
//文章离开
UIKIT_EXTERN NSString *const click_article_end;
//文章详情
UIKIT_EXTERN NSString *const click_article_details;
//文章标题导航点击次数
UIKIT_EXTERN NSString *const click_article_title;
//调查分析进入
UIKIT_EXTERN NSString *const click_analysis_start;
//调查分析离开
UIKIT_EXTERN NSString *const click_analysis_end;
//调查分析详情
UIKIT_EXTERN NSString *const click_analysis_details;
//调查分析转发
UIKIT_EXTERN NSString *const click_analysis_forward;
//公司制度转发
UIKIT_EXTERN NSString *const click_rule_forward;
//公司制度详情
UIKIT_EXTERN NSString *const click_rule_details;
//公司制度进入
UIKIT_EXTERN NSString *const click_rule_forward_start;
//公司制度离开
UIKIT_EXTERN NSString *const click_rule_forward_end;
//收藏
UIKIT_EXTERN NSString *const click_collect;
//收藏进入
UIKIT_EXTERN NSString *const click_collect_start;
//收藏离开
UIKIT_EXTERN NSString *const click_collect_end;
//搜索
UIKIT_EXTERN NSString *const click_collect_search;
//收藏转发
UIKIT_EXTERN NSString *const click_collect_forward;
//新建笔记
UIKIT_EXTERN NSString *const click_collect_notes;
//新建标签
UIKIT_EXTERN NSString *const click_collect_built;
//群组管理
UIKIT_EXTERN NSString *const GroupmyManagement;
//新增群组管理
UIKIT_EXTERN NSString *const AddGroupmyManagement;
//删除群组管理
UIKIT_EXTERN NSString *const RemoveGroupmyManagement;
//更新，移动，移出，清空，群组管理
UIKIT_EXTERN NSString *const UpdateGroupmyManagement;
//报名、取消报名
UIKIT_EXTERN NSString *const TrainingSignup;
//群组分入群分组
UIKIT_EXTERN NSString *const click_group_detail;
//新建群组
UIKIT_EXTERN NSString *const click_group_create;
//总申请入群量
UIKIT_EXTERN NSString *const click_apply_group;
//主搜索入群量
UIKIT_EXTERN NSString *const click_apply_search;
//右上角搜群加群入群量
UIKIT_EXTERN NSString *const click_apply_search_group;
//查看群公告已读人数
UIKIT_EXTERN NSString *const notice_user_details;
//新增带有图的新公告
UIKIT_EXTERN NSString *const notice_image;
//新增成功的新公告
UIKIT_EXTERN NSString *const notice_release;
// 文档进入
UIKIT_EXTERN NSString *const click_document_start;
//文档详情
UIKIT_EXTERN NSString *const click_document_details;
//文档转发
UIKIT_EXTERN NSString *const click_document_forward;
//文档离开
UIKIT_EXTERN NSString *const click_document_end;
//群动态进入
UIKIT_EXTERN NSString *const click_dynamic_start;
//群动态详情进入
UIKIT_EXTERN NSString *const click_dynamic_details;
//发布群动态
UIKIT_EXTERN NSString *const click_dynamic_release;
//发布带图群动态
UIKIT_EXTERN NSString *const click_dynamic_release_image;
//评论、回复
UIKIT_EXTERN NSString *const click_dynamic_comment;
//带图评论、回复
UIKIT_EXTERN NSString *const click_dynamic_comment_image;
//自定义表情发送
UIKIT_EXTERN NSString *const custom_sticker_send;
//添加表情
UIKIT_EXTERN NSString *const custom_sticker_add;
//从会话中打开（预览）思维导图
UIKIT_EXTERN NSString *const click_mind_map_conversation ;
//从会话中转发
UIKIT_EXTERN NSString *const click_mind_map_forward_conversation;
//从【我的】列表转发
UIKIT_EXTERN NSString *const click_mind_map_forward_mine;
//从【分享给我的】列表转发
UIKIT_EXTERN NSString *const click_mind_map_forward_share;
//导图收藏
UIKIT_EXTERN NSString *const click_mind_map_collection;
//【应用】模块中，思维导图的点击
UIKIT_EXTERN NSString *const click_mind_map_apply;
//我的导图】点击
UIKIT_EXTERN NSString *const click_mind_map_mine;
//【分享给我的】点击
UIKIT_EXTERN NSString *const click_mind_map_share;
//点击群组详情里群动态
UIKIT_EXTERN NSString *const click_dynamic_group_details;
//点击群内消息跳转至群动态
UIKIT_EXTERN NSString *const click_dynamic_skip_with_group;
//点击群动态通知跳转至群动态
UIKIT_EXTERN NSString *const click_dynamic_skip_with_notice;
//发送验证码
UIKIT_EXTERN NSString *const PostSendSms;
//从会话中打开（预览）办公文档
UIKIT_EXTERN NSString *const click_hanword_conversation ;
//从会话中转发
UIKIT_EXTERN NSString *const click_hanword_forward_conversation ;
//从【我的】列表转发
UIKIT_EXTERN NSString *const click_hanword_forward_mine ;
//从【分享给我的】列表转发
UIKIT_EXTERN NSString *const click_hanword_forward_share ;
//收藏
UIKIT_EXTERN NSString *const click_hanword_collection ;
//【应用】模块中，办公文档的点击
UIKIT_EXTERN NSString *const click_hanword_apply ;
//【我的】点击
UIKIT_EXTERN NSString *const click_hanword_mine ;
//分享给我的】点击
UIKIT_EXTERN NSString *const click_hanword_share ;
//发送外部链接消息
UIKIT_EXTERN NSString *const click_url_source;
//发送合并转发消息
UIKIT_EXTERN NSString *const click_merge_forward;
//在hantalk审批
UIKIT_EXTERN NSString *const click_hantalk_approval;
//视频消息发送
UIKIT_EXTERN NSString *const click_video;
//视频消息收藏
UIKIT_EXTERN NSString *const click_video_collection;
//发起音频
UIKIT_EXTERN NSString *const audio_launch;
//音频接通
UIKIT_EXTERN NSString *const audio_connect;
//音频开始
UIKIT_EXTERN NSString *const audio_start;
//音频结束
UIKIT_EXTERN NSString *const audio_end ;
//发起视频
UIKIT_EXTERN NSString *const video_launch ;
//视频接通
UIKIT_EXTERN NSString *const video_connect;
//视频开始
UIKIT_EXTERN NSString *const video_start ;
//视频结束
UIKIT_EXTERN NSString *const video_end;
//免提
UIKIT_EXTERN NSString *const hands_free;
//静音
UIKIT_EXTERN NSString *const loudspeaker_mute;
//最小化
UIKIT_EXTERN NSString *const minimize;
//切换摄像头
UIKIT_EXTERN NSString *const switch_camera;
//美颜
UIKIT_EXTERN NSString *const beauty_camera;
//发送hantalk文档点击
UIKIT_EXTERN NSString *const click_hantalk_word_send;
//搜索点击
UIKIT_EXTERN NSString *const click_search_word;
//聊天文件点击
UIKIT_EXTERN NSString *const click_hantalk_file;
//我的导图点击
UIKIT_EXTERN NSString *const click_mind_mine;
//办公文档点击
UIKIT_EXTERN NSString *const click_office_documents;
//发送点击
UIKIT_EXTERN NSString *const click_send;
//群分组页面进入
UIKIT_EXTERN NSString *const click_group_open;
//移至群分组成功
UIKIT_EXTERN NSString *const click_group_success;
//会议页面进入
UIKIT_EXTERN NSString *const click_meeting_open;
//会议详情页进入
UIKIT_EXTERN NSString *const click_metting_detail;
//发布会议
UIKIT_EXTERN NSString *const click_metting_releease;
//修改会议
UIKIT_EXTERN NSString *const click_metting_renew;
//取消会议
UIKIT_EXTERN NSString *const click_metting_cancel;
//发送名片消息(个人)
UIKIT_EXTERN NSString *const click_business_person;
//发送名片消息(群组)
UIKIT_EXTERN NSString *const click_business_group;
//发送名片消息(公众号)
UIKIT_EXTERN NSString *const click_business_backstage;
//他山石界面点击
UIKIT_EXTERN NSString *const click_stones_start;
//他山石界面退出
UIKIT_EXTERN NSString *const click_stones_end ;
//新增播放
UIKIT_EXTERN NSString *const click_stones_play ;
//他山石收藏
UIKIT_EXTERN NSString *const click_stones_collection ;
//他山石转发
UIKIT_EXTERN NSString *const click_stones_forward ;
//他山石会话点击次数
UIKIT_EXTERN NSString *const click_stones_conversation ;
//他山石专辑列表进入
UIKIT_EXTERN NSString *const click_stones_album ;
//他山石专辑列表搜索
UIKIT_EXTERN NSString *const click_stones_album_search ;
//公告页面进入次数
UIKIT_EXTERN NSString *const notice_open;
//打开快捷菜单
UIKIT_EXTERN NSString *const click_quick_menu_open ;
//点击功能
UIKIT_EXTERN NSString *const click_quick_func ;
//增加快捷入口进入
UIKIT_EXTERN NSString *const click_quick_add;
//公众号点击
UIKIT_EXTERN NSString *const click_backstage ;
//公众号文章查看
UIKIT_EXTERN NSString *const click_backstage_article;
//菜单点击公众号详情查看
UIKIT_EXTERN NSString *const click_backstage_detail;
//消息免打扰
UIKIT_EXTERN NSString *const click_backstage_not_disturb;
//名片发送
//UIKIT_EXTERN NSString *const click_backstage_send;
//click_backstage_menu ==> 菜单点击
UIKIT_EXTERN NSString *const click_backstage_menu;
//点击进入待办提醒
UIKIT_EXTERN NSString *const click_notify_to_do_remind;
//查看任务详情
UIKIT_EXTERN NSString *const click_notify_mission_details;
//完成/激活任务
UIKIT_EXTERN NSString *const click_notify_complete_activation ;
//全部通知点击
UIKIT_EXTERN NSString *const click_notify_all;
//未读点击
UIKIT_EXTERN NSString *const click_notify_not_read;
//全部已读点击
UIKIT_EXTERN NSString *const click_notify_all_read;
//待办点击
UIKIT_EXTERN NSString *const click_notify_to_do;
//待办我负责的点击
UIKIT_EXTERN NSString *const click_notify_responsible;
//我参与的点击
UIKIT_EXTERN NSString *const click_notify_join;
//我创建的点击
UIKIT_EXTERN NSString *const click_notify_create;
//已完成点击
UIKIT_EXTERN NSString *const click_notify_complete;
//未完成点击
UIKIT_EXTERN NSString *const click_notify_not_complete;
@end

























