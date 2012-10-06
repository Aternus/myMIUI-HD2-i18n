.class public Lcom/android/mms/MmsConfig;
.super Ljava/lang/Object;
.source "MmsConfig.java"


# static fields
.field private static mAliasEnabled:Z

.field private static mAliasRuleMaxChars:I

.field private static mAliasRuleMinChars:I

.field private static mAllowAttachAudio:Z

.field private static mDefaultMMSMessagesPerThread:I

.field private static mDefaultSMSMessagesPerThread:I

.field private static mEmailGateway:Ljava/lang/String;

.field private static mEnableSlideDuration:Z

.field private static mEnableUnlimitedMultipartSMS:Z

.field private static mHttpParams:Ljava/lang/String;

.field private static mHttpParamsLine1Key:Ljava/lang/String;

.field private static mHttpSocketTimeout:I

.field private static mMaxImageHeight:I

.field private static mMaxImageWidth:I

.field private static mMaxMessageCountPerThread:I

.field private static mMaxMessageSize:I

.field private static mMaxSizeScaleForPendingMmsAllowed:I

.field private static mMinMessageCountPerThread:I

.field private static mMinimumSlideElementDuration:I

.field private static mMmsEnabled:I

.field private static mNotifyWapMMSC:Z

.field private static mRecipientLimit:I

.field private static mSmsToMmsTextThreshold:I

.field private static mTransIdEnabled:Z

.field private static mUaProfTagName:Ljava/lang/String;

.field private static mUaProfUrl:Ljava/lang/String;

.field private static mUserAgent:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 43
    sput-boolean v1, Lcom/android/mms/MmsConfig;->mTransIdEnabled:Z

    .line 44
    sput v3, Lcom/android/mms/MmsConfig;->mMmsEnabled:I

    .line 45
    const v0, 0x4b000

    sput v0, Lcom/android/mms/MmsConfig;->mMaxMessageSize:I

    .line 46
    const-string v0, "Android-Mms/2.0"

    sput-object v0, Lcom/android/mms/MmsConfig;->mUserAgent:Ljava/lang/String;

    .line 47
    const-string v0, "x-wap-profile"

    sput-object v0, Lcom/android/mms/MmsConfig;->mUaProfTagName:Ljava/lang/String;

    .line 48
    sput-object v2, Lcom/android/mms/MmsConfig;->mUaProfUrl:Ljava/lang/String;

    .line 49
    sput-object v2, Lcom/android/mms/MmsConfig;->mHttpParams:Ljava/lang/String;

    .line 50
    sput-object v2, Lcom/android/mms/MmsConfig;->mHttpParamsLine1Key:Ljava/lang/String;

    .line 51
    sput-object v2, Lcom/android/mms/MmsConfig;->mEmailGateway:Ljava/lang/String;

    .line 52
    const/16 v0, 0x1e0

    sput v0, Lcom/android/mms/MmsConfig;->mMaxImageHeight:I

    .line 53
    const/16 v0, 0x280

    sput v0, Lcom/android/mms/MmsConfig;->mMaxImageWidth:I

    .line 54
    const v0, 0x7fffffff

    sput v0, Lcom/android/mms/MmsConfig;->mRecipientLimit:I

    .line 55
    const/16 v0, 0xc8

    sput v0, Lcom/android/mms/MmsConfig;->mDefaultSMSMessagesPerThread:I

    .line 56
    const/16 v0, 0x14

    sput v0, Lcom/android/mms/MmsConfig;->mDefaultMMSMessagesPerThread:I

    .line 57
    const/16 v0, 0xa

    sput v0, Lcom/android/mms/MmsConfig;->mMinMessageCountPerThread:I

    .line 58
    const/16 v0, 0x1388

    sput v0, Lcom/android/mms/MmsConfig;->mMaxMessageCountPerThread:I

    .line 59
    const v0, 0xea60

    sput v0, Lcom/android/mms/MmsConfig;->mHttpSocketTimeout:I

    .line 60
    const/4 v0, 0x7

    sput v0, Lcom/android/mms/MmsConfig;->mMinimumSlideElementDuration:I

    .line 61
    sput-boolean v1, Lcom/android/mms/MmsConfig;->mNotifyWapMMSC:Z

    .line 62
    sput-boolean v3, Lcom/android/mms/MmsConfig;->mAllowAttachAudio:Z

    .line 63
    const/16 v0, 0x9

    sput v0, Lcom/android/mms/MmsConfig;->mSmsToMmsTextThreshold:I

    .line 64
    sput-boolean v1, Lcom/android/mms/MmsConfig;->mEnableUnlimitedMultipartSMS:Z

    .line 65
    sput-boolean v3, Lcom/android/mms/MmsConfig;->mEnableSlideDuration:Z

    .line 70
    const/4 v0, 0x4

    sput v0, Lcom/android/mms/MmsConfig;->mMaxSizeScaleForPendingMmsAllowed:I

    .line 73
    sput-boolean v1, Lcom/android/mms/MmsConfig;->mAliasEnabled:Z

    .line 74
    const/4 v0, 0x2

    sput v0, Lcom/android/mms/MmsConfig;->mAliasRuleMinChars:I

    .line 75
    const/16 v0, 0x30

    sput v0, Lcom/android/mms/MmsConfig;->mAliasRuleMaxChars:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V
    .locals 4
    .parameter "parser"
    .parameter "firstElementName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    .line 202
    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .local v0, type:I
    if-eq v0, v2, :cond_1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 206
    :cond_1
    if-eq v0, v2, :cond_2

    .line 207
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v2, "No start tag found"

    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 210
    :cond_2
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 211
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected start tag: found "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", expected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 214
    :cond_3
    return-void
