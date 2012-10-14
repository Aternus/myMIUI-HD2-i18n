.class public abstract Lcom/android/browser/controller/ForumDataDetector;
.super Ljava/lang/Object;
.source "ForumDataDetector.java"


# instance fields
.field protected mController:Lcom/android/browser/controller/ForumController;

.field protected mForumArticleDetailRule:Lcom/android/browser/model/ForumRuleProvider$ForumArticleDetailRule;

.field protected mForumCommonRule:Lcom/android/browser/model/ForumRuleProvider$ForumCommonRule;

.field protected mForumIdentity:I

.field protected mForumLoggingRule:Lcom/android/browser/model/ForumRuleProvider$ForumLoggingRule;

.field protected mForumPageType:Lcom/android/browser/controller/ForumController$ForumPageType;

.field protected mForumPostingRule:Lcom/android/browser/model/ForumRuleProvider$ForumPostingRule;

.field protected mForumSearchRule:Lcom/android/browser/model/ForumRuleProvider$ForumSearchRule;

.field private mIsFastLoginSupported:Z

.field protected mWebView:Lcom/android/browser/ui/MiRenWebViewBase;


# direct methods
.method protected constructor <init>(ILcom/android/browser/controller/ForumController;Lcom/android/browser/ui/MiRenWebViewBase;)V
    .locals 0
    .parameter "identity"
    .parameter "controller"
    .parameter "webView"

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput p1, p0, Lcom/android/browser/controller/ForumDataDetector;->mForumIdentity:I

    .line 42
    iput-object p3, p0, Lcom/android/browser/controller/ForumDataDetector;->mWebView:Lcom/android/browser/ui/MiRenWebViewBase;

    .line 43
    iput-object p2, p0, Lcom/android/browser/controller/ForumDataDetector;->mController:Lcom/android/browser/controller/ForumController;

    .line 44
    return-void
.end method

