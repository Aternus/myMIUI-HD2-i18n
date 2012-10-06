.class public Lcom/xiaomi/common/UserInfo;
.super Ljava/lang/Object;
.source "UserInfo.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "com.xiaomi.common.UserInfo"

.field private static final LastRefreshTimeKey:Ljava/lang/String; = "last_refresh"

.field private static final LocationKey:Ljava/lang/String; = "location"

.field private static final PhoneInfoKey:Ljava/lang/String; = "phone_info"

.field private static final Preference_Name:Ljava/lang/String; = "XiaoMi User Info"

.field private static final UserIdKey:Ljava/lang/String; = "user_id"

.field private static final WidgetPositionKey:Ljava/lang/String; = "wdiget_pos"

.field private static preferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getIMEI(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "context"

    .prologue
    const-string v3, "0"

    .line 54
    :try_start_0
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 56
    .local v1, telephonyMgr:Landroid/telephony/TelephonyManager;
    if-eqz v1, :cond_0

    .line 57
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    .line 61
    .end local v1           #telephonyMgr:Landroid/telephony/TelephonyManager;
    :goto_0
    return-object v2

    .line 59
    .restart local v1       #telephonyMgr:Landroid/telephony/TelephonyManager;
    :cond_0
    const-string v2, "0"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v3

    goto :goto_0

    .line 60
    .end local v1           #telephonyMgr:Landroid/telephony/TelephonyManager;
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 61
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "0"

    move-object v2, v3

    goto :goto_0
.end method

.method public static getLastRefreshTime(Landroid/content/Context;)J
    .locals 4
    .parameter "context"

    .prologue
    .line 188
    invoke-static {p0}, Lcom/xiaomi/common/UserInfo;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "last_refresh"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getLocation(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 209
    invoke-static {p0}, Lcom/xiaomi/common/UserInfo;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "location"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPhoneInfo(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .parameter "context"

    .prologue
    const-string v3, "root"

    const-string v3, "IMEI"

    const-string v3, ""

    .line 119
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v1

    .line 120
    .local v1, serializer:Lorg/xmlpull/v1/XmlSerializer;
    new-instance v2, Ljava/io/StringWriter;

    const/16 v3, 0x200

    invoke-direct {v2, v3}, Ljava/io/StringWriter;-><init>(I)V

    .line 123
    .local v2, writer:Ljava/io/StringWriter;
    :try_start_0
    invoke-interface {v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    .line 124
    const-string v3, ""

    const-string v4, "root"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 126
    invoke-static {p0}, Lcom/xiaomi/common/UserInfo;->getIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    .line 127
    const-string v3, "IMEI"

    const-string v4, "0"

    invoke-static {v1, v3, v4}, Lcom/xiaomi/common/UserInfo;->setSerializerKeyValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    :goto_0
    const-string v3, "Build.BOARD"

    sget-object v4, Landroid/os/Build;->BOARD:Ljava/lang/String;

    invoke-static {v1, v3, v4}, Lcom/xiaomi/common/UserInfo;->setSerializerKeyValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    const-string v3, "Build.BRAND"

    sget-object v4, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-static {v1, v3, v4}, Lcom/xiaomi/common/UserInfo;->setSerializerKeyValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    const-string v3, "Build.DEVICE"

    sget-object v4, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-static {v1, v3, v4}, Lcom/xiaomi/common/UserInfo;->setSerializerKeyValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    const-string v3, "Build.DISPLAY"

    sget-object v4, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-static {v1, v3, v4}, Lcom/xiaomi/common/UserInfo;->setSerializerKeyValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    const-string v3, "Build.FINGERPRINT"

    sget-object v4, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-static {v1, v3, v4}, Lcom/xiaomi/common/UserInfo;->setSerializerKeyValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    const-string v3, "Build.HOST"

    sget-object v4, Landroid/os/Build;->HOST:Ljava/lang/String;

    invoke-static {v1, v3, v4}, Lcom/xiaomi/common/UserInfo;->setSerializerKeyValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    const-string v3, "Build.ID"

    sget-object v4, Landroid/os/Build;->ID:Ljava/lang/String;

    invoke-static {v1, v3, v4}, Lcom/xiaomi/common/UserInfo;->setSerializerKeyValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    const-string v3, "Build.MODEL"

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v1, v3, v4}, Lcom/xiaomi/common/UserInfo;->setSerializerKeyValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    const-string v3, "Build.PRODUCT"

    sget-object v4, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-static {v1, v3, v4}, Lcom/xiaomi/common/UserInfo;->setSerializerKeyValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    const-string v3, "Build.TAGS"

    sget-object v4, Landroid/os/Build;->TAGS:Ljava/lang/String;

    invoke-static {v1, v3, v4}, Lcom/xiaomi/common/UserInfo;->setSerializerKeyValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    const-string v3, "Build.TYPE"

    sget-object v4, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-static {v1, v3, v4}, Lcom/xiaomi/common/UserInfo;->setSerializerKeyValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    const-string v3, "Build.USER"

    sget-object v4, Landroid/os/Build;->USER:Ljava/lang/String;

    invoke-static {v1, v3, v4}, Lcom/xiaomi/common/UserInfo;->setSerializerKeyValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    const-string v3, "Build.VERSION.INCREMENTAL"

    sget-object v4, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-static {v1, v3, v4}, Lcom/xiaomi/common/UserInfo;->setSerializerKeyValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    const-string v3, "Build.VERSION.RELEASE"

    sget-object v4, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-static {v1, v3, v4}, Lcom/xiaomi/common/UserInfo;->setSerializerKeyValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    const-string v3, "Build.VERSION.SDK"

    sget-object v4, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v1, v3, v4}, Lcom/xiaomi/common/UserInfo;->setSerializerKeyValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    const-string v3, ""

    const-string v4, "root"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 157
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 169
    :goto_1
    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 129
    :cond_0
    :try_start_1
    const-string v3, "IMEI"

    invoke-static {p0}, Lcom/xiaomi/common/UserInfo;->getIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v3, v4}, Lcom/xiaomi/common/UserInfo;->setSerializerKeyValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_0

    .line 159
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 161
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    .line 162
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v3

    move-object v0, v3

    .line 164
    .local v0, e:Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_1

    .line 165
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :catch_2
    move-exception v3

    move-object v0, v3

    .line 167
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method private static getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2
    .parameter "context"

    .prologue
    .line 222
    sget-object v0, Lcom/xiaomi/common/UserInfo;->preferences:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 223
    const-string v0, "XiaoMi User Info"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/common/UserInfo;->preferences:Landroid/content/SharedPreferences;

    .line 226
    :cond_0
    sget-object v0, Lcom/xiaomi/common/UserInfo;->preferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method private static getStringArrayList(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 4
    .parameter "context"
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 232
    :try_start_0
    invoke-static {p0}, Lcom/xiaomi/common/UserInfo;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/common/ObjectSerializer;->deserialize(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v1, p0

    .line 239
    :goto_0
    return-object v1

    .line 233
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 234
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .end local v0           #e:Ljava/io/IOException;
    :goto_1
    move-object v1, v3

    .line 239
    goto :goto_0

    .line 235
    :catch_1
    move-exception v1

    move-object v0, v1

    .line 236
    .local v0, e:Ljava/lang/ClassNotFoundException;
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_1
.end method

.method public static getUserId(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "context"

    .prologue
    const-string v3, "user_id"

    .line 36
    invoke-static {p0}, Lcom/xiaomi/common/UserInfo;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "user_id"

    const/4 v2, 0x0

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 39
    .local v0, userId:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 40
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 41
    const-string v1, "user_id"

    invoke-static {p0, v3, v0}, Lcom/xiaomi/common/UserInfo;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    :cond_0
    return-object v0
.end method

.method public static getUserIdQueryString(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "context"

    .prologue
    .line 71
    const-string v0, "uuid=%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Lcom/xiaomi/common/UserInfo;->getUserId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getWidgetIconPosition(Landroid/content/Context;)I
    .locals 3
    .parameter "context"

    .prologue
    .line 80
    if-nez p0, :cond_0

    .line 81
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_0
    invoke-static {p0}, Lcom/xiaomi/common/UserInfo;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "wdiget_pos"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static isPhoneInfoSent(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 102
    invoke-static {p0}, Lcom/xiaomi/common/UserInfo;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "phone_info"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static markPhoneInfoSent(Landroid/content/Context;Z)V
    .locals 1
    .parameter "context"
    .parameter "isSent"

    .prologue
    .line 110
    const-string v0, "phone_info"

    invoke-static {p0, v0, p1}, Lcom/xiaomi/common/UserInfo;->setBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 111
    return-void
.end method

.method private static setBoolean(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 2
    .parameter "context"
    .parameter "key"
    .parameter "value"

    .prologue
    .line 259
    invoke-static {p0}, Lcom/xiaomi/common/UserInfo;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 260
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 261
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 262
    return-void
.end method

.method private static setInt(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2
    .parameter "context"
    .parameter "key"
    .parameter "value"

    .prologue
    .line 253
    invoke-static {p0}, Lcom/xiaomi/common/UserInfo;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 254
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 255
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 256
    return-void
.end method

.method public static setLastRefreshTime(Landroid/content/Context;J)V
    .locals 2
    .parameter "context"
    .parameter "time"

    .prologue
    .line 198
    invoke-static {p0}, Lcom/xiaomi/common/UserInfo;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 199
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "last_refresh"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 200
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 201
    return-void
.end method

.method public static setLocation(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "city"

    .prologue
    .line 218
    const-string v0, "location"

    invoke-static {p0, v0, p1}, Lcom/xiaomi/common/UserInfo;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    return-void
.end method

.method public static setPhoneInfo(Landroid/content/Context;I)V
    .locals 1
    .parameter "context"
    .parameter "status"

    .prologue
    .line 178
    const-string v0, "phone_info"

    invoke-static {p0, v0, p1}, Lcom/xiaomi/common/UserInfo;->setInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 179
    return-void
.end method

.method private static setSerializerKeyValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "serializer"
    .parameter "key"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v2, "item"

    const-string v1, ""

    .line 273
    const-string v0, ""

    const-string v0, "item"

    invoke-interface {p0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 274
    const-string v0, ""

    const-string v0, "key"

    invoke-interface {p0, v1, v0, p1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 275
    invoke-interface {p0, p2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 276
    const-string v0, ""

    const-string v0, "item"

    invoke-interface {p0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 277
    return-void
.end method

.method private static setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "key"
    .parameter "value"

    .prologue
    .line 265
    invoke-static {p0}, Lcom/xiaomi/common/UserInfo;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 266
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 267
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 268
    return-void
.end method

.method private static setStringArrayList(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 3
    .parameter "context"
    .parameter "key"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 243
    .local p2, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {p0}, Lcom/xiaomi/common/UserInfo;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 245
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    :try_start_0
    invoke-static {p2}, Lcom/xiaomi/common/ObjectSerializer;->serialize(Ljava/io/Serializable;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 246
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 250
    :goto_0
    return-void

    .line 247
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 248
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static setWidgetIconPosition(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "pos"

    .prologue
    .line 91
    if-nez p0, :cond_0

    .line 92
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "wdiget_pos"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/xiaomi/common/UserInfo;->setInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 94
    return-void
.end method