.end method

.method public static getAliasMaxChars()I
    .locals 1

    .prologue
    .line 191
    sget v0, Lcom/android/mms/MmsConfig;->mAliasRuleMaxChars:I

    return v0
.end method

.method public static getAliasMinChars()I
    .locals 1

    .prologue
    .line 187
    sget v0, Lcom/android/mms/MmsConfig;->mAliasRuleMinChars:I

    return v0
.end method

.method public static getAllowAttachAudio()Z
    .locals 1

    .prologue
    .line 195
    sget-boolean v0, Lcom/android/mms/MmsConfig;->mAllowAttachAudio:Z

    return v0
.end method

.method public static getDefaultMMSMessagesPerThread()I
    .locals 1

    .prologue
    .line 147
    sget v0, Lcom/android/mms/MmsConfig;->mDefaultMMSMessagesPerThread:I

    return v0
.end method

.method public static getDefaultSMSMessagesPerThread()I
    .locals 1

    .prologue
    .line 143
    sget v0, Lcom/android/mms/MmsConfig;->mDefaultSMSMessagesPerThread:I

    return v0
.end method

.method public static getEmailGateway()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    sget-object v0, Lcom/android/mms/MmsConfig;->mEmailGateway:Ljava/lang/String;

    return-object v0
.end method

.method public static getHttpParams()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    sget-object v0, Lcom/android/mms/MmsConfig;->mHttpParams:Ljava/lang/String;

    return-object v0
.end method

.method public static getHttpParamsLine1Key()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    sget-object v0, Lcom/android/mms/MmsConfig;->mHttpParamsLine1Key:Ljava/lang/String;

    return-object v0
.end method

.method public static getHttpSocketTimeout()I
    .locals 1

    .prologue
    .line 159
    sget v0, Lcom/android/mms/MmsConfig;->mHttpSocketTimeout:I

    return v0
.end method

.method public static getMaxImageHeight()I
    .locals 1

    .prologue
    .line 131
    sget v0, Lcom/android/mms/MmsConfig;->mMaxImageHeight:I

    return v0
.end method

.method public static getMaxImageWidth()I
    .locals 1

    .prologue
    .line 135
    sget v0, Lcom/android/mms/MmsConfig;->mMaxImageWidth:I

    return v0
.end method

.method public static getMaxMessageCountPerThread()I
    .locals 1

    .prologue
    .line 155
    sget v0, Lcom/android/mms/MmsConfig;->mMaxMessageCountPerThread:I

    return v0