.method public static createInstance(ILcom/android/browser/controller/ForumController;Lcom/android/browser/ui/MiRenWebViewBase;)Lcom/android/browser/controller/ForumDataDetector;
    .locals 1
    .parameter "identity"
    .parameter "controller"
    .parameter "webView"

    .prologue
    .line 47
    packed-switch p0, :pswitch_data_0

    .line 64
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 49
    :pswitch_0
    new-instance v0, Lcom/android/browser/controller/Discuz7xForumDataDetector;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/browser/controller/Discuz7xForumDataDetector;-><init>(ILcom/android/browser/controller/ForumController;Lcom/android/browser/ui/MiRenWebViewBase;)V

    goto :goto_0

    .line 51
    :pswitch_1
    new-instance v0, Lcom/android/browser/controller/Discuz6xForumDataDetector;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/browser/controller/Discuz6xForumDataDetector;-><init>(ILcom/android/browser/controller/ForumController;Lcom/android/browser/ui/MiRenWebViewBase;)V

    goto :goto_0

    .line 53
    :pswitch_2
    new-instance v0, Lcom/android/browser/controller/DiscuzX15ForumDataDetector;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/browser/controller/DiscuzX15ForumDataDetector;-><init>(ILcom/android/browser/controller/ForumController;Lcom/android/browser/ui/MiRenWebViewBase;)V

    goto :goto_0

    .line 55
    :pswitch_3
    new-instance v0, Lcom/android/browser/controller/PhpWind73ForumDataDetector;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/browser/controller/PhpWind73ForumDataDetector;-><init>(ILcom/android/browser/controller/ForumController;Lcom/android/browser/ui/MiRenWebViewBase;)V

    goto :goto_0

    .line 57
    :pswitch_4
    new-instance v0, Lcom/android/browser/controller/PhpWind75Sp3ForumDataDetector;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/browser/controller/PhpWind75Sp3ForumDataDetector;-><init>(ILcom/android/browser/controller/ForumController;Lcom/android/browser/ui/MiRenWebViewBase;)V

    goto :goto_0

    .line 59
    :pswitch_5
    new-instance v0, Lcom/android/browser/controller/PhpWindForumDataDetector;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/browser/controller/PhpWindForumDataDetector;-><init>(ILcom/android/browser/controller/ForumController;Lcom/android/browser/ui/MiRenWebViewBase;)V

    goto :goto_0

    .line 61
    :pswitch_6
    new-instance v0, Lcom/android/browser/controller/PhpWind80ForumDataDetector;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/browser/controller/PhpWind80ForumDataDetector;-><init>(ILcom/android/browser/controller/ForumController;Lcom/android/browser/ui/MiRenWebViewBase;)V

    goto :goto_0

    .line 47
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public addArticleListCommonData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "paging"
    .parameter "newThread"

    .prologue
    .line 198
    iget-object v0, p0, Lcom/android/browser/controller/ForumDataDetector;->mController:Lcom/android/browser/controller/ForumController;

    invoke-virtual {v0, p1, p2}, Lcom/android/browser/controller/ForumController;->addArticleListCommonData(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    return-void
.end method

.method public detectArticleDetailData(Lcom/android/browser/model/ForumRuleProvider$ForumArticleDetailRule;)V
    .locals 6
    .parameter "rule"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 139
    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "js/forum_common.js"

    aput-object v2, v1, v3

    const-string v2, "js/xpath.js"

    aput-object v2, v1, v4

    .line 140
    .local v1, scriptFiles:[Ljava/lang/String;
    iput-object p1, p0, Lcom/android/browser/controller/ForumDataDetector;->mForumArticleDetailRule:Lcom/android/browser/model/ForumRuleProvider$ForumArticleDetailRule;

    .line 141
    const/16 v2, 0xc

    new-array v0, v2, [Ljava/lang/String;

    iget-object v2, p1, Lcom/android/browser/model/ForumRuleProvider$ForumArticleDetailRule;->pagingXPath:Ljava/lang/String;

    aput-object v2, v0, v3

    iget-object v2, p1, Lcom/android/browser/model/ForumRuleProvider$ForumArticleDetailRule;->replyXPath:Ljava/lang/String;

    aput-object v2, v0, v4

    iget-object v2, p1, Lcom/android/browser/model/ForumRuleProvider$ForumArticleDetailRule;->postXPath:Ljava/lang/String;

    aput-object v2, v0, v5

    const/4 v2, 0x3

    iget-object v3, p1, Lcom/android/browser/model/ForumRuleProvider$ForumArticleDetailRule;->contentXPath:Ljava/lang/String;

    aput-object v3, v0, v2

    const/4 v2, 0x4

    iget-object v3, p1, Lcom/android/browser/model/ForumRuleProvider$ForumArticleDetailRule;->authorIDXPath:Ljava/lang/String;

    aput-object v3, v0, v2

    const/4 v2, 0x5

    iget-object v3, p1, Lcom/android/browser/model/ForumRuleProvider$ForumArticleDetailRule;->authorIconXPath:Ljava/lang/String;

    aput-object v3, v0, v2

    const/4 v2, 0x6

    iget-object v3, p1, Lcom/android/browser/model/ForumRuleProvider$ForumArticleDetailRule;->authorTitleXPath:Ljava/lang/String;

    aput-object v3, v0, v2

    const/4 v2, 0x7

    iget-object v3, p1, Lcom/android/browser/model/ForumRuleProvider$ForumArticleDetailRule;->floorNumXPath:Ljava/lang/String;

    aput-object v3, v0, v2

    const/16 v2, 0x8

    iget-object v3, p1, Lcom/android/browser/model/ForumRuleProvider$ForumArticleDetailRule;->postTimeXPath:Ljava/lang/String;

    aput-object v3, v0, v2

    const/16 v2, 0x9

    iget-object v3, p1, Lcom/android/browser/model/ForumRuleProvider$ForumArticleDetailRule;->fastReplyXPath:Ljava/lang/String;

    aput-object v3, v0, v2

    const/16 v2, 0xa

    iget-object v3, p1, Lcom/android/browser/model/ForumRuleProvider$ForumArticleDetailRule;->fastPostForm:Ljava/lang/String;

    aput-object v3, v0, v2

    const/16 v2, 0xb

    iget-object v3, p1, Lcom/android/browser/model/ForumRuleProvider$ForumArticleDetailRule;->fastPostText:Ljava/lang/String;

    aput-object v3, v0, v2

    .line 144
    .local v0, paras:[Ljava/lang/String;
    iget-object v2, p0, Lcom/android/browser/controller/ForumDataDetector;->mWebView:Lcom/android/browser/ui/MiRenWebViewBase;

    const-string v3, "detectArticleDetail"

    invoke-static {v0}, Lcom/android/browser/util/JavaScriptUtils;->buildParameterString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v1, v3, v4}, Lcom/android/browser/util/JavaScriptUtils;->callJSFunctionFromMultipleAssets(Lcom/android/browser/ui/MiRenWebViewBase;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    return-void
.end method

.method public detectArticleListData(Lcom/android/browser/model/ForumRuleProvider$ForumArticleListRule;)V
    .locals 6
    .parameter "rule"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 129
    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "js/forum_common.js"

    aput-object v2, v1, v3

    const-string v2, "js/xpath.js"

    aput-object v2, v1, v4

    .line 130
    .local v1, scriptFiles:[Ljava/lang/String;
    const/16 v2, 0xf

    new-array v0, v2, [Ljava/lang/String;

    iget-object v2, p1, Lcom/android/browser/model/ForumRuleProvider$ForumArticleListRule;->pagingXPath:Ljava/lang/String;

    aput-object v2, v0, v3

    iget-object v2, p1, Lcom/android/browser/model/ForumRuleProvider$ForumArticleListRule;->newThreadXPath:Ljava/lang/String;

    aput-object v2, v0, v4

    iget-object v2, p1, Lcom/android/browser/model/ForumRuleProvider$ForumArticleListRule;->stickThreadXPath:Ljava/lang/String;

    aput-object v2, v0, v5

    const/4 v2, 0x3

    iget-object v3, p1, Lcom/android/browser/model/ForumRuleProvider$ForumArticleListRule;->normalThreadXPath:Ljava/lang/String;

    aput-object v3, v0, v2

    const/4 v2, 0x4

    iget-object v3, p1, Lcom/android/browser/model/ForumRuleProvider$ForumArticleListRule;->titleXPath:Ljava/lang/String;

    aput-object v3, v0, v2

    const/4 v2, 0x5

    iget-object v3, p1, Lcom/android/browser/model/ForumRuleProvider$ForumArticleListRule;->linkXPath:Ljava/lang/String;

    aput-object v3, v0, v2

    const/4 v2, 0x6

    iget-object v3, p1, Lcom/android/browser/model/ForumRuleProvider$ForumArticleListRule;->iconXPath:Ljava/lang/String;

    aput-object v3, v0, v2

    const/4 v2, 0x7

    iget-object v3, p1, Lcom/android/browser/model/ForumRuleProvider$ForumArticleListRule;->authorXPath:Ljava/lang/String;

    aput-object v3, v0, v2

    const/16 v2, 0x8

    iget-object v3, p1, Lcom/android/browser/model/ForumRuleProvider$ForumArticleListRule;->numsXPath:Ljava/lang/String;

    aput-object v3, v0, v2

    const/16 v2, 0x9

    iget-object v3, p1, Lcom/android/browser/model/ForumRuleProvider$ForumArticleListRule;->lastpostXPath:Ljava/lang/String;

    aput-object v3, v0, v2

    const/16 v2, 0xa

    iget-object v3, p1, Lcom/android/browser/model/ForumRuleProvider$ForumArticleListRule;->subForumContainerXPath:Ljava/lang/String;

    aput-object v3, v0, v2

    const/16 v2, 0xb

    iget-object v3, p1, Lcom/android/browser/model/ForumRuleProvider$ForumArticleListRule;->subForumXPath:Ljava/lang/String;

    aput-object v3, v0, v2

    const/16 v2, 0xc

    iget-object v3, p1, Lcom/android/browser/model/ForumRuleProvider$ForumArticleListRule;->subForumTitleXPath:Ljava/lang/String;

    aput-object v3, v0, v2

    const/16 v2, 0xd

    iget-object v3, p1, Lcom/android/browser/model/ForumRuleProvider$ForumArticleListRule;->subForumLinkXPath:Ljava/lang/String;

    aput-object v3, v0, v2

    const/16 v2, 0xe

    iget-object v3, p1, Lcom/android/browser/model/ForumRuleProvider$ForumArticleListRule;->subForumTodayNumXPath:Ljava/lang/String;

    aput-object v3, v0, v2

    .line 134
    .local v0, paras:[Ljava/lang/String;
    iget-object v2, p0, Lcom/android/browser/controller/ForumDataDetector;->mWebView:Lcom/android/browser/ui/MiRenWebViewBase;

    const-string v3, "detectArticleList"

    invoke-static {v0}, Lcom/android/browser/util/JavaScriptUtils;->buildParameterString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v1, v3, v4}, Lcom/android/browser/util/JavaScriptUtils;->callJSFunctionFromMultipleAssets(Lcom/android/browser/ui/MiRenWebViewBase;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    return-void
.end method

.method public detectCommonData(Lcom/android/browser/model/ForumRuleProvider$ForumCommonRule;)V
    .locals 6
    .parameter "rule"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 172
    iput-object p1, p0, Lcom/android/browser/controller/ForumDataDetector;->mForumCommonRule:Lcom/android/browser/model/ForumRuleProvider$ForumCommonRule;

    .line 173
    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "js/forum_common.js"

    aput-object v2, v1, v3

    const-string v2, "js/xpath.js"

    aput-object v2, v1, v4

    .line 174
    .local v1, scriptFiles:[Ljava/lang/String;
    const/4 v2, 0x4

    new-array v0, v2, [Ljava/lang/String;

    iget-object v2, p1, Lcom/android/browser/model/ForumRuleProvider$ForumCommonRule;->userMenuXPath:Ljava/lang/String;

    aput-object v2, v0, v3

    iget-object v2, p1, Lcom/android/browser/model/ForumRuleProvider$ForumCommonRule;->navBarXPath:Ljava/lang/String;

    aput-object v2, v0, v4

    iget-object v2, p1, Lcom/android/browser/model/ForumRuleProvider$ForumCommonRule;->fastLoginForm:Ljava/lang/String;

    aput-object v2, v0, v5

    const/4 v2, 0x3

    iget-object v3, p1, Lcom/android/browser/model/ForumRuleProvider$ForumCommonRule;->searchBtnXPath:Ljava/lang/String;

    aput-object v3, v0, v2

    .line 175
    .local v0, paras:[Ljava/lang/String;
    iget-object v2, p0, Lcom/android/browser/controller/ForumDataDetector;->mWebView:Lcom/android/browser/ui/MiRenWebViewBase;

    const-string v3, "detectCommonData"

    invoke-static {v0}, Lcom/android/browser/util/JavaScriptUtils;->buildParameterString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v1, v3, v4}, Lcom/android/browser/util/JavaScriptUtils;->callJSFunctionFromMultipleAssets(Lcom/android/browser/ui/MiRenWebViewBase;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    return-void
.end method

.method public detectForumListData(Lcom/android/browser/model/ForumRuleProvider$ForumListRule;Lcom/android/browser/model/ForumRuleProvider$ForumListRule;)V
    .locals 11
    .parameter "rule"
    .parameter "rule2"

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 108
    new-array v3, v8, [Ljava/lang/String;

    const-string v4, "js/forum_common.js"

    aput-object v4, v3, v7

    const-string v4, "js/xpath.js"

    aput-object v4, v3, v6

    .line 109
    .local v3, scriptFiles:[Ljava/lang/String;
    const/4 v4, 0x7

    new-array v1, v4, [Ljava/lang/String;

    iget-object v4, p1, Lcom/android/browser/model/ForumRuleProvider$ForumListRule;->categoryXPath:Ljava/lang/String;

    aput-object v4, v1, v7

    iget-object v4, p1, Lcom/android/browser/model/ForumRuleProvider$ForumListRule;->categoryTitleXPath:Ljava/lang/String;

    aput-object v4, v1, v6

    iget-object v4, p1, Lcom/android/browser/model/ForumRuleProvider$ForumListRule;->forumXPath:Ljava/lang/String;

    aput-object v4, v1, v8

    iget-object v4, p1, Lcom/android/browser/model/ForumRuleProvider$ForumListRule;->forumTitleXPath:Ljava/lang/String;

    aput-object v4, v1, v9

    iget-object v4, p1, Lcom/android/browser/model/ForumRuleProvider$ForumListRule;->forumLinkXPath:Ljava/lang/String;

    aput-object v4, v1, v10

    const/4 v4, 0x5

    iget-object v5, p1, Lcom/android/browser/model/ForumRuleProvider$ForumListRule;->forumIconXPath:Ljava/lang/String;

    aput-object v5, v1, v4

    const/4 v4, 0x6

    iget-object v5, p1, Lcom/android/browser/model/ForumRuleProvider$ForumListRule;->forumTodayXPath:Ljava/lang/String;

    aput-object v5, v1, v4

    .line 112
    .local v1, parasForRule1:[Ljava/lang/String;
    new-array v0, v8, [Ljava/lang/String;

    .line 113
    .local v0, paras:[Ljava/lang/String;
    invoke-static {v1}, Lcom/android/browser/util/JavaScriptUtils;->buildParameterString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v7

    .line 115
    if-eqz p2, :cond_0

    .line 116
    const/4 v4, 0x5

    new-array v2, v4, [Ljava/lang/String;

    iget-object v4, p2, Lcom/android/browser/model/ForumRuleProvider$ForumListRule;->forumXPath:Ljava/lang/String;

    aput-object v4, v2, v7

    iget-object v4, p2, Lcom/android/browser/model/ForumRuleProvider$ForumListRule;->forumTitleXPath:Ljava/lang/String;

    aput-object v4, v2, v6

    iget-object v4, p2, Lcom/android/browser/model/ForumRuleProvider$ForumListRule;->forumLinkXPath:Ljava/lang/String;

    aput-object v4, v2, v8

    iget-object v4, p2, Lcom/android/browser/model/ForumRuleProvider$ForumListRule;->forumIconXPath:Ljava/lang/String;

    aput-object v4, v2, v9

    iget-object v4, p2, Lcom/android/browser/model/ForumRuleProvider$ForumListRule;->forumTodayXPath:Ljava/lang/String;

    aput-object v4, v2, v10

    .line 118
    .local v2, parasForRule2:[Ljava/lang/String;
    invoke-static {v2}, Lcom/android/browser/util/JavaScriptUtils;->buildParameterString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v6

    .line 124
    .end local v2           #parasForRule2:[Ljava/lang/String;
    :goto_0
    iget-object v4, p0, Lcom/android/browser/controller/ForumDataDetector;->mWebView:Lcom/android/browser/ui/MiRenWebViewBase;

    const-string v5, "detectForumList"

    invoke-static {v0}, Lcom/android/browser/util/JavaScriptUtils;->buildStandardParameterString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v3, v5, v6}, Lcom/android/browser/util/JavaScriptUtils;->callJSFunctionFromMultipleAssets(Lcom/android/browser/ui/MiRenWebViewBase;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    return-void

    .line 121
    :cond_0
    const-string v4, ""

    aput-object v4, v0, v6

    goto :goto_0
.end method

.method public abstract detectPageType()V
.end method

.method public detectPostingData(Lcom/android/browser/model/ForumRuleProvider$ForumPostingRule;)V
    .locals 6
    .parameter "rule"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 220
    iput-object p1, p0, Lcom/android/browser/controller/ForumDataDetector;->mForumPostingRule:Lcom/android/browser/model/ForumRuleProvider$ForumPostingRule;

    .line 221
    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "js/forum_common.js"

    aput-object v2, v1, v3

    const-string v2, "js/xpath.js"

    aput-object v2, v1, v4

    .line 223
    .local v1, scriptFiles:[Ljava/lang/String;
    const/4 v2, 0x5

    new-array v0, v2, [Ljava/lang/String;

    iget-object v2, p0, Lcom/android/browser/controller/ForumDataDetector;->mForumPostingRule:Lcom/android/browser/model/ForumRuleProvider$ForumPostingRule;

    iget-object v2, v2, Lcom/android/browser/model/ForumRuleProvider$ForumPostingRule;->resultMsgXPath:Ljava/lang/String;

    aput-object v2, v0, v3

    iget-object v2, p0, Lcom/android/browser/controller/ForumDataDetector;->mForumPostingRule:Lcom/android/browser/model/ForumRuleProvider$ForumPostingRule;

    iget-object v2, v2, Lcom/android/browser/model/ForumRuleProvider$ForumPostingRule;->subjectXPath:Ljava/lang/String;

    aput-object v2, v0, v4

    iget-object v2, p0, Lcom/android/browser/controller/ForumDataDetector;->mForumPostingRule:Lcom/android/browser/model/ForumRuleProvider$ForumPostingRule;

    iget-object v2, v2, Lcom/android/browser/model/ForumRuleProvider$ForumPostingRule;->contentXPath:Ljava/lang/String;

    aput-object v2, v0, v5

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/android/browser/controller/ForumDataDetector;->mForumPostingRule:Lcom/android/browser/model/ForumRuleProvider$ForumPostingRule;

    iget-object v3, v3, Lcom/android/browser/model/ForumRuleProvider$ForumPostingRule;->errorAlertXPath:Ljava/lang/String;

    aput-object v3, v0, v2

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/android/browser/controller/ForumDataDetector;->mForumPostingRule:Lcom/android/browser/model/ForumRuleProvider$ForumPostingRule;

    iget-object v3, v3, Lcom/android/browser/model/ForumRuleProvider$ForumPostingRule;->loginFormXPath:Ljava/lang/String;

    aput-object v3, v0, v2

    .line 225
    .local v0, paras:[Ljava/lang/String;
    iget-object v2, p0, Lcom/android/browser/controller/ForumDataDetector;->mWebView:Lcom/android/browser/ui/MiRenWebViewBase;

    const-string v3, "detectPostingData"

    invoke-static {v0}, Lcom/android/browser/util/JavaScriptUtils;->buildParameterString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v1, v3, v4}, Lcom/android/browser/util/JavaScriptUtils;->callJSFunctionFromMultipleAssets(Lcom/android/browser/ui/MiRenWebViewBase;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    return-void
.end method

.method public detectSearchData(Lcom/android/browser/model/ForumRuleProvider$ForumSearchRule;)V
    .locals 6
    .parameter "rule"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 230
    iput-object p1, p0, Lcom/android/browser/controller/ForumDataDetector;->mForumSearchRule:Lcom/android/browser/model/ForumRuleProvider$ForumSearchRule;

    .line 231
    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "js/forum_common.js"

    aput-object v2, v1, v3

    const-string v2, "js/xpath.js"

    aput-object v2, v1, v4

    .line 233
    .local v1, scriptFiles:[Ljava/lang/String;
    const/16 v2, 0xd

    new-array v0, v2, [Ljava/lang/String;

    iget-object v2, p1, Lcom/android/browser/model/ForumRuleProvider$ForumSearchRule;->searchForm:Ljava/lang/String;

    aput-object v2, v0, v3

    iget-object v2, p1, Lcom/android/browser/model/ForumRuleProvider$ForumSearchRule;->loginFormXPath:Ljava/lang/String;

    aput-object v2, v0, v4

    iget-object v2, p1, Lcom/android/browser/model/ForumRuleProvider$ForumSearchRule;->resultContainer:Ljava/lang/String;

    aput-object v2, v0, v5

    const/4 v2, 0x3

    iget-object v3, p1, Lcom/android/browser/model/ForumRuleProvider$ForumSearchRule;->resultArticle:Ljava/lang/String;

    aput-object v3, v0, v2

    const/4 v2, 0x4

    iget-object v3, p1, Lcom/android/browser/model/ForumRuleProvider$ForumSearchRule;->title:Ljava/lang/String;

    aput-object v3, v0, v2

    const/4 v2, 0x5

    iget-object v3, p1, Lcom/android/browser/model/ForumRuleProvider$ForumSearchRule;->link:Ljava/lang/String;

    aput-object v3, v0, v2

    const/4 v2, 0x6

    iget-object v3, p1, Lcom/android/browser/model/ForumRuleProvider$ForumSearchRule;->author:Ljava/lang/String;

    aput-object v3, v0, v2

    const/4 v2, 0x7

    iget-object v3, p1, Lcom/android/browser/model/ForumRuleProvider$ForumSearchRule;->nums:Ljava/lang/String;

    aput-object v3, v0, v2

    const/16 v2, 0x8

    iget-object v3, p1, Lcom/android/browser/model/ForumRuleProvider$ForumSearchRule;->lastPost:Ljava/lang/String;

    aput-object v3, v0, v2

    const/16 v2, 0x9

    iget-object v3, p1, Lcom/android/browser/model/ForumRuleProvider$ForumSearchRule;->errorAlertXPath:Ljava/lang/String;

    aput-object v3, v0, v2

    const/16 v2, 0xa

    iget-object v3, p1, Lcom/android/browser/model/ForumRuleProvider$ForumSearchRule;->resultString:Ljava/lang/String;

    aput-object v3, v0, v2

    const/16 v2, 0xb

    iget-object v3, p1, Lcom/android/browser/model/ForumRuleProvider$ForumSearchRule;->resultPaging:Ljava/lang/String;

    aput-object v3, v0, v2

    const/16 v2, 0xc

    iget-object v3, p1, Lcom/android/browser/model/ForumRuleProvider$ForumSearchRule;->showMessage:Ljava/lang/String;

    aput-object v3, v0, v2

    .line 236
    .local v0, paras:[Ljava/lang/String;
    iget-object v2, p0, Lcom/android/browser/controller/ForumDataDetector;->mWebView:Lcom/android/browser/ui/MiRenWebViewBase;

    const-string v3, "detectSearchData"

    invoke-static {v0}, Lcom/android/browser/util/JavaScriptUtils;->buildParameterString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v1, v3, v4}, Lcom/android/browser/util/JavaScriptUtils;->callJSFunctionFromMultipleAssets(Lcom/android/browser/ui/MiRenWebViewBase;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    return-void
.end method

.method public detectShowMsg(Lcom/android/browser/model/ForumRuleProvider$ForumLoggingRule;)V
    .locals 5
    .parameter "rule"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 180
    iput-object p1, p0, Lcom/android/browser/controller/ForumDataDetector;->mForumLoggingRule:Lcom/android/browser/model/ForumRuleProvider$ForumLoggingRule;

    .line 181
    const/4 v2, 0x2

    new-array v1, v2, [Ljava/lang/String;

    const-string v2, "js/forum_common.js"

    aput-object v2, v1, v3

    const-string v2, "js/xpath.js"

    aput-object v2, v1, v4

    .line 182
    .local v1, scriptFiles:[Ljava/lang/String;
    new-array v0, v4, [Ljava/lang/String;

    iget-object v2, p0, Lcom/android/browser/controller/ForumDataDetector;->mForumLoggingRule:Lcom/android/browser/model/ForumRuleProvider$ForumLoggingRule;

    iget-object v2, v2, Lcom/android/browser/model/ForumRuleProvider$ForumLoggingRule;->showMsgXPath:Ljava/lang/String;

    aput-object v2, v0, v3

    .line 183
    .local v0, paras:[Ljava/lang/String;
    iget-object v2, p0, Lcom/android/browser/controller/ForumDataDetector;->mWebView:Lcom/android/browser/ui/MiRenWebViewBase;

    const-string v3, "detectLoginShowMessage"

    invoke-static {v0}, Lcom/android/browser/util/JavaScriptUtils;->buildParameterString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v1, v3, v4}, Lcom/android/browser/util/JavaScriptUtils;->callJSFunctionFromMultipleAssets(Lcom/android/browser/ui/MiRenWebViewBase;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    return-void
.end method

.method public doFastPosting(Ljava/lang/String;)V
    .locals 3
    .parameter "content"

    .prologue
    .line 149
    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "js/forum_common.js"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "js/xpath.js"

    aput-object v2, v0, v1

    .line 151
    .local v0, scriptFiles:[Ljava/lang/String;
    const-string v1, "doFastPosting"

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/browser/controller/ForumDataDetector;->doFastPostingImp(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    return-void
.end method

.method protected final doFastPostingImp(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter "content"
    .parameter "scriptFiles"
    .parameter "method"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 155
    iget-object v2, p0, Lcom/android/browser/controller/ForumDataDetector;->mForumArticleDetailRule:Lcom/android/browser/model/ForumRuleProvider$ForumArticleDetailRule;

    if-nez v2, :cond_0

    .line 168
    :goto_0
    return-void

    .line 157
    :cond_0
    iget-object v2, p0, Lcom/android/browser/controller/ForumDataDetector;->mWebView:Lcom/android/browser/ui/MiRenWebViewBase;

    invoke-virtual {v2}, Lcom/android/browser/ui/MiRenWebViewBase;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0900e3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 161
    .local v1, postInfo:Ljava/lang/String;
    const-string v2, "\n"

    const-string v3, "\\\\n"

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\'"

    const-string v4, "\\\\\'"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 162
    new-array v0, v7, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v5

    new-array v2, v7, [Ljava/lang/String;

    iget-object v3, p0, Lcom/android/browser/controller/ForumDataDetector;->mForumArticleDetailRule:Lcom/android/browser/model/ForumRuleProvider$ForumArticleDetailRule;

    iget-object v3, v3, Lcom/android/browser/model/ForumRuleProvider$ForumArticleDetailRule;->fastPostForm:Ljava/lang/String;

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/android/browser/controller/ForumDataDetector;->mForumArticleDetailRule:Lcom/android/browser/model/ForumRuleProvider$ForumArticleDetailRule;

    iget-object v3, v3, Lcom/android/browser/model/ForumRuleProvider$ForumArticleDetailRule;->fastPostText:Ljava/lang/String;

    aput-object v3, v2, v6

    invoke-static {v2}, Lcom/android/browser/util/JavaScriptUtils;->buildParameterString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v6

    .line 167
    .local v0, paras:[Ljava/lang/String;
    iget-object v2, p0, Lcom/android/browser/controller/ForumDataDetector;->mWebView:Lcom/android/browser/ui/MiRenWebViewBase;

    invoke-static {v2, p2, p3, v0}, Lcom/android/browser/util/JavaScriptUtils;->callJSFunctionFromMultipleAssets(Lcom/android/browser/ui/MiRenWebViewBase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method public doLogging(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "userName"
    .parameter "password"

    .prologue
    .line 202
    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "js/forum_common.js"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "js/xpath.js"

    aput-object v2, v0, v1

    .line 205
    .local v0, scriptFiles:[Ljava/lang/String;
    const-string v1, "doLogging"

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/browser/controller/ForumDataDetector;->doLoggingImp(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    return-void
.end method

.method protected doLoggingImp(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "userName"
    .parameter "password"
    .parameter "scriptFiles"
    .parameter "function"

    .prologue
    const/4 v2, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 209
    iget-object v1, p0, Lcom/android/browser/controller/ForumDataDetector;->mForumLoggingRule:Lcom/android/browser/model/ForumRuleProvider$ForumLoggingRule;

    if-nez v1, :cond_0

    .line 217
    :goto_0
    return-void

    .line 211
    :cond_0
    new-array v0, v2, [Ljava/lang/String;

    aput-object p1, v0, v3

    aput-object p2, v0, v4

    new-array v1, v2, [Ljava/lang/String;

    iget-object v2, p0, Lcom/android/browser/controller/ForumDataDetector;->mForumLoggingRule:Lcom/android/browser/model/ForumRuleProvider$ForumLoggingRule;

    iget-object v2, v2, Lcom/android/browser/model/ForumRuleProvider$ForumLoggingRule;->formXPath:Ljava/lang/String;

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/android/browser/controller/ForumDataDetector;->mForumLoggingRule:Lcom/android/browser/model/ForumRuleProvider$ForumLoggingRule;

    iget-object v2, v2, Lcom/android/browser/model/ForumRuleProvider$ForumLoggingRule;->accountXPath:Ljava/lang/String;

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/android/browser/controller/ForumDataDetector;->mForumLoggingRule:Lcom/android/browser/model/ForumRuleProvider$ForumLoggingRule;

    iget-object v2, v2, Lcom/android/browser/model/ForumRuleProvider$ForumLoggingRule;->passwordXPath:Ljava/lang/String;

    aput-object v2, v1, v5

    invoke-static {v1}, Lcom/android/browser/util/JavaScriptUtils;->buildParameterString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    .line 216
    .local v0, paras:[Ljava/lang/String;
    iget-object v1, p0, Lcom/android/browser/controller/ForumDataDetector;->mWebView:Lcom/android/browser/ui/MiRenWebViewBase;

    invoke-static {v1, p3, p4, v0}, Lcom/android/browser/util/JavaScriptUtils;->callJSFunctionFromMultipleAssets(Lcom/android/browser/ui/MiRenWebViewBase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method public doLoginBeforePosting(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "account"
    .parameter "password"

    .prologue
    const/4 v3, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 259
    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "js/forum_common.js"

    aput-object v2, v1, v4

    const-string v2, "js/xpath.js"

    aput-object v2, v1, v5

    .line 262
    .local v1, scriptFiles:[Ljava/lang/String;
    new-array v0, v3, [Ljava/lang/String;

    aput-object p1, v0, v4

    aput-object p2, v0, v5

    new-array v2, v3, [Ljava/lang/String;

    iget-object v3, p0, Lcom/android/browser/controller/ForumDataDetector;->mForumPostingRule:Lcom/android/browser/model/ForumRuleProvider$ForumPostingRule;

    iget-object v3, v3, Lcom/android/browser/model/ForumRuleProvider$ForumPostingRule;->loginFormXPath:Ljava/lang/String;

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/android/browser/controller/ForumDataDetector;->mForumPostingRule:Lcom/android/browser/model/ForumRuleProvider$ForumPostingRule;

    iget-object v3, v3, Lcom/android/browser/model/ForumRuleProvider$ForumPostingRule;->loginAccountXPath:Ljava/lang/String;

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/android/browser/controller/ForumDataDetector;->mForumPostingRule:Lcom/android/browser/model/ForumRuleProvider$ForumPostingRule;

    iget-object v3, v3, Lcom/android/browser/model/ForumRuleProvider$ForumPostingRule;->loginPasswordXPath:Ljava/lang/String;

    aput-object v3, v2, v6

    invoke-static {v2}, Lcom/android/browser/util/JavaScriptUtils;->buildParameterString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v6

    .line 267
    .local v0, paras:[Ljava/lang/String;
    iget-object v2, p0, Lcom/android/browser/controller/ForumDataDetector;->mWebView:Lcom/android/browser/ui/MiRenWebViewBase;

    const-string v3, "doLogging"

    invoke-static {v2, v1, v3, v0}, Lcom/android/browser/util/JavaScriptUtils;->callJSFunctionFromMultipleAssets(Lcom/android/browser/ui/MiRenWebViewBase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 268
    return-void
.end method

.method public doLoginBeforeSearch(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "account"
    .parameter "password"

    .prologue
    const/4 v3, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 271
    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "js/forum_common.js"

    aput-object v2, v1, v4

    const-string v2, "js/xpath.js"

    aput-object v2, v1, v5

    .line 274
    .local v1, scriptFiles:[Ljava/lang/String;
    new-array v0, v3, [Ljava/lang/String;

    aput-object p1, v0, v4

    aput-object p2, v0, v5

    new-array v2, v3, [Ljava/lang/String;

    iget-object v3, p0, Lcom/android/browser/controller/ForumDataDetector;->mForumSearchRule:Lcom/android/browser/model/ForumRuleProvider$ForumSearchRule;

    iget-object v3, v3, Lcom/android/browser/model/ForumRuleProvider$ForumSearchRule;->loginFormXPath:Ljava/lang/String;

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/android/browser/controller/ForumDataDetector;->mForumSearchRule:Lcom/android/browser/model/ForumRuleProvider$ForumSearchRule;

    iget-object v3, v3, Lcom/android/browser/model/ForumRuleProvider$ForumSearchRule;->loginAccountXPath:Ljava/lang/String;

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/android/browser/controller/ForumDataDetector;->mForumSearchRule:Lcom/android/browser/model/ForumRuleProvider$ForumSearchRule;

    iget-object v3, v3, Lcom/android/browser/model/ForumRuleProvider$ForumSearchRule;->loginPasswordXPath:Ljava/lang/String;

    aput-object v3, v2, v6

    invoke-static {v2}, Lcom/android/browser/util/JavaScriptUtils;->buildParameterString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v6

    .line 279
    .local v0, paras:[Ljava/lang/String;
    iget-object v2, p0, Lcom/android/browser/controller/ForumDataDetector;->mWebView:Lcom/android/browser/ui/MiRenWebViewBase;

    const-string v3, "doLogging"

    invoke-static {v2, v1, v3, v0}, Lcom/android/browser/util/JavaScriptUtils;->callJSFunctionFromMultipleAssets(Lcom/android/browser/ui/MiRenWebViewBase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 280
    return-void
.end method

.method public doPosting(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "subject"
    .parameter "content"

    .prologue
    .line 241
    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "js/forum_common.js"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "js/xpath.js"

    aput-object v2, v0, v1

    .line 242
    .local v0, scriptFiles:[Ljava/lang/String;
    const-string v1, "doPosting"

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/browser/controller/ForumDataDetector;->doPostingImp(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    return-void
.end method

.method protected final doPostingImp(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter "subject"
    .parameter "content"
    .parameter "scriptFiles"
    .parameter "function"

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 246
    iget-object v2, p0, Lcom/android/browser/controller/ForumDataDetector;->mWebView:Lcom/android/browser/ui/MiRenWebViewBase;

    invoke-virtual {v2}, Lcom/android/browser/ui/MiRenWebViewBase;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0900e3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 247
    .local v1, postInfo:Ljava/lang/String;
    const-string v2, "\n"

    const-string v3, "\\\\n"

    invoke-virtual {p2, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 250
    new-array v0, v7, [Ljava/lang/String;

    aput-object p1, v0, v4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v5

    new-array v2, v7, [Ljava/lang/String;

    iget-object v3, p0, Lcom/android/browser/controller/ForumDataDetector;->mForumPostingRule:Lcom/android/browser/model/ForumRuleProvider$ForumPostingRule;

    iget-object v3, v3, Lcom/android/browser/model/ForumRuleProvider$ForumPostingRule;->formXPath:Ljava/lang/String;

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/android/browser/controller/ForumDataDetector;->mForumPostingRule:Lcom/android/browser/model/ForumRuleProvider$ForumPostingRule;

    iget-object v3, v3, Lcom/android/browser/model/ForumRuleProvider$ForumPostingRule;->subjectXPath:Ljava/lang/String;

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/android/browser/controller/ForumDataDetector;->mForumPostingRule:Lcom/android/browser/model/ForumRuleProvider$ForumPostingRule;

    iget-object v3, v3, Lcom/android/browser/model/ForumRuleProvider$ForumPostingRule;->contentXPath:Ljava/lang/String;

    aput-object v3, v2, v6

    invoke-static {v2}, Lcom/android/browser/util/JavaScriptUtils;->buildParameterString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v6

    .line 255
    .local v0, paras:[Ljava/lang/String;
    iget-object v2, p0, Lcom/android/browser/controller/ForumDataDetector;->mWebView:Lcom/android/browser/ui/MiRenWebViewBase;

    invoke-static {v2, p3, p4, v0}, Lcom/android/browser/util/JavaScriptUtils;->callJSFunctionFromMultipleAssets(Lcom/android/browser/ui/MiRenWebViewBase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 256
    return-void
.end method

.method public doQuickLogin(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "account"
    .parameter "password"

    .prologue
    const/4 v3, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 283
    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "js/forum_common.js"

    aput-object v2, v1, v4

    const-string v2, "js/xpath.js"

    aput-object v2, v1, v5

    .line 284
    .local v1, scriptFiles:[Ljava/lang/String;
    new-array v0, v3, [Ljava/lang/String;

    aput-object p1, v0, v4

    aput-object p2, v0, v5

    new-array v2, v3, [Ljava/lang/String;

    iget-object v3, p0, Lcom/android/browser/controller/ForumDataDetector;->mForumCommonRule:Lcom/android/browser/model/ForumRuleProvider$ForumCommonRule;

    iget-object v3, v3, Lcom/android/browser/model/ForumRuleProvider$ForumCommonRule;->fastLoginForm:Ljava/lang/String;

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/android/browser/controller/ForumDataDetector;->mForumCommonRule:Lcom/android/browser/model/ForumRuleProvider$ForumCommonRule;

    iget-object v3, v3, Lcom/android/browser/model/ForumRuleProvider$ForumCommonRule;->fastLoginAccount:Ljava/lang/String;

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/android/browser/controller/ForumDataDetector;->mForumCommonRule:Lcom/android/browser/model/ForumRuleProvider$ForumCommonRule;

    iget-object v3, v3, Lcom/android/browser/model/ForumRuleProvider$ForumCommonRule;->fastLoginPassword:Ljava/lang/String;

    aput-object v3, v2, v6

    invoke-static {v2}, Lcom/android/browser/util/JavaScriptUtils;->buildParameterString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v6

    .line 289
    .local v0, paras:[Ljava/lang/String;
    iget-object v2, p0, Lcom/android/browser/controller/ForumDataDetector;->mWebView:Lcom/android/browser/ui/MiRenWebViewBase;

    const-string v3, "doLogging"

    invoke-static {v2, v1, v3, v0}, Lcom/android/browser/util/JavaScriptUtils;->callJSFunctionFromMultipleAssets(Lcom/android/browser/ui/MiRenWebViewBase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 290
    return-void
.end method

.method public doSearch(Ljava/lang/String;)V
    .locals 6
    .parameter "keyword"

    .prologue
    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 293
    iget-object v2, p0, Lcom/android/browser/controller/ForumDataDetector;->mForumSearchRule:Lcom/android/browser/model/ForumRuleProvider$ForumSearchRule;

    if-nez v2, :cond_0

    .line 301
    :goto_0
    return-void

    .line 295
    :cond_0
    new-array v1, v3, [Ljava/lang/String;

    const-string v2, "js/forum_common.js"

    aput-object v2, v1, v4

    const-string v2, "js/xpath.js"

    aput-object v2, v1, v5

    .line 296
    .local v1, scriptFiles:[Ljava/lang/String;
    new-array v0, v3, [Ljava/lang/String;

    aput-object p1, v0, v4

    new-array v2, v3, [Ljava/lang/String;

    iget-object v3, p0, Lcom/android/browser/controller/ForumDataDetector;->mForumSearchRule:Lcom/android/browser/model/ForumRuleProvider$ForumSearchRule;

    iget-object v3, v3, Lcom/android/browser/model/ForumRuleProvider$ForumSearchRule;->searchForm:Ljava/lang/String;

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/android/browser/controller/ForumDataDetector;->mForumSearchRule:Lcom/android/browser/model/ForumRuleProvider$ForumSearchRule;

    iget-object v3, v3, Lcom/android/browser/model/ForumRuleProvider$ForumSearchRule;->searchTextXPath:Ljava/lang/String;

    aput-object v3, v2, v5

    invoke-static {v2}, Lcom/android/browser/util/JavaScriptUtils;->buildParameterString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v5

    .line 300
    .local v0, paras:[Ljava/lang/String;
    iget-object v2, p0, Lcom/android/browser/controller/ForumDataDetector;->mWebView:Lcom/android/browser/ui/MiRenWebViewBase;

    const-string v3, "doSearch"

    invoke-static {v2, v1, v3, v0}, Lcom/android/browser/util/JavaScriptUtils;->callJSFunctionFromMultipleAssets(Lcom/android/browser/ui/MiRenWebViewBase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getPageType()Lcom/android/browser/controller/ForumController$ForumPageType;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/browser/controller/ForumDataDetector;->mForumPageType:Lcom/android/browser/controller/ForumController$ForumPageType;

    return-object v0
.end method

.method protected getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/browser/controller/ForumDataDetector;->mController:Lcom/android/browser/controller/ForumController;

    invoke-virtual {v0}, Lcom/android/browser/controller/ForumController;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getUrlFileName()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, -0x1

    .line 76
    :try_start_0
    new-instance v4, Ljava/net/URL;

    invoke-virtual {p0}, Lcom/android/browser/controller/ForumDataDetector;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    .local v4, url:Ljava/net/URL;
    invoke-virtual {v4}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v1

    .line 82
    .local v1, fileName:Ljava/lang/String;
    const/16 v5, 0x2f

    invoke-virtual {v1, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    .line 83
    .local v3, lastIndex:I
    if-eq v3, v6, :cond_0

    .line 84
    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 87
    :cond_0
    const-string v5, "?"

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 88
    .local v2, index:I
    if-eq v2, v6, :cond_1

    .line 89
    const/4 v5, 0x0

    invoke-virtual {v1, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_1
    move-object v5, v1

    .line 91
    .end local v1           #fileName:Ljava/lang/String;
    .end local v2           #index:I
    .end local v3           #lastIndex:I
    .end local v4           #url:Ljava/net/URL;
    :goto_0
    return-object v5

    .line 77
    :catch_0
    move-exception v5

    move-object v0, v5

    .line 78
    .local v0, e:Ljava/net/MalformedURLException;
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public isFastLoginSupported()Z
    .locals 1

    .prologue
    .line 314
    iget-boolean v0, p0, Lcom/android/browser/controller/ForumDataDetector;->mIsFastLoginSupported:Z

    return v0
.end method

.method public onFastLoginDetected()V
    .locals 1

    .prologue
    .line 309
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/browser/controller/ForumDataDetector;->mIsFastLoginSupported:Z

    .line 310
    iget-object v0, p0, Lcom/android/browser/controller/ForumDataDetector;->mController:Lcom/android/browser/controller/ForumController;

    invoke-virtual {v0}, Lcom/android/browser/controller/ForumController;->showFastLogin()V

    .line 311
    return-void
.end method

.method protected final onPageTypeDetected(Lcom/android/browser/controller/ForumController$ForumPageType;)V
    .locals 1
    .parameter "type"

    .prologue
    .line 99
    iput-object p1, p0, Lcom/android/browser/controller/ForumDataDetector;->mForumPageType:Lcom/android/browser/controller/ForumController$ForumPageType;

    .line 100
    iget-object v0, p0, Lcom/android/browser/controller/ForumDataDetector;->mController:Lcom/android/browser/controller/ForumController;

    invoke-virtual {v0, p1}, Lcom/android/browser/controller/ForumController;->onPageTypeDetected(Lcom/android/browser/controller/ForumController$ForumPageType;)V

    .line 101
    return-void
.end method

.method public onParamDetected(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "name"
    .parameter "value"

    .prologue
    .line 306
    return-void
.end method

.method public setArticleDetailCommonData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "paging"
    .parameter "replyBtn"

    .prologue
    .line 194
    iget-object v0, p0, Lcom/android/browser/controller/ForumDataDetector;->mController:Lcom/android/browser/controller/ForumController;

    invoke-virtual {v0, p1, p2}, Lcom/android/browser/controller/ForumController;->setArticleDetailCommonData(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    return-void
.end method

.method public setCommonData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "userMenu"
    .parameter "navBar"
    .parameter "searchBtn"

    .prologue
    .line 189
    iget-object v0, p0, Lcom/android/browser/controller/ForumDataDetector;->mController:Lcom/android/browser/controller/ForumController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/browser/controller/ForumController;->setCommonData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    return-void
.end method
