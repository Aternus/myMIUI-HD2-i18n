.class public Lcom/android/browser/model/YellowPageDataProvider;
.super Ljava/lang/Object;
.source "YellowPageDataProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/model/YellowPageDataProvider$Category;,
        Lcom/android/browser/model/YellowPageDataProvider$Site;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "com.android.browser.model.YellowPageDataProvider"

.field private static mCategories:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/browser/model/YellowPageDataProvider$Category;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    return-void
.end method

.method public static getCategories(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 2
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/browser/model/YellowPageDataProvider$Category;",
            ">;"
        }
    .end annotation

    .prologue
    .line 22
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/browser/model/YellowPageDataProvider;->initialize(Landroid/content/Context;ZLjava/io/InputStream;)Z

    .line 23
    sget-object v0, Lcom/android/browser/model/YellowPageDataProvider;->mCategories:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static initialize(Landroid/content/Context;ZLjava/io/InputStream;)Z
    .locals 10
    .parameter "context"
    .parameter "isDataUpgrade"
    .parameter "is"

    .prologue
    .line 27
    if-nez p1, :cond_0

    sget-object v0, Lcom/android/browser/model/YellowPageDataProvider;->mCategories:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/browser/model/YellowPageDataProvider;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    const/4 p0, 0x1

    .line 83
    .end local p0
    .end local p1
    .end local p2
    :goto_0
    return p0

    .line 30
    .restart local p0
    .restart local p1
    .restart local p2
    :cond_0
    const-string v7, "com.android.browser.model.YellowPageDataProvider"

    monitor-enter v7

    .line 31
    if-nez p1, :cond_1

    :try_start_0
    sget-object p1, Lcom/android/browser/model/YellowPageDataProvider;->mCategories:Ljava/util/ArrayList;

    .end local p1
    if-eqz p1, :cond_1

    sget-object p1, Lcom/android/browser/model/YellowPageDataProvider;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-eqz p1, :cond_1

    .line 32
    const/4 p0, 0x1

    monitor-exit v7

    goto :goto_0

    .line 84
    .end local p0
    .end local p2
    :catchall_0
    move-exception p0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 34
    .restart local p0
    .restart local p2
    :cond_1
    :try_start_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    sput-object p1, Lcom/android/browser/model/YellowPageDataProvider;->mCategories:Ljava/util/ArrayList;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 35
    move-object p1, p2

    .line 37
    .local p1, stream:Ljava/io/InputStream;
    if-nez p1, :cond_8

    .line 38
    :try_start_2
    invoke-static {}, Lcom/android/browser/util/VersionableYellowPageInfo;->getInstance()Lcom/android/browser/util/VersionableYellowPageInfo;

    move-result-object p2

    .end local p2
    invoke-virtual {p2, p0}, Lcom/android/browser/util/VersionableYellowPageInfo;->getInputStream(Landroid/content/Context;)Ljava/io/InputStream;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_3

    move-result-object p0

    .end local p1           #stream:Ljava/io/InputStream;
    .local p0, stream:Ljava/io/InputStream;
    move-object v4, p0

    .line 40
    .end local p0           #stream:Ljava/io/InputStream;
    .local v4, stream:Ljava/io/InputStream;
    :goto_1
    :try_start_3
    invoke-static {v4}, Lcom/android/browser/common/Strings;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p0

    .line 41
    .local p0, jsonText:Ljava/lang/String;
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 42
    .local p1, obj:Lorg/json/JSONObject;
    const-string p0, "yellowpage"

    .end local p0           #jsonText:Ljava/lang/String;
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 44
    .local v0, patterns:Lorg/json/JSONArray;
    const/4 p0, 0x0

    .local p0, i:I
    move p1, p0

    .end local p0           #i:I
    .local p1, i:I
    :goto_2
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result p0

    if-ge p1, p0, :cond_4

    .line 45
    invoke-virtual {v0, p1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p2

    .line 47
    .local p2, pattern:Lorg/json/JSONObject;
    const-string p0, "cat"

    invoke-virtual {p2, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 48
    .local p0, catName:Ljava/lang/String;
    const-string v1, "sites"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 50
    .local v2, sites:Lorg/json/JSONArray;
    const/4 v1, 0x0

    .line 51
    .local v1, title:Ljava/lang/String;
    const/4 v5, 0x0

    .line 52
    .local v5, url:Ljava/lang/String;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 53
    .local v3, sitesList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/browser/model/YellowPageDataProvider$Site;>;"
    const/4 v6, 0x0

    .line 54
    .local v6, wapSite:Z
    const/4 p2, 0x0

    .local p2, j:I
    :goto_3
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v1

    .end local v1           #title:Ljava/lang/String;
    if-ge p2, v1, :cond_3

    .line 55
    invoke-virtual {v2, p2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 57
    .local v1, site:Lorg/json/JSONObject;
    const-string v5, "title"

    .end local v5           #url:Ljava/lang/String;
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 58
    .local v5, title:Ljava/lang/String;
    const-string v6, "url"

    .end local v6           #wapSite:Z
    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 59
    .local v6, url:Ljava/lang/String;
    const-string v8, "class"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    const-string v8, "class"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .end local v1           #site:Lorg/json/JSONObject;
    const-string v8, "m"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 60
    const/4 v1, 0x1

    .line 64
    .local v1, wapSite:Z
    :goto_4
    new-instance v8, Lcom/android/browser/model/YellowPageDataProvider$Site;

    invoke-direct {v8, v5, v6, v1}, Lcom/android/browser/model/YellowPageDataProvider$Site;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    add-int/lit8 p2, p2, 0x1

    move v9, v1

    .end local v1           #wapSite:Z
    .local v9, wapSite:Z
    move-object v1, v5

    .end local v5           #title:Ljava/lang/String;
    .local v1, title:Ljava/lang/String;
    move-object v5, v6

    .end local v6           #url:Ljava/lang/String;
    .local v5, url:Ljava/lang/String;
    move v6, v9

    .end local v9           #wapSite:Z
    .local v6, wapSite:Z
    goto :goto_3

    .line 62
    .end local v1           #title:Ljava/lang/String;
    .local v5, title:Ljava/lang/String;
    .local v6, url:Ljava/lang/String;
    :cond_2
    const/4 v1, 0x0

    .local v1, wapSite:Z
    goto :goto_4

    .line 67
    .end local v1           #wapSite:Z
    .local v5, url:Ljava/lang/String;
    .local v6, wapSite:Z
    :cond_3
    sget-object p2, Lcom/android/browser/model/YellowPageDataProvider;->mCategories:Ljava/util/ArrayList;

    .end local p2           #j:I
    new-instance v1, Lcom/android/browser/model/YellowPageDataProvider$Category;

    invoke-direct {v1, p0, v3}, Lcom/android/browser/model/YellowPageDataProvider$Category;-><init>(Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_6

    .line 44
    add-int/lit8 p0, p1, 0x1

    .end local p1           #i:I
    .local p0, i:I
    move p1, p0

    .end local p0           #i:I
    .restart local p1       #i:I
    goto :goto_2

    .line 69
    .end local v2           #sites:Lorg/json/JSONArray;
    .end local v3           #sitesList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/browser/model/YellowPageDataProvider$Site;>;"
    .end local v5           #url:Ljava/lang/String;
    .end local v6           #wapSite:Z
    :cond_4
    const/4 p1, 0x1

    .line 75
    .end local p1           #i:I
    if-eqz v4, :cond_5

    .line 77
    :try_start_4
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 80
    :cond_5
    :goto_5
    :try_start_5
    monitor-exit v7

    move p0, p1

    goto/16 :goto_0

    .line 78
    :catch_0
    move-exception p0

    .line 79
    .local p0, e:Ljava/io/IOException;
    const-string p2, "com.android.browser.model.YellowPageDataProvider"

    invoke-virtual {p0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p0

    .end local p0           #e:Ljava/io/IOException;
    invoke-static {p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_5

    .line 70
    .end local v0           #patterns:Lorg/json/JSONArray;
    .end local v4           #stream:Ljava/io/InputStream;
    .local p0, context:Landroid/content/Context;
    .local p1, stream:Ljava/io/InputStream;
    :catch_1
    move-exception p0

    .line 71
    .local p0, e:Ljava/io/IOException;
    :goto_6
    :try_start_6
    const-string p2, "com.android.browser.model.YellowPageDataProvider"

    invoke-virtual {p0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p0

    .end local p0           #e:Ljava/io/IOException;
    invoke-static {p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 75
    if-eqz p1, :cond_7

    .line 77
    :try_start_7
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    move-object p0, p1

    .line 83
    .end local p1           #stream:Ljava/io/InputStream;
    .local p0, stream:Ljava/io/InputStream;
    :goto_7
    const/4 p0, 0x0

    :try_start_8
    monitor-exit v7

    goto/16 :goto_0

    .line 78
    .end local p0           #stream:Ljava/io/InputStream;
    .restart local p1       #stream:Ljava/io/InputStream;
    :catch_2
    move-exception p0

    .line 79
    .local p0, e:Ljava/io/IOException;
    const-string p2, "com.android.browser.model.YellowPageDataProvider"

    invoke-virtual {p0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p0

    .end local p0           #e:Ljava/io/IOException;
    invoke-static {p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-object p0, p1

    .line 80
    .end local p1           #stream:Ljava/io/InputStream;
    .local p0, stream:Ljava/io/InputStream;
    goto :goto_7

    .line 72
    .local p0, context:Landroid/content/Context;
    .restart local p1       #stream:Ljava/io/InputStream;
    :catch_3
    move-exception p0

    .line 73
    .local p0, e:Lorg/json/JSONException;
    :goto_8
    :try_start_9
    const-string p2, "com.android.browser.model.YellowPageDataProvider"

    invoke-virtual {p0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object p0

    .end local p0           #e:Lorg/json/JSONException;
    invoke-static {p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 75
    if-eqz p1, :cond_7

    .line 77
    :try_start_a
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    move-object p0, p1

    .line 80
    .end local p1           #stream:Ljava/io/InputStream;
    .local p0, stream:Ljava/io/InputStream;
    goto :goto_7

    .line 78
    .end local p0           #stream:Ljava/io/InputStream;
    .restart local p1       #stream:Ljava/io/InputStream;
    :catch_4
    move-exception p0

    .line 79
    .local p0, e:Ljava/io/IOException;
    :try_start_b
    const-string p2, "com.android.browser.model.YellowPageDataProvider"

    invoke-virtual {p0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p0

    .end local p0           #e:Ljava/io/IOException;
    invoke-static {p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    move-object p0, p1

    .line 80
    .end local p1           #stream:Ljava/io/InputStream;
    .local p0, stream:Ljava/io/InputStream;
    goto :goto_7

    .line 75
    .end local p0           #stream:Ljava/io/InputStream;
    .restart local p1       #stream:Ljava/io/InputStream;
    :catchall_1
    move-exception p0

    move-object v9, p0

    move-object p0, p1

    .end local p1           #stream:Ljava/io/InputStream;
    .restart local p0       #stream:Ljava/io/InputStream;
    move-object p1, v9

    :goto_9
    if-eqz p0, :cond_6

    .line 77
    :try_start_c
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_5

    .line 80
    .end local p0           #stream:Ljava/io/InputStream;
    :cond_6
    :goto_a
    :try_start_d
    throw p1

    .line 78
    .restart local p0       #stream:Ljava/io/InputStream;
    :catch_5
    move-exception p0

    .line 79
    .local p0, e:Ljava/io/IOException;
    const-string p2, "com.android.browser.model.YellowPageDataProvider"

    invoke-virtual {p0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p0

    .end local p0           #e:Ljava/io/IOException;
    invoke-static {p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto :goto_a

    .line 75
    .restart local v4       #stream:Ljava/io/InputStream;
    :catchall_2
    move-exception p0

    move-object p1, p0

    move-object p0, v4

    .end local v4           #stream:Ljava/io/InputStream;
    .local p0, stream:Ljava/io/InputStream;
    goto :goto_9

    .line 72
    .end local p0           #stream:Ljava/io/InputStream;
    .restart local v4       #stream:Ljava/io/InputStream;
    :catch_6
    move-exception p0

    move-object p1, v4

    .end local v4           #stream:Ljava/io/InputStream;
    .restart local p1       #stream:Ljava/io/InputStream;
    goto :goto_8

    .line 70
    .end local p1           #stream:Ljava/io/InputStream;
    .restart local v4       #stream:Ljava/io/InputStream;
    :catch_7
    move-exception p0

    move-object p1, v4

    .end local v4           #stream:Ljava/io/InputStream;
    .restart local p1       #stream:Ljava/io/InputStream;
    goto :goto_6

    :cond_7
    move-object p0, p1

    .end local p1           #stream:Ljava/io/InputStream;
    .restart local p0       #stream:Ljava/io/InputStream;
    goto :goto_7

    .local p0, context:Landroid/content/Context;
    .restart local p1       #stream:Ljava/io/InputStream;
    .local p2, is:Ljava/io/InputStream;
    :cond_8
    move-object v4, p1

    .end local p1           #stream:Ljava/io/InputStream;
    .restart local v4       #stream:Ljava/io/InputStream;
    goto/16 :goto_1
.end method