.end method

.method public static getMaxMessageSize()I
    .locals 1

    .prologue
    .line 94
    sget v0, Lcom/android/mms/MmsConfig;->mMaxMessageSize:I

    return v0
.end method

.method public static getMaxSizeScaleForPendingMmsAllowed()I
    .locals 1

    .prologue
    .line 179
    sget v0, Lcom/android/mms/MmsConfig;->mMaxSizeScaleForPendingMmsAllowed:I

    return v0
.end method

.method public static getMinMessageCountPerThread()I
    .locals 1

    .prologue
    .line 151
    sget v0, Lcom/android/mms/MmsConfig;->mMinMessageCountPerThread:I

    return v0
.end method

.method public static getMinimumSlideElementDuration()I
    .locals 1

    .prologue
    .line 163
    sget v0, Lcom/android/mms/MmsConfig;->mMinimumSlideElementDuration:I

    return v0
.end method

.method public static getMmsEnabled()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 90
    sget v0, Lcom/android/mms/MmsConfig;->mMmsEnabled:I

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getNotifyWapMMSC()Z
    .locals 1

    .prologue
    .line 175
    sget-boolean v0, Lcom/android/mms/MmsConfig;->mNotifyWapMMSC:Z

    return v0
.end method

.method public static getRecipientLimit()I
    .locals 1

    .prologue
    .line 139
    sget v0, Lcom/android/mms/MmsConfig;->mRecipientLimit:I

    return v0
.end method

.method public static getSlideDurationEnabled()Z
    .locals 1

    .prologue
    .line 171
    sget-boolean v0, Lcom/android/mms/MmsConfig;->mEnableSlideDuration:Z

    return v0
.end method

.method public static getSmsToMmsTextThreshold()I
    .locals 1

    .prologue
    .line 86
    sget v0, Lcom/android/mms/MmsConfig;->mSmsToMmsTextThreshold:I

    return v0
.end method

.method public static getTransIdEnabled()Z
    .locals 1

    .prologue
    .line 103
    sget-boolean v0, Lcom/android/mms/MmsConfig;->mTransIdEnabled:Z

    return v0
.end method

.method public static getUaProfTagName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    sget-object v0, Lcom/android/mms/MmsConfig;->mUaProfTagName:Ljava/lang/String;

    return-object v0
.end method

.method public static getUaProfUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    sget-object v0, Lcom/android/mms/MmsConfig;->mUaProfUrl:Ljava/lang/String;

    return-object v0
.end method

.method public static getUnlimitedMultipartSmsEnabled()Z
    .locals 1

    .prologue
    .line 167
    sget-boolean v0, Lcom/android/mms/MmsConfig;->mEnableUnlimitedMultipartSMS:Z

    return v0
.end method

.method public static getUserAgent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    sget-object v0, Lcom/android/mms/MmsConfig;->mUserAgent:Ljava/lang/String;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 82
    invoke-static {p0}, Lcom/android/mms/MmsConfig;->loadMmsSettings(Landroid/content/Context;)V

    .line 83
    return-void
.end method

.method public static isAliasEnabled()Z
    .locals 1

    .prologue
    .line 183
    sget-boolean v0, Lcom/android/mms/MmsConfig;->mAliasEnabled:Z

    return v0
.end method

