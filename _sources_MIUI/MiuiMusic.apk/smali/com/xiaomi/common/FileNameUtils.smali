.class public final Lcom/xiaomi/common/FileNameUtils;
.super Ljava/lang/Object;
.source "FileNameUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/common/FileNameUtils$WebAddressParserException;,
        Lcom/xiaomi/common/FileNameUtils$WebAddress;,
        Lcom/xiaomi/common/FileNameUtils$UriAndFileName;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "common/FileNameUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 236
    return-void
.end method

.method public static getFileExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "filepath"

    .prologue
    .line 24
    const/4 v0, 0x0

    .line 25
    .local v0, ext:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 26
    .local v1, f:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    .line 27
    .local v3, s:Ljava/lang/String;
    const/16 v4, 0x2e

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 29
    .local v2, i:I
    if-lez v2, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    if-ge v2, v4, :cond_0

    .line 30
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 32
    :cond_0
    return-object v0
.end method

.method public static getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "url"

    .prologue
    .line 42
    invoke-static {p0}, Lcom/xiaomi/common/FileNameUtils;->guessFileName(Ljava/lang/String;)Lcom/xiaomi/common/FileNameUtils$UriAndFileName;

    move-result-object v1

    .line 43
    .local v1, filename:Lcom/xiaomi/common/FileNameUtils$UriAndFileName;
    if-eqz v1, :cond_0

    iget-object v4, v1, Lcom/xiaomi/common/FileNameUtils$UriAndFileName;->Filename:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 44
    :cond_0
    const/4 v4, 0x0

    .line 53
    :goto_0
    return-object v4

    .line 46
    :cond_1
    iget-object v3, v1, Lcom/xiaomi/common/FileNameUtils$UriAndFileName;->Filename:Ljava/lang/String;

    .line 47
    .local v3, s:Ljava/lang/String;
    const/16 v4, 0x2e

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 49
    .local v2, i:I
    const/4 v0, 0x0

    .line 50
    .local v0, ext:Ljava/lang/String;
    if-lez v2, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    if-ge v2, v4, :cond_2

    .line 51
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    :cond_2
    move-object v4, v0

    .line 53
    goto :goto_0
.end method

