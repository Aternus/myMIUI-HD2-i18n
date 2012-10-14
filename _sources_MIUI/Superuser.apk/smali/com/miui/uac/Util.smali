.class public Lcom/miui/uac/Util;
.super Ljava/lang/Object;
.source "Util.java"


# static fields
.field public static ANTI_WIRETAPPING_BEHAVIORS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static CALL_PHONE_BEHAVIORS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static MESSAGE_BEHAVIORS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static PERMISSION_LABELS_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static PERMISSION_SUMMARY_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static PRECONFIRMED_BEHAVIORS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static READ_PHONE_STATE_BEHAVIORS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 47
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Lcom/miui/uac/Util;->READ_PHONE_STATE_BEHAVIORS:Ljava/util/List;

    .line 48
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Lcom/miui/uac/Util;->CALL_PHONE_BEHAVIORS:Ljava/util/List;

    .line 49
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Lcom/miui/uac/Util;->ANTI_WIRETAPPING_BEHAVIORS:Ljava/util/List;

    .line 50
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Lcom/miui/uac/Util;->MESSAGE_BEHAVIORS:Ljava/util/List;

    .line 51
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Lcom/miui/uac/Util;->PRECONFIRMED_BEHAVIORS:Ljava/util/List;

    .line 53
    const-string v2, "guardian"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/app/IPackageGuardian$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IPackageGuardian;

    move-result-object v1

    .line 55
    .local v1, packageGuardian:Lcom/android/internal/app/IPackageGuardian;
    :try_start_0
    invoke-interface {v1}, Lcom/android/internal/app/IPackageGuardian;->getReadPhoneStateBehaviors()Ljava/util/List;

    move-result-object v2

    sput-object v2, Lcom/miui/uac/Util;->READ_PHONE_STATE_BEHAVIORS:Ljava/util/List;

    .line 56
    invoke-interface {v1}, Lcom/android/internal/app/IPackageGuardian;->getCallPhoneBehaviors()Ljava/util/List;

    move-result-object v2

    sput-object v2, Lcom/miui/uac/Util;->CALL_PHONE_BEHAVIORS:Ljava/util/List;

    .line 57
    invoke-interface {v1}, Lcom/android/internal/app/IPackageGuardian;->getMonitorCallsBehaviors()Ljava/util/List;

    move-result-object v2

    sput-object v2, Lcom/miui/uac/Util;->ANTI_WIRETAPPING_BEHAVIORS:Ljava/util/List;

    .line 58
    invoke-interface {v1}, Lcom/android/internal/app/IPackageGuardian;->getMessagingBehaviors()Ljava/util/List;

    move-result-object v2

    sput-object v2, Lcom/miui/uac/Util;->MESSAGE_BEHAVIORS:Ljava/util/List;

    .line 59
    invoke-interface {v1}, Lcom/android/internal/app/IPackageGuardian;->getPreconfirmedBehaviors()Ljava/util/List;

    move-result-object v2

    sput-object v2, Lcom/miui/uac/Util;->PRECONFIRMED_BEHAVIORS:Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    :goto_0
    new-instance v2, Lcom/miui/uac/Util$1;

    invoke-direct {v2}, Lcom/miui/uac/Util$1;-><init>()V

    sput-object v2, Lcom/miui/uac/Util;->PERMISSION_LABELS_MAP:Ljava/util/HashMap;

    .line 128
    new-instance v2, Lcom/miui/uac/Util$2;

    invoke-direct {v2}, Lcom/miui/uac/Util$2;-><init>()V

    sput-object v2, Lcom/miui/uac/Util;->PERMISSION_SUMMARY_MAP:Ljava/util/HashMap;

    return-void

    .line 60
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 61
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "Su.Util"

    const-string v3, "error"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static formatDate(Landroid/content/Context;J)Ljava/lang/String;
    .locals 5
    .parameter "context"
    .parameter "date"

    .prologue
    const-string v4, "default"

    .line 269
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 270
    .local v1, prefs:Landroid/content/SharedPreferences;
    const-string v2, "pref_date_format"

    const-string v3, "default"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 271
    .local v0, format:Ljava/lang/String;
    const-string v2, "default"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 272
    invoke-static {p0}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v2

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 274
    .end local p0
    :goto_0
    return-object v2

    .restart local p0
    :cond_0
    invoke-static {v0, p1, p2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    move-object v2, p0

    goto :goto_0
.end method

.method public static formatDateTime(Landroid/content/Context;J)Ljava/lang/String;
    .locals 2
    .parameter "context"
    .parameter "date"

    .prologue
    .line 305
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, p1, p2}, Lcom/miui/uac/Util;->formatDate(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0, p1, p2}, Lcom/miui/uac/Util;->formatTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatTime(Landroid/content/Context;J)Ljava/lang/String;
    .locals 12
    .parameter "context"
    .parameter "time"

    .prologue
    const/4 v11, 0x1

    .line 279
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 280
    .local v5, prefs:Landroid/content/SharedPreferences;
    const-string v8, "pref_24_hour_format"

    invoke-interface {v5, v8, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 281
    .local v2, hour24:Z
    const-string v8, "pref_show_seconds"

    invoke-interface {v5, v8, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    .line 282
    .local v7, showSeconds:Z
    const-string v1, "kk"

    .line 283
    .local v1, hour:Ljava/lang/String;
    const-string v3, "mm"

    .line 284
    .local v3, min:Ljava/lang/String;
    const-string v6, ":ss"

    .line 285
    .local v6, sec:Ljava/lang/String;
    const-string v4, ""

    .line 287
    .local v4, post:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 288
    const-string v1, "kk"

    .line 294
    :goto_0
    if-eqz v7, :cond_1

    .line 295
    const-string v6, ":ss"

    .line 300
    :goto_1
    const-string v8, "%s:%s%s%s"

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v1, v9, v10

    aput-object v3, v9, v11

    const/4 v10, 0x2

    aput-object v6, v9, v10

    const/4 v10, 0x3

    aput-object v4, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 301
    .local v0, format:Ljava/lang/String;
    invoke-static {v0, p1, p2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    return-object p0

    .line 290
    .end local v0           #format:Ljava/lang/String;
    .restart local p0
    :cond_0
    const-string v1, "hh"

    .line 291
    const-string v4, "aa"

    goto :goto_0

    .line 297
    :cond_1
    const-string v6, ""

    goto :goto_1
.end method

.method public static getAppIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 5
    .parameter "c"
    .parameter "packageName"

    .prologue
    .line 242
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 243
    .local v2, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020004

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 245
    .local v0, appIcon:Landroid/graphics/drawable/Drawable;
    :try_start_0
    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 249
    :goto_0
    return-object v0

    .line 246
    :catch_0
    move-exception v1

    .line 247
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "Su.Util"

    const-string v4, "error"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static getAppName(Landroid/content/Context;IZ)Ljava/lang/String;
    .locals 8
    .parameter "c"
    .parameter "uid"
    .parameter "withUid"

    .prologue
    const/4 v6, 0x1

    const-string v7, "Su.Util"

    .line 152
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 153
    .local v4, pm:Landroid/content/pm/PackageManager;
    const-string v1, "Unknown"

    .line 154
    .local v1, appName:Ljava/lang/String;
    invoke-virtual {v4, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v3

    .line 155
    .local v3, packages:[Ljava/lang/String;
    if-eqz v3, :cond_3

    .line 156
    array-length v5, v3

    if-ne v5, v6, :cond_2

    .line 158
    const/4 v5, 0x0

    :try_start_0
    aget-object v5, v3, v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 159
    .local v0, appInfo:Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v4, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 170
    .end local v0           #appInfo:Landroid/content/pm/ApplicationInfo;
    :cond_0
    :goto_0
    if-eqz p2, :cond_1

    .line 171
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 174
    :cond_1
    return-object v1

    .line 160
    :catch_0
    move-exception v5

    move-object v2, v5

    .line 161
    .local v2, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "Su.Util"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No package found matching with the uid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 163
    .end local v2           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_2
    array-length v5, v3

    if-le v5, v6, :cond_0

    .line 164
    const-string v1, "Multiple Packages"

    goto :goto_0

    .line 167
    :cond_3
    const-string v5, "Su.Util"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Package not found for uid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getAppName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "c"
    .parameter "packageName"

    .prologue
    .line 178
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 179
    .local v3, pm:Landroid/content/pm/PackageManager;
    move-object v1, p1

    .line 182
    .local v1, appName:Ljava/lang/String;
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 183
    .local v0, appInfo:Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v3, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 187
    .end local v0           #appInfo:Landroid/content/pm/ApplicationInfo;
    :goto_0
    return-object v1

    .line 184
    :catch_0
    move-exception v4

    move-object v2, v4

    .line 185
    .local v2, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "Su.Util"

    const-string v5, "error"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static getAppPackage(Landroid/content/Context;I)Ljava/lang/String;
    .locals 5
    .parameter "c"
    .parameter "uid"

    .prologue
    const/4 v4, 0x1

    .line 203
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 204
    .local v2, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    .line 205
    .local v1, packages:[Ljava/lang/String;
    const v3, 0x7f06001c

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 207
    .local v0, appPackage:Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 208
    array-length v3, v1

    if-ne v3, v4, :cond_1

    .line 209
    const/4 v3, 0x0

    aget-object v0, v1, v3

    .line 217
    :cond_0
    :goto_0
    return-object v0

    .line 210
    :cond_1
    array-length v3, v1

    if-le v3, v4, :cond_0

    .line 211
    const-string v0, "Multiple packages"

    goto :goto_0

    .line 214
    :cond_2
    const-string v3, "Su.Util"

    const-string v4, "Package not found"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getAppVersionName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "c"
    .parameter "packageName"

    .prologue
    .line 191
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 192
    .local v2, pm:Landroid/content/pm/PackageManager;
    const/4 v3, 0x0

    .line 194
    .local v3, versionName:Ljava/lang/String;
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v2, p1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 195
    .local v1, info:Landroid/content/pm/PackageInfo;
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    .end local v1           #info:Landroid/content/pm/PackageInfo;
    :goto_0
    return-object v3

    .line 196
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 197
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "Su.Util"

    const-string v5, "error"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static getPermissionKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "permission"

    .prologue
    .line 139
    sget-object v0, Lcom/miui/uac/Util;->READ_PHONE_STATE_BEHAVIORS:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    const-string v0, "android.permission.superuser.read_phone_state"

    .line 148
    :goto_0
    return-object v0

    .line 141
    :cond_0
    sget-object v0, Lcom/miui/uac/Util;->CALL_PHONE_BEHAVIORS:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 142
    const-string v0, "android.permission.superuser.call_phone"

    goto :goto_0

    .line 143
    :cond_1
    sget-object v0, Lcom/miui/uac/Util;->ANTI_WIRETAPPING_BEHAVIORS:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 144
    const-string v0, "android.permission.superuser.monitor_calls"

    goto :goto_0

    .line 145
    :cond_2
    sget-object v0, Lcom/miui/uac/Util;->MESSAGE_BEHAVIORS:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 146
    const-string v0, "android.permission.superuser.message"

    goto :goto_0

    .line 148
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSystemApplication(Landroid/content/Context;I)Z
    .locals 6
    .parameter "context"
    .parameter "callUid"

    .prologue
    const/4 v5, 0x0

    .line 66
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 68
    .local v2, pm:Landroid/content/pm/PackageManager;
    :try_start_0
    invoke-static {p0, p1}, Lcom/miui/uac/Util;->getAppPackage(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 69
    .local v1, info:Landroid/content/pm/ApplicationInfo;
    iget v3, v1, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    .line 72
    .end local v1           #info:Landroid/content/pm/ApplicationInfo;
    :goto_0
    return v3

    .restart local v1       #info:Landroid/content/pm/ApplicationInfo;
    :cond_0
    move v3, v5

    .line 69
    goto :goto_0

    .line 70
    .end local v1           #info:Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 71
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "Su.Util"

    const-string v4, "name not found exception."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v5

    .line 72
    goto :goto_0
.end method

.method public static putConfirmedBehaviors(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 8
    .parameter "permission"
    .parameter "packageName"
    .parameter "value"

    .prologue
    const/4 v7, 0x1

    .line 98
    const-string v5, "guardian"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/app/IPackageGuardian$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IPackageGuardian;

    move-result-object v3

    .line 99
    .local v3, packageGuardian:Lcom/android/internal/app/IPackageGuardian;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 100
    .local v4, permissionList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v5, "android.permission.superuser.read_phone_state"

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 101
    sget-object v4, Lcom/miui/uac/Util;->READ_PHONE_STATE_BEHAVIORS:Ljava/util/List;

    .line 109
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 111
    .local v2, p:Ljava/lang/String;
    if-ne p2, v7, :cond_4

    move v5, v7

    :goto_2
    :try_start_0
    invoke-interface {v3, v2, p1, v5}, Lcom/android/internal/app/IPackageGuardian;->putConfirmedBehavior(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 112
    :catch_0
    move-exception v0

    .line 113
    .local v0, e:Landroid/os/RemoteException;
    const-string v5, "Su.Util"

    const-string v6, "error"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 102
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #p:Ljava/lang/String;
    :cond_1
    const-string v5, "android.permission.superuser.call_phone"

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 103
    sget-object v4, Lcom/miui/uac/Util;->CALL_PHONE_BEHAVIORS:Ljava/util/List;

    goto :goto_0

    .line 104
    :cond_2
    const-string v5, "android.permission.superuser.monitor_calls"

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 105
    sget-object v4, Lcom/miui/uac/Util;->ANTI_WIRETAPPING_BEHAVIORS:Ljava/util/List;

    goto :goto_0

    .line 106
    :cond_3
    const-string v5, "android.permission.superuser.message"

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 107
    sget-object v4, Lcom/miui/uac/Util;->MESSAGE_BEHAVIORS:Ljava/util/List;

    goto :goto_0

    .line 111
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v2       #p:Ljava/lang/String;
    :cond_4
    const/4 v5, 0x0

    goto :goto_2

    .line 116
    .end local v2           #p:Ljava/lang/String;
    :cond_5
    return-void
.end method

.method public static removeComfirmedBehaviors(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "permission"
    .parameter "packageName"

    .prologue
    .line 77
    const-string v5, "guardian"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/app/IPackageGuardian$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IPackageGuardian;

    move-result-object v3

    .line 78
    .local v3, packageGuardian:Lcom/android/internal/app/IPackageGuardian;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 79
    .local v4, permissionList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v5, "android.permission.superuser.read_phone_state"

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 80
    sget-object v4, Lcom/miui/uac/Util;->READ_PHONE_STATE_BEHAVIORS:Ljava/util/List;

    .line 88
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 90
    .local v2, p:Ljava/lang/String;
    :try_start_0
    invoke-interface {v3, v2, p1}, Lcom/android/internal/app/IPackageGuardian;->removeConfirmedBehavior(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 91
    :catch_0
    move-exception v0

    .line 92
    .local v0, e:Landroid/os/RemoteException;
    const-string v5, "Su.Util"

    const-string v6, "error"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 81
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #p:Ljava/lang/String;
    :cond_1
    const-string v5, "android.permission.superuser.call_phone"

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 82
    sget-object v4, Lcom/miui/uac/Util;->CALL_PHONE_BEHAVIORS:Ljava/util/List;

    goto :goto_0

    .line 83
    :cond_2
    const-string v5, "android.permission.superuser.monitor_calls"

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 84
    sget-object v4, Lcom/miui/uac/Util;->ANTI_WIRETAPPING_BEHAVIORS:Ljava/util/List;

    goto :goto_0

    .line 85
    :cond_3
    const-string v5, "android.permission.superuser.message"

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 86
    sget-object v4, Lcom/miui/uac/Util;->MESSAGE_BEHAVIORS:Ljava/util/List;

    goto :goto_0

    .line 95
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_4
    return-void
.end method

.method public static uninstallPkg(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "packageName"

    .prologue
    .line 310
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "package:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 311
    .local v0, packageURI:Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.DELETE"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 312
    .local v1, uninstallIntent:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 313
    return-void
.end method