.method private static loadMmsSettings(Landroid/content/Context;)V
    .locals 13
    .parameter "context"

    .prologue
    const/4 v12, 0x1

    const/4 v10, 0x0

    const-string v8, "loadMmsSettings caught "

    const-string v11, "MmsConfig"

    const-string v8, "true"

    .line 226
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f050006

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v4

    .line 229
    .local v4, parser:Landroid/content/res/XmlResourceParser;
    :try_start_0
    const-string v8, "mms_config"

    invoke-static {v4, v8}, Lcom/android/mms/MmsConfig;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 232
    :cond_0
    :goto_0
    invoke-static {v4}, Lcom/android/mms/MmsConfig;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 233
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v5

    .line 234
    .local v5, tag:Ljava/lang/String;
    if-nez v5, :cond_2

    .line 324
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V

    .line 327
    .end local v5           #tag:Ljava/lang/String;
    :goto_1
    const/4 v2, 0x0

    .line 329
    .local v2, errorStr:Ljava/lang/String;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsEnabled()Z

    move-result v8

    if-eqz v8, :cond_1

    sget-object v8, Lcom/android/mms/MmsConfig;->mUaProfUrl:Ljava/lang/String;

    if-nez v8, :cond_1

    .line 330
    const-string v2, "uaProfUrl"

    .line 333
    :cond_1
    if-eqz v2, :cond_1f

    .line 334
    const-string v8, "MmsConfig.loadMmsSettings mms_config.xml missing %s setting"

    new-array v9, v12, [Ljava/lang/Object;

    aput-object v2, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 337
    .local v1, err:Ljava/lang/String;
    const-string v8, "MmsConfig"

    invoke-static {v11, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    new-instance v8, Lcom/android/mms/ContentRestrictionException;

    invoke-direct {v8, v1}, Lcom/android/mms/ContentRestrictionException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 237
    .end local v1           #err:Ljava/lang/String;
    .end local v2           #errorStr:Ljava/lang/String;
    .restart local v5       #tag:Ljava/lang/String;
    :cond_2
    const/4 v8, 0x0

    :try_start_1
    invoke-interface {v4, v8}, Landroid/content/res/XmlResourceParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v3

    .line 238
    .local v3, name:Ljava/lang/String;
    const/4 v8, 0x0

    invoke-interface {v4, v8}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v7

    .line 239
    .local v7, value:Ljava/lang/String;
    const/4 v6, 0x0

    .line 240
    .local v6, text:Ljava/lang/String;
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v8

    const/4 v9, 0x4

    if-ne v8, v9, :cond_3

    .line 241
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getText()Ljava/lang/String;

    move-result-object v6

    .line 247
    :cond_3
    const-string v8, "name"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 248
    const-string v8, "bool"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 250
    const-string v8, "enabledMMS"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 251
    const-string v8, "true"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    move v8, v12

    :goto_2
    sput v8, Lcom/android/mms/MmsConfig;->mMmsEnabled:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 317
    .end local v3           #name:Ljava/lang/String;
    .end local v5           #tag:Ljava/lang/String;
    .end local v6           #text:Ljava/lang/String;
    .end local v7           #value:Ljava/lang/String;
    :catch_0
    move-exception v8

    move-object v0, v8

    .line 318
    .local v0, e:Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_2
    const-string v8, "MmsConfig"

    const-string v9, "loadMmsSettings caught "

    invoke-static {v8, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 324
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_1

    .end local v0           #e:Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v3       #name:Ljava/lang/String;
    .restart local v5       #tag:Ljava/lang/String;
    .restart local v6       #text:Ljava/lang/String;
    .restart local v7       #value:Ljava/lang/String;
    :cond_4
    move v8, v10

    .line 251
    goto :goto_2

    .line 252
    :cond_5
    :try_start_3
    const-string v8, "enabledTransID"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 253
    const-string v8, "true"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    sput-boolean v8, Lcom/android/mms/MmsConfig;->mTransIdEnabled:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0

    .line 319
    .end local v3           #name:Ljava/lang/String;
    .end local v5           #tag:Ljava/lang/String;
    .end local v6           #text:Ljava/lang/String;
    .end local v7           #value:Ljava/lang/String;
    :catch_1
    move-exception v8

    move-object v0, v8

    .line 320
    .local v0, e:Ljava/lang/NumberFormatException;
    :try_start_4
    const-string v8, "MmsConfig"

    const-string v9, "loadMmsSettings caught "

    invoke-static {v8, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 324
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V

    goto/16 :goto_1

    .line 254
    .end local v0           #e:Ljava/lang/NumberFormatException;
    .restart local v3       #name:Ljava/lang/String;
    .restart local v5       #tag:Ljava/lang/String;
    .restart local v6       #text:Ljava/lang/String;
    .restart local v7       #value:Ljava/lang/String;
    :cond_6
    :try_start_5
    const-string v8, "enabledNotifyWapMMSC"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 255
    const-string v8, "true"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    sput-boolean v8, Lcom/android/mms/MmsConfig;->mNotifyWapMMSC:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_0

    .line 321
    .end local v3           #name:Ljava/lang/String;
    .end local v5           #tag:Ljava/lang/String;
    .end local v6           #text:Ljava/lang/String;
    .end local v7           #value:Ljava/lang/String;
    :catch_2
    move-exception v8

    move-object v0, v8

    .line 322
    .local v0, e:Ljava/io/IOException;
    :try_start_6
    const-string v8, "MmsConfig"

    const-string v9, "loadMmsSettings caught "

    invoke-static {v8, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 324
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V

    goto/16 :goto_1

    .line 256
    .end local v0           #e:Ljava/io/IOException;
    .restart local v3       #name:Ljava/lang/String;
    .restart local v5       #tag:Ljava/lang/String;
    .restart local v6       #text:Ljava/lang/String;
    .restart local v7       #value:Ljava/lang/String;
    :cond_7
    :try_start_7
    const-string v8, "aliasEnabled"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 257
    const-string v8, "true"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    sput-boolean v8, Lcom/android/mms/MmsConfig;->mAliasEnabled:Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto/16 :goto_0

    .line 324
    .end local v3           #name:Ljava/lang/String;
    .end local v5           #tag:Ljava/lang/String;
    .end local v6           #text:Ljava/lang/String;
    .end local v7           #value:Ljava/lang/String;
    :catchall_0
    move-exception v8

    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V

    throw v8

    .line 258
    .restart local v3       #name:Ljava/lang/String;
    .restart local v5       #tag:Ljava/lang/String;
    .restart local v6       #text:Ljava/lang/String;
    .restart local v7       #value:Ljava/lang/String;
    :cond_8
    :try_start_8
    const-string v8, "allowAttachAudio"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 259
    const-string v8, "true"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    sput-boolean v8, Lcom/android/mms/MmsConfig;->mAllowAttachAudio:Z

    goto/16 :goto_0

    .line 260
    :cond_9
    const-string v8, "enableUnlimitedMultipartSMS"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 261
    const-string v8, "true"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    sput-boolean v8, Lcom/android/mms/MmsConfig;->mEnableUnlimitedMultipartSMS:Z

    goto/16 :goto_0

    .line 262
    :cond_a
    const-string v8, "enableSlideDuration"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 263
    const-string v8, "true"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    sput-boolean v8, Lcom/android/mms/MmsConfig;->mEnableSlideDuration:Z

    goto/16 :goto_0

    .line 265
    :cond_b
    const-string v8, "int"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_19

    .line 267
    const-string v8, "maxMessageSize"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 268
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    sput v8, Lcom/android/mms/MmsConfig;->mMaxMessageSize:I

    goto/16 :goto_0

    .line 269
    :cond_c
    const-string v8, "maxImageHeight"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 270
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    sput v8, Lcom/android/mms/MmsConfig;->mMaxImageHeight:I

    goto/16 :goto_0

    .line 271
    :cond_d
    const-string v8, "maxImageWidth"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 272
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    sput v8, Lcom/android/mms/MmsConfig;->mMaxImageWidth:I

    goto/16 :goto_0

    .line 273
    :cond_e
    const-string v8, "defaultSMSMessagesPerThread"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_f

    .line 274
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    sput v8, Lcom/android/mms/MmsConfig;->mDefaultSMSMessagesPerThread:I

    goto/16 :goto_0

    .line 275
    :cond_f
    const-string v8, "defaultMMSMessagesPerThread"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_10

    .line 276
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    sput v8, Lcom/android/mms/MmsConfig;->mDefaultMMSMessagesPerThread:I

    goto/16 :goto_0

    .line 277
    :cond_10
    const-string v8, "minMessageCountPerThread"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_11

    .line 278
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    sput v8, Lcom/android/mms/MmsConfig;->mMinMessageCountPerThread:I

    goto/16 :goto_0

    .line 279
    :cond_11
    const-string v8, "maxMessageCountPerThread"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_12

    .line 280
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    sput v8, Lcom/android/mms/MmsConfig;->mMaxMessageCountPerThread:I

    goto/16 :goto_0

    .line 281
    :cond_12
    const-string v8, "recipientLimit"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_13

    .line 282
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    sput v8, Lcom/android/mms/MmsConfig;->mRecipientLimit:I

    .line 283
    sget v8, Lcom/android/mms/MmsConfig;->mRecipientLimit:I

    if-gez v8, :cond_0

    .line 284
    const v8, 0x7fffffff

    sput v8, Lcom/android/mms/MmsConfig;->mRecipientLimit:I

    goto/16 :goto_0

    .line 286
    :cond_13
    const-string v8, "httpSocketTimeout"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_14

    .line 287
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    sput v8, Lcom/android/mms/MmsConfig;->mHttpSocketTimeout:I

    goto/16 :goto_0

    .line 288
    :cond_14
    const-string v8, "minimumSlideElementDuration"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_15

    .line 289
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    sput v8, Lcom/android/mms/MmsConfig;->mMinimumSlideElementDuration:I

    goto/16 :goto_0

    .line 290
    :cond_15
    const-string v8, "maxSizeScaleForPendingMmsAllowed"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_16

    .line 291
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    sput v8, Lcom/android/mms/MmsConfig;->mMaxSizeScaleForPendingMmsAllowed:I

    goto/16 :goto_0

    .line 292
    :cond_16
    const-string v8, "aliasMinChars"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_17

    .line 293
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    sput v8, Lcom/android/mms/MmsConfig;->mAliasRuleMinChars:I

    goto/16 :goto_0

    .line 294
    :cond_17
    const-string v8, "aliasMaxChars"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_18

    .line 295
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    sput v8, Lcom/android/mms/MmsConfig;->mAliasRuleMaxChars:I

    goto/16 :goto_0

    .line 296
    :cond_18
    const-string v8, "smsToMmsTextThreshold"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 297
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    sput v8, Lcom/android/mms/MmsConfig;->mSmsToMmsTextThreshold:I

    goto/16 :goto_0

    .line 299
    :cond_19
    const-string v8, "string"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 301
    const-string v8, "userAgent"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1a

    .line 302
    sput-object v6, Lcom/android/mms/MmsConfig;->mUserAgent:Ljava/lang/String;

    goto/16 :goto_0

    .line 303
    :cond_1a
    const-string v8, "uaProfTagName"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1b

    .line 304
    sput-object v6, Lcom/android/mms/MmsConfig;->mUaProfTagName:Ljava/lang/String;

    goto/16 :goto_0

    .line 305
    :cond_1b
    const-string v8, "uaProfUrl"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1c

    .line 306
    sput-object v6, Lcom/android/mms/MmsConfig;->mUaProfUrl:Ljava/lang/String;

    goto/16 :goto_0

    .line 307
    :cond_1c
    const-string v8, "httpParams"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1d

    .line 308
    sput-object v6, Lcom/android/mms/MmsConfig;->mHttpParams:Ljava/lang/String;

    goto/16 :goto_0

    .line 309
    :cond_1d
    const-string v8, "httpParamsLine1Key"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1e

    .line 310
    sput-object v6, Lcom/android/mms/MmsConfig;->mHttpParamsLine1Key:Ljava/lang/String;

    goto/16 :goto_0

    .line 311
    :cond_1e
    const-string v8, "emailGatewayNumber"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 312
    sput-object v6, Lcom/android/mms/MmsConfig;->mEmailGateway:Ljava/lang/String;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    goto/16 :goto_0

    .line 340
    .end local v3           #name:Ljava/lang/String;
    .end local v5           #tag:Ljava/lang/String;
    .end local v6           #text:Ljava/lang/String;
    .end local v7           #value:Ljava/lang/String;
    .restart local v2       #errorStr:Ljava/lang/String;
    :cond_1f
    return-void
.end method

.method public static final nextElement(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 2
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 220
    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .local v0, type:I
    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 223
    :cond_1
    return-void
.end method
