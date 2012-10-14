.class public Lcom/android/browser/model/ReadingModeRuleProvider;
.super Ljava/lang/Object;
.source "ReadingModeRuleProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/model/ReadingModeRuleProvider$Rule;
    }
.end annotation


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "com.android.browser.model.ReadingModeRuleProvider"

.field public static final NovelWebSiteSqlWhere:Ljava/lang/String;

.field public static final NovelWebSiteSqlWhereArgs:[Ljava/lang/String;

.field private static instance:Lcom/android/browser/model/ReadingModeRuleProvider;


# instance fields
.field private mRules:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/browser/model/ReadingModeRuleProvider$Rule;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 33
    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "%fywap%"

    aput-object v4, v2, v3

    const-string v3, "%qidian%"

    aput-object v3, v2, v5

    const/4 v3, 0x2

    const-string v4, "%qdmm%"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "%hongxiu%"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "%book.qq%"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "%3g.qq%"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "%220.170.91%"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "%17k%"

    aput-object v4, v2, v3

    sput-object v2, Lcom/android/browser/model/ReadingModeRuleProvider;->NovelWebSiteSqlWhereArgs:[Ljava/lang/String;

    .line 41
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    .local v1, sbSql:Ljava/lang/StringBuilder;
    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    const-string v2, "mode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 46
    const-string v2, ") AND ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v2, Lcom/android/browser/model/ReadingModeRuleProvider;->NovelWebSiteSqlWhereArgs:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 48
    if-eqz v0, :cond_0

    .line 49
    const-string v2, " OR "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    :cond_0
    const-string v2, "searchable_url"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    const-string v2, " LIKE ?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 53
    :cond_1
    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/browser/model/ReadingModeRuleProvider;->NovelWebSiteSqlWhere:Ljava/lang/String;

    .line 55
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 24
    .parameter "context"

    .prologue
    .line 106
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 110
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/browser/model/ReadingModeRuleProvider;->mRules:Ljava/util/ArrayList;

    .line 111
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v15

    .line 113
    .local v15, am:Landroid/content/res/AssetManager;
    :try_start_0
    const-string v3, "patterns.json"

    invoke-virtual {v15, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v23

    .line 114
    .local v23, stream:Ljava/io/InputStream;
    invoke-static/range {v23 .. v23}, Lcom/android/browser/common/Strings;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v19

    .line 115
    .local v19, jsonText:Ljava/lang/String;
    new-instance v20, Lorg/json/JSONObject;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 116
    .local v20, obj:Lorg/json/JSONObject;
    const-string v3, "patterns"

    move-object/from16 v0, v20

    move-object v1, v3

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v22

    .line 118
    .local v22, patterns:Lorg/json/JSONArray;
    const/16 v18, 0x0

    .local v18, i:I
    :goto_0
    invoke-virtual/range {v22 .. v22}, Lorg/json/JSONArray;->length()I

    move-result v3

    move/from16 v0, v18

    move v1, v3

    if-ge v0, v1, :cond_1

    .line 119
    move-object/from16 v0, v22

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v21

    .line 121
    .local v21, pattern:Lorg/json/JSONObject;
    const-string v3, "url_pattern"

    move-object/from16 v0, v21

    move-object v1, v3

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 122
    .local v4, urls:Lorg/json/JSONArray;
    const-string v3, "title"

    move-object/from16 v0, v21

    move-object v1, v3

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 123
    .local v5, titles:Lorg/json/JSONArray;
    const-string v3, "content"

    move-object/from16 v0, v21

    move-object v1, v3

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 124
    .local v6, contents:Lorg/json/JSONArray;
    const-string v3, "previous_link"

    move-object/from16 v0, v21

    move-object v1, v3

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 125
    .local v7, preLinks:Lorg/json/JSONArray;
    const-string v3, "next_link"

    move-object/from16 v0, v21

    move-object v1, v3

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    .line 126
    .local v8, nextLinks:Lorg/json/JSONArray;
    const-string v3, "first_page"

    move-object/from16 v0, v21

    move-object v1, v3

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 127
    .local v17, firstPage:Ljava/lang/String;
    const-string v3, "cacheable"

    move-object/from16 v0, v21

    move-object v1, v3

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v13

    .line 128
    .local v13, cacheable:Z
    const/4 v12, 0x0

    .line 129
    .local v12, mcache_keep_alive:I
    const-string v3, "mcache_keep_alive"

    move-object/from16 v0, v21

    move-object v1, v3

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 130
    const-string v3, "mcache_keep_alive"

    move-object/from16 v0, v21

    move-object v1, v3

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 133
    :cond_0
    const-string v9, ""
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_5

    .line 135
    .local v9, comments:Ljava/lang/String;
    :try_start_1
    const-string v3, "comments"

    move-object/from16 v0, v21

    move-object v1, v3

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    move-result-object v9

    .line 140
    :goto_1
    const/4 v10, 0x0

    .line 142
    .local v10, wapSite:Z
    :try_start_2
    const-string v3, "wap_site"

    move-object/from16 v0, v21

    move-object v1, v3

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    move-result v10

    .line 146
    :goto_2
    const/4 v11, 0x0

    .line 148
    .local v11, wapLike:Z
    :try_start_3
    const-string v3, "wap_like"

    move-object/from16 v0, v21

    move-object v1, v3

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    move-result v11

    .line 153
    :goto_3
    :try_start_4
    const-string v14, ""
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_5

    .line 155
    .local v14, ads:Ljava/lang/String;
    :try_start_5
    const-string v3, "ads"

    move-object/from16 v0, v21

    move-object v1, v3

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    move-result-object v14

    .line 160
    :goto_4
    :try_start_6
    new-instance v2, Lcom/android/browser/model/ReadingModeRuleProvider$Rule;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v14}, Lcom/android/browser/model/ReadingModeRuleProvider$Rule;-><init>(Lcom/android/browser/model/ReadingModeRuleProvider;Lorg/json/JSONArray;Lorg/json/JSONArray;Lorg/json/JSONArray;Lorg/json/JSONArray;Lorg/json/JSONArray;Ljava/lang/String;ZZIZLjava/lang/String;)V

    .line 161
    .local v2, rule:Lcom/android/browser/model/ReadingModeRuleProvider$Rule;
    new-instance v3, Ljava/lang/String;

    move-object v0, v3

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v3, v2, Lcom/android/browser/model/ReadingModeRuleProvider$Rule;->firstPage:Ljava/lang/String;

    .line 162
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/model/ReadingModeRuleProvider;->mRules:Ljava/util/ArrayList;

    move-object v3, v0

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_0

    .line 136
    .end local v2           #rule:Lcom/android/browser/model/ReadingModeRuleProvider$Rule;
    .end local v10           #wapSite:Z
    .end local v11           #wapLike:Z
    .end local v14           #ads:Ljava/lang/String;
    :catch_0
    move-exception v3

    move-object/from16 v16, v3

    .line 137
    .local v16, e:Lorg/json/JSONException;
    const-string v9, ""

    goto :goto_1

    .line 143
    .end local v16           #e:Lorg/json/JSONException;
    .restart local v10       #wapSite:Z
    :catch_1
    move-exception v3

    move-object/from16 v16, v3

    .line 144
    .restart local v16       #e:Lorg/json/JSONException;
    const/4 v10, 0x0

    goto :goto_2

    .line 149
    .end local v16           #e:Lorg/json/JSONException;
    .restart local v11       #wapLike:Z
    :catch_2
    move-exception v3

    move-object/from16 v16, v3

    .line 150
    .restart local v16       #e:Lorg/json/JSONException;
    const/4 v11, 0x0

    goto :goto_3

    .line 156
    .end local v16           #e:Lorg/json/JSONException;
    .restart local v14       #ads:Ljava/lang/String;
    :catch_3
    move-exception v3

    move-object/from16 v16, v3

    .line 157
    .restart local v16       #e:Lorg/json/JSONException;
    const-string v14, ""

    goto :goto_4

    .line 165
    .end local v4           #urls:Lorg/json/JSONArray;
    .end local v5           #titles:Lorg/json/JSONArray;
    .end local v6           #contents:Lorg/json/JSONArray;
    .end local v7           #preLinks:Lorg/json/JSONArray;
    .end local v8           #nextLinks:Lorg/json/JSONArray;
    .end local v9           #comments:Ljava/lang/String;
    .end local v10           #wapSite:Z
    .end local v11           #wapLike:Z
    .end local v12           #mcache_keep_alive:I
    .end local v13           #cacheable:Z
    .end local v14           #ads:Ljava/lang/String;
    .end local v16           #e:Lorg/json/JSONException;
    .end local v17           #firstPage:Ljava/lang/String;
    .end local v21           #pattern:Lorg/json/JSONObject;
    :cond_1
    const-string v3, "com.android.browser.model.ReadingModeRuleProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Reading mode rules found: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/model/ReadingModeRuleProvider;->mRules:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_5

    .line 171
    .end local v18           #i:I
    .end local v19           #jsonText:Ljava/lang/String;
    .end local v20           #obj:Lorg/json/JSONObject;
    .end local v22           #patterns:Lorg/json/JSONArray;
    .end local v23           #stream:Ljava/io/InputStream;
    :goto_5
    return-void

    .line 166
    :catch_4
    move-exception v3

    move-object/from16 v16, v3

    .line 167
    .local v16, e:Ljava/io/IOException;
    const-string v3, "com.android.browser.model.ReadingModeRuleProvider"

    invoke-virtual/range {v16 .. v16}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 168
    .end local v16           #e:Ljava/io/IOException;
    :catch_5
    move-exception v3

    move-object/from16 v16, v3

    .line 169
    .local v16, e:Lorg/json/JSONException;
    const-string v3, "com.android.browser.model.ReadingModeRuleProvider"

    invoke-virtual/range {v16 .. v16}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/browser/model/ReadingModeRuleProvider;
    .locals 2
    .parameter "context"

    .prologue
    .line 58
    sget-object v0, Lcom/android/browser/model/ReadingModeRuleProvider;->instance:Lcom/android/browser/model/ReadingModeRuleProvider;

    if-nez v0, :cond_1

    .line 59
    const-string v0, "com.android.browser.model.ReadingModeRuleProvider"

    monitor-enter v0

    .line 60
    :try_start_0
    sget-object v1, Lcom/android/browser/model/ReadingModeRuleProvider;->instance:Lcom/android/browser/model/ReadingModeRuleProvider;

    if-nez v1, :cond_0

    .line 61
    new-instance v1, Lcom/android/browser/model/ReadingModeRuleProvider;

    invoke-direct {v1, p0}, Lcom/android/browser/model/ReadingModeRuleProvider;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/browser/model/ReadingModeRuleProvider;->instance:Lcom/android/browser/model/ReadingModeRuleProvider;

    .line 62
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    :cond_1
    sget-object v0, Lcom/android/browser/model/ReadingModeRuleProvider;->instance:Lcom/android/browser/model/ReadingModeRuleProvider;

    return-object v0

    .line 62
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public getRuleFromUrl(Ljava/lang/String;)Lcom/android/browser/model/ReadingModeRuleProvider$Rule;
    .locals 10
    .parameter "url"

    .prologue
    const/4 v9, 0x0

    .line 68
    const/4 v6, 0x0

    .line 71
    .local v6, rule:Lcom/android/browser/model/ReadingModeRuleProvider$Rule;
    invoke-static {p1}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 72
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    move-object v7, v9

    .line 102
    :goto_0
    return-object v7

    .line 77
    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .line 82
    const/4 v4, 0x0

    .line 83
    .local v4, matches:Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v7, p0, Lcom/android/browser/model/ReadingModeRuleProvider;->mRules:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v1, v7, :cond_2

    .line 84
    iget-object v7, p0, Lcom/android/browser/model/ReadingModeRuleProvider;->mRules:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    .end local v6           #rule:Lcom/android/browser/model/ReadingModeRuleProvider$Rule;
    check-cast v6, Lcom/android/browser/model/ReadingModeRuleProvider$Rule;

    .line 85
    .restart local v6       #rule:Lcom/android/browser/model/ReadingModeRuleProvider$Rule;
    const/4 v2, 0x0

    .local v2, j:I
    :goto_2
    iget-object v7, v6, Lcom/android/browser/model/ReadingModeRuleProvider$Rule;->urlPatterns:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v2, v7, :cond_1

    .line 86
    iget-object v7, v6, Lcom/android/browser/model/ReadingModeRuleProvider$Rule;->urlPatterns:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    .line 87
    .local v5, pattern:Ljava/util/regex/Pattern;
    invoke-virtual {v5, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 88
    .local v3, matcher:Ljava/util/regex/Matcher;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 91
    const/4 v4, 0x1

    .line 95
    .end local v3           #matcher:Ljava/util/regex/Matcher;
    .end local v5           #pattern:Ljava/util/regex/Pattern;
    :cond_1
    if-eqz v4, :cond_4

    .line 98
    .end local v2           #j:I
    :cond_2
    if-eqz v4, :cond_5

    if-eqz v6, :cond_5

    .line 99
    new-instance v7, Lcom/android/browser/model/ReadingModeRuleProvider$Rule;

    invoke-direct {v7, p0, v6}, Lcom/android/browser/model/ReadingModeRuleProvider$Rule;-><init>(Lcom/android/browser/model/ReadingModeRuleProvider;Lcom/android/browser/model/ReadingModeRuleProvider$Rule;)V

    goto :goto_0

    .line 78
    .end local v1           #i:I
    .end local v4           #matches:Z
    :catch_0
    move-exception v0

    .line 79
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v7, "com.android.browser.model.ReadingModeRuleProvider"

    const-string v8, "error"

    invoke-static {v7, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v7, v9

    .line 80
    goto :goto_0

    .line 85
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    .restart local v1       #i:I
    .restart local v2       #j:I
    .restart local v3       #matcher:Ljava/util/regex/Matcher;
    .restart local v4       #matches:Z
    .restart local v5       #pattern:Ljava/util/regex/Pattern;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 83
    .end local v3           #matcher:Ljava/util/regex/Matcher;
    .end local v5           #pattern:Ljava/util/regex/Pattern;
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v2           #j:I
    :cond_5
    move-object v7, v9

    .line 102
    goto :goto_0
.end method
