.class public Lcom/android/browser/model/ReadingModeRuleProvider$Rule;
.super Ljava/lang/Object;
.source "ReadingModeRuleProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/model/ReadingModeRuleProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Rule"
.end annotation


# instance fields
.field public ads:Ljava/lang/String;

.field public comments:Ljava/lang/String;

.field public contentPaths:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public firstPage:Ljava/lang/String;

.field public isCacheable:Z

.field public isWapLike:Z

.field public isWapSite:Z

.field public mcacheKeepAlive:I

.field public nextLinkUrls:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public preLinkUrls:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/browser/model/ReadingModeRuleProvider;

.field public titlePaths:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public urlPatterns:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/browser/model/ReadingModeRuleProvider;Lcom/android/browser/model/ReadingModeRuleProvider$Rule;)V
    .locals 2
    .parameter
    .parameter "rule"

    .prologue
    const/4 v1, 0x0

    .line 233
    iput-object p1, p0, Lcom/android/browser/model/ReadingModeRuleProvider$Rule;->this$0:Lcom/android/browser/model/ReadingModeRuleProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/browser/model/ReadingModeRuleProvider$Rule;->firstPage:Ljava/lang/String;

    .line 182
    iput-boolean v1, p0, Lcom/android/browser/model/ReadingModeRuleProvider$Rule;->isWapSite:Z

    .line 183
    iput-boolean v1, p0, Lcom/android/browser/model/ReadingModeRuleProvider$Rule;->isWapLike:Z

    .line 186
    iput-boolean v1, p0, Lcom/android/browser/model/ReadingModeRuleProvider$Rule;->isCacheable:Z

    .line 234
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p2, Lcom/android/browser/model/ReadingModeRuleProvider$Rule;->urlPatterns:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/browser/model/ReadingModeRuleProvider$Rule;->urlPatterns:Ljava/util/ArrayList;

    .line 235
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p2, Lcom/android/browser/model/ReadingModeRuleProvider$Rule;->titlePaths:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/browser/model/ReadingModeRuleProvider$Rule;->titlePaths:Ljava/util/ArrayList;

    .line 236
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p2, Lcom/android/browser/model/ReadingModeRuleProvider$Rule;->contentPaths:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/browser/model/ReadingModeRuleProvider$Rule;->contentPaths:Ljava/util/ArrayList;

    .line 237
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p2, Lcom/android/browser/model/ReadingModeRuleProvider$Rule;->preLinkUrls:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/browser/model/ReadingModeRuleProvider$Rule;->preLinkUrls:Ljava/util/ArrayList;

    .line 238
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p2, Lcom/android/browser/model/ReadingModeRuleProvider$Rule;->nextLinkUrls:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/browser/model/ReadingModeRuleProvider$Rule;->nextLinkUrls:Ljava/util/ArrayList;

    .line 239
    iget-object v0, p2, Lcom/android/browser/model/ReadingModeRuleProvider$Rule;->comments:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/browser/model/ReadingModeRuleProvider$Rule;->comments:Ljava/lang/String;

    .line 240
    iget-boolean v0, p2, Lcom/android/browser/model/ReadingModeRuleProvider$Rule;->isWapSite:Z

    iput-boolean v0, p0, Lcom/android/browser/model/ReadingModeRuleProvider$Rule;->isWapSite:Z

    .line 241
    iget-boolean v0, p2, Lcom/android/browser/model/ReadingModeRuleProvider$Rule;->isWapLike:Z

    iput-boolean v0, p0, Lcom/android/browser/model/ReadingModeRuleProvider$Rule;->isWapLike:Z

    .line 242
    iget v0, p2, Lcom/android/browser/model/ReadingModeRuleProvider$Rule;->mcacheKeepAlive:I

    iput v0, p0, Lcom/android/browser/model/ReadingModeRuleProvider$Rule;->mcacheKeepAlive:I

    .line 243
    iget-boolean v0, p2, Lcom/android/browser/model/ReadingModeRuleProvider$Rule;->isCacheable:Z

    iput-boolean v0, p0, Lcom/android/browser/model/ReadingModeRuleProvider$Rule;->isCacheable:Z

    .line 244
    iget-object v0, p2, Lcom/android/browser/model/ReadingModeRuleProvider$Rule;->ads:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/browser/model/ReadingModeRuleProvider$Rule;->ads:Ljava/lang/String;

    .line 245
    iget-object v0, p2, Lcom/android/browser/model/ReadingModeRuleProvider$Rule;->firstPage:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p2, Lcom/android/browser/model/ReadingModeRuleProvider$Rule;->firstPage:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/browser/model/ReadingModeRuleProvider$Rule;->firstPage:Ljava/lang/String;

    .line 247
    :cond_0
    return-void
.end method

