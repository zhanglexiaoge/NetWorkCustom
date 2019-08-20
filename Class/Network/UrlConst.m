//
//  UrlConst.h
//  HanTalk
//
//  Created by 曹云霄 on 2018/3/28.
//  Copyright © 2018年 上海韩创科技有限公司. All rights reserved.
//
#import "UrlConst.h"

@implementation UrlConst


//WebSocket正式Url
NSString *const SocketBaseUrlReleae = @"ws://hans.hanmaker.com";
//WebSockets测试Url
NSString *const SocketBaseUrlDebug = @"ws://develop2.hanmaker.com";
//开发BaseUrl
NSString *const BaseUrlDeveloper = @"https://test-hantalk.hanmaker.com";
//测试BaseUrl
NSString *const BaseUrlDebug = @"https://release-hantalk.hanmaker.com";
//正式BaseUrl
NSString *const BaseUrlReleae = @"https://hantalk.hanmaker.com";
//轮询BaseUrl
NSString *const BaseUrl = @"https://api.hanmaker.com";
//用户自身用户信息
NSString *const GetStaffSelf  = @"api/staff/self";
//获取公告列表
NSString *const GetNotice = @"api/group/notice/list/new";
//判断个人是否已读群公告
NSString *const GetgroupNotice = @"api/group/notice/judge/read";
//获取所有群公告
NSString *const GetAllNotice = @"api/group/notice/all";
//公告标记已读
NSString *const ReadNotice = @"api/group/notice/read";
//删除群公告
NSString *const DeleteNotice = @"api/group/notice/delete";
//修改群公告
NSString *const EditNotice = @"api/group/notice/edit";
//置顶群公告
NSString *const StickNotice = @"api/group/stick/notice";
//发布群公告
NSString *const PublishNotice = @"api/group/notice/publish";
NSString *const PublishtestNotice  = @"api/group/test/notice";
//获取最新消息及未读
NSString *const GetLastMessage = @"api/message/last";
//发送消息
//NSString *const SendChatMessage = @"api/message/chat";
NSString *const SendChatMessage = @"api/v2/chat";
//更新消息状态
NSString *const UpdateMessageState = @"api/message/update";
//创建新群组
NSString *const CreateGroup1 = @"api/group/create";
NSString *const CreateGroup = @"/Group/create";
//拉人入群
NSString *const InviteJoinGroup = @"api/group/invite";
//踢人出群
NSString *const EvictGroup = @"api/group/remove";
//退出群组
NSString *const QuitGroup = @"api/group/quit";
//解散群组
NSString *const DismissGroup = @"api/group/dismiss";
//获取会话列表
NSString *const GetChatList = @"api/v2/chat/list";
//删除会话
NSString *const DeleteChat = @"api/chat/delete";
//会话置顶
NSString *const ChatTop = @"api/chat/pin";
//取消会话置顶
NSString *const ChatUnTop = @"api/chat/unpin";
//更新最新阅读id
NSString *const UpdateReadMessageId = @"api/chat/update";
//更新所有的消息已读
NSString *const UpdateAllMessage = @"api/chat/renew";
//屏蔽群消息
NSString *const GroupIsShield = @"api/group/block";
//会议地点列表
NSString *const ActivityPlaces = @"api/user/activity/places";
//会议室未来5天数据  获取当天会议时间表
NSString *const FutureFiveData = @"api/user/activity/schedule";
//确认收到会议
NSString *const ActivityRead = @"api/user/activity/read";
//报名、取消报名
NSString *const  TrainingSignup = @"/api/user/activity/signup";
//删除会议
NSString *const ActivityRemove = @"api/user/activity/remove";
//群信息修改
NSString *const ModifyGroupInfo = @"api/group/modify";
//获取七牛图片上传token
NSString *const GetImgQiniuToken = @"api/staff/qiniuToken";
//获取会议地点
NSString *const GetActivityPlaces = @"api/user/activity/places";
//更新用户头像
NSString *const UpdateStaffAvatar = @"api/staff/avatar";
//创建会议
NSString *const MeetingActivityCreate = @"api/user/activity/create";
//修改会议
NSString *const MeetingActivityUpdate = @"api/user/activity/update";
//会议人员
NSString *const MeetingActivityUsers = @"api/user/activity/users";
//获取其他员工信息
NSString *const GetStaffInfo = @"api/staff/info";
//获取公众号信息
NSString *const OfficialAccount = @"api/backstage/system/user";
//获取公众号列表
NSString *const OfficialAccountList = @"api/backstage/system/list";
//确认会议
NSString *const MeetInforead = @"/api/user/activity/read";
//群组信息修改
NSString *const GroupInfoModify = @"api/group/modify";
//群转让
NSString *const GroupShift = @"api/group/shift";
//获取群信息
NSString *const GetGroupInfo = @"api/group/info";
//获取群信息V2
NSString *const GetGroupInfoV2 = @"api/v2/group/info";
//审批历史按照时间顺序
NSString *const LeaveHistoryTime = @"api/user/leave/history/time";
//获取请假类型列表
NSString *const LeaveTypes = @"api/user/leave/types";
//审批历史按照成员分组
NSString *const LeaveHistoryMember = @"api/user/leave/history/member";
//获取请假类型警告
NSString *const LeaveWarn = @"api/user/leave/warn";
//设置群管理员
NSString *const SetGroupManager = @"api/group/manager/attach";
//删除群管理员
NSString *const DeleteGroupManager = @"api/group/manager/detach";
//socket 注册token
NSString *const RegisterToken = @"api/message/register";
//获取会话图片附件
NSString *const GetChatAttachment  = @"api/chat/images";
//获取启动图数据
NSString *const GetLaunch = @"tool/helper/launch";
//语音转文字
NSString *const TransformText = @"api/message/transform";
//社区未读个数
NSString *const CommunityUnread = @"api/user/community/unread";
//ios启动获取客户端设置和社区未读
NSString *const  AppLaunchedCommunityUnreadSet = @"api/v2/self/preload";
//社区已读
NSString *const CommunityRead = @"api/user/community/read";
//公司制度
NSString *const CompanySystem = @"api/user/community/policies";
//文章类型
NSString *const TypeOfArticle = @"api/user/community/article/types";
//调查分析列表
NSString *const SurveyAndAnalysisList = @"";
//调查分析详情
NSString *const InvestigationAndAnalysisDetails = @"";
//获取打卡配置
NSString *const PunchCardConfig = @"api/staff/punch/config";
//获取会话图库
NSString *const GetChatImages = @"api/chat/medias";
//搜索会话文件（当前/全局）
NSString *const SearchChatImages = @"api/chat/medias/search";
//获取群公告详情
//NSString *const GetAnnouncementDetail = @"api/group/notice/news";
NSString *const GetAnnouncementDetail = @"api/group/notice/news/new";
//获取我的群组列表
NSString *const GetMyGroup = @"api/group/my";
//获取群助手列表
NSString *const GetGroupHide = @"api/chat/hide";
//获取最近活跃的群
NSString *const GetRecentGroups = @"api/group/recent";
//获取表情包组
NSString *const GetMessageFaceGroup = @"api/message/sticker/group";
//通过组id 获取表情
NSString *const GetMessageFace = @"api/message/sticker/group/%@";
//获取员工通讯录
NSString *const GetContacts = @"api/staff/contacts";
//个人请假列表
NSString *const GetLeaveHistory = @"api/user/leave/history/my";
//请假类型
NSString *const GetLeaveType = @"api/user/leave/history/used";
//电脑管理统计
NSString *const ComputerStatistics = @"api/network/statistics";
//闲置电脑可用
NSString *const Computeravailable = @"api/network/team/available";
//电脑统计搜索
NSString *const ComputerStatisticsSearch = @"api/network/search";
//重新分配电脑
NSString *const ComputerDistribute = @"api/network/distribute";
//电脑可分配部门
NSString *const ComputerDistributeTeam = @"api/network/teams";
//请假申请
NSString *const LeaveApply = @"api/user/leave/apply";
//请假申请修改
NSString *const LeaveEditApply = @"api/user/leave/edit";
//获取收藏列表
NSString *const GetCollectionList = @"api/user/collection/list";
//新增收藏
NSString *const AddCollection = @"api/user/collection/add/chat";
//用户收藏统一接口
NSString *const CollectionAllData = @"api/user/collection/add/collection";
//获取所有的标签
NSString *const GetAllTags = @"api/user/collection/tag/list";
//获取所有的类型
NSString *const GetAllTypes = @"api/user/collection/types";
//删除收藏
NSString *const DeleteCollection = @"api/user/collection/delete";
//收藏内容添加标签
NSString *const SetupCollectionTag = @"api/user/collection/tag/attach";
//收藏文档
NSString *const DocumentCollection = @"api/user/collection/add/document";
//修改笔记
NSString *const EditCollectionNote = @"api/user/collection/edit/note";
//收藏笔记
NSString *const AaddCollectionNote = @"api/user/collection/add/note";
//搜索群名获取群信息
NSString *const GetGroupInfoBySearch = @"api/group/info/name";
//加群申请
NSString *const GroupApply = @"api/group/apply";
//加群审核
NSString *const GroupReview = @"api/group/review";
//轮岗审批
NSString *const WorkShiftApprove = @"api/message/approve";
//加群审批
NSString *const JoinGroupApprove = @"api/group/review";
//群组管理
NSString *const GroupmyManagement = @"api/group/tag/my";
//新增群组管理
NSString *const AddGroupmyManagement = @"/api/group/tag/create";
//删除群组管理
NSString *const RemoveGroupmyManagement = @"/api/group/tag/remove";
//更新，移动，移出，清空，群组管理
NSString *const UpdateGroupmyManagement = @"/api/group/tag/update";
//取消置顶群组管理
NSString *const ToppingGroupmyManagement = @"api/group/tag/topping";
//调查分析列表
NSString *const GetDocumentList = @"api/tool/document/list?page=%ld";
//调查分析详情
NSString *const GetDocumentDetail = @"api/tool/document/show?id=%@";
//文档列表
NSString *const GetDocumentFileLists = @"api/tool/document/category";
//文档详情
NSString *const GetDocumentFileDetail = @"api/tool/document/info?document_id=%ld&uid=%d";
//获取置顶消息
NSString *const GetmessageTop = @"api/chat/top/list";
//置顶
NSString *const MessageTop = @"api/chat/top/top";
//取消置顶
NSString *const MessageNoTop = @"api/chat/top/no-top";
//关闭置顶
NSString *const MessageCloseTop = @"api/chat/top/close";
//置顶详情
NSString *const MessageTopDeatil = @"api/chat/top/top-info";
//获取群动态
NSString *const GetGroupDynamics = @"api/group/dynamics/list";
//群动态评论/回复
NSString *const GroupDynamicsComment = @"api/group/dynamics/comment";
//群动态编辑
NSString *const UpdateGroupDynamics = @"api/group/dynamics/update";
//群动态删除
NSString *const DeleteGroupDynamics = @"api/group/dynamics/delete";
//群动态删除
NSString *const DeleteGroupDynamicsComment = @"api/group/dynamics/delete-commit";
//群动态详情
NSString *const GroupDynamicsDetail = @"api/group/dynamics/show";
//置顶 or 取消置顶群动态
NSString *const  GroupDynamicsStick = @"api/group/stick/dynamics";
//创建群动态
NSString *const CreateGroupDynamics = @"api/group/dynamics/create";
//群动态评论列表
NSString *const GroupDynamicsCommentList = @"api/group/dynamics/comment/list";
//获取我的思维导图
NSString *const GetmyXmindlist = @"/api/mind/map/list";
//思维导图 搜索
NSString *const GetsearchXmindlist = @"api/mind/map/search";
//分享给我的思维导图
NSString *const GetShareXmindlist = @"/api/mind/map/sure/list";
//分享思维导图创建
NSString *const PostXmindShare = @"/api/mind/map/add-sure";
//分享导图分享时创建快照
NSString *const PostXmindmapold = @"api/mind/map/old";
//获取我的hanword
NSString *const GetmyHanWordlist = @"api/han/word/list";
//与我共享的
NSString *const GetHanWordShareMe = @"/api/han/word-member/share-list";
//搜索我的hanword
NSString *const GetsearchHanWordlist = @"api/han/word/search";
//获取分享我的hanword列表
NSString *const GetHanWordSharelist = @"api/han/word/sure/list";
//分享hanword创建
NSString *const PostHanwordShare = @"api/han/word/add-sure";
//获取我的hanword详情
NSString *const GetHanWordDetail =  @"api/han/word/info";
//检测是否有人在编辑
NSString *const GetHanWordIsHas =  @"api/han/word-member/is-has";
//设置人编辑
NSString *const SetHanWordEditUser =  @"api/han/word-member/set";
//检测是否有编辑权限
NSString *const GetHanWordIsInfo =  @"api/han/word-member/is-info";
//HanWord分享详情
NSString *const GetShareHanWordInfo = @"api/han/word/sure/info";
//删除Hanword
NSString *const DelHanWord =  @"api/han/word/del";
//获取我的hanword快照
NSString *const GetHanWordOld =  @"api/han/word/old";
//创建Hanword
NSString *const CreateHanWord =  @"api/han/word/create";
//hanword时是否可以保存到我的
NSString *const SaveMeHanWord =  @"api/han/word/at-my-map";
//更新Hanword
NSString *const UpdateHanWord =  @"api/han/word/update";
//添加共享协作人Hanword
NSString *const AddHanWordMember =  @"api/han/word-member/insert";
//共享协作人列表
NSString *const WordMemberList =  @"api/han/word-member/list";
//共享协作人删除
NSString *const WordMemberDel =  @"api/han/word-member/del";
//检查版本更新
NSString *const CheckUpgrade = @"api/staff/edition/upgrade";
//维护会话
NSString *const CreateConversation = @"api/chat/keep";
//反馈打卡异常
NSString *const UploadPunchError = @"api/user/punch/punchFeedback";
//帮助中心
NSString *const HelpCenter = @"api/staff/feedback";
//聊天界面全文搜索
NSString *const SearchAllSo =@"api/so";
//获取社区内容
NSString *const Url_ApiUserCommunity = @"/api/user/community";
//获取社区单个内容
NSString *const Url_ApiUserCommunityCid = @"/api/user/community/cid";
//社区内容点赞
NSString *const Url_ApiUserCommunityDianZan = @"/api/user/community/dianzan";
//保存社区话题评论
NSString *const Url_ApiUserCommunityCommment = @"/api/user/community/comment";
//社区发表内容
NSString *const Url_ApiUserCommunityPublish = @"api/user/community";
//删除社区内容
NSString *const Url_ApiUserCommunityDel = @"/api/user/community/del";
//替换考勤打卡接口
NSString *const Url_ApiUserPunch = @"/api/user/punch";
//按日获取个人考勤记录
NSString *const Url_ApiUserPunchGetDayAttend = @"/api/user/punch/getDayAttend";
//查询月考勤记录
NSString *const Url_ApiUserPunchGetMonthAttend = @"/api/user/punch/getMonthAttend";
//获取文章分类
NSString *const Url_ArticleGetArticleClass = @"api/user/community/article/types";
//获取文章列表信息
NSString *const Url_ApiUserCommunityArticleList = @"/api/user/community/article/list";
//获取自定义表情
NSString *const Url_ApiMessageCustomEmoji = @"/api/message/emoji";
//自定义表情添加表情
NSString *const Url_ApiMessageEmojiAdd = @"/api/message/emoji/add";
//自定义表情添加批量表情
NSString *const Url_ApiMessageEmojiAdds = @"/api/message/emoji/adds";
//自定义表情删除
NSString *const Url_ApiMessageEmojiDel = @"api/message/emoji/del";
//上传同步数据
NSString *const Url_ApiToolUserUpload = @"/api/tool/user/upload";
//取回同步数据
NSString *const Url_ApiToolUserRetrieval = @"api/tool/user/retrieval";
//app轮播图
NSString *const GetAppBanner = @"api/staff/app/banner";
//根据uid和time_type获取请假列表
NSString *const Url_ApiUserLeaveHistoryMy = @"/api/user/leave/history/my";
//意见反馈
NSString *const Url_ApiToolUserFeedBack = @"/api/tool/user/feedback";
//获取请假小组信息
NSString *const Url_ApiUserLeaveGroups = @"/api/user/leave/groups";
//登录
NSString *const Login = @"login/sms";
NSString *const LoginOld = @"login/old";
//修改密码
NSString *const PassWordChange = @"api/staff/pass/change";
//获取群状态
NSString *const GetGroupState = @"api/group/status";
//长轮询获取最新消息
NSString *const GetNewMessage = @"v2/Tool/newMessage";
//获取用户在线状态
NSString *const GetUserOnLine = @"api/staff/online/%@";
//获取服务器消息
NSString *const GetServerMessage = @"api/v2/chat/log/ordered";
//获取我参与的相关活动
NSString *const Url_ActivityGetMyActivity = @"/api/user/activity/my";
//审核请假列表
NSString *const Url_LeaveCheck = @"api/user/leave/pending";
//处理审核请假
NSString *const Url_LeaveDoCheck = @"api/user/leave/review";
//保存版本号
NSString *const SaveVersion = @"api/tool/user/used";
//获取个人信息和保存版本号（合并接口）
NSString *const GetSelfInfoV2 = @"api/v2/self/info/mobile";
//获取轮播图、广告图、检查更新、取回同步数据
NSString *const GetMergeConfigV2 = @"api/v2/self/after/mounted/mobile";
//是否连接Socket
NSString *const ConnectSocket = @"api/tool/wsCenter";
//获取他山石列表加简介
NSString *const PostCollegeStones = @"api/college/stones";
//获取他山石评论列表
NSString *const PostCollegeStoneComment = @"api/college/stone/comment";
//他山石播放，增加浏览量
NSString *const PostCollegeStoneClick = @"api/college/stone/click";
//删除他山石收藏视频资源
NSString *const PostDeleteCollectCollege = @"api/user/collection/contentid/delete";
//发送验证码
NSString *const PostSendSms = @"send/sms";
//群动态评论/回复未读数量
NSString *const PostDynamicsNum = @"api/group/dynamics/num";
//推送设置屏蔽弹窗
NSString *const ApiShortCutKeySet = @"/api/shortcut/key/set";
//获取新消息推送
NSString *const ApiShortCytKeyGet = @"api/shortcut/key";
//创建语音视频通话
NSString *const PostCreateConnect = @"/api/chat/rtc/createConnect";
//加入语音视频通话
NSString *const PostJoinConnect = @"/api/chat/rtc/joinConnect";
//取消语音视频通话
NSString *const PostCancelConnect = @"/api/chat/rtc/cancelConnect";
//拒绝语音视频通话
NSString *const PostRefuseConnect = @"/api/chat/rtc/refuseConnect";
//挂断语音视频通话
NSString *const GetHangUpConnect = @"/api/chat/rtc/hangUpConnect";
//创建连接获取RoomToken
NSString *const GetRoomToken = @"/api/chat/rtc/createConnect";
//获取RoomToken 加入房间
NSString *const GetJoinRoomToken = @"/api/chat/rtc/joinConnect";
//同步会话聊天记录
NSString *const PostSyncmMssageLogging = @"/api/chat/log/by/relationship";
//断线重连后调取判断是否有未接会话
NSString *const PostRePushCreate  = @"api/chat/rtc/rePushCreate";
//@群成员消息提示
NSString *const PostMessageCall  = @"api/message/call/out";
//已读所有@消息提示
NSString *const PostRenewMessageCall  = @"api/message/call/renew";
//查看名片详情-获取群信息
NSString *const ApiChatBusinessCardDetail = @"/api/chat/business/card/detail";
//保存极光推送token
NSString *const PostSaveJPUSHToken = @"/api/tool/user/jpush/save";
//待办提醒测试路径
NSString *const HanMissionUrl = @"https://s2.hanmaker.com/app/mission/test/index.html?t=%@#/home?token=%@";
//待办提醒正式路径
NSString *const HanMissionReleaseUrl = @"https://s2.hanmaker.com/app/mission/index.html?t=%@#/home?token=%@";
//待办任务测试路径
NSString *const HanMissionUrlTask = @"https://s2.hanmaker.com/app/mission/test/index.html?t=%@#/myTask?token=%@";
//待办任务正式路径
NSString *const HanMissionReleaseUrlTask = @"https://s2.hanmaker.com/app/mission/index.html?t=%@#/myTask?token=%@";
//清空所有点赞评论消息
NSString *const DeleteAllPraiseAndComments = @"/api/user/community/notice/clear";
//获取社区未读点赞评论消息
NSString *const GetUnReadCommunityMsg = @"/api/user/community/notice/unread";
//获取社区所有点赞评论消息
NSString *const GetAllPraiseCommentsMsg = @"/api/user/community/notice/detail";
//word 的转发已读
NSString *const PostHanWordshareUrl = @"/api/han/word/share";
//word 的转发已读
NSString *const PostHanMindshareUrl = @"/api/mind/map/share";
//获取社区点赞评论未读的数目
NSString *const CommunityNoticeNum = @"/api/user/community/notice/num";
//更新token
NSString *const GetToken = @"api/user/token/get";
//获取base url
NSString *const PostBaseUrl = @"get/base/url";
//pv和uv埋点统计
NSString *const GetpvUv = @"api/backstage/article/recordUv";
//公众号免打扰
NSString *const Postbackstage =  @"api/backstage/system/shiled";
//补卡审批
NSString *const PostCorrectReview = @"api/user/punch/correct/review";
//考勤汇总
NSString *const PunchSummary = @"/api/user/punch/getMonthAttendSummary";
//补卡申请
NSString *const PunchEditApply = @"/api/user/punch/correct/post";
//点击菜单
NSString *const MenuClick =@"api/backstage/menu/click";
//获取BaseUrl
NSString *const PostGetBaseUrl = @"get/base/url";
//设置BaseUrl
NSString *const PostSetBaseUrl = @"api/set/base/url";
//保存日志文件
NSString *const PostSaveLog = @"api/tool/user/mobile/url";
//发布会议推荐
NSString *const PublishMeetingRecommend = @"/api/user/activity/suggest";

