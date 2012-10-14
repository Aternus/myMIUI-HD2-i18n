.class public Lcom/android/browser/controller/ReadingModeController$ReadingData;
.super Ljava/lang/Object;
.source "ReadingModeController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/controller/ReadingModeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReadingData"
.end annotation


# instance fields
.field public comments:Ljava/lang/String;

.field public content:Ljava/lang/String;

.field public imageUrl:Ljava/lang/String;

.field public nextLink:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 845
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromCacheString(Ljava/lang/String;)Lcom/android/browser/controller/ReadingModeController$ReadingData;
    .locals 6
    .parameter "val"

    .prologue
    const/4 v5, 0x0

    .line 876
    const-string v3, "{"

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    move-object v3, v5

    .line 892
    :goto_0
    return-object v3

    .line 880
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 881
    .local v0, dat:Lorg/json/JSONObject;
    new-instance v2, Lcom/android/browser/controller/ReadingModeController$ReadingData;

    invoke-direct {v2}, Lcom/android/browser/controller/ReadingModeController$ReadingData;-><init>()V

    .line 882
    .local v2, ret:Lcom/android/browser/controller/ReadingModeController$ReadingData;
    const-string v3, "url"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/browser/controller/ReadingModeController$ReadingData;->url:Ljava/lang/String;

    .line 883
    const-string v3, "title"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/browser/controller/ReadingModeController$ReadingData;->title:Ljava/lang/String;

    .line 884
    const-string v3, "content"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/browser/controller/ReadingModeController$ReadingData;->content:Ljava/lang/String;

    .line 885
    const-string v3, "nextLink"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/browser/controller/ReadingModeController$ReadingData;->nextLink:Ljava/lang/String;

    .line 886
    const-string v3, "comments"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/browser/controller/ReadingModeController$ReadingData;->comments:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v2

    .line 887
    goto :goto_0

    .line 888
    .end local v0           #dat:Lorg/json/JSONObject;
    .end local v2           #ret:Lcom/android/browser/controller/ReadingModeController$ReadingData;
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 889
    .local v1, e:Lorg/json/JSONException;
    invoke-static {}, Lcom/android/browser/controller/ReadingModeController;->access$100()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ignored error"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v3, v5

    .line 892
    goto :goto_0
.end method


# virtual methods
.method public toCacheString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 854
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 856
    .local v1, ret:Lorg/json/JSONObject;
    :try_start_0
    iget-object v2, p0, Lcom/android/browser/controller/ReadingModeController$ReadingData;->url:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 857
    const-string v2, "url"

    iget-object v3, p0, Lcom/android/browser/controller/ReadingModeController$ReadingData;->url:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 858
    :cond_0
    iget-object v2, p0, Lcom/android/browser/controller/ReadingModeController$ReadingData;->title:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 859
    const-string v2, "title"

    iget-object v3, p0, Lcom/android/browser/controller/ReadingModeController$ReadingData;->title:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 860
    :cond_1
    iget-object v2, p0, Lcom/android/browser/controller/ReadingModeController$ReadingData;->content:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 861
    const-string v2, "content"

    iget-object v3, p0, Lcom/android/browser/controller/ReadingModeController$ReadingData;->content:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 862
    :cond_2
    iget-object v2, p0, Lcom/android/browser/controller/ReadingModeController$ReadingData;->nextLink:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 863
    const-string v2, "nextLink"

    iget-object v3, p0, Lcom/android/browser/controller/ReadingModeController$ReadingData;->nextLink:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 864
    :cond_3
    iget-object v2, p0, Lcom/android/browser/controller/ReadingModeController$ReadingData;->imageUrl:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 865
    const-string v2, "imageUrl"

    iget-object v3, p0, Lcom/android/browser/controller/ReadingModeController$ReadingData;->imageUrl:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 867
    :cond_4
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 872
    :goto_0
    return-object v2

    .line 868
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 869
    .local v0, e:Lorg/json/JSONException;
    invoke-static {}, Lcom/android/browser/controller/ReadingModeController;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ignored error"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 872
    const/4 v2, 0x0

    goto :goto_0
.end method
