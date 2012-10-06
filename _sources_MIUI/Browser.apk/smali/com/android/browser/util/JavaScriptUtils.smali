.class public Lcom/android/browser/util/JavaScriptUtils;
.super Ljava/lang/Object;
.source "JavaScriptUtils.java"


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "browser.util"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildParameterString([Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "strings"

    .prologue
    const-string v7, "\'"

    .line 145
    array-length v5, p0

    if-nez v5, :cond_0

    .line 146
    const-string v5, "\'\'"

    .line 160
    :goto_0
    return-object v5

    .line 149
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "\'"

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 150
    .local v3, paramBuilder:Ljava/lang/StringBuilder;
    move-object v0, p0

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v2, :cond_2

    aget-object v4, v0, v1

    .line 151
    .local v4, s:Ljava/lang/String;
    if-nez v4, :cond_1

    .line 152
    const-string v4, ""

    .line 154
    :cond_1
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 157
    .end local v4           #s:Ljava/lang/String;
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 158
    const-string v5, "\'"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method public static buildStandardParameterString([Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "strings"

    .prologue
    const/4 v7, 0x1

    const-string v8, "\'"

    .line 127
    array-length v5, p0

    if-nez v5, :cond_0

    .line 128
    const-string v5, "\'\'"

    .line 140
    :goto_0
    return-object v5

    .line 131
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 132
    .local v3, paramBuilder:Ljava/lang/StringBuilder;
    move-object v0, p0

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v2, :cond_2

    aget-object v4, v0, v1

    .line 133
    .local v4, s:Ljava/lang/String;
    const-string v5, "\'"

    invoke-virtual {v4, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "\'"

    invoke-virtual {v4, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 134
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v7

    invoke-virtual {v4, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 135
    :cond_1
    const-string v5, "\'"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\',"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 138
    .end local v4           #s:Ljava/lang/String;
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    sub-int/2addr v5, v7

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 140
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method public static callJSFunctionFromAsset(Lcom/android/browser/ui/MiRenWebViewBase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .parameter "view"
    .parameter "fileName"
    .parameter "function"
    .parameter "parameters"

    .prologue
    const-string v8, "browser.util"

    .line 72
    invoke-virtual {p0}, Lcom/android/browser/ui/MiRenWebViewBase;->isDestroyed()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 100
    :cond_0
    :goto_0
    return-void

    .line 75
    :cond_1
    invoke-virtual {p0}, Lcom/android/browser/ui/MiRenWebViewBase;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 76
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    .line 77
    .local v1, am:Landroid/content/res/AssetManager;
    const/4 v4, 0x0

    .line 79
    .local v4, is:Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v4

    .line 80
    if-nez v4, :cond_2

    .line 93
    if-eqz v4, :cond_0

    .line 95
    :try_start_1
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 96
    :catch_0
    move-exception v2

    .line 97
    .local v2, e:Ljava/io/IOException;
    const-string v6, "browser.util"

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 83
    .end local v2           #e:Ljava/io/IOException;
    :cond_2
    :try_start_2
    invoke-static {v4}, Lcom/android/browser/common/Strings;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v5

    .line 84
    .local v5, script:Ljava/lang/String;
    if-eqz v5, :cond_3

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    move-result v6

    if-eqz v6, :cond_4

    .line 93
    :cond_3
    if-eqz v4, :cond_0

    .line 95
    :try_start_3
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 96
    :catch_1
    move-exception v2

    .line 97
    .restart local v2       #e:Ljava/io/IOException;
    const-string v6, "browser.util"

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 87
    .end local v2           #e:Ljava/io/IOException;
    :cond_4
    :try_start_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "javascript:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ");"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 88
    .local v3, finalScript:Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/android/browser/ui/MiRenWebViewBase;->loadUrl(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 93
    if-eqz v4, :cond_0

    .line 95
    :try_start_5
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    .line 96
    :catch_2
    move-exception v2

    .line 97
    .restart local v2       #e:Ljava/io/IOException;
    const-string v6, "browser.util"

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 89
    .end local v2           #e:Ljava/io/IOException;
    .end local v3           #finalScript:Ljava/lang/String;
    .end local v5           #script:Ljava/lang/String;
    :catch_3
    move-exception v6

    move-object v2, v6

    .line 90
    .restart local v2       #e:Ljava/io/IOException;
    :try_start_6
    const-string v6, "browser.util"

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 93
    if-eqz v4, :cond_0

    .line 95
    :try_start_7
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto/16 :goto_0

    .line 96
    :catch_4
    move-exception v2

    .line 97
    const-string v6, "browser.util"

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 93
    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v6

    if-eqz v4, :cond_5

    .line 95
    :try_start_8
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 98
    :cond_5
    :goto_1
    throw v6

    .line 96
    :catch_5
    move-exception v2

    .line 97
    .restart local v2       #e:Ljava/io/IOException;
    const-string v7, "browser.util"

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static callJSFunctionFromAsset(Lcom/android/browser/ui/MiRenWebViewBase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .parameter "view"
    .parameter "fileName"
    .parameter "function"
    .parameter "parameters"

    .prologue
    .line 68
    invoke-static {p3}, Lcom/android/browser/util/JavaScriptUtils;->buildStandardParameterString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/android/browser/util/JavaScriptUtils;->callJSFunctionFromAsset(Lcom/android/browser/ui/MiRenWebViewBase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    return-void
.end method

.method public static callJSFunctionFromMultipleAssets(Lcom/android/browser/ui/MiRenWebViewBase;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter "view"
    .parameter "fileNames"
    .parameter "function"
    .parameter "parameters"

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/android/browser/ui/MiRenWebViewBase;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 65
    .end local p0
    .end local p1
    .end local p2
    :cond_0
    :goto_0
    return-void

    .line 36
    .restart local p0
    .restart local p1
    .restart local p2
    :cond_1
    invoke-virtual {p0}, Lcom/android/browser/ui/MiRenWebViewBase;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 37
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 38
    .local v0, am:Landroid/content/res/AssetManager;
    const/4 v3, 0x0

    .line 40
    .local v3, is:Ljava/io/InputStream;
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    .local v2, finalScripiBuilder:Ljava/lang/StringBuilder;
    move-object p1, p1

    .local p1, arr$:[Ljava/lang/String;
    array-length v5, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .local v5, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    move-object v4, v3

    .end local v3           #is:Ljava/io/InputStream;
    .local v4, is:Ljava/io/InputStream;
    move v3, v1

    .end local v1           #i$:I
    .local v3, i$:I
    :goto_1
    if-ge v3, v5, :cond_4

    :try_start_1
    aget-object v1, p1, v3

    .line 42
    .local v1, fileName:Ljava/lang/String;
    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    move-result-object v4

    .line 43
    if-nez v4, :cond_2

    .line 58
    if-eqz v4, :cond_0

    .line 60
    :try_start_2
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 61
    :catch_0
    move-exception p0

    .line 62
    .local p0, e:Ljava/io/IOException;
    const-string p1, "browser.util"

    .end local p1           #arr$:[Ljava/lang/String;
    invoke-virtual {p0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p0

    .end local p0           #e:Ljava/io/IOException;
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 46
    .local p0, view:Lcom/android/browser/ui/MiRenWebViewBase;
    .restart local p1       #arr$:[Ljava/lang/String;
    :cond_2
    :try_start_3
    invoke-static {v4}, Lcom/android/browser/common/Strings;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    .line 48
    .local v1, script:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 49
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    :cond_3
    add-int/lit8 v1, v3, 0x1

    .end local v3           #i$:I
    .local v1, i$:I
    move v3, v1

    .end local v1           #i$:I
    .restart local v3       #i$:I
    goto :goto_1

    .line 52
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    .end local p1           #arr$:[Ljava/lang/String;
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "javascript:"

    .end local v0           #am:Landroid/content/res/AssetManager;
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "("

    .end local p2
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ");"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 53
    .local p1, finalScript:Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/android/browser/ui/MiRenWebViewBase;->loadUrl(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    .line 58
    if-eqz v4, :cond_7

    .line 60
    :try_start_4
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    move-object p0, v4

    .line 63
    .end local v4           #is:Ljava/io/InputStream;
    .local p0, is:Ljava/io/InputStream;
    goto :goto_0

    .line 61
    .restart local v4       #is:Ljava/io/InputStream;
    .local p0, view:Lcom/android/browser/ui/MiRenWebViewBase;
    :catch_1
    move-exception p0

    .line 62
    .local p0, e:Ljava/io/IOException;
    const-string p1, "browser.util"

    .end local p1           #finalScript:Ljava/lang/String;
    invoke-virtual {p0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p0

    .end local p0           #e:Ljava/io/IOException;
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object p0, v4

    .line 63
    .end local v4           #is:Ljava/io/InputStream;
    .local p0, is:Ljava/io/InputStream;
    goto/16 :goto_0

    .line 54
    .end local v2           #finalScripiBuilder:Ljava/lang/StringBuilder;
    .end local v5           #len$:I
    .restart local v0       #am:Landroid/content/res/AssetManager;
    .local v3, is:Ljava/io/InputStream;
    .local p0, view:Lcom/android/browser/ui/MiRenWebViewBase;
    .restart local p2
    :catch_2
    move-exception p0

    move-object p1, v3

    .line 55
    .end local v0           #am:Landroid/content/res/AssetManager;
    .end local v3           #is:Ljava/io/InputStream;
    .end local p2
    .local p0, e:Ljava/io/IOException;
    .local p1, is:Ljava/io/InputStream;
    :goto_2
    :try_start_5
    const-string p2, "browser.util"

    invoke-virtual {p0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p0

    .end local p0           #e:Ljava/io/IOException;
    invoke-static {p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 58
    if-eqz p1, :cond_6

    .line 60
    :try_start_6
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    move-object p0, p1

    .line 63
    .end local p1           #is:Ljava/io/InputStream;
    .local p0, is:Ljava/io/InputStream;
    goto/16 :goto_0

    .line 61
    .end local p0           #is:Ljava/io/InputStream;
    .restart local p1       #is:Ljava/io/InputStream;
    :catch_3
    move-exception p0

    .line 62
    .local p0, e:Ljava/io/IOException;
    const-string p2, "browser.util"

    invoke-virtual {p0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p0

    .end local p0           #e:Ljava/io/IOException;
    invoke-static {p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object p0, p1

    .line 63
    .end local p1           #is:Ljava/io/InputStream;
    .local p0, is:Ljava/io/InputStream;
    goto/16 :goto_0

    .line 58
    .restart local v0       #am:Landroid/content/res/AssetManager;
    .restart local v3       #is:Ljava/io/InputStream;
    .local p0, view:Lcom/android/browser/ui/MiRenWebViewBase;
    .restart local p2
    :catchall_0
    move-exception p0

    move-object p1, p0

    move-object p0, v3

    .end local v0           #am:Landroid/content/res/AssetManager;
    .end local v3           #is:Ljava/io/InputStream;
    .end local p2
    .local p0, is:Ljava/io/InputStream;
    :goto_3
    if-eqz p0, :cond_5

    .line 60
    :try_start_7
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 63
    .end local p0           #is:Ljava/io/InputStream;
    :cond_5
    :goto_4
    throw p1

    .line 61
    .restart local p0       #is:Ljava/io/InputStream;
    :catch_4
    move-exception p0

    .line 62
    .local p0, e:Ljava/io/IOException;
    const-string p2, "browser.util"

    invoke-virtual {p0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p0

    .end local p0           #e:Ljava/io/IOException;
    invoke-static {p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 58
    .restart local v2       #finalScripiBuilder:Ljava/lang/StringBuilder;
    .local v3, i$:I
    .restart local v4       #is:Ljava/io/InputStream;
    .restart local v5       #len$:I
    .local p0, view:Lcom/android/browser/ui/MiRenWebViewBase;
    :catchall_1
    move-exception p0

    move-object p1, p0

    move-object p0, v4

    .end local v4           #is:Ljava/io/InputStream;
    .local p0, is:Ljava/io/InputStream;
    goto :goto_3

    .end local v2           #finalScripiBuilder:Ljava/lang/StringBuilder;
    .end local v3           #i$:I
    .end local v5           #len$:I
    .end local p0           #is:Ljava/io/InputStream;
    .restart local p1       #is:Ljava/io/InputStream;
    :catchall_2
    move-exception p0

    move-object v7, p0

    move-object p0, p1

    .end local p1           #is:Ljava/io/InputStream;
    .restart local p0       #is:Ljava/io/InputStream;
    move-object p1, v7

    goto :goto_3

    .line 54
    .restart local v2       #finalScripiBuilder:Ljava/lang/StringBuilder;
    .restart local v3       #i$:I
    .restart local v4       #is:Ljava/io/InputStream;
    .restart local v5       #len$:I
    .local p0, view:Lcom/android/browser/ui/MiRenWebViewBase;
    :catch_5
    move-exception p0

    move-object p1, v4

    .end local v4           #is:Ljava/io/InputStream;
    .restart local p1       #is:Ljava/io/InputStream;
    goto :goto_2

    .end local v2           #finalScripiBuilder:Ljava/lang/StringBuilder;
    .end local v3           #i$:I
    .end local v5           #len$:I
    .end local p0           #view:Lcom/android/browser/ui/MiRenWebViewBase;
    :cond_6
    move-object p0, p1

    .end local p1           #is:Ljava/io/InputStream;
    .local p0, is:Ljava/io/InputStream;
    goto/16 :goto_0

    .restart local v2       #finalScripiBuilder:Ljava/lang/StringBuilder;
    .restart local v3       #i$:I
    .restart local v4       #is:Ljava/io/InputStream;
    .restart local v5       #len$:I
    .local p0, view:Lcom/android/browser/ui/MiRenWebViewBase;
    .local p1, finalScript:Ljava/lang/String;
    :cond_7
    move-object p0, v4

    .end local v4           #is:Ljava/io/InputStream;
    .local p0, is:Ljava/io/InputStream;
    goto/16 :goto_0
.end method

.method public static callJSFunctionFromMultipleAssets(Lcom/android/browser/ui/MiRenWebViewBase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .parameter "view"
    .parameter "fileNames"
    .parameter "function"
    .parameter "parameters"

    .prologue
    .line 29
    invoke-static {p3}, Lcom/android/browser/util/JavaScriptUtils;->buildStandardParameterString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/android/browser/util/JavaScriptUtils;->callJSFunctionFromMultipleAssets(Lcom/android/browser/ui/MiRenWebViewBase;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    return-void
.end method

.method public static executeJSCode(Lcom/android/browser/ui/MiRenWebViewBase;Ljava/lang/String;)V
    .locals 2
    .parameter "view"
    .parameter "code"

    .prologue
    .line 19
    invoke-virtual {p0}, Lcom/android/browser/ui/MiRenWebViewBase;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "javascript:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/browser/ui/MiRenWebViewBase;->loadUrl(Ljava/lang/String;)V

    .line 22
    :cond_0
    return-void
.end method

.method public static varargs executeJSFunction(Lcom/android/browser/ui/MiRenWebViewBase;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2
    .parameter "view"
    .parameter "function"
    .parameter "args"

    .prologue
    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Lcom/android/browser/util/JavaScriptUtils;->buildStandardParameterString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/browser/util/JavaScriptUtils;->executeJSCode(Lcom/android/browser/ui/MiRenWebViewBase;Ljava/lang/String;)V

    .line 26
    return-void
.end method

.method public static preprocessJSParameters(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "parameters"

    .prologue
    .line 103
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 104
    const-string v3, ""

    .line 122
    :goto_0
    return-object v3

    .line 107
    :cond_0
    const-string v2, ""

    .line 108
    .local v2, result:Ljava/lang/String;
    const-string v3, "\n"

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 109
    .local v1, innerHTMLPars:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v3, v1

    if-ge v0, v3, :cond_1

    .line 110
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v1, v0

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 109
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 113
    :cond_1
    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 114
    const-string v2, ""

    .line 115
    const/4 v0, 0x0

    :goto_2
    array-length v3, v1

    if-ge v0, v3, :cond_3

    .line 117
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v1, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 118
    array-length v3, v1

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    if-eq v0, v3, :cond_2

    .line 119
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\\\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 115
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    move-object v3, v2

    .line 122
    goto :goto_0
.end method