//获取群分组信息
NSString *const GetgroupTagInfro = @"api/group/tag/tagid";
//待办评论
NSString *const MissionCommentTaskId = @"api/tasks/%@/reply";
//话题列表
NSString *const CommunityTopics = @"/api/user/community/topics";
//社区删除评论
NSString *const CommunityDeleteTopic = @"/api/user/community/comment/del";
//App冷启动、几个重要接口统计
NSString *const EfficiencyLog = @"api/efficiency/logs";
//下载单个/所有表情包
NSString *const StickerDownloadGroup = @"api/sticker/download/group";
//置顶列表，群公告未读，群动态未读合并 api/v2/group/box
NSString *const GroupBoxGroupinfro = @"api/v2/group/box";

/******************************APP统计**************************************/

//上传统计数据
NSString *const UploadLogs = @"api/tool/action/logs";
//打开app次数
NSString *const click_open = @"click_open";
//打开消息列表
NSString *const click_msg = @"click_msg";
//打开通讯录
NSString *const click_contacts = @"click_contacts";
//打开应用页
NSString *const click_appliance = @"click_appliance";
//打开我的
NSString *const click_mine = @"click_mine";
//发送消息总数
NSString *const click_allmsg = @"click_allmsg";
//发送文本消息
NSString *const click_text = @"click_text";
//发送图片消息
NSString *const click_pic = @"click_pic";
//发送文件消息
NSString *const click_file = @"click_file";
//发送语音消息
NSString *const click_voice = @"click_voice";
//发送表情消息
NSString *const click_face = @"click_face";
//手动打卡次数
NSString *const click_clock = @"click_clock";
//自动打卡次数
NSString *const click_clock_automatic = @"click_clock_automatic";
//打卡界面
NSString *const click_clock_page = @"click_clock_page";
//手动打卡失败
NSString *const click_clock_fail = @"click_clock_fail";
//自动打卡失败
NSString *const click_clock_automatic_fail = @"click_clock_automatic_fail";
//查看范围
NSString *const click_range = @"click_range";
//查看范围失败
NSString *const click_range_fail = @"click_range_fail";
//月历
NSString *const click_monthly_calendar = @"click_monthly_calendar";
//月历失败
NSString *const click_monthly_calendar_fail = @"click_monthly_calendar_fail";
//请假界面
NSString *const click_leave = @"click_leave";
//提交审核
NSString *const click_leave_submit = @"click_leave_submit";
//提交审核失败
NSString *const click_leave_submit_fail = @"click_leave_submit_fail";
//请假规则
NSString *const click_leave_rule = @"click_leave_rule";
//请假记录
NSString *const click_leave_record = @"click_leave_record";
//本月
NSString *const click_month = @"click_month";
//请假审批
NSString *const click_leave_approval = @"click_leave_approval";
//员工页面
NSString *const click_person = @"click_person";
//群组
NSString *const click_group = @"click_group";
//项目组
NSString *const click_items = @"click_items";
//职位
NSString *const click_job = @"click_job";
//职能
NSString *const click_function = @"click_function";
//员工搜索
NSString *const click_person_search = @"click_person_search";
//社区进入
NSString *const click_community_start = @"click_community_start";
//社区离开
NSString *const click_community_end = @"click_community_end";
//发帖
NSString *const click_post = @"click_post";
//回复
NSString *const click_answer = @"click_answer";
//点赞
NSString *const click_laud = @"click_laud";
//上传图片数
NSString *const click_upload_pic = @"click_upload_pic";
//带图贴
NSString *const click_post_pic = @"click_post_pic";
//文章进入
NSString *const click_article_start = @"click_article_start";
//文章离开
NSString *const click_article_end = @"click_article_end";
//文章详情
NSString *const click_article_details = @"click_article_details";
//文章标题导航点击次数
NSString *const click_article_title = @"click_article_title";
//调查分析进入
NSString *const click_analysis_start = @"click_analysis_start";
//调查分析离开
NSString *const click_analysis_end = @"click_analysis_end";
//调查分析详情
NSString *const click_analysis_details = @"click_analysis_details";
//调查分析转发
NSString *const click_analysis_forward = @"click_analysis_forward";
//转发
NSString *const click_rule_forward = @"click_rule_forward";
//公司制度详情
NSString *const click_rule_details = @"click_rule_details";
//公司制度进入
NSString *const click_rule_forward_start = @"click_rule_start";
//公司制度离开
NSString *const click_rule_forward_end = @"click_rule_forward_end";
//收藏
NSString *const click_collect = @"click_collect";
//收藏进入
NSString *const click_collect_start = @"click_collect_start";
//收藏离开
NSString *const click_collect_end = @"click_collect_end";
//搜索
NSString *const click_collect_search = @"click_collect_search";
//收藏转发
NSString *const click_collect_forward = @"click_collect_forward";
//新建笔记
NSString *const click_collect_notes = @"click_collect_notes";
//新建标签
NSString *const click_collect_built = @"click_collect_built";
//群组分入群分组
NSString *const click_group_detail = @"click_group_detail";
//新建群组
NSString *const click_group_create = @"click_group_create";
//总申请入群量
NSString *const click_apply_group = @"click_apply_group";
//主搜索入群量
NSString *const click_apply_search = @"click_apply_search";
//右上角搜群加群入群量
NSString *const click_apply_search_group = @"click_apply_search_group";
//查看群公告已读人数
NSString *const notice_user_details = @"notice_user_details";
//新增带有图的新公告
NSString *const notice_image = @"notice_image";
//新增成功的新公告
NSString *const notice_release = @"notice_release";
// 文档进入
NSString *const click_document_start = @"click_document_start";
//文档详情
NSString *const click_document_details = @"click_document_details";
//文档转发
NSString *const click_document_forward = @"click_document_forward";
//文档离开
NSString *const click_document_end = @"click_document_end";
//群动态进入 
NSString *const click_dynamic_start = @"click_dynamic_start";
//群动态详情进入
NSString *const click_dynamic_details = @"click_dynamic_details";
//发布群动态
NSString *const click_dynamic_release = @"click_dynamic_release";
//发布带图群动态
NSString *const click_dynamic_release_image = @"click_dynamic_release_image";
//评论、回复
NSString *const click_dynamic_comment = @"click_dynamic_comment";
//带图评论、回复
NSString *const click_dynamic_comment_image = @"click_dynamic_comment_image";
//自定义表情发送
NSString *const custom_sticker_send = @"custom_sticker_send";
//添加表情
NSString *const custom_sticker_add = @"custom_sticker_add";
//从会话中打开（预览）思维导图
NSString *const click_mind_map_conversation = @"click_mind_map_conversation";
//从会话中转发
NSString *const click_mind_map_forward_conversation = @"click_mind_map_forward_conversation";
//从【我的】列表转发
NSString *const click_mind_map_forward_mine = @"click_mind_map_forward_mine";
//从【分享给我的】列表转发
NSString *const click_mind_map_forward_share = @"click_mind_map_forward_share";
//导图收藏
NSString *const click_mind_map_collection = @"click_mind_map_collection";
//【应用】模块中，思维导图的点击
NSString *const click_mind_map_apply = @"click_mind_map_apply";
//我的导图】点击
NSString *const click_mind_map_mine = @"click_mind_map_mine";
//【分享给我的】点击
NSString *const click_mind_map_share = @"click_mind_map_share";
//点击群组详情里群动态
NSString *const click_dynamic_group_details = @"click_dynamic_group_details";
//点击群内消息跳转至群动态
NSString *const click_dynamic_skip_with_group = @"click_dynamic_skip_with_group";
//点击群动态通知跳转至群动态
NSString *const click_dynamic_skip_with_notice = @"click_dynamic_skip_with_notice";
//从会话中打开（预览）办公文档
NSString *const click_hanword_conversation = @"click_hanword_conversation";
//从会话中转发
NSString *const click_hanword_forward_conversation = @"click_hanword_forward_conversation";
//从【我的】列表转发
NSString *const click_hanword_forward_mine = @"click_hanword_forward_mine";
//从【分享给我的】列表转发
NSString *const click_hanword_forward_share = @"click_hanword_forward_share";
//收藏
NSString *const click_hanword_collection = @"click_hanword_collection";
//【应用】模块中，办公文档的点击
NSString *const click_hanword_apply = @"click_hanword_apply";
//【我的】点击
NSString *const click_hanword_mine = @"click_hanword_mine";
//分享给我的】点击
NSString *const click_hanword_share = @"click_hanword_share";
//发送外部链接消息
NSString *const click_url_source = @"click_url_source";
//发送合并转发消息
NSString *const click_merge_forward = @"click_merge_forward";
//在hantalk审批
NSString *const click_hantalk_approval = @"click_hantalk_approval";
//视频消息发送
NSString *const click_video = @"click_video";
//视频消息收藏
NSString *const click_video_collection = @"click_video_collection";
//发起音频
NSString *const audio_launch = @"audio_launch";
//音频接通
NSString *const audio_connect = @"audio_connect";
//音频开始
NSString *const audio_start = @"audio_start";
//音频结束
NSString *const audio_end  = @"audio_end";
//发起视频
NSString *const video_launch  = @"video_launch";
//视频接通
NSString *const video_connect = @"video_connect";
//视频开始
NSString *const video_start  = @"video_start";
//视频结束
NSString *const video_end = @"video_end";
//免提
NSString *const hands_free = @"hands_free";
//静音
NSString *const loudspeaker_mute = @"loudspeaker_mute";
//最小化
NSString *const minimize = @"minimize";
//切换摄像头
NSString *const switch_camera = @"switch_camera";
//美颜
NSString *const beauty_camera = @"beauty_camera";
//发送hantalk文档点击
NSString *const click_hantalk_word_send = @"click_hantalk_word_send";
//搜索点击
NSString *const click_search_word = @"click_search_word";
//聊天文件点击
NSString *const click_hantalk_file = @"click_hantalk_file";
//我的导图点击
NSString *const click_mind_mine = @"click_mind_mine";
//办公文档点击
NSString *const click_office_documents = @"click_office_documents";
//发送点击
NSString *const click_send = @"click_send";
//群分组页面进入
NSString *const click_group_open = @"click_group_open";
//移至群分组成功
NSString *const click_group_success = @"click_group_success";

