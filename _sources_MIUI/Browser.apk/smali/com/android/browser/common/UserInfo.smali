.class public Lcom/android/browser/common/UserInfo;
.super Ljava/lang/Object;
.source "UserInfo.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "common/UserInfo"

.field private static final LastRefreshTimeKey:Ljava/lang/String; = "last_refresh"

.field private static final LocationKey:Ljava/lang/String; = "location"

.field private static final PhoneInfoKey:Ljava/lang/String; = "phone_info"

.field private static final Preference_Name:Ljava/lang/String; = "User Info"

.field private static final UserIdKey:Ljava/lang/String; = "user_id"

.field private static final WidgetPositionKey:Ljava/lang/String; = "wdiget_pos"

.field private static preferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getIMEI(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "context"

    .prologue
    const-string v3, "0"

    .line 49
    :try_start_0
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 51
    .local v1, telephonyMgr:Landroid/telephony/TelephonyManager;
    if-eqz v1, :cond_0

    .line 52
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    .line 56
    .end local v1           #telephonyMgr:Landroid/telephony/TelephonyManager;
    :goto_0
    return-object v2

    .line 54
    .restart local v1       #telephonyMgr:Landroid/telephony/TelephonyManager;
    :cond_0
    const-string v2, "0"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v3

    goto :goto_0

    .line 55
    .end local v1           #telephonyMgr:Landroid/telephony/TelephonyManager;
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 56
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "0"

    move-object v2, v3

    goto :goto_0
.end method

.method public static getLastRefreshTime(Landroid/content/Context;)J
    .locals 4
    .parameter "context"

    .prologue
    .line 183
    invoke-static {p0}, Lcom/android/browser/common/UserInfo;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

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
    .line 204
    invoke-static {p0}, Lcom/android/browser/common/UserInfo;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

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

    .line 114
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v1

    .line 115
    .local v1, serializer:Lorg/xmlpull/v1/XmlSerializer;
    new-instance v2, Ljava/io/StringWriter;

    const/16 v3, 0x200

    invoke-direct {v2, v3}, Ljava/io/StringWriter;-><init>(I)V

    .line 118
    .local v2, writer:Ljava/io/StringWriter;
    :try_start_0
    invoke-interface {v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    .line 119
    const-string v3, ""

    const-string v4, "root"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 121
    invoke-static {p0}, Lcom/android/browser/common/UserInfo;->getIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    .line 122
    const-string v3, "IMEI"

    const-string v4, "0"

    invoke-static {v1, v3, v4}, Lcom/android/browser/common/UserInfo;->setSerializerKeyValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    :goto_0
    const-string v3, "Build.BOARD"

    sget-object v4, Landroid/os/Build;->BOARD:Ljava/lang/String;

    invoke-static {v1, v3, v4}, Lcom/android/browser/common/UserInfo;->setSerializerKeyValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    const-string v3, "Build.BRAND"

    sget-object v4, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-static {v1, v3, v4}, Lcom/android/browser/common/UserInfo;->setSerializerKeyValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    const-string v3, "Build.DEVICE"

    sget-object v4, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-static {v1, v3, v4}, Lcom/android/browser/common/UserInfo;->setSerializerKeyValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    const-string v3, "Build.DISPLAY"

    sget-object v4, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-static {v1, v3, v4}, Lcom/android/browser/common/UserInfo;->setSerializerKeyValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    const-string v3, "Build.FINGERPRINT"

    sget-object v4, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-static {v1, v3, v4}, Lcom/android/browser/common/UserInfo;->setSerializerKeyValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    const-string v3, "Build.HOST"

    sget-object v4, Landroid/os/Build;->HOST:Ljava/lang/String;

    invoke-static {v1, v3, v4}, Lcom/android/browser/common/UserInfo;->setSerializerKeyValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    const-string v3, "Build.ID"

    sget-object v4, Landroid/os/Build;->ID:Ljava/lang/String;

    invoke-static {v1, v3, v4}, Lcom/android/browser/common/UserInfo;->setSerializerKeyValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    const-string v3, "Build.MODEL"

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v1, v3, v4}, Lcom/android/browser/common/UserInfo;->setSerializerKeyValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    const-string v3, "Build.PRODUCT"

    sget-object v4, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-static {v1, v3, v4}, Lcom/android/browser/common/UserInfo;->setSerializerKeyValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    const-string v3, "Build.TAGS"

    sget-object v4, Landroid/os/Build;->TAGS:Ljava/lang/String;

    invoke-static {v1, v3, v4}, Lcom/android/browser/common/UserInfo;->setSerializerKeyValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    const-string v3, "Build.TYPE"

    sget-object v4, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-static {v1, v3, v4}, Lcom/android/browser/common/UserInfo;->setSerializerKeyValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    const-string v3, "Build.USER"

    sget-object v4, Landroid/os/Build;->USER:Ljava/lang/String;

    invoke-static {v1, v3, v4}, Lcom/android/browser/common/UserInfo;->setSerializerKeyValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    const-string v3, "Build.VERSION.INCREMENTAL"

    sget-object v4, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-static {v1, v3, v4}, Lcom/android/browser/common/UserInfo;->setSerializerKeyValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    const-string v3, "Build.VERSION.RELEASE"

    sget-object v4, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-static {v1, v3, v4}, Lcom/android/browser/common/UserInfo;->setSerializerKeyValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    const-string v3, "Build.VERSION.SDK"

    sget-object v4, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v1, v3, v4}, Lcom/android/browser/common/UserInfo;->setSerializerKeyValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    const-string v3, ""

    const-string v4, "root"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 152
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 164
    :goto_1
    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 124
    :cond_0
    :try_start_1
    const-string v3, "IMEI"

    invoke-static {p0}, Lcom/android/browser/common/UserInfo;->getIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v3, v4}, Lcom/android/browser/common/UserInfo;->setSerializerKeyValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_0

    .line 154
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 156
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    .line 157
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v3

    move-object v0, v3

    .line 159
    .local v0, e:Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_1

    .line 160
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :catch_2
    move-exception v3

    move-object v0, v3

    .line 162
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method private static getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2
    .parameter "context"

    .prologue
    .line 217
    sget-object v0, Lcom/android/browser/common/UserInfo;->preferences:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 218
    const-string v0, "User Info"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/android/browser/common/UserInfo;->preferences:Landroid/content/SharedPreferences;

    .line 221
    :cond_0
    sget-object v0, Lcom/android/browser/common/UserInfo;->preferences:Landroid/content/SharedPreferences;

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

    .line 227
    :try_start_0
    invoke-static {p0}, Lcom/android/browser/common/UserInfo;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/browser/common/ObjectSerializer;->deserialize(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v1, p0

    .line 234
    :goto_0
    return-object v1

    .line 228
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 229
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .end local v0           #e:Ljava/io/IOException;
    :goto_1
    move-object v1, v3

    .line 234
    goto :goto_0

    .line 230
    :catch_1
    move-exception v1

    move-object v0, v1

    .line 231
    .local v0, e:Ljava/lang/ClassNotFoundException;
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_1
.end method

.method public static getUserId(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "context"

    .prologue
    const-string v3, "user_id"

    .line 31
    invoke-static {p0}, Lcom/android/browser/common/UserInfo;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "user_id"

    const/4 v2, 0x0

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 34
    .local v0, userId:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 35
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 36
    const-string v1, "user_id"

    invoke-static {p0, v3, v0}, Lcom/android/browser/common/UserInfo;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    :cond_0
    return-object v0
.end method

.method public static getUserIdQueryString(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "context"

    .prologue
    .line 66
    const-string v0, "uuid=%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Lcom/android/browser/common/UserInfo;->getUserId(Landroid/content/Context;)Ljava/lang/String;

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
    .line 75
    if-nez p0, :cond_0

    .line 76
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    :cond_0
    invoke-static {p0}, Lcom/android/browser/common/UserInfo;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

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
    .line 97
    invoke-static {p0}, Lcom/android/browser/common/UserInfo;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

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
    .line 105
    const-string v0, "phone_info"

    invoke-static {p0, v0, p1}, Lcom/android/browser/common/UserInfo;->setBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 106
    return-void
.end method

.method private static setBoolean(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 2
    .parameter "context"
    .parameter "key"
    .parameter "value"

    .prologue
    .line 254
    invoke-static {p0}, Lcom/android/browser/common/UserInfo;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 255
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 256
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 257
    return-void
.end method

.method private static setInt(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2
    .parameter "context"
    .parameter "key"
    .parameter "value"

    .prologue
    .line 248
    invoke-static {p0}, Lcom/android/browser/common/UserInfo;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 249
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 250
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 251
    return-void
.end method

.method public static setLastRefreshTime(Landroid/content/Context;J)V
    .locals 2
    .parameter "context"
    .parameter "time"

    .prologue
    .line 193
    invoke-static {p0}, Lcom/android/browser/common/UserInfo;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 194
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "last_refresh"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 195
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 196
    return-void
.end method

.method public static setLocation(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "city"

    .prologue
    .line 213
    const-string v0, "location"

    invoke-static {p0, v0, p1}, Lcom/android/browser/common/UserInfo;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    return-void
.end method

.method public static setPhoneInfo(Landroid/content/Context;I)V
    .locals 1
    .parameter "context"
    .parameter "status"

    .prologue
    .line 173
    const-string v0, "phone_info"

    invoke-static {p0, v0, p1}, Lcom/android/browser/common/UserInfo;->setInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 174
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

    .line 268
    const-string v0, ""

    const-string v0, "item"

    invoke-interface {p0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 269
    const-string v0, ""

    const-string v0, "key"

    invoke-interface {p0, v1, v0, p1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 270
    invoke-interface {p0, p2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 271
    const-string v0, ""

    const-string v0, "item"

    invoke-interface {p0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 272
    return-void
.end method

.method private static setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "key"
    .parameter "value"

    .prologue
    .line 260
    invoke-static {p0}, Lcom/android/browser/common/UserInfo;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 261
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 262
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 263
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
    .line 238
    .local p2, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {p0}, Lcom/android/browser/common/UserInfo;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 240
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    :try_start_0
    invoke-static {p2}, Lcom/android/browser/common/ObjectSerializer;->serialize(Ljava/io/Serializable;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 241
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 245
    :goto_0
    return-void

    .line 242
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 243
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static setWidgetIconPosition(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "pos"

    .prologue
    .line 86
    if-nez p0, :cond_0

    .line 87
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
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

    invoke-static {p0, v0, p1}, Lcom/android/browser/common/UserInfo;->setInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 89
    return-void
.end method
