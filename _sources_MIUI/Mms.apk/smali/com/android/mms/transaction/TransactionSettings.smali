.class public Lcom/android/mms/transaction/TransactionSettings;
.super Ljava/lang/Object;
.source "TransactionSettings.java"


# static fields
.field private static final APN_PROJECTION:[Ljava/lang/String;


# instance fields
.field private mProxyAddress:Ljava/lang/String;

.field private mProxyPort:I

.field private mServiceCenter:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 46
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "type"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "mmsc"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "mmsproxy"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "mmsport"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/transaction/TransactionSettings;->APN_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 12
    .parameter "context"
    .parameter "apnName"

    .prologue
    const/4 v5, 0x0

    const-string v11, "TransactionSettings"

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/mms/transaction/TransactionSettings;->mProxyPort:I

    .line 63
    if-eqz p2, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "apn=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    .line 66
    .local v4, selection:Ljava/lang/String;
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v0, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "current"

    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Lcom/android/mms/transaction/TransactionSettings;->APN_PROJECTION:[Ljava/lang/String;

    move-object v0, p1

    move-object v6, v5

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 70
    .local v7, cursor:Landroid/database/Cursor;
    if-nez v7, :cond_2

    .line 71
    const-string v0, "TransactionSettings"

    const-string v0, "Apn is not found in Database!"

    invoke-static {v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    :cond_0
    :goto_1
    return-void

    .end local v4           #selection:Ljava/lang/String;
    .end local v7           #cursor:Landroid/database/Cursor;
    :cond_1
    move-object v4, v5

    .line 63
    goto :goto_0

    .line 75
    .restart local v4       #selection:Ljava/lang/String;
    .restart local v7       #cursor:Landroid/database/Cursor;
    :cond_2
    const/4 v10, 0x0

    .line 77
    .local v10, sawValidApn:Z
    :cond_3
    :goto_2
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/mms/transaction/TransactionSettings;->mServiceCenter:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 79
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "mms"

    invoke-static {v0, v1}, Lcom/android/mms/transaction/TransactionSettings;->isValidApnType(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 80
    const/4 v10, 0x1

    .line 81
    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/transaction/TransactionSettings;->mServiceCenter:Ljava/lang/String;

    .line 82
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionSettings;->mServiceCenter:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 83
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionSettings;->mServiceCenter:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/transaction/TransactionSettings;->mServiceCenter:Ljava/lang/String;

    .line 87
    const/4 v0, 0x2

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/transaction/TransactionSettings;->mProxyAddress:Ljava/lang/String;

    .line 88
    invoke-virtual {p0}, Lcom/android/mms/transaction/TransactionSettings;->isProxySet()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 89
    const/4 v0, 0x3

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    .line 91
    .local v9, portString:Ljava/lang/String;
    :try_start_1
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/mms/transaction/TransactionSettings;->mProxyPort:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 92
    :catch_0
    move-exception v0

    move-object v8, v0

    .line 93
    .local v8, e:Ljava/lang/NumberFormatException;
    :try_start_2
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 94
    const-string v0, "TransactionSettings"

    const-string v1, "mms port not set!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 103
    .end local v8           #e:Ljava/lang/NumberFormatException;
    .end local v9           #portString:Ljava/lang/String;
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    .line 96
    .restart local v8       #e:Ljava/lang/NumberFormatException;
    .restart local v9       #portString:Ljava/lang/String;
    :cond_4
    :try_start_3
    const-string v0, "TransactionSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad port number format: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 103
    .end local v8           #e:Ljava/lang/NumberFormatException;
    .end local v9           #portString:Ljava/lang/String;
    :cond_5
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 106
    if-eqz v10, :cond_0

    iget-object v0, p0, Lcom/android/mms/transaction/TransactionSettings;->mServiceCenter:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    const-string v0, "TransactionSettings"

    const-string v0, "Invalid APN setting: MMSC is empty"

    invoke-static {v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .parameter "mmscUrl"
    .parameter "proxyAddr"
    .parameter "proxyPort"

    .prologue
    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/mms/transaction/TransactionSettings;->mProxyPort:I

    .line 121
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/android/mms/transaction/TransactionSettings;->mServiceCenter:Ljava/lang/String;

    .line 122
    iput-object p2, p0, Lcom/android/mms/transaction/TransactionSettings;->mProxyAddress:Ljava/lang/String;

    .line 123
    iput p3, p0, Lcom/android/mms/transaction/TransactionSettings;->mProxyPort:I

    .line 124
    return-void

    .line 121
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isValidApnType(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .parameter "types"
    .parameter "requestType"

    .prologue
    const/4 v5, 0x1

    .line 144
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v5

    .line 153
    :goto_0
    return v4

    .line 148
    :cond_0
    const-string v4, ","

    invoke-virtual {p0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v2, :cond_3

    aget-object v3, v0, v1

    .line 149
    .local v3, t:Ljava/lang/String;
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "*"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    move v4, v5

    .line 150
    goto :goto_0

    .line 148
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 153
    .end local v3           #t:Ljava/lang/String;
    :cond_3
    const/4 v4, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getMmscUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionSettings;->mServiceCenter:Ljava/lang/String;

    return-object v0
.end method

.method public getProxyAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionSettings;->mProxyAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getProxyPort()I
    .locals 1

    .prologue
    .line 135
    iget v0, p0, Lcom/android/mms/transaction/TransactionSettings;->mProxyPort:I

    return v0
.end method

.method public isProxySet()Z
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionSettings;->mProxyAddress:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/transaction/TransactionSettings;->mProxyAddress:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