//会议页面进入
NSString *const click_meeting_open = @"click_meeting_open";
//会议详情页进入
NSString *const click_metting_detail = @"click_metting_detail";
//发布会议
NSString *const click_metting_releease = @"click_metting_releease";
//修改会议
NSString *const click_metting_renew = @"click_metting_renew";
//取消会议
NSString *const click_metting_cancel = @"click_metting_cancel";
//发送名片消息(个人)
NSString *const click_business_person = @"click_business_person";
//发送名片消息(群组)
NSString *const click_business_group = @"click_business_group";
//发送名片消息(公众号)
NSString *const click_business_backstage = @"click_business_backstage";
//他山石界面点击
NSString *const click_stones_start = @"click_stones_start";
//他山石界面退出
NSString *const click_stones_end = @"click_stones_end";
//新增播放
NSString *const click_stones_play = @"click_stones_play";
//他山石收藏
NSString *const click_stones_collection = @"click_stones_collection";
//他山石转发
NSString *const click_stones_forward = @"click_stones_forward";
//他山石会话点击次数
NSString *const click_stones_conversation = @"click_stones_conversation";
//他山石专辑列表进入
NSString *const click_stones_album = @"click_stones_album";
//他山石专辑列表搜索
NSString *const click_stones_album_search = @"click_stones_album_search";
//公告页面进入次数
NSString *const notice_open = @"notice_open";
//打开快捷菜单
NSString *const click_quick_menu_open = @"click_quick_menu_open";
//点击功能
NSString *const click_quick_func = @"click_quick_func";
//增加快捷入口进入
NSString *const click_quick_add = @"click_quick_add";
//公众号点击
NSString *const click_backstage = @"click_backstage";
//公众号文章查看
NSString *const click_backstage_article = @"click_backstage_article";
//菜单点击公众号详情查看
NSString *const click_backstage_detail = @"click_backstage_detail";
//消息免打扰
NSString *const click_backstage_not_disturb = @"click_backstage_not_disturb";
//名片发送
//NSString *const click_backstage_send = @"click_backstage_not_disturb";
//click_backstage_menu ==> 菜单点击
NSString *const click_backstage_menu = @"click_backstage_menu";

//点击进入待办提醒
NSString *const click_notify_to_do_remind = @"click_notify_to_do_remind";
//查看任务详情
NSString *const click_notify_mission_details = @"click_notify_mission_details";
//完成/激活任务
NSString *const click_notify_complete_activation = @"click_notify_complete_activation";
//全部通知点击
NSString *const click_notify_all = @"click_notify_all";
//未读点击
NSString *const click_notify_not_read = @"click_notify_not_read";
//全部已读点击
NSString *const click_notify_all_read = @"click_notify_all_read";
//待办点击
NSString *const click_notify_to_do = @"click_notify_to_do";
//待办我负责的点击
NSString *const click_notify_responsible = @"click_notify_responsible";
//我参与的点击
NSString *const click_notify_join = @"click_notify_join";
//我创建的点击
NSString *const click_notify_create = @"click_notify_create";
//已完成点击
NSString *const click_notify_complete = @"click_notify_complete";
//未完成点击
NSString *const click_notify_not_complete = @"click_notify_not_complete";

@end



