.method public static guessFileName(Ljava/lang/String;)Lcom/xiaomi/common/FileNameUtils$UriAndFileName;
    .locals 9
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/common/FileNameUtils$WebAddressParserException;
        }
    .end annotation

    .prologue
    .line 65
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .end local p0
    const-string v0, "url"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 67
    .restart local p0
    :cond_0
    const-string v0, "common/FileNameUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Starting download: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    new-instance v8, Lcom/xiaomi/common/FileNameUtils$UriAndFileName;

    invoke-direct {v8}, Lcom/xiaomi/common/FileNameUtils$UriAndFileName;-><init>()V

    .line 74
    .local v8, ret:Lcom/xiaomi/common/FileNameUtils$UriAndFileName;
    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Landroid/webkit/URLUtil;->decode([B)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 76
    .local v0, newUrl:Ljava/lang/String;
    new-instance v4, Lcom/xiaomi/common/FileNameUtils$WebAddress;

    invoke-direct {v4, v0}, Lcom/xiaomi/common/FileNameUtils$WebAddress;-><init>(Ljava/lang/String;)V

    .line 77
    .local v4, w:Lcom/xiaomi/common/FileNameUtils$WebAddress;
    const/4 v7, 0x0

    .line 78
    .local v7, frag:Ljava/lang/String;
    const/4 v6, 0x0

    .line 79
    .local v6, query:Ljava/lang/String;
    iget-object v5, v4, Lcom/xiaomi/common/FileNameUtils$WebAddress;->mPath:Ljava/lang/String;

    .line 81
    .local v5, path:Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v0

    .end local v0           #newUrl:Ljava/lang/String;
    if-lez v0, :cond_2

    .line 83
    const/16 v0, 0x23

    invoke-virtual {v5, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 84
    .local v0, idx:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 85
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {v5, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 86
    const/4 v1, 0x0

    invoke-virtual {v5, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 88
    :cond_1
    const/16 v0, 0x3f

    invoke-virtual {v5, v0}, Ljava/lang/String;->lastIndexOf(I)I

    .end local v0           #idx:I
    move-result v0

    .line 89
    .restart local v0       #idx:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 90
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {v5, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 91
    const/4 v1, 0x0

    invoke-virtual {v5, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 94
    .end local v0           #idx:I
    :cond_2
    new-instance v0, Ljava/net/URI;

    iget-object v1, v4, Lcom/xiaomi/common/FileNameUtils$WebAddress;->mScheme:Ljava/lang/String;

    iget-object v2, v4, Lcom/xiaomi/common/FileNameUtils$WebAddress;->mAuthInfo:Ljava/lang/String;

    iget-object v3, v4, Lcom/xiaomi/common/FileNameUtils$WebAddress;->mHost:Ljava/lang/String;

    iget v4, v4, Lcom/xiaomi/common/FileNameUtils$WebAddress;->mPort:I

    .end local v4           #w:Lcom/xiaomi/common/FileNameUtils$WebAddress;
    invoke-direct/range {v0 .. v7}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, v8, Lcom/xiaomi/common/FileNameUtils$UriAndFileName;->Uri:Ljava/net/URI;

    .line 97
    move-object v1, v5

    .line 98
    .local v1, filename:Ljava/lang/String;
    const-string v0, ""

    .line 99
    .local v0, fileext:Ljava/lang/String;
    const/16 v2, 0x2f

    invoke-virtual {v5, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 100
    .local v2, filename_idx:I
    const/4 v3, -0x1

    if-eq v3, v2, :cond_4

    .line 101
    add-int/lit8 v1, v2, 0x1

    invoke-virtual {v5, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .end local v1           #filename:Ljava/lang/String;
    move-result-object v1

    .restart local v1       #filename:Ljava/lang/String;
    move-object v2, v1

    .line 103
    .end local v1           #filename:Ljava/lang/String;
    .local v2, filename:Ljava/lang/String;
    :goto_0
    const/16 v1, 0x2e

    invoke-virtual {v2, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 104
    .local v1, filename_idx:I
    const/4 v3, -0x1

    if-eq v3, v1, :cond_3

    .line 105
    add-int/lit8 v0, v1, 0x1

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .end local v0           #fileext:Ljava/lang/String;
    move-result-object v0

    .restart local v0       #fileext:Ljava/lang/String;
    move-object v1, v0

    .line 107
    .end local v0           #fileext:Ljava/lang/String;
    .local v1, fileext:Ljava/lang/String;
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "attachment; filename=\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\""

    .end local v2           #filename:Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 108
    .local v0, contentDisposition:Ljava/lang/String;
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .end local v1           #fileext:Ljava/lang/String;
    iput-object v1, v8, Lcom/xiaomi/common/FileNameUtils$UriAndFileName;->Mimetype:Ljava/lang/String;
    :try_end_0
    .catch Lorg/apache/http/ParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_1

    .line 117
    iget-object v1, v8, Lcom/xiaomi/common/FileNameUtils$UriAndFileName;->Mimetype:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Landroid/webkit/URLUtil;->guessFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .end local p0
    iput-object p0, v8, Lcom/xiaomi/common/FileNameUtils$UriAndFileName;->Filename:Ljava/lang/String;

    .line 118
    return-object v8

    .line 109
    .end local v0           #contentDisposition:Ljava/lang/String;
    .end local v5           #path:Ljava/lang/String;
    .end local v6           #query:Ljava/lang/String;
    .end local v7           #frag:Ljava/lang/String;
    .restart local p0
    :catch_0
    move-exception v0

    .line 110
    .local v0, e:Lorg/apache/http/ParseException;
    const-string v1, "common/FileNameUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not parse url for download: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .end local p0
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 111
    new-instance p0, Lcom/xiaomi/common/FileNameUtils$WebAddressParserException;

    invoke-virtual {v0}, Lorg/apache/http/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/xiaomi/common/FileNameUtils$WebAddressParserException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p0

    .line 112
    .end local v0           #e:Lorg/apache/http/ParseException;
    .restart local p0
    :catch_1
    move-exception v0

    .line 113
    .local v0, e:Ljava/net/URISyntaxException;
    const-string v1, "common/FileNameUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not parse url for download: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .end local p0
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 114
    new-instance p0, Lcom/xiaomi/common/FileNameUtils$WebAddressParserException;

    invoke-virtual {v0}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/xiaomi/common/FileNameUtils$WebAddressParserException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p0

    .local v0, fileext:Ljava/lang/String;
    .local v1, filename_idx:I
    .restart local v2       #filename:Ljava/lang/String;
    .restart local v5       #path:Ljava/lang/String;
    .restart local v6       #query:Ljava/lang/String;
    .restart local v7       #frag:Ljava/lang/String;
    .restart local p0
    :cond_3
    move-object v1, v0

    .end local v0           #fileext:Ljava/lang/String;
    .local v1, fileext:Ljava/lang/String;
    goto :goto_1

    .restart local v0       #fileext:Ljava/lang/String;
    .local v1, filename:Ljava/lang/String;
    .local v2, filename_idx:I
    :cond_4
    move-object v2, v1

    .end local v1           #filename:Ljava/lang/String;
    .local v2, filename:Ljava/lang/String;
    goto/16 :goto_0
.end method