.method constructor <init>(Lcom/android/browser/model/ReadingModeRuleProvider;Lorg/json/JSONArray;Lorg/json/JSONArray;Lorg/json/JSONArray;Lorg/json/JSONArray;Lorg/json/JSONArray;Ljava/lang/String;ZZIZLjava/lang/String;)V
    .locals 6
    .parameter
    .parameter "urls"
    .parameter "titles"
    .parameter "contents"
    .parameter "plinks"
    .parameter "nlinks"
    .parameter "comms"
    .parameter "wapSite"
    .parameter "wapLike"
    .parameter "mcache_keep_alive"
    .parameter "cacheable"
    .parameter "advertise"

    .prologue
    .line 199
    iput-object p1, p0, Lcom/android/browser/model/ReadingModeRuleProvider$Rule;->this$0:Lcom/android/browser/model/ReadingModeRuleProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/browser/model/ReadingModeRuleProvider$Rule;->firstPage:Ljava/lang/String;

    .line 182
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/browser/model/ReadingModeRuleProvider$Rule;->isWapSite:Z

    .line 183
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/browser/model/ReadingModeRuleProvider$Rule;->isWapLike:Z

    .line 186
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/browser/model/ReadingModeRuleProvider$Rule;->isCacheable:Z

    .line 200
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/browser/model/ReadingModeRuleProvider$Rule;->urlPatterns:Ljava/util/ArrayList;

    .line 201
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/browser/model/ReadingModeRuleProvider$Rule;->titlePaths:Ljava/util/ArrayList;

    .line 202
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/browser/model/ReadingModeRuleProvider$Rule;->contentPaths:Ljava/util/ArrayList;

    .line 203
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/browser/model/ReadingModeRuleProvider$Rule;->preLinkUrls:Ljava/util/ArrayList;

    .line 204
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/browser/model/ReadingModeRuleProvider$Rule;->nextLinkUrls:Ljava/util/ArrayList;

    .line 205
    iput-object p7, p0, Lcom/android/browser/model/ReadingModeRuleProvider$Rule;->comments:Ljava/lang/String;

    .line 206
    iput-boolean p8, p0, Lcom/android/browser/model/ReadingModeRuleProvider$Rule;->isWapSite:Z

    .line 207
    iput-boolean p9, p0, Lcom/android/browser/model/ReadingModeRuleProvider$Rule;->isWapLike:Z

    .line 208
    move/from16 v0, p10

    move-object v1, p0

    iput v0, v1, Lcom/android/browser/model/ReadingModeRuleProvider$Rule;->mcacheKeepAlive:I

    .line 209
    move/from16 v0, p11

    move-object v1, p0

    iput-boolean v0, v1, Lcom/android/browser/model/ReadingModeRuleProvider$Rule;->isCacheable:Z

    .line 210
    move-object/from16 v0, p12

    move-object v1, p0

    iput-object v0, v1, Lcom/android/browser/model/ReadingModeRuleProvider$Rule;->ads:Ljava/lang/String;

    .line 211
    const/4 v3, 0x0

    .line 213
    .local v3, i:I
    const/4 v3, 0x0

    :goto_0
    :try_start_0
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 214
    iget-object v4, p0, Lcom/android/browser/model/ReadingModeRuleProvider$Rule;->urlPatterns:Ljava/util/ArrayList;

    invoke-virtual {p2, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 213
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 216
    :cond_0
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {p3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 217
    iget-object v4, p0, Lcom/android/browser/model/ReadingModeRuleProvider$Rule;->titlePaths:Ljava/util/ArrayList;

    invoke-virtual {p3, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 216
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 219
    :cond_1
    const/4 v3, 0x0

    :goto_2
    invoke-virtual {p4}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 220
    iget-object v4, p0, Lcom/android/browser/model/ReadingModeRuleProvider$Rule;->contentPaths:Ljava/util/ArrayList;

    invoke-virtual {p4, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 219
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 222
    :cond_2
    const/4 v3, 0x0

    :goto_3
    invoke-virtual {p5}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 223
    iget-object v4, p0, Lcom/android/browser/model/ReadingModeRuleProvider$Rule;->preLinkUrls:Ljava/util/ArrayList;

    invoke-virtual {p5, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 222
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 225
    :cond_3
    const/4 v3, 0x0

    :goto_4
    invoke-virtual {p6}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 226
    iget-object v4, p0, Lcom/android/browser/model/ReadingModeRuleProvider$Rule;->nextLinkUrls:Ljava/util/ArrayList;

    invoke-virtual {p6, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 228
    :catch_0
    move-exception v4

    move-object v2, v4

    .line 229
    .local v2, e:Lorg/json/JSONException;
    const-string v4, "com.android.browser.model.ReadingModeRuleProvider"

    invoke-virtual {v2}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    .end local v2           #e:Lorg/json/JSONException;
    :cond_4
    return-void
.end method
