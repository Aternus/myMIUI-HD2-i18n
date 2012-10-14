.class Lcom/android/browser/model/ForumRuleProvider$1;
.super Landroid/os/AsyncTask;
.source "ForumRuleProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/model/ForumRuleProvider;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/model/ForumRuleProvider;


# direct methods
.method constructor <init>(Lcom/android/browser/model/ForumRuleProvider;)V
    .locals 0
    .parameter

    .prologue
    .line 39
    iput-object p1, p0, Lcom/android/browser/model/ForumRuleProvider$1;->this$0:Lcom/android/browser/model/ForumRuleProvider;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/browser/model/ForumRuleProvider$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 29
    .parameter "params"

    .prologue
    .line 43
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/model/ForumRuleProvider$1;->this$0:Lcom/android/browser/model/ForumRuleProvider;

    move-object/from16 v26, v0

    #getter for: Lcom/android/browser/model/ForumRuleProvider;->mRules:Ljava/util/ArrayList;
    invoke-static/range {v26 .. v26}, Lcom/android/browser/model/ForumRuleProvider;->access$000(Lcom/android/browser/model/ForumRuleProvider;)Ljava/util/ArrayList;

    move-result-object v26

    monitor-enter v26

    .line 44
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/model/ForumRuleProvider$1;->this$0:Lcom/android/browser/model/ForumRuleProvider;

    move-object/from16 v27, v0

    #getter for: Lcom/android/browser/model/ForumRuleProvider;->mContext:Landroid/content/Context;
    invoke-static/range {v27 .. v27}, Lcom/android/browser/model/ForumRuleProvider;->access$100(Lcom/android/browser/model/ForumRuleProvider;)Landroid/content/Context;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 46
    .local v2, am:Landroid/content/res/AssetManager;
    :try_start_1
    const-string v27, "forum_patterns.json"

    move-object v0, v2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v25

    .line 47
    .local v25, stream:Ljava/io/InputStream;
    invoke-static/range {v25 .. v25}, Lcom/android/browser/common/Strings;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v15

    .line 48
    .local v15, jsonText:Ljava/lang/String;
    new-instance v18, Lorg/json/JSONObject;

    move-object/from16 v0, v18

    move-object v1, v15

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 49
    .local v18, obj:Lorg/json/JSONObject;
    const-string v27, "rules"

    move-object/from16 v0, v18

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v22

    .line 51
    .local v22, rulesInJSon:Lorg/json/JSONArray;
    const/4 v14, 0x0

    .local v14, i:I
    :goto_0
    invoke-virtual/range {v22 .. v22}, Lorg/json/JSONArray;->length()I

    move-result v27

    move v0, v14

    move/from16 v1, v27

    if-ge v0, v1, :cond_1

    .line 52
    move-object/from16 v0, v22

    move v1, v14

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v21

    .line 53
    .local v21, ruleInJSon:Lorg/json/JSONObject;
    new-instance v12, Lcom/android/browser/model/ForumRuleProvider$ForumRule;

    invoke-direct {v12}, Lcom/android/browser/model/ForumRuleProvider$ForumRule;-><init>()V

    .line 54
    .local v12, forumRule:Lcom/android/browser/model/ForumRuleProvider$ForumRule;
    const-string v27, "generator"

    move-object/from16 v0, v21

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    move-object v1, v12

    iput-object v0, v1, Lcom/android/browser/model/ForumRuleProvider$ForumRule;->generator:Ljava/lang/String;

    .line 55
    iput v14, v12, Lcom/android/browser/model/ForumRuleProvider$ForumRule;->generatorType:I

    .line 59
    new-instance v10, Lcom/android/browser/model/ForumRuleProvider$ForumListRule;

    invoke-direct {v10}, Lcom/android/browser/model/ForumRuleProvider$ForumListRule;-><init>()V

    .line 60
    .local v10, forumListRule:Lcom/android/browser/model/ForumRuleProvider$ForumListRule;
    const-string v27, "forum_list"

    move-object/from16 v0, v21

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v13

    .line 61
    .local v13, forumRuleInJSon:Lorg/json/JSONObject;
    const-string v27, "category"

    move-object v0, v13

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    move-object v1, v10

    iput-object v0, v1, Lcom/android/browser/model/ForumRuleProvider$ForumListRule;->categoryXPath:Ljava/lang/String;

    .line 62
    const-string v27, "category_title"

    move-object v0, v13

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    move-object v1, v10

    iput-object v0, v1, Lcom/android/browser/model/ForumRuleProvider$ForumListRule;->categoryTitleXPath:Ljava/lang/String;

    .line 63
    const-string v27, "forum"

    move-object v0, v13

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    move-object v1, v10

    iput-object v0, v1, Lcom/android/browser/model/ForumRuleProvider$ForumListRule;->forumXPath:Ljava/lang/String;

    .line 64
    const-string v27, "forum_title"

    move-object v0, v13

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    move-object v1, v10

    iput-object v0, v1, Lcom/android/browser/model/ForumRuleProvider$ForumListRule;->forumTitleXPath:Ljava/lang/String;

    .line 65
    const-string v27, "forum_link"

    move-object v0, v13

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    move-object v1, v10

    iput-object v0, v1, Lcom/android/browser/model/ForumRuleProvider$ForumListRule;->forumLinkXPath:Ljava/lang/String;

    .line 66
    const-string v27, "forum_icon"

    move-object v0, v13

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    move-object v1, v10

    iput-object v0, v1, Lcom/android/browser/model/ForumRuleProvider$ForumListRule;->forumIconXPath:Ljava/lang/String;

    .line 67
    const-string v27, "forum_today_num"

    move-object v0, v13

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    move-object v1, v10

    iput-object v0, v1, Lcom/android/browser/model/ForumRuleProvider$ForumListRule;->forumTodayXPath:Ljava/lang/String;

    .line 68
    iput-object v10, v12, Lcom/android/browser/model/ForumRuleProvider$ForumRule;->forumListRule:Lcom/android/browser/model/ForumRuleProvider$ForumListRule;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 71
    :try_start_2
    new-instance v11, Lcom/android/browser/model/ForumRuleProvider$ForumListRule;

    invoke-direct {v11}, Lcom/android/browser/model/ForumRuleProvider$ForumListRule;-><init>()V

    .line 72
    .local v11, forumListRuleStyle2:Lcom/android/browser/model/ForumRuleProvider$ForumListRule;
    const-string v27, "forum2"

    move-object v0, v13

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    move-object v1, v11

    iput-object v0, v1, Lcom/android/browser/model/ForumRuleProvider$ForumListRule;->forumXPath:Ljava/lang/String;

    .line 73
    const-string v27, "forum_title2"

    move-object v0, v13

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    move-object v1, v11

    iput-object v0, v1, Lcom/android/browser/model/ForumRuleProvider$ForumListRule;->forumTitleXPath:Ljava/lang/String;

    .line 74
    const-string v27, "forum_link2"

    move-object v0, v13

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    move-object v1, v11

    iput-object v0, v1, Lcom/android/browser/model/ForumRuleProvider$ForumListRule;->forumLinkXPath:Ljava/lang/String;

    .line 75
    const-string v27, "forum_icon2"

    move-object v0, v13

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    move-object v1, v11

    iput-object v0, v1, Lcom/android/browser/model/ForumRuleProvider$ForumListRule;->forumIconXPath:Ljava/lang/String;

    .line 76
    const-string v27, "forum_today_num2"

    move-object v0, v13

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    move-object v1, v11

    iput-object v0, v1, Lcom/android/browser/model/ForumRuleProvider$ForumListRule;->forumTodayXPath:Ljava/lang/String;

    .line 77
    iput-object v11, v12, Lcom/android/browser/model/ForumRuleProvider$ForumRule;->forumListRuleStyle2:Lcom/android/browser/model/ForumRuleProvider$ForumListRule;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 86
    .end local v11           #forumListRuleStyle2:Lcom/android/browser/model/ForumRuleProvider$ForumListRule;
    :goto_1
    :try_start_3
    new-instance v5, Lcom/android/browser/model/ForumRuleProvider$ForumArticleListRule;

    invoke-direct {v5}, Lcom/android/browser/model/ForumRuleProvider$ForumArticleListRule;-><init>()V

    .line 87
    .local v5, articleListRule:Lcom/android/browser/model/ForumRuleProvider$ForumArticleListRule;
    const-string v27, "article_list"

    move-object/from16 v0, v21

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 88
    .local v6, articleListRuleInJSon:Lorg/json/JSONObject;
    const-string v27, "paging"

    move-object v0, v6

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    move-object v1, v5

    iput-object v0, v1, Lcom/android/browser/model/ForumRuleProvider$ForumArticleListRule;->pagingXPath:Ljava/lang/String;

    .line 89
    const-string v27, "new_thread"

    move-object v0, v6

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    move-object v1, v5

    iput-object v0, v1, Lcom/android/browser/model/ForumRuleProvider$ForumArticleListRule;->newThreadXPath:Ljava/lang/String;

    .line 90
    const-string v27, "stick_thread"

    move-object v0, v6

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    move-object v1, v5

    iput-object v0, v1, Lcom/android/browser/model/ForumRuleProvider$ForumArticleListRule;->stickThreadXPath:Ljava/lang/String;

    .line 91
    const-string v27, "normal_thread"

    move-object v0, v6

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    move-object v1, v5

    iput-object v0, v1, Lcom/android/browser/model/ForumRuleProvider$ForumArticleListRule;->normalThreadXPath:Ljava/lang/String;

    .line 92
    const-string v27, "title"

    move-object v0, v6

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    move-object v1, v5

    iput-object v0, v1, Lcom/android/browser/model/ForumRuleProvider$ForumArticleListRule;->titleXPath:Ljava/lang/String;

    .line 93
    const-string v27, "link"

    move-object v0, v6

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    move-object v1, v5

    iput-object v0, v1, Lcom/android/browser/model/ForumRuleProvider$ForumArticleListRule;->linkXPath:Ljava/lang/String;

    .line 94
    const-string v27, "icon"

    move-object v0, v6

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    move-object v1, v5

    iput-object v0, v1, Lcom/android/browser/model/ForumRuleProvider$ForumArticleListRule;->iconXPath:Ljava/lang/String;

    .line 95
    const-string v27, "author"

    move-object v0, v6

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    move-object v1, v5

    iput-object v0, v1, Lcom/android/browser/model/ForumRuleProvider$ForumArticleListRule;->authorXPath:Ljava/lang/String;

    .line 96
    const-string v27, "nums"

    move-object v0, v6

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    move-object v1, v5

    iput-object v0, v1, Lcom/android/browser/model/ForumRuleProvider$ForumArticleListRule;->numsXPath:Ljava/lang/String;

    .line 97
    const-string v27, "lastpost"

    move-object v0, v6

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    move-object v1, v5

    iput-object v0, v1, Lcom/android/browser/model/ForumRuleProvider$ForumArticleListRule;->lastpostXPath:Ljava/lang/String;

    .line 98
    const-string v27, "sub_forum_container"

    move-object v0, v6

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    move-object v1, v5

    iput-object v0, v1, Lcom/android/browser/model/ForumRuleProvider$ForumArticleListRule;->subForumContainerXPath:Ljava/lang/String;

    .line 100
    const-string v27, "sub_forum"

    move-object v0, v6

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    move-object v1, v5

    iput-object v0, v1, Lcom/android/browser/model/ForumRuleProvider$ForumArticleListRule;->subForumXPath:Ljava/lang/String;

    .line 101
    const-string v27, "sub_forum_title"

    move-object v0, v6

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    move-object v1, v5

    iput-object v0, v1, Lcom/android/browser/model/ForumRuleProvider$ForumArticleListRule;->subForumTitleXPath:Ljava/lang/String;

    .line 102
    const-string v27, "sub_forum_link"

    move-object v0, v6

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    move-object v1, v5

    iput-object v0, v1, Lcom/android/browser/model/ForumRuleProvider$ForumArticleListRule;->subForumLinkXPath:Ljava/lang/String;

    .line 103
    const-string v27, "sub_forum_today_num"

    move-object v0, v6

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    move-object v1, v5

    iput-object v0, v1, Lcom/android/browser/model/ForumRuleProvider$ForumArticleListRule;->subForumTodayNumXPath:Ljava/lang/String;

    .line 105
    iput-object v5, v12, Lcom/android/browser/model/ForumRuleProvider$ForumRule;->articleListRule:Lcom/android/browser/model/ForumRuleProvider$ForumArticleListRule;

    .line 110
    new-instance v3, Lcom/android/browser/model/ForumRuleProvider$ForumArticleDetailRule;

    invoke-direct {v3}, Lcom/android/browser/model/ForumRuleProvider$ForumArticleDetailRule;-><init>()V

    .line 111
    .local v3, articleDetailRule:Lcom/android/browser/model/ForumRuleProvider$ForumArticleDetailRule;
    const-string v27, "article_detail"

    move-object/from16 v0, v21

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 112
    .local v4, articleDetailRuleInJSon:Lorg/json/JSONObject;
    const-string v27, "paging"

    move-object v0, v4

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    move-object v1, v3

    iput-object v0, v1, Lcom/android/browser/model/ForumRuleProvider$ForumArticleDetailRule;->pagingXPath:Ljava/lang/String;

    .line 113
    const-string v27, "reply_btn"

    move-object v0, v4

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    move-object v1, v3

    iput-object v0, v1, Lcom/android/browser/model/ForumRuleProvider$ForumArticleDetailRule;->replyXPath:Ljava/lang/String;

    .line 114
    const-string v27, "post"

    move-object v0, v4

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    move-object v1, v3

    iput-object v0, v1, Lcom/android/browser/model/ForumRuleProvider$ForumArticleDetailRule;->postXPath:Ljava/lang/String;

    .line 115
    const-string v27, "content"

    move-object v0, v4

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    move-object v1, v3

    iput-object v0, v1, Lcom/android/browser/model/ForumRuleProvider$ForumArticleDetailRule;->contentXPath:Ljava/lang/String;

    .line 116
    const-string v27, "author_id"

    move-object v0, v4

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    move-object v1, v3

    iput-object v0, v1, Lcom/android/browser/model/ForumRuleProvider$ForumArticleDetailRule;->authorIDXPath:Ljava/lang/String;

    .line 117
    const-string v27, "author_icon"

    move-object v0, v4

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    move-object v1, v3

    iput-object v0, v1, Lcom/android/browser/model/ForumRuleProvider$ForumArticleDetailRule;->authorIconXPath:Ljava/lang/String;

    .line 118
    const-string v27, "author_title"

    move-object v0, v4

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    move-object v1, v3

    iput-object v0, v1, Lcom/android/browser/model/ForumRuleProvider$ForumArticleDetailRule;->authorTitleXPath:Ljava/lang/String;

    .line 119
    const-string v27, "floorNum"

    move-object v0, v4

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    move-object v1, v3

    iput-object v0, v1, Lcom/android/browser/model/ForumRuleProvider$ForumArticleDetailRule;->floorNumXPath:Ljava/lang/String;

    .line 120
    const-string v27, "post_time"

    move-object v0, v4

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    move-object v1, v3

    iput-object v0, v1, Lcom/android/browser/model/ForumRuleProvider$ForumArticleDetailRule;->postTimeXPath:Ljava/lang/String;

    .line 121
    const-string v27, "fast_reply"

    move-object v0, v4

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    move-object v1, v3

    iput-object v0, v1, Lcom/android/browser/model/ForumRuleProvider$ForumArticleDetailRule;->fastReplyXPath:Ljava/lang/String;

    .line 122
    const-string v27, "fast_post_form"

    move-object v0, v4

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    move-object v1, v3

    iput-object v0, v1, Lcom/android/browser/model/ForumRuleProvider$ForumArticleDetailRule;->fastPostForm:Ljava/lang/String;

    .line 123
    const-string v27, "fast_post_text"

    move-object v0, v4

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    move-object v1, v3

    iput-object v0, v1, Lcom/android/browser/model/ForumRuleProvider$ForumArticleDetailRule;->fastPostText:Ljava/lang/String;

    .line 124
    iput-object v3, v12, Lcom/android/browser/model/ForumRuleProvider$ForumRule;->articleDetailRule:Lcom/android/browser/model/ForumRuleProvider$ForumArticleDetailRule;

    .line 129
    new-instance v19, Lcom/android/browser/model/ForumRuleProvider$ForumPostingRule;

    invoke-direct/range {v19 .. v19}, Lcom/android/browser/model/ForumRuleProvider$ForumPostingRule;-><init>()V

    .line 130
    .local v19, postingRule:Lcom/android/browser/model/ForumRuleProvider$ForumPostingRule;
    const-string v27, "posting"

    move-object/from16 v0, v21

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v20

    .line 131
    .local v20, postingRuleInJSon:Lorg/json/JSONObject;
    const-string v27, "form"

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/android/browser/model/ForumRuleProvider$ForumPostingRule;->formXPath:Ljava/lang/String;

    .line 132
    const-string v27, "result_msg"

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/android/browser/model/ForumRuleProvider$ForumPostingRule;->resultMsgXPath:Ljava/lang/String;

    .line 133
    const-string v27, "subject"

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/android/browser/model/ForumRuleProvider$ForumPostingRule;->subjectXPath:Ljava/lang/String;

    .line 134
    const-string v27, "content"

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/android/browser/model/ForumRuleProvider$ForumPostingRule;->contentXPath:Ljava/lang/String;

    .line 135
    const-string v27, "error_alert"

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/android/browser/model/ForumRuleProvider$ForumPostingRule;->errorAlertXPath:Ljava/lang/String;

    .line 136
    const-string v27, "login_form"

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/android/browser/model/ForumRuleProvider$ForumPostingRule;->loginFormXPath:Ljava/lang/String;

    .line 137
    const-string v27, "login_account"

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/android/browser/model/ForumRuleProvider$ForumPostingRule;->loginAccountXPath:Ljava/lang/String;

    .line 138
    const-string v27, "login_password"

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/android/browser/model/ForumRuleProvider$ForumPostingRule;->loginPasswordXPath:Ljava/lang/String;

    .line 139
    move-object/from16 v0, v19

    move-object v1, v12

    iput-object v0, v1, Lcom/android/browser/model/ForumRuleProvider$ForumRule;->postingRule:Lcom/android/browser/model/ForumRuleProvider$ForumPostingRule;

    .line 144
    new-instance v16, Lcom/android/browser/model/ForumRuleProvider$ForumLoggingRule;

    invoke-direct/range {v16 .. v16}, Lcom/android/browser/model/ForumRuleProvider$ForumLoggingRule;-><init>()V

    .line 145
    .local v16, loggingRule:Lcom/android/browser/model/ForumRuleProvider$ForumLoggingRule;
    const-string v27, "logging"

    move-object/from16 v0, v21

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v17

    .line 146
    .local v17, loggingRuleInJSon:Lorg/json/JSONObject;
    const-string v27, "form"

    move-object/from16 v0, v17

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/android/browser/model/ForumRuleProvider$ForumLoggingRule;->formXPath:Ljava/lang/String;

    .line 147
    const-string v27, "account"

    move-object/from16 v0, v17

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/android/browser/model/ForumRuleProvider$ForumLoggingRule;->accountXPath:Ljava/lang/String;

    .line 148
    const-string v27, "password"

    move-object/from16 v0, v17

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/android/browser/model/ForumRuleProvider$ForumLoggingRule;->passwordXPath:Ljava/lang/String;

    .line 149
    const-string v27, "show_message"

    move-object/from16 v0, v17

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/android/browser/model/ForumRuleProvider$ForumLoggingRule;->showMsgXPath:Ljava/lang/String;

    .line 150
    move-object/from16 v0, v16

    move-object v1, v12

    iput-object v0, v1, Lcom/android/browser/model/ForumRuleProvider$ForumRule;->loggingRule:Lcom/android/browser/model/ForumRuleProvider$ForumLoggingRule;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    .line 155
    const/16 v24, 0x0

    .line 157
    .local v24, searchRuleInJSon:Lorg/json/JSONObject;
    :try_start_4
    const-string v27, "search"

    move-object/from16 v0, v21

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    move-result-object v24

    .line 162
    :goto_2
    if-eqz v24, :cond_0

    .line 163
    :try_start_5
    new-instance v23, Lcom/android/browser/model/ForumRuleProvider$ForumSearchRule;

    invoke-direct/range {v23 .. v23}, Lcom/android/browser/model/ForumRuleProvider$ForumSearchRule;-><init>()V

    .line 164
    .local v23, searchRule:Lcom/android/browser/model/ForumRuleProvider$ForumSearchRule;
    const-string v27, "form"

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/android/browser/model/ForumRuleProvider$ForumSearchRule;->searchForm:Ljava/lang/String;

    .line 165
    const-string v27, "searchText"

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/android/browser/model/ForumRuleProvider$ForumSearchRule;->searchTextXPath:Ljava/lang/String;

    .line 166
    const-string v27, "error_alert"

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/android/browser/model/ForumRuleProvider$ForumSearchRule;->errorAlertXPath:Ljava/lang/String;

    .line 167
    const-string v27, "login_form"

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/android/browser/model/ForumRuleProvider$ForumSearchRule;->loginFormXPath:Ljava/lang/String;

    .line 168
    const-string v27, "login_account"

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/android/browser/model/ForumRuleProvider$ForumSearchRule;->loginAccountXPath:Ljava/lang/String;

    .line 169
    const-string v27, "login_password"

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/android/browser/model/ForumRuleProvider$ForumSearchRule;->loginPasswordXPath:Ljava/lang/String;

    .line 170
    const-string v27, "search_result"

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/android/browser/model/ForumRuleProvider$ForumSearchRule;->resultString:Ljava/lang/String;

    .line 171
    const-string v27, "paging"

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/android/browser/model/ForumRuleProvider$ForumSearchRule;->resultPaging:Ljava/lang/String;

    .line 172
    const-string v27, "search_list"

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/android/browser/model/ForumRuleProvider$ForumSearchRule;->resultContainer:Ljava/lang/String;

    .line 173
    const-string v27, "result_article"

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/android/browser/model/ForumRuleProvider$ForumSearchRule;->resultArticle:Ljava/lang/String;

    .line 174
    const-string v27, "title"

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/android/browser/model/ForumRuleProvider$ForumSearchRule;->title:Ljava/lang/String;

    .line 175
    const-string v27, "link"

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/android/browser/model/ForumRuleProvider$ForumSearchRule;->link:Ljava/lang/String;

    .line 176
    const-string v27, "nums"

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/android/browser/model/ForumRuleProvider$ForumSearchRule;->nums:Ljava/lang/String;

    .line 177
    const-string v27, "author"

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/android/browser/model/ForumRuleProvider$ForumSearchRule;->author:Ljava/lang/String;

    .line 178
    const-string v27, "nums"

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/android/browser/model/ForumRuleProvider$ForumSearchRule;->nums:Ljava/lang/String;

    .line 179
    const-string v27, "lastpost"

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/android/browser/model/ForumRuleProvider$ForumSearchRule;->lastPost:Ljava/lang/String;

    .line 180
    const-string v27, "showmessage"

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/android/browser/model/ForumRuleProvider$ForumSearchRule;->showMessage:Ljava/lang/String;

    .line 181
    move-object/from16 v0, v23

    move-object v1, v12

    iput-object v0, v1, Lcom/android/browser/model/ForumRuleProvider$ForumRule;->searchRule:Lcom/android/browser/model/ForumRuleProvider$ForumSearchRule;

    .line 187
    .end local v23           #searchRule:Lcom/android/browser/model/ForumRuleProvider$ForumSearchRule;
    :cond_0
    new-instance v7, Lcom/android/browser/model/ForumRuleProvider$ForumCommonRule;

    invoke-direct {v7}, Lcom/android/browser/model/ForumRuleProvider$ForumCommonRule;-><init>()V

    .line 188
    .local v7, commonRule:Lcom/android/browser/model/ForumRuleProvider$ForumCommonRule;
    const-string v27, "common"

    move-object/from16 v0, v21

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    .line 189
    .local v8, commonRuleInJSon:Lorg/json/JSONObject;
    const-string v27, "user_menu"

    move-object v0, v8

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    move-object v1, v7

    iput-object v0, v1, Lcom/android/browser/model/ForumRuleProvider$ForumCommonRule;->userMenuXPath:Ljava/lang/String;

    .line 190
    const-string v27, "nav_bar"

    move-object v0, v8

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    move-object v1, v7

    iput-object v0, v1, Lcom/android/browser/model/ForumRuleProvider$ForumCommonRule;->navBarXPath:Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_1

    .line 192
    :try_start_6
    const-string v27, "fast_login_form"

    move-object v0, v8

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    move-object v1, v7

    iput-object v0, v1, Lcom/android/browser/model/ForumRuleProvider$ForumCommonRule;->fastLoginForm:Ljava/lang/String;

    .line 193
    const-string v27, "fast_login_account"

    move-object v0, v8

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    move-object v1, v7

    iput-object v0, v1, Lcom/android/browser/model/ForumRuleProvider$ForumCommonRule;->fastLoginAccount:Ljava/lang/String;

    .line 194
    const-string v27, "fast_login_password"

    move-object v0, v8

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    move-object v1, v7

    iput-object v0, v1, Lcom/android/browser/model/ForumRuleProvider$ForumCommonRule;->fastLoginPassword:Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    .line 200
    :goto_3
    :try_start_7
    const-string v27, "search_btn"

    move-object v0, v8

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    move-object v1, v7

    iput-object v0, v1, Lcom/android/browser/model/ForumRuleProvider$ForumCommonRule;->searchBtnXPath:Ljava/lang/String;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    .line 204
    :goto_4
    :try_start_8
    iput-object v7, v12, Lcom/android/browser/model/ForumRuleProvider$ForumRule;->commonRule:Lcom/android/browser/model/ForumRuleProvider$ForumCommonRule;

    .line 209
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/model/ForumRuleProvider$1;->this$0:Lcom/android/browser/model/ForumRuleProvider;

    move-object/from16 v27, v0

    #getter for: Lcom/android/browser/model/ForumRuleProvider;->mRules:Ljava/util/ArrayList;
    invoke-static/range {v27 .. v27}, Lcom/android/browser/model/ForumRuleProvider;->access$000(Lcom/android/browser/model/ForumRuleProvider;)Ljava/util/ArrayList;

    move-result-object v27

    move-object/from16 v0, v27

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_1

    .line 51
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_0

    .line 213
    .end local v3           #articleDetailRule:Lcom/android/browser/model/ForumRuleProvider$ForumArticleDetailRule;
    .end local v4           #articleDetailRuleInJSon:Lorg/json/JSONObject;
    .end local v5           #articleListRule:Lcom/android/browser/model/ForumRuleProvider$ForumArticleListRule;
    .end local v6           #articleListRuleInJSon:Lorg/json/JSONObject;
    .end local v7           #commonRule:Lcom/android/browser/model/ForumRuleProvider$ForumCommonRule;
    .end local v8           #commonRuleInJSon:Lorg/json/JSONObject;
    .end local v10           #forumListRule:Lcom/android/browser/model/ForumRuleProvider$ForumListRule;
    .end local v12           #forumRule:Lcom/android/browser/model/ForumRuleProvider$ForumRule;
    .end local v13           #forumRuleInJSon:Lorg/json/JSONObject;
    .end local v14           #i:I
    .end local v15           #jsonText:Ljava/lang/String;
    .end local v16           #loggingRule:Lcom/android/browser/model/ForumRuleProvider$ForumLoggingRule;
    .end local v17           #loggingRuleInJSon:Lorg/json/JSONObject;
    .end local v18           #obj:Lorg/json/JSONObject;
    .end local v19           #postingRule:Lcom/android/browser/model/ForumRuleProvider$ForumPostingRule;
    .end local v20           #postingRuleInJSon:Lorg/json/JSONObject;
    .end local v21           #ruleInJSon:Lorg/json/JSONObject;
    .end local v22           #rulesInJSon:Lorg/json/JSONArray;
    .end local v24           #searchRuleInJSon:Lorg/json/JSONObject;
    .end local v25           #stream:Ljava/io/InputStream;
    :catch_0
    move-exception v27

    move-object/from16 v9, v27

    .line 214
    .local v9, e:Ljava/io/IOException;
    :try_start_9
    const-string v27, "com.android.browser.model.ForumRuleProvider"

    invoke-virtual {v9}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    .end local v9           #e:Ljava/io/IOException;
    :cond_1
    :goto_5
    const/16 v27, 0x0

    monitor-exit v26

    return-object v27

    .line 215
    :catch_1
    move-exception v27

    move-object/from16 v9, v27

    .line 216
    .local v9, e:Lorg/json/JSONException;
    const-string v27, "com.android.browser.model.ForumRuleProvider"

    invoke-virtual {v9}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 219
    .end local v2           #am:Landroid/content/res/AssetManager;
    .end local v9           #e:Lorg/json/JSONException;
    :catchall_0
    move-exception v27

    monitor-exit v26
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    throw v27

    .line 201
    .restart local v2       #am:Landroid/content/res/AssetManager;
    .restart local v3       #articleDetailRule:Lcom/android/browser/model/ForumRuleProvider$ForumArticleDetailRule;
    .restart local v4       #articleDetailRuleInJSon:Lorg/json/JSONObject;
    .restart local v5       #articleListRule:Lcom/android/browser/model/ForumRuleProvider$ForumArticleListRule;
    .restart local v6       #articleListRuleInJSon:Lorg/json/JSONObject;
    .restart local v7       #commonRule:Lcom/android/browser/model/ForumRuleProvider$ForumCommonRule;
    .restart local v8       #commonRuleInJSon:Lorg/json/JSONObject;
    .restart local v10       #forumListRule:Lcom/android/browser/model/ForumRuleProvider$ForumListRule;
    .restart local v12       #forumRule:Lcom/android/browser/model/ForumRuleProvider$ForumRule;
    .restart local v13       #forumRuleInJSon:Lorg/json/JSONObject;
    .restart local v14       #i:I
    .restart local v15       #jsonText:Ljava/lang/String;
    .restart local v16       #loggingRule:Lcom/android/browser/model/ForumRuleProvider$ForumLoggingRule;
    .restart local v17       #loggingRuleInJSon:Lorg/json/JSONObject;
    .restart local v18       #obj:Lorg/json/JSONObject;
    .restart local v19       #postingRule:Lcom/android/browser/model/ForumRuleProvider$ForumPostingRule;
    .restart local v20       #postingRuleInJSon:Lorg/json/JSONObject;
    .restart local v21       #ruleInJSon:Lorg/json/JSONObject;
    .restart local v22       #rulesInJSon:Lorg/json/JSONArray;
    .restart local v24       #searchRuleInJSon:Lorg/json/JSONObject;
    .restart local v25       #stream:Ljava/io/InputStream;
    :catch_2
    move-exception v27

    goto :goto_4

    .line 195
    :catch_3
    move-exception v27

    goto :goto_3

    .line 159
    .end local v7           #commonRule:Lcom/android/browser/model/ForumRuleProvider$ForumCommonRule;
    .end local v8           #commonRuleInJSon:Lorg/json/JSONObject;
    :catch_4
    move-exception v27

    goto/16 :goto_2

    .line 79
    .end local v3           #articleDetailRule:Lcom/android/browser/model/ForumRuleProvider$ForumArticleDetailRule;
    .end local v4           #articleDetailRuleInJSon:Lorg/json/JSONObject;
    .end local v5           #articleListRule:Lcom/android/browser/model/ForumRuleProvider$ForumArticleListRule;
    .end local v6           #articleListRuleInJSon:Lorg/json/JSONObject;
    .end local v16           #loggingRule:Lcom/android/browser/model/ForumRuleProvider$ForumLoggingRule;
    .end local v17           #loggingRuleInJSon:Lorg/json/JSONObject;
    .end local v19           #postingRule:Lcom/android/browser/model/ForumRuleProvider$ForumPostingRule;
    .end local v20           #postingRuleInJSon:Lorg/json/JSONObject;
    .end local v24           #searchRuleInJSon:Lorg/json/JSONObject;
    :catch_5
    move-exception v27

    goto/16 :goto_1
.end method
