.class public Lcom/android/providers/downloads/DownloadInfo$Reader;
.super Ljava/lang/Object;
.source "DownloadInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/downloads/DownloadInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Reader"
.end annotation


# instance fields
.field private mCursor:Landroid/database/Cursor;

.field private mNewChars:Landroid/database/CharArrayBuffer;

.field private mOldChars:Landroid/database/CharArrayBuffer;

.field private mResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;Landroid/database/Cursor;)V
    .locals 0
    .parameter "resolver"
    .parameter "cursor"

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/android/providers/downloads/DownloadInfo$Reader;->mResolver:Landroid/content/ContentResolver;

    .line 57
    iput-object p2, p0, Lcom/android/providers/downloads/DownloadInfo$Reader;->mCursor:Landroid/database/Cursor;

    .line 58
    return-void
.end method

.method private addHeader(Lcom/android/providers/downloads/DownloadInfo;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "info"
    .parameter "header"
    .parameter "value"

    .prologue
    .line 162
    #getter for: Lcom/android/providers/downloads/DownloadInfo;->mRequestHeaders:Ljava/util/List;
    invoke-static {p1}, Lcom/android/providers/downloads/DownloadInfo;->access$100(Lcom/android/providers/downloads/DownloadInfo;)Ljava/util/List;

    move-result-object v0

    invoke-static {p2, p3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    return-void
.end method

.method private getInt(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 2
    .parameter "column"

    .prologue
    .line 197
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadInfo$Reader;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/providers/downloads/DownloadInfo$Reader;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method private getLong(Ljava/lang/String;)Ljava/lang/Long;
    .locals 2
    .parameter "column"

    .prologue
    .line 201
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadInfo$Reader;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/providers/downloads/DownloadInfo$Reader;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method private getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "old"
    .parameter "column"

    .prologue
    const/4 v7, 0x0

    .line 170
    iget-object v5, p0, Lcom/android/providers/downloads/DownloadInfo$Reader;->mCursor:Landroid/database/Cursor;

    invoke-interface {v5, p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 171
    .local v1, index:I
    if-nez p1, :cond_0

    .line 172
    iget-object v5, p0, Lcom/android/providers/downloads/DownloadInfo$Reader;->mCursor:Landroid/database/Cursor;

    invoke-interface {v5, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 193
    :goto_0
    return-object v5

    .line 174
    :cond_0
    iget-object v5, p0, Lcom/android/providers/downloads/DownloadInfo$Reader;->mNewChars:Landroid/database/CharArrayBuffer;

    if-nez v5, :cond_1

    .line 175
    new-instance v5, Landroid/database/CharArrayBuffer;

    const/16 v6, 0x80

    invoke-direct {v5, v6}, Landroid/database/CharArrayBuffer;-><init>(I)V

    iput-object v5, p0, Lcom/android/providers/downloads/DownloadInfo$Reader;->mNewChars:Landroid/database/CharArrayBuffer;

    .line 177
    :cond_1
    iget-object v5, p0, Lcom/android/providers/downloads/DownloadInfo$Reader;->mCursor:Landroid/database/Cursor;

    iget-object v6, p0, Lcom/android/providers/downloads/DownloadInfo$Reader;->mNewChars:Landroid/database/CharArrayBuffer;

    invoke-interface {v5, v1, v6}, Landroid/database/Cursor;->copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V

    .line 178
    iget-object v5, p0, Lcom/android/providers/downloads/DownloadInfo$Reader;->mNewChars:Landroid/database/CharArrayBuffer;

    iget v2, v5, Landroid/database/CharArrayBuffer;->sizeCopied:I

    .line 179
    .local v2, length:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-eq v2, v5, :cond_2

    .line 180
    new-instance v5, Ljava/lang/String;

    iget-object v6, p0, Lcom/android/providers/downloads/DownloadInfo$Reader;->mNewChars:Landroid/database/CharArrayBuffer;

    iget-object v6, v6, Landroid/database/CharArrayBuffer;->data:[C

    invoke-direct {v5, v6, v7, v2}, Ljava/lang/String;-><init>([CII)V

    goto :goto_0

    .line 182
    :cond_2
    iget-object v5, p0, Lcom/android/providers/downloads/DownloadInfo$Reader;->mOldChars:Landroid/database/CharArrayBuffer;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/providers/downloads/DownloadInfo$Reader;->mOldChars:Landroid/database/CharArrayBuffer;

    iget v5, v5, Landroid/database/CharArrayBuffer;->sizeCopied:I

    if-ge v5, v2, :cond_4

    .line 183
    :cond_3
    new-instance v5, Landroid/database/CharArrayBuffer;

    invoke-direct {v5, v2}, Landroid/database/CharArrayBuffer;-><init>(I)V

    iput-object v5, p0, Lcom/android/providers/downloads/DownloadInfo$Reader;->mOldChars:Landroid/database/CharArrayBuffer;

    .line 185
    :cond_4
    iget-object v5, p0, Lcom/android/providers/downloads/DownloadInfo$Reader;->mOldChars:Landroid/database/CharArrayBuffer;

    iget-object v4, v5, Landroid/database/CharArrayBuffer;->data:[C

    .line 186
    .local v4, oldArray:[C
    iget-object v5, p0, Lcom/android/providers/downloads/DownloadInfo$Reader;->mNewChars:Landroid/database/CharArrayBuffer;

    iget-object v3, v5, Landroid/database/CharArrayBuffer;->data:[C

    .line 187
    .local v3, newArray:[C
    invoke-virtual {p1, v7, v2, v4, v7}, Ljava/lang/String;->getChars(II[CI)V

    .line 188
    const/4 v5, 0x1

    sub-int v0, v2, v5

    .local v0, i:I
    :goto_1
    if-ltz v0, :cond_6

    .line 189
    aget-char v5, v4, v0

    aget-char v6, v3, v0

    if-eq v5, v6, :cond_5

    .line 190
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v3, v7, v2}, Ljava/lang/String;-><init>([CII)V

    goto :goto_0

    .line 188
    :cond_5
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_6
    move-object v5, p1

    .line 193
    goto :goto_0
.end method

.method private getUriDomain(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "uriString"

    .prologue
    const/4 v6, 0x0

    .line 115
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v6

    .line 133
    :goto_0
    return-object v3

    .line 119
    :cond_0
    const/4 v1, 0x0

    .line 121
    .local v1, uri:Ljava/net/URI;
    :try_start_0
    invoke-static {p1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 126
    const/4 v2, 0x0

    .line 127
    .local v2, uriAuth:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 128
    invoke-virtual {v1}, Ljava/net/URI;->getAuthority()Ljava/lang/String;

    move-result-object v2

    .line 129
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 130
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    :cond_1
    move-object v3, v2

    .line 133
    goto :goto_0

    .line 122
    .end local v2           #uriAuth:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 123
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v3, "DownloadManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Illegal url:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v3, v6

    .line 124
    goto :goto_0
.end method

.method private readRequestHeaders(Lcom/android/providers/downloads/DownloadInfo;)V
    .locals 9
    .parameter "info"

    .prologue
    const/4 v2, 0x0

    .line 137
    #getter for: Lcom/android/providers/downloads/DownloadInfo;->mRequestHeaders:Ljava/util/List;
    invoke-static {p1}, Lcom/android/providers/downloads/DownloadInfo;->access$100(Lcom/android/providers/downloads/DownloadInfo;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 138
    invoke-virtual {p1}, Lcom/android/providers/downloads/DownloadInfo;->getAllDownloadsUri()Landroid/net/Uri;

    move-result-object v0

    const-string v3, "headers"

    invoke-static {v0, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 140
    .local v1, headerUri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadInfo$Reader;->mResolver:Landroid/content/ContentResolver;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 142
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    const-string v0, "header"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 144
    .local v7, headerIndex:I
    const-string v0, "value"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 146
    .local v8, valueIndex:I
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_0

    .line 147
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v0, v2}, Lcom/android/providers/downloads/DownloadInfo$Reader;->addHeader(Lcom/android/providers/downloads/DownloadInfo;Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 150
    .end local v7           #headerIndex:I
    .end local v8           #valueIndex:I
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    .restart local v7       #headerIndex:I
    .restart local v8       #valueIndex:I
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 153
    iget-object v0, p1, Lcom/android/providers/downloads/DownloadInfo;->mCookies:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 154
    const-string v0, "Cookie"

    iget-object v2, p1, Lcom/android/providers/downloads/DownloadInfo;->mCookies:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v2}, Lcom/android/providers/downloads/DownloadInfo$Reader;->addHeader(Lcom/android/providers/downloads/DownloadInfo;Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    :cond_1
    iget-object v0, p1, Lcom/android/providers/downloads/DownloadInfo;->mReferer:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 157
    const-string v0, "Referer"

    iget-object v2, p1, Lcom/android/providers/downloads/DownloadInfo;->mReferer:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v2}, Lcom/android/providers/downloads/DownloadInfo$Reader;->addHeader(Lcom/android/providers/downloads/DownloadInfo;Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    :cond_2
    return-void
.end method


# virtual methods
.method public newDownloadInfo(Landroid/content/Context;Lcom/android/providers/downloads/SystemFacade;)Lcom/android/providers/downloads/DownloadInfo;
    .locals 2
    .parameter "context"
    .parameter "systemFacade"

    .prologue
    .line 61
    new-instance v0, Lcom/android/providers/downloads/DownloadInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/android/providers/downloads/DownloadInfo;-><init>(Landroid/content/Context;Lcom/android/providers/downloads/SystemFacade;Lcom/android/providers/downloads/DownloadInfo$1;)V

    .line 62
    .local v0, info:Lcom/android/providers/downloads/DownloadInfo;
    invoke-virtual {p0, v0}, Lcom/android/providers/downloads/DownloadInfo$Reader;->updateFromDatabase(Lcom/android/providers/downloads/DownloadInfo;)V

    .line 63
    invoke-direct {p0, v0}, Lcom/android/providers/downloads/DownloadInfo$Reader;->readRequestHeaders(Lcom/android/providers/downloads/DownloadInfo;)V

    .line 64
    return-object v0
.end method

.method public updateFromDatabase(Lcom/android/providers/downloads/DownloadInfo;)V
    .locals 5
    .parameter "info"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 68
    const-string v1, "_id"

    invoke-direct {p0, v1}, Lcom/android/providers/downloads/DownloadInfo$Reader;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iput-wide v1, p1, Lcom/android/providers/downloads/DownloadInfo;->mId:J

    .line 69
    iget-object v1, p1, Lcom/android/providers/downloads/DownloadInfo;->mUri:Ljava/lang/String;

    const-string v2, "uri"

    invoke-direct {p0, v1, v2}, Lcom/android/providers/downloads/DownloadInfo$Reader;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/providers/downloads/DownloadInfo;->mUri:Ljava/lang/String;

    .line 70
    iget-object v1, p1, Lcom/android/providers/downloads/DownloadInfo;->mUri:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/providers/downloads/DownloadInfo$Reader;->getUriDomain(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/providers/downloads/DownloadInfo;->mUriDomain:Ljava/lang/String;

    .line 71
    const-string v1, "no_integrity"

    invoke-direct {p0, v1}, Lcom/android/providers/downloads/DownloadInfo$Reader;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v3, :cond_1

    move v1, v3

    :goto_0
    iput-boolean v1, p1, Lcom/android/providers/downloads/DownloadInfo;->mNoIntegrity:Z

    .line 72
    iget-object v1, p1, Lcom/android/providers/downloads/DownloadInfo;->mHint:Ljava/lang/String;

    const-string v2, "hint"

    invoke-direct {p0, v1, v2}, Lcom/android/providers/downloads/DownloadInfo$Reader;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/providers/downloads/DownloadInfo;->mHint:Ljava/lang/String;

    .line 73
    iget-object v1, p1, Lcom/android/providers/downloads/DownloadInfo;->mFileName:Ljava/lang/String;

    const-string v2, "_data"

    invoke-direct {p0, v1, v2}, Lcom/android/providers/downloads/DownloadInfo$Reader;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/providers/downloads/DownloadInfo;->mFileName:Ljava/lang/String;

    .line 74
    iget-object v1, p1, Lcom/android/providers/downloads/DownloadInfo;->mMimeType:Ljava/lang/String;

    const-string v2, "mimetype"

    invoke-direct {p0, v1, v2}, Lcom/android/providers/downloads/DownloadInfo$Reader;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/providers/downloads/DownloadInfo;->mMimeType:Ljava/lang/String;

    .line 75
    const-string v1, "destination"

    invoke-direct {p0, v1}, Lcom/android/providers/downloads/DownloadInfo$Reader;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p1, Lcom/android/providers/downloads/DownloadInfo;->mDestination:I

    .line 76
    const-string v1, "visibility"

    invoke-direct {p0, v1}, Lcom/android/providers/downloads/DownloadInfo$Reader;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p1, Lcom/android/providers/downloads/DownloadInfo;->mVisibility:I

    .line 77
    iget v1, p1, Lcom/android/providers/downloads/DownloadInfo;->mStatus:I

    const/16 v2, 0xc8

    if-eq v1, v2, :cond_0

    .line 79
    const-string v1, "status"

    invoke-direct {p0, v1}, Lcom/android/providers/downloads/DownloadInfo$Reader;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p1, Lcom/android/providers/downloads/DownloadInfo;->mStatus:I

    .line 81
    :cond_0
    const-string v1, "numfailed"

    invoke-direct {p0, v1}, Lcom/android/providers/downloads/DownloadInfo$Reader;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p1, Lcom/android/providers/downloads/DownloadInfo;->mNumFailed:I

    .line 82
    const-string v1, "method"

    invoke-direct {p0, v1}, Lcom/android/providers/downloads/DownloadInfo$Reader;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 83
    .local v0, retryRedirect:I
    const v1, 0xfffffff

    and-int/2addr v1, v0

    iput v1, p1, Lcom/android/providers/downloads/DownloadInfo;->mRetryAfter:I

    .line 84
    const-string v1, "lastmod"

    invoke-direct {p0, v1}, Lcom/android/providers/downloads/DownloadInfo$Reader;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iput-wide v1, p1, Lcom/android/providers/downloads/DownloadInfo;->mLastMod:J

    .line 85
    iget-object v1, p1, Lcom/android/providers/downloads/DownloadInfo;->mPackage:Ljava/lang/String;

    const-string v2, "notificationpackage"

    invoke-direct {p0, v1, v2}, Lcom/android/providers/downloads/DownloadInfo$Reader;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/providers/downloads/DownloadInfo;->mPackage:Ljava/lang/String;

    .line 86
    iget-object v1, p1, Lcom/android/providers/downloads/DownloadInfo;->mClass:Ljava/lang/String;

    const-string v2, "notificationclass"

    invoke-direct {p0, v1, v2}, Lcom/android/providers/downloads/DownloadInfo$Reader;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/providers/downloads/DownloadInfo;->mClass:Ljava/lang/String;

    .line 87
    iget-object v1, p1, Lcom/android/providers/downloads/DownloadInfo;->mExtras:Ljava/lang/String;

    const-string v2, "notificationextras"

    invoke-direct {p0, v1, v2}, Lcom/android/providers/downloads/DownloadInfo$Reader;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/providers/downloads/DownloadInfo;->mExtras:Ljava/lang/String;

    .line 88
    iget-object v1, p1, Lcom/android/providers/downloads/DownloadInfo;->mCookies:Ljava/lang/String;

    const-string v2, "cookiedata"

    invoke-direct {p0, v1, v2}, Lcom/android/providers/downloads/DownloadInfo$Reader;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/providers/downloads/DownloadInfo;->mCookies:Ljava/lang/String;

    .line 89
    iget-object v1, p1, Lcom/android/providers/downloads/DownloadInfo;->mUserAgent:Ljava/lang/String;

    const-string v2, "useragent"

    invoke-direct {p0, v1, v2}, Lcom/android/providers/downloads/DownloadInfo$Reader;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/providers/downloads/DownloadInfo;->mUserAgent:Ljava/lang/String;

    .line 90
    iget-object v1, p1, Lcom/android/providers/downloads/DownloadInfo;->mReferer:Ljava/lang/String;

    const-string v2, "referer"

    invoke-direct {p0, v1, v2}, Lcom/android/providers/downloads/DownloadInfo$Reader;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/providers/downloads/DownloadInfo;->mReferer:Ljava/lang/String;

    .line 91
    const-string v1, "total_bytes"

    invoke-direct {p0, v1}, Lcom/android/providers/downloads/DownloadInfo$Reader;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iput-wide v1, p1, Lcom/android/providers/downloads/DownloadInfo;->mTotalBytes:J

    .line 92
    const-string v1, "current_bytes"

    invoke-direct {p0, v1}, Lcom/android/providers/downloads/DownloadInfo$Reader;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iput-wide v1, p1, Lcom/android/providers/downloads/DownloadInfo;->mCurrentBytes:J

    .line 93
    iget-object v1, p1, Lcom/android/providers/downloads/DownloadInfo;->mETag:Ljava/lang/String;

    const-string v2, "etag"

    invoke-direct {p0, v1, v2}, Lcom/android/providers/downloads/DownloadInfo$Reader;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/providers/downloads/DownloadInfo;->mETag:Ljava/lang/String;

    .line 94
    iget-object v1, p1, Lcom/android/providers/downloads/DownloadInfo;->mIfRange:Ljava/lang/String;

    const-string v2, "if_range_id"

    invoke-direct {p0, v1, v2}, Lcom/android/providers/downloads/DownloadInfo$Reader;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/providers/downloads/DownloadInfo;->mIfRange:Ljava/lang/String;

    .line 95
    const-string v1, "scanned"

    invoke-direct {p0, v1}, Lcom/android/providers/downloads/DownloadInfo$Reader;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v3, :cond_2

    move v1, v3

    :goto_1
    iput-boolean v1, p1, Lcom/android/providers/downloads/DownloadInfo;->mMediaScanned:Z

    .line 96
    const-string v1, "deleted"

    invoke-direct {p0, v1}, Lcom/android/providers/downloads/DownloadInfo$Reader;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v3, :cond_3

    move v1, v3

    :goto_2
    iput-boolean v1, p1, Lcom/android/providers/downloads/DownloadInfo;->mDeleted:Z

    .line 97
    iget-object v1, p1, Lcom/android/providers/downloads/DownloadInfo;->mMediaProviderUri:Ljava/lang/String;

    const-string v2, "mediaprovider_uri"

    invoke-direct {p0, v1, v2}, Lcom/android/providers/downloads/DownloadInfo$Reader;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/providers/downloads/DownloadInfo;->mMediaProviderUri:Ljava/lang/String;

    .line 99
    const-string v1, "is_public_api"

    invoke-direct {p0, v1}, Lcom/android/providers/downloads/DownloadInfo$Reader;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_4

    move v1, v3

    :goto_3
    iput-boolean v1, p1, Lcom/android/providers/downloads/DownloadInfo;->mIsPublicApi:Z

    .line 100
    const-string v1, "allowed_network_types"

    invoke-direct {p0, v1}, Lcom/android/providers/downloads/DownloadInfo$Reader;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p1, Lcom/android/providers/downloads/DownloadInfo;->mAllowedNetworkTypes:I

    .line 101
    const-string v1, "allow_roaming"

    invoke-direct {p0, v1}, Lcom/android/providers/downloads/DownloadInfo$Reader;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_5

    move v1, v3

    :goto_4
    iput-boolean v1, p1, Lcom/android/providers/downloads/DownloadInfo;->mAllowRoaming:Z

    .line 102
    iget-object v1, p1, Lcom/android/providers/downloads/DownloadInfo;->mTitle:Ljava/lang/String;

    const-string v2, "title"

    invoke-direct {p0, v1, v2}, Lcom/android/providers/downloads/DownloadInfo$Reader;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/providers/downloads/DownloadInfo;->mTitle:Ljava/lang/String;

    .line 103
    iget-object v1, p1, Lcom/android/providers/downloads/DownloadInfo;->mDescription:Ljava/lang/String;

    const-string v2, "description"

    invoke-direct {p0, v1, v2}, Lcom/android/providers/downloads/DownloadInfo$Reader;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/providers/downloads/DownloadInfo;->mDescription:Ljava/lang/String;

    .line 104
    const-string v1, "bypass_recommended_size_limit"

    invoke-direct {p0, v1}, Lcom/android/providers/downloads/DownloadInfo$Reader;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p1, Lcom/android/providers/downloads/DownloadInfo;->mBypassRecommendedSizeLimit:I

    .line 106
    iget-object v1, p1, Lcom/android/providers/downloads/DownloadInfo;->mSubDirectory:Ljava/lang/String;

    const-string v2, "subdirectory"

    invoke-direct {p0, v1, v2}, Lcom/android/providers/downloads/DownloadInfo$Reader;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/providers/downloads/DownloadInfo;->mSubDirectory:Ljava/lang/String;

    .line 107
    iget-object v1, p1, Lcom/android/providers/downloads/DownloadInfo;->mAppointName:Ljava/lang/String;

    const-string v2, "appointname"

    invoke-direct {p0, v1, v2}, Lcom/android/providers/downloads/DownloadInfo$Reader;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/providers/downloads/DownloadInfo;->mAppointName:Ljava/lang/String;

    .line 109
    monitor-enter p0

    .line 110
    :try_start_0
    const-string v1, "control"

    invoke-direct {p0, v1}, Lcom/android/providers/downloads/DownloadInfo$Reader;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p1, Lcom/android/providers/downloads/DownloadInfo;->mControl:I

    .line 111
    monitor-exit p0

    .line 112
    return-void

    .end local v0           #retryRedirect:I
    :cond_1
    move v1, v4

    .line 71
    goto/16 :goto_0

    .restart local v0       #retryRedirect:I
    :cond_2
    move v1, v4

    .line 95
    goto/16 :goto_1

    :cond_3
    move v1, v4

    .line 96
    goto :goto_2

    :cond_4
    move v1, v4

    .line 99
    goto :goto_3

    :cond_5
    move v1, v4

    .line 101
    goto :goto_4

    .line 111
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
