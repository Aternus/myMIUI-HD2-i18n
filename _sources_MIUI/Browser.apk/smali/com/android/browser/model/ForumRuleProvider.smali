.class public Lcom/android/browser/model/ForumRuleProvider;
.super Ljava/lang/Object;
.source "ForumRuleProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/model/ForumRuleProvider$ForumSearchRule;,
        Lcom/android/browser/model/ForumRuleProvider$ForumCommonRule;,
        Lcom/android/browser/model/ForumRuleProvider$ForumPostingRule;,
        Lcom/android/browser/model/ForumRuleProvider$ForumLoggingRule;,
        Lcom/android/browser/model/ForumRuleProvider$ForumArticleDetailRule;,
        Lcom/android/browser/model/ForumRuleProvider$ForumArticleListRule;,
        Lcom/android/browser/model/ForumRuleProvider$ForumListRule;,
        Lcom/android/browser/model/ForumRuleProvider$ForumRule;
    }
.end annotation


# static fields
.field public static final FORUM_TYPE_DISCUZ_5X:I = 0x7

.field public static final FORUM_TYPE_DISCUZ_6X:I = 0x1

.field public static final FORUM_TYPE_DISCUZ_7X:I = 0x0

.field public static final FORUM_TYPE_DISCUZ_X15:I = 0x2

.field public static final FORUM_TYPE_PHPWIND_73:I = 0x6

.field public static final FORUM_TYPE_PHPWIND_75:I = 0x4

.field public static final FORUM_TYPE_PHPWIND_75SP3:I = 0x3

.field public static final FORUM_TYPE_PHPWIND_8X:I = 0x5

.field private static final LOGTAG:Ljava/lang/String; = "com.android.browser.model.ForumRuleProvider"

.field private static sInstance:Lcom/android/browser/model/ForumRuleProvider;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mRules:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/browser/model/ForumRuleProvider$ForumRule;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/browser/model/ForumRuleProvider;->mRules:Ljava/util/ArrayList;

    .line 38
    iput-object p1, p0, Lcom/android/browser/model/ForumRuleProvider;->mContext:Landroid/content/Context;

    .line 39
    new-instance v0, Lcom/android/browser/model/ForumRuleProvider$1;

    invoke-direct {v0, p0}, Lcom/android/browser/model/ForumRuleProvider$1;-><init>(Lcom/android/browser/model/ForumRuleProvider;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/browser/model/ForumRuleProvider$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 224
    return-void
.end method

.method static synthetic access$000(Lcom/android/browser/model/ForumRuleProvider;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/android/browser/model/ForumRuleProvider;->mRules:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/browser/model/ForumRuleProvider;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/android/browser/model/ForumRuleProvider;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/browser/model/ForumRuleProvider;
    .locals 3
    .parameter "context"

    .prologue
    .line 227
    sget-object v0, Lcom/android/browser/model/ForumRuleProvider;->sInstance:Lcom/android/browser/model/ForumRuleProvider;

    if-eqz v0, :cond_0

    .line 228
    sget-object v0, Lcom/android/browser/model/ForumRuleProvider;->sInstance:Lcom/android/browser/model/ForumRuleProvider;

    .line 235
    :goto_0
    return-object v0

    .line 230
    :cond_0
    const-string v0, "com.android.browser.model.ForumRuleProvider"

    monitor-enter v0

    .line 231
    :try_start_0
    sget-object v1, Lcom/android/browser/model/ForumRuleProvider;->sInstance:Lcom/android/browser/model/ForumRuleProvider;

    if-nez v1, :cond_1

    .line 232
    new-instance v1, Lcom/android/browser/model/ForumRuleProvider;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/browser/model/ForumRuleProvider;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/browser/model/ForumRuleProvider;->sInstance:Lcom/android/browser/model/ForumRuleProvider;

    .line 234
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 235
    sget-object v0, Lcom/android/browser/model/ForumRuleProvider;->sInstance:Lcom/android/browser/model/ForumRuleProvider;

    goto :goto_0

    .line 234
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public getRuleFromGenerator(Ljava/lang/String;)Lcom/android/browser/model/ForumRuleProvider$ForumRule;
    .locals 6
    .parameter "generator"

    .prologue
    const/4 v5, 0x0

    .line 239
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 240
    .local v2, trimedGenerator:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v5

    .line 249
    :goto_0
    return-object v3

    .line 243
    :cond_0
    iget-object v3, p0, Lcom/android/browser/model/ForumRuleProvider;->mRules:Ljava/util/ArrayList;

    monitor-enter v3

    .line 244
    :try_start_0
    iget-object v4, p0, Lcom/android/browser/model/ForumRuleProvider;->mRules:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/browser/model/ForumRuleProvider$ForumRule;

    .line 245
    .local v1, rule:Lcom/android/browser/model/ForumRuleProvider$ForumRule;
    iget-object v4, v1, Lcom/android/browser/model/ForumRuleProvider$ForumRule;->generator:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 246
    monitor-exit v3

    move-object v3, v1

    goto :goto_0

    .line 249
    .end local v1           #rule:Lcom/android/browser/model/ForumRuleProvider$ForumRule;
    :cond_2
    monitor-exit v3

    move-object v3, v5

    goto :goto_0

    .line 250
    .end local v0           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method
