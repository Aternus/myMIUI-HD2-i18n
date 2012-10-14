.class public Lcom/android/providers/settings/DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DatabaseHelper.java"


# static fields
.field private static final mValidTables:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 57
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/providers/settings/DatabaseHelper;->mValidTables:Ljava/util/HashSet;

    .line 60
    sget-object v0, Lcom/android/providers/settings/DatabaseHelper;->mValidTables:Ljava/util/HashSet;

    const-string v1, "system"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 61
    sget-object v0, Lcom/android/providers/settings/DatabaseHelper;->mValidTables:Ljava/util/HashSet;

    const-string v1, "secure"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 62
    sget-object v0, Lcom/android/providers/settings/DatabaseHelper;->mValidTables:Ljava/util/HashSet;

    const-string v1, "bluetooth_devices"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 63
    sget-object v0, Lcom/android/providers/settings/DatabaseHelper;->mValidTables:Ljava/util/HashSet;

    const-string v1, "bookmarks"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 66
    sget-object v0, Lcom/android/providers/settings/DatabaseHelper;->mValidTables:Ljava/util/HashSet;

    const-string v1, "favorites"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 67
    sget-object v0, Lcom/android/providers/settings/DatabaseHelper;->mValidTables:Ljava/util/HashSet;

    const-string v1, "gservices"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 68
    sget-object v0, Lcom/android/providers/settings/DatabaseHelper;->mValidTables:Ljava/util/HashSet;

    const-string v1, "old_favorites"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 72
    const-string v0, "settings.db"

    const/4 v1, 0x0

    const/16 v2, 0x39

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 73
    iput-object p1, p0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    .line 74
    return-void
.end method

.method private createSecureTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 81
    const-string v0, "CREATE TABLE secure (_id INTEGER PRIMARY KEY AUTOINCREMENT,name TEXT UNIQUE ON CONFLICT REPLACE,value TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 86
    const-string v0, "CREATE INDEX secureIndex1 ON secure (name);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 87
    return-void
.end method

.method public static isValidTable(Ljava/lang/String;)Z
    .locals 1
    .parameter "name"

    .prologue
    .line 77
    sget-object v0, Lcom/android/providers/settings/DatabaseHelper;->mValidTables:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V
    .locals 1
    .parameter "stmt"
    .parameter "key"
    .parameter "resid"

    .prologue
    .line 1124
    iget-object v0, p0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "1"

    :goto_0
    invoke-direct {p0, p1, p2, v0}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1126
    return-void

    .line 1124
    :cond_0
    const-string v0, "0"

    goto :goto_0
.end method

.method private loadDefaultAnimationSettings(Landroid/database/sqlite/SQLiteStatement;)V
    .locals 3
    .parameter "stmt"

    .prologue
    const/4 v2, 0x1

    .line 1011
    const-string v0, "window_animation_scale"

    const/high16 v1, 0x7f06

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadFractionSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;II)V

    .line 1013
    const-string v0, "transition_animation_scale"

    const v1, 0x7f060001

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadFractionSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;II)V

    .line 1015
    return-void
.end method

.method private loadDefaultHapticSettings(Landroid/database/sqlite/SQLiteStatement;)V
    .locals 2
    .parameter "stmt"

    .prologue
    .line 1018
    const-string v0, "haptic_feedback_enabled"

    const v1, 0x7f030005

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 1020
    return-void
.end method

.method private loadFractionSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;II)V
    .locals 1
    .parameter "stmt"
    .parameter "key"
    .parameter "resid"
    .parameter "base"

    .prologue
    .line 1134
    iget-object v0, p0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p3, p4, p4}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1136
    return-void
.end method

.method private loadIntegerSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V
    .locals 1
    .parameter "stmt"
    .parameter "key"
    .parameter "resid"

    .prologue
    .line 1129
    iget-object v0, p0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1131
    return-void
.end method

.method private loadSecure35Settings(Landroid/database/sqlite/SQLiteStatement;)V
    .locals 2
    .parameter

    .prologue
    .line 1106
    const-string v0, "backup_enabled"

    const v1, 0x7f03000c

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 1109
    const-string v0, "backup_transport"

    const v1, 0x7f050003

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 1111
    return-void
.end method

.method private loadSecureSettings(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 8
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1023
    const/4 v0, 0x0

    .line 1025
    :try_start_0
    const-string v1, "INSERT OR IGNORE INTO secure(name,value) VALUES(?,?);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 1028
    :try_start_1
    const-string v1, "bluetooth_on"

    const v2, 0x7f030006

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 1032
    const-string v1, "data_roaming"

    const-string v2, "true"

    const-string v3, "ro.com.android.dataroaming"

    const-string v4, "false"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v5

    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1037
    const-string v1, "install_non_market_apps"

    const v2, 0x7f030007

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 1040
    const-string v1, "location_providers_allowed"

    const v2, 0x7f050002

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 1043
    const-string v1, "assisted_gps_enabled"

    const v2, 0x7f030008

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 1046
    const-string v1, "network_preference"

    const v2, 0x7f040002

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadIntegerSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 1049
    const-string v1, "usb_mass_storage_enabled"

    const v2, 0x7f030009

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 1052
    const-string v1, "wifi_on"

    const v2, 0x7f03000a

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 1054
    const-string v1, "wifi_networks_available_notification_on"

    const v2, 0x7f03000b

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 1057
    const-string v1, "ro.com.android.wifi-watchlist"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1058
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1059
    const-string v2, "wifi_watchdog_watch_list"

    invoke-direct {p0, v0, v2, v1}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1063
    :cond_0
    const-string v1, "ro.telephony.default_network"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 1065
    const-string v2, "preferred_network_mode"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v2, v1}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1068
    const-string v1, "cdma_cell_broadcast_sms"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1072
    const-string v1, "preferred_cdma_subscription"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1080
    const-string v1, "mock_location"

    const-string v2, "1"

    const-string v3, "ro.allow.mock.location"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v5

    :goto_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1083
    invoke-direct {p0, v0}, Lcom/android/providers/settings/DatabaseHelper;->loadSecure35Settings(Landroid/database/sqlite/SQLiteStatement;)V

    .line 1085
    const-string v1, "mount_play_not_snd"

    const v2, 0x7f03000e

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 1088
    const-string v1, "mount_ums_autostart"

    const v2, 0x7f03000f

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 1091
    const-string v1, "mount_ums_prompt"

    const v2, 0x7f030010

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 1094
    const-string v1, "mount_ums_notify_enabled"

    const v2, 0x7f030011

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 1098
    const-string v1, "device_provisioned"

    const v2, 0x7f030014

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1101
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1103
    :cond_1
    return-void

    :cond_2
    move v2, v6

    .line 1032
    goto/16 :goto_0

    :cond_3
    move v2, v6

    .line 1080
    goto :goto_1

    .line 1101
    :catchall_0
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    :goto_2
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_4
    throw v0

    :catchall_1
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_2
.end method

.method private loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .parameter "stmt"
    .parameter "key"
    .parameter "value"

    .prologue
    .line 1114
    const/4 v0, 0x1

    invoke-virtual {p1, v0, p2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 1115
    const/4 v0, 0x2

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 1116
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 1117
    return-void
.end method

.method private loadSettings(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .parameter "db"

    .prologue
    .line 901
    invoke-direct {p0, p1}, Lcom/android/providers/settings/DatabaseHelper;->loadSystemSettings(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 902
    invoke-direct {p0, p1}, Lcom/android/providers/settings/DatabaseHelper;->loadSecureSettings(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 903
    return-void
.end method

.method private loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V
    .locals 1
    .parameter "stmt"
    .parameter "key"
    .parameter "resid"

    .prologue
    .line 1120
    iget-object v0, p0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1121
    return-void
.end method

.method private loadSystemSettings(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 5
    .parameter "db"

    .prologue
    const/4 v4, 0x0

    .line 906
    const/4 v0, 0x0

    .line 908
    .local v0, stmt:Landroid/database/sqlite/SQLiteStatement;
    :try_start_0
    const-string v1, "INSERT OR IGNORE INTO system(name,value) VALUES(?,?);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    .line 911
    const-string v1, "dim_screen"

    const/high16 v2, 0x7f03

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 913
    const-string v1, "stay_on_while_plugged_in"

    const-string v2, "1"

    const-string v3, "ro.kernel.qemu"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 915
    const-string v1, "screen_off_timeout"

    const/high16 v2, 0x7f04

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadIntegerSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 919
    const-string v1, "emergency_tone"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 922
    const-string v1, "call_auto_retry"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 925
    const-string v1, "dtmf_tone_type"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 928
    const-string v1, "hearing_aid"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 931
    const-string v1, "tty_mode"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 933
    const-string v1, "airplane_mode_on"

    const v2, 0x7f030001

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 936
    const-string v1, "airplane_mode_radios"

    const/high16 v2, 0x7f05

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 939
    const-string v1, "airplane_mode_toggleable_radios"

    const v2, 0x7f050001

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 942
    const-string v1, "auto_time"

    const v2, 0x7f030002

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 945
    const-string v1, "screen_brightness"

    const v2, 0x7f040001

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadIntegerSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 948
    const-string v1, "screen_brightness_mode"

    const v2, 0x7f030004

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 951
    invoke-direct {p0, v0}, Lcom/android/providers/settings/DatabaseHelper;->loadDefaultAnimationSettings(Landroid/database/sqlite/SQLiteStatement;)V

    .line 953
    const-string v1, "accelerometer_rotation"

    const v2, 0x7f030003

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 956
    invoke-direct {p0, v0}, Lcom/android/providers/settings/DatabaseHelper;->loadDefaultHapticSettings(Landroid/database/sqlite/SQLiteStatement;)V

    .line 958
    const-string v1, "notification_light_pulse"

    const v2, 0x7f03000d

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 960
    const-string v1, "set_install_location"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 961
    const-string v1, "default_install_location"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 964
    invoke-direct {p0, v0}, Lcom/android/providers/settings/DatabaseHelper;->loadUISoundEffectsSettings(Landroid/database/sqlite/SQLiteStatement;)V

    .line 966
    const-string v1, "vibrate_in_silent"

    const v2, 0x7f030013

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 970
    const-string v1, "notifications_use_ring_volume"

    const v2, 0x7f030012

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 974
    const-string v1, "audio_scene_headset"

    const v2, 0x7f05000b

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 977
    const-string v1, "audio_scene_a2dp"

    const v2, 0x7f05000b

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 981
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 983
    :cond_0
    return-void

    :cond_1
    move v2, v4

    .line 913
    goto/16 :goto_0

    .line 981
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_2
    throw v1
.end method

.method private loadUISoundEffectsSettings(Landroid/database/sqlite/SQLiteStatement;)V
    .locals 2
    .parameter "stmt"

    .prologue
    .line 986
    const-string v0, "power_sounds_enabled"

    const v1, 0x7f040003

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/settings/DatabaseHelper;->loadIntegerSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 988
    const-string v0, "low_battery_sound"

    const v1, 0x7f050004

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 991
    const-string v0, "dock_sounds_enabled"

    const v1, 0x7f040004

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/settings/DatabaseHelper;->loadIntegerSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 993
    const-string v0, "desk_dock_sound"

    const v1, 0x7f050005

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 995
    const-string v0, "desk_undock_sound"

    const v1, 0x7f050006

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 997
    const-string v0, "car_dock_sound"

    const v1, 0x7f050007

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 999
    const-string v0, "car_undock_sound"

    const v1, 0x7f050008

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 1002
    const-string v0, "lockscreen_sounds_enabled"

    const v1, 0x7f040005

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/settings/DatabaseHelper;->loadIntegerSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 1004
    const-string v0, "lock_sound"

    const v1, 0x7f050009

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 1006
    const-string v0, "unlock_sound"

    const v1, 0x7f05000a

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 1008
    return-void
.end method

.method private loadVibrateSetting(Landroid/database/sqlite/SQLiteDatabase;Z)V
    .locals 4
    .parameter "db"
    .parameter "deleteOld"

    .prologue
    .line 879
    if-eqz p2, :cond_0

    .line 880
    const-string v2, "DELETE FROM system WHERE name=\'vibrate_on\'"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 883
    :cond_0
    const/4 v0, 0x0

    .line 885
    .local v0, stmt:Landroid/database/sqlite/SQLiteStatement;
    :try_start_0
    const-string v2, "INSERT OR IGNORE INTO system(name,value) VALUES(?,?);"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    .line 889
    const/4 v1, 0x0

    .line 890
    .local v1, vibrate:I
    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/media/AudioService;->getValueForVibrateSetting(III)I

    move-result v1

    .line 892
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/media/AudioService;->getValueForVibrateSetting(III)I

    move-result v2

    or-int/2addr v1, v2

    .line 894
    const-string v2, "vibrate_on"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v0, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 896
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 898
    :cond_1
    return-void

    .line 896
    .end local v1           #vibrate:I
    :catchall_0
    move-exception v2

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_2
    throw v2
.end method

.method private loadVolumeLevels(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4
    .parameter "db"

    .prologue
    .line 832
    const/4 v0, 0x0

    .line 834
    .local v0, stmt:Landroid/database/sqlite/SQLiteStatement;
    :try_start_0
    const-string v1, "INSERT OR IGNORE INTO system(name,value) VALUES(?,?);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    .line 837
    const-string v1, "volume_music"

    sget-object v2, Landroid/media/AudioManager;->DEFAULT_STREAM_VOLUME:[I

    const/4 v3, 0x3

    aget v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 839
    const-string v1, "volume_ring"

    sget-object v2, Landroid/media/AudioManager;->DEFAULT_STREAM_VOLUME:[I

    const/4 v3, 0x2

    aget v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 841
    const-string v1, "volume_system"

    sget-object v2, Landroid/media/AudioManager;->DEFAULT_STREAM_VOLUME:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 843
    const-string v1, "volume_voice"

    sget-object v2, Landroid/media/AudioManager;->DEFAULT_STREAM_VOLUME:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 847
    const-string v1, "volume_alarm"

    sget-object v2, Landroid/media/AudioManager;->DEFAULT_STREAM_VOLUME:[I

    const/4 v3, 0x4

    aget v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 849
    const-string v1, "volume_notification"

    sget-object v2, Landroid/media/AudioManager;->DEFAULT_STREAM_VOLUME:[I

    const/4 v3, 0x5

    aget v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 853
    const-string v1, "volume_bluetooth_sco"

    sget-object v2, Landroid/media/AudioManager;->DEFAULT_STREAM_VOLUME:[I

    const/4 v3, 0x6

    aget v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 858
    const-string v1, "mode_ringer"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 861
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/android/providers/settings/DatabaseHelper;->loadVibrateSetting(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 864
    const-string v1, "mode_ringer_streams_affected"

    const/16 v2, 0xa6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 868
    const-string v1, "mute_streams_affected"

    const/16 v2, 0x2e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 874
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 876
    :cond_0
    return-void

    .line 874
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_1
    throw v1
.end method

.method private moveFromSystemToSecure(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;)V
    .locals 7
    .parameter "db"
    .parameter "settingsToMove"

    .prologue
    .line 747
    const/4 v3, 0x0

    .line 748
    .local v3, insertStmt:Landroid/database/sqlite/SQLiteStatement;
    const/4 v1, 0x0

    .line 750
    .local v1, deleteStmt:Landroid/database/sqlite/SQLiteStatement;
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 752
    :try_start_0
    const-string v6, "INSERT INTO secure (name,value) SELECT name,value FROM system WHERE name=?"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v3

    .line 755
    const-string v6, "DELETE FROM system WHERE name=?"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    .line 758
    move-object v0, p2

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v5, v0, v2

    .line 759
    .local v5, setting:Ljava/lang/String;
    const/4 v6, 0x1

    invoke-virtual {v3, v6, v5}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 760
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 762
    const/4 v6, 0x1

    invoke-virtual {v1, v6, v5}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 763
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 758
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 765
    .end local v5           #setting:Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 767
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 768
    if-eqz v3, :cond_1

    .line 769
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 771
    :cond_1
    if-eqz v1, :cond_2

    .line 772
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 775
    :cond_2
    return-void

    .line 767
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v4           #len$:I
    :catchall_0
    move-exception v6

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 768
    if-eqz v3, :cond_3

    .line 769
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 771
    :cond_3
    if-eqz v1, :cond_4

    .line 772
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_4
    throw v6
.end method

.method private upgradeLockPatternLocation(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 13
    .parameter "db"

    .prologue
    const/4 v12, 0x1

    const/4 v4, 0x0

    const-string v1, "system"

    const-string v3, "name=\'lock_pattern\'"

    .line 778
    const-string v0, "system"

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v0

    const-string v0, "value"

    aput-object v0, v2, v12

    const-string v0, "name=\'lock_pattern\'"

    move-object v0, p1

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 780
    .local v8, c:Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 781
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 782
    invoke-interface {v8, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 783
    .local v10, lockPattern:Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 786
    :try_start_0
    new-instance v11, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v0, p0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-direct {v11, v0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 787
    .local v11, lpu:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v10}, Lcom/android/internal/widget/LockPatternUtils;->stringToPattern(Ljava/lang/String;)Ljava/util/List;

    move-result-object v9

    .line 789
    .local v9, cellPattern:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    invoke-virtual {v11, v9}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPattern(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 794
    .end local v9           #cellPattern:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    .end local v11           #lpu:Lcom/android/internal/widget/LockPatternUtils;
    :cond_0
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 795
    const-string v0, "system"

    const-string v0, "name=\'lock_pattern\'"

    invoke-virtual {p1, v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 799
    .end local v10           #lockPattern:Ljava/lang/String;
    :goto_1
    return-void

    .line 797
    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 790
    .restart local v10       #lockPattern:Ljava/lang/String;
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private upgradeScreenTimeoutFromNever(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 11
    .parameter "db"

    .prologue
    const/4 v4, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    const-string v10, "screen_off_timeout"

    .line 803
    const-string v1, "system"

    new-array v2, v4, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v6

    const-string v0, "value"

    aput-object v0, v2, v7

    const-string v3, "name=? AND value=?"

    new-array v4, v4, [Ljava/lang/String;

    const-string v0, "screen_off_timeout"

    aput-object v10, v4, v6

    const-string v0, "-1"

    aput-object v0, v4, v7

    move-object v0, p1

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 807
    .local v8, c:Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 808
    .local v9, stmt:Landroid/database/sqlite/SQLiteStatement;
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 809
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 811
    :try_start_0
    const-string v0, "INSERT OR REPLACE INTO system(name,value) VALUES(?,?);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v9

    .line 815
    const-string v0, "screen_off_timeout"

    const v1, 0x1b7740

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v9, v0, v1}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 818
    if-eqz v9, :cond_0

    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 823
    :cond_0
    :goto_0
    return-void

    .line 818
    :catchall_0
    move-exception v0

    if-eqz v9, :cond_1

    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_1
    throw v0

    .line 821
    :cond_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 91
    const-string v0, "CREATE TABLE system (_id INTEGER PRIMARY KEY AUTOINCREMENT,name TEXT UNIQUE ON CONFLICT REPLACE,value TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 96
    const-string v0, "CREATE INDEX systemIndex1 ON system (name);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 98
    invoke-direct {p0, p1}, Lcom/android/providers/settings/DatabaseHelper;->createSecureTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 100
    const-string v0, "CREATE TABLE bluetooth_devices (_id INTEGER PRIMARY KEY,name TEXT,addr TEXT,channel INTEGER,type INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 108
    const-string v0, "CREATE TABLE bookmarks (_id INTEGER PRIMARY KEY,title TEXT,folder TEXT,intent TEXT,shortcut INTEGER,ordering INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 117
    const-string v0, "CREATE INDEX bookmarksIndex1 ON bookmarks (folder);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 118
    const-string v0, "CREATE INDEX bookmarksIndex2 ON bookmarks (shortcut);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 121
    invoke-direct {p0, p1}, Lcom/android/providers/settings/DatabaseHelper;->loadVolumeLevels(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 124
    invoke-direct {p0, p1}, Lcom/android/providers/settings/DatabaseHelper;->loadSettings(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 125
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 10
    .parameter "db"
    .parameter "oldVersion"
    .parameter "currentVersion"

    .prologue
    .line 129
    const-string v7, "SettingsProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Upgrading settings database from version "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    move v3, p2

    .line 141
    .local v3, upgradeVersion:I
    const/16 v7, 0x14

    if-ne v3, v7, :cond_0

    .line 148
    const/4 v7, 0x1

    invoke-direct {p0, p1, v7}, Lcom/android/providers/settings/DatabaseHelper;->loadVibrateSetting(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 150
    const/16 v3, 0x15

    .line 153
    :cond_0
    const/16 v7, 0x16

    if-ge v3, v7, :cond_1

    .line 154
    const/16 v3, 0x16

    .line 156
    invoke-direct {p0, p1}, Lcom/android/providers/settings/DatabaseHelper;->upgradeLockPatternLocation(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 159
    :cond_1
    const/16 v7, 0x17

    if-ge v3, v7, :cond_2

    .line 160
    const-string v7, "UPDATE favorites SET iconResource=0 WHERE iconType=0"

    invoke-virtual {p1, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 161
    const/16 v3, 0x17

    .line 164
    :cond_2
    const/16 v7, 0x17

    if-ne v3, v7, :cond_3

    .line 165
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 167
    :try_start_0
    const-string v7, "ALTER TABLE favorites ADD spanX INTEGER"

    invoke-virtual {p1, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 168
    const-string v7, "ALTER TABLE favorites ADD spanY INTEGER"

    invoke-virtual {p1, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 170
    const-string v7, "UPDATE favorites SET spanX=1, spanY=1 WHERE itemType<=0"

    invoke-virtual {p1, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 172
    const-string v7, "UPDATE favorites SET spanX=2, spanY=2 WHERE itemType=1000 or itemType=1002"

    invoke-virtual {p1, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 175
    const-string v7, "UPDATE favorites SET spanX=4, spanY=1 WHERE itemType=1001"

    invoke-virtual {p1, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 176
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 180
    const/16 v3, 0x18

    .line 183
    :cond_3
    const/16 v7, 0x18

    if-ne v3, v7, :cond_4

    .line 184
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 188
    :try_start_1
    const-string v7, "DELETE FROM system WHERE name=\'network_preference\'"

    invoke-virtual {p1, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 189
    const-string v7, "INSERT INTO system (\'name\', \'value\') values (\'network_preference\', \'1\')"

    invoke-virtual {p1, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 191
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 193
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 195
    const/16 v3, 0x19

    .line 198
    :cond_4
    const/16 v7, 0x19

    if-ne v3, v7, :cond_5

    .line 199
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 201
    :try_start_2
    const-string v7, "ALTER TABLE favorites ADD uri TEXT"

    invoke-virtual {p1, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 202
    const-string v7, "ALTER TABLE favorites ADD displayMode INTEGER"

    invoke-virtual {p1, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 203
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 205
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 207
    const/16 v3, 0x1a

    .line 210
    :cond_5
    const/16 v7, 0x1a

    if-ne v3, v7, :cond_6

    .line 212
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 214
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/providers/settings/DatabaseHelper;->createSecureTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 215
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 217
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 219
    const/16 v3, 0x1b

    .line 222
    :cond_6
    const/16 v7, 0x1b

    if-ne v3, v7, :cond_7

    .line 223
    const/16 v7, 0x1f

    new-array v1, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "adb_enabled"

    aput-object v8, v1, v7

    const/4 v7, 0x1

    const-string v8, "android_id"

    aput-object v8, v1, v7

    const/4 v7, 0x2

    const-string v8, "bluetooth_on"

    aput-object v8, v1, v7

    const/4 v7, 0x3

    const-string v8, "data_roaming"

    aput-object v8, v1, v7

    const/4 v7, 0x4

    const-string v8, "device_provisioned"

    aput-object v8, v1, v7

    const/4 v7, 0x5

    const-string v8, "http_proxy"

    aput-object v8, v1, v7

    const/4 v7, 0x6

    const-string v8, "install_non_market_apps"

    aput-object v8, v1, v7

    const/4 v7, 0x7

    const-string v8, "location_providers_allowed"

    aput-object v8, v1, v7

    const/16 v7, 0x8

    const-string v8, "logging_id"

    aput-object v8, v1, v7

    const/16 v7, 0x9

    const-string v8, "network_preference"

    aput-object v8, v1, v7

    const/16 v7, 0xa

    const-string v8, "parental_control_enabled"

    aput-object v8, v1, v7

    const/16 v7, 0xb

    const-string v8, "parental_control_last_update"

    aput-object v8, v1, v7

    const/16 v7, 0xc

    const-string v8, "parental_control_redirect_url"

    aput-object v8, v1, v7

    const/16 v7, 0xd

    const-string v8, "settings_classname"

    aput-object v8, v1, v7

    const/16 v7, 0xe

    const-string v8, "usb_mass_storage_enabled"

    aput-object v8, v1, v7

    const/16 v7, 0xf

    const-string v8, "use_google_mail"

    aput-object v8, v1, v7

    const/16 v7, 0x10

    const-string v8, "wifi_networks_available_notification_on"

    aput-object v8, v1, v7

    const/16 v7, 0x11

    const-string v8, "wifi_networks_available_repeat_delay"

    aput-object v8, v1, v7

    const/16 v7, 0x12

    const-string v8, "wifi_num_open_networks_kept"

    aput-object v8, v1, v7

    const/16 v7, 0x13

    const-string v8, "wifi_on"

    aput-object v8, v1, v7

    const/16 v7, 0x14

    const-string v8, "wifi_watchdog_acceptable_packet_loss_percentage"

    aput-object v8, v1, v7

    const/16 v7, 0x15

    const-string v8, "wifi_watchdog_ap_count"

    aput-object v8, v1, v7

    const/16 v7, 0x16

    const-string v8, "wifi_watchdog_background_check_delay_ms"

    aput-object v8, v1, v7

    const/16 v7, 0x17

    const-string v8, "wifi_watchdog_background_check_enabled"

    aput-object v8, v1, v7

    const/16 v7, 0x18

    const-string v8, "wifi_watchdog_background_check_timeout_ms"

    aput-object v8, v1, v7

    const/16 v7, 0x19

    const-string v8, "wifi_watchdog_initial_ignored_ping_count"

    aput-object v8, v1, v7

    const/16 v7, 0x1a

    const-string v8, "wifi_watchdog_max_ap_checks"

    aput-object v8, v1, v7

    const/16 v7, 0x1b

    const-string v8, "wifi_watchdog_on"

    aput-object v8, v1, v7

    const/16 v7, 0x1c

    const-string v8, "wifi_watchdog_ping_count"

    aput-object v8, v1, v7

    const/16 v7, 0x1d

    const-string v8, "wifi_watchdog_ping_delay_ms"

    aput-object v8, v1, v7

    const/16 v7, 0x1e

    const-string v8, "wifi_watchdog_ping_timeout_ms"

    aput-object v8, v1, v7

    .line 256
    .local v1, settingsToMove:[Ljava/lang/String;
    invoke-direct {p0, p1, v1}, Lcom/android/providers/settings/DatabaseHelper;->moveFromSystemToSecure(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;)V

    .line 257
    const/16 v3, 0x1c

    .line 260
    .end local v1           #settingsToMove:[Ljava/lang/String;
    :cond_7
    const/16 v7, 0x1c

    if-eq v3, v7, :cond_8

    const/16 v7, 0x1d

    if-ne v3, v7, :cond_9

    .line 267
    :cond_8
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 269
    :try_start_4
    const-string v7, "DELETE FROM system WHERE name=\'mode_ringer_streams_affected\'"

    invoke-virtual {p1, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 271
    const/16 v0, 0x26

    .line 274
    .local v0, newValue:I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "INSERT INTO system (\'name\', \'value\') values (\'mode_ringer_streams_affected\', \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\')"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 277
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 279
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 282
    const/16 v3, 0x1e

    .line 285
    .end local v0           #newValue:I
    :cond_9
    const/16 v7, 0x1e

    if-ne v3, v7, :cond_a

    .line 291
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 293
    :try_start_5
    const-string v7, "UPDATE bookmarks SET folder = \'@quicklaunch\'"

    invoke-virtual {p1, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 294
    const-string v7, "UPDATE bookmarks SET title = \'\'"

    invoke-virtual {p1, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 295
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 297
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 299
    const/16 v3, 0x1f

    .line 302
    :cond_a
    const/16 v7, 0x1f

    if-ne v3, v7, :cond_c

    .line 307
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 308
    const/4 v2, 0x0

    .line 310
    .local v2, stmt:Landroid/database/sqlite/SQLiteStatement;
    :try_start_6
    const-string v7, "DELETE FROM system WHERE name=\'window_animation_scale\'"

    invoke-virtual {p1, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 312
    const-string v7, "DELETE FROM system WHERE name=\'transition_animation_scale\'"

    invoke-virtual {p1, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 314
    const-string v7, "INSERT INTO system(name,value) VALUES(?,?);"

    invoke-virtual {p1, v7}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    .line 316
    invoke-direct {p0, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadDefaultAnimationSettings(Landroid/database/sqlite/SQLiteStatement;)V

    .line 317
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    .line 319
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 320
    if-eqz v2, :cond_b

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 322
    :cond_b
    const/16 v3, 0x20

    .line 325
    .end local v2           #stmt:Landroid/database/sqlite/SQLiteStatement;
    :cond_c
    const/16 v7, 0x20

    if-ne v3, v7, :cond_e

    .line 328
    const-string v7, "ro.com.android.wifi-watchlist"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 329
    .local v5, wifiWatchList:Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_d

    .line 330
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 332
    :try_start_7
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "INSERT OR IGNORE INTO secure(name,value) values(\'wifi_watchdog_watch_list\',\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\');"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 335
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    .line 337
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 340
    :cond_d
    const/16 v3, 0x21

    .line 343
    .end local v5           #wifiWatchList:Ljava/lang/String;
    :cond_e
    const/16 v7, 0x21

    if-ne v3, v7, :cond_f

    .line 345
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 347
    :try_start_8
    const-string v7, "INSERT INTO system(name,value) values(\'zoom\',\'2\');"

    invoke-virtual {p1, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 348
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    .line 350
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 352
    const/16 v3, 0x22

    .line 355
    :cond_f
    const/16 v7, 0x22

    if-ne v3, v7, :cond_11

    .line 356
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 357
    const/4 v2, 0x0

    .line 359
    .restart local v2       #stmt:Landroid/database/sqlite/SQLiteStatement;
    :try_start_9
    const-string v7, "INSERT OR IGNORE INTO secure(name,value) VALUES(?,?);"

    invoke-virtual {p1, v7}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    .line 361
    invoke-direct {p0, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadSecure35Settings(Landroid/database/sqlite/SQLiteStatement;)V

    .line 362
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_9

    .line 364
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 365
    if-eqz v2, :cond_10

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 367
    :cond_10
    const/16 v3, 0x23

    .line 373
    .end local v2           #stmt:Landroid/database/sqlite/SQLiteStatement;
    :cond_11
    const/16 v7, 0x23

    if-ne v3, v7, :cond_12

    .line 374
    const/16 v3, 0x24

    .line 377
    :cond_12
    const/16 v7, 0x24

    if-ne v3, v7, :cond_13

    .line 380
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 382
    :try_start_a
    const-string v7, "DELETE FROM system WHERE name=\'mode_ringer_streams_affected\'"

    invoke-virtual {p1, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 384
    const/16 v0, 0xa6

    .line 388
    .restart local v0       #newValue:I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "INSERT INTO system (\'name\', \'value\') values (\'mode_ringer_streams_affected\', \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\')"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 391
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_a

    .line 393
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 395
    const/16 v3, 0x25

    .line 398
    .end local v0           #newValue:I
    :cond_13
    const/16 v7, 0x25

    if-ne v3, v7, :cond_15

    .line 399
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 400
    const/4 v2, 0x0

    .line 402
    .restart local v2       #stmt:Landroid/database/sqlite/SQLiteStatement;
    :try_start_b
    const-string v7, "INSERT OR IGNORE INTO system(name,value) VALUES(?,?);"

    invoke-virtual {p1, v7}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    .line 404
    const-string v7, "airplane_mode_toggleable_radios"

    const v8, 0x7f050001

    invoke-direct {p0, v2, v7, v8}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 406
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_b

    .line 408
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 409
    if-eqz v2, :cond_14

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 411
    :cond_14
    const/16 v3, 0x26

    .line 414
    .end local v2           #stmt:Landroid/database/sqlite/SQLiteStatement;
    :cond_15
    const/16 v7, 0x26

    if-ne v3, v7, :cond_16

    .line 415
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 417
    :try_start_c
    iget-object v7, p0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f030008

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    if-eqz v7, :cond_35

    const-string v7, "1"

    move-object v4, v7

    .line 419
    .local v4, value:Ljava/lang/String;
    :goto_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "INSERT OR IGNORE INTO secure(name,value) values(\'assisted_gps_enabled\',\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\');"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 421
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_c

    .line 423
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 426
    const/16 v3, 0x27

    .line 429
    .end local v4           #value:Ljava/lang/String;
    :cond_16
    const/16 v7, 0x27

    if-ne v3, v7, :cond_17

    .line 430
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 432
    :try_start_d
    iget-object v7, p0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f030004

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    if-eqz v7, :cond_36

    const-string v7, "1"

    move-object v4, v7

    .line 435
    .restart local v4       #value:Ljava/lang/String;
    :goto_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "INSERT OR IGNORE INTO system(name,value) values(\'screen_brightness_mode\',\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\');"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 437
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_d

    .line 439
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 442
    const/16 v3, 0x28

    .line 445
    .end local v4           #value:Ljava/lang/String;
    :cond_17
    const/16 v7, 0x28

    if-ne v3, v7, :cond_19

    .line 449
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 450
    const/4 v2, 0x0

    .line 452
    .restart local v2       #stmt:Landroid/database/sqlite/SQLiteStatement;
    :try_start_e
    const-string v7, "DELETE FROM system WHERE name=\'window_animation_scale\'"

    invoke-virtual {p1, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 454
    const-string v7, "DELETE FROM system WHERE name=\'transition_animation_scale\'"

    invoke-virtual {p1, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 456
    const-string v7, "INSERT INTO system(name,value) VALUES(?,?);"

    invoke-virtual {p1, v7}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    .line 458
    invoke-direct {p0, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadDefaultAnimationSettings(Landroid/database/sqlite/SQLiteStatement;)V

    .line 459
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_e

    .line 461
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 462
    if-eqz v2, :cond_18

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 464
    :cond_18
    const/16 v3, 0x29

    .line 467
    .end local v2           #stmt:Landroid/database/sqlite/SQLiteStatement;
    :cond_19
    const/16 v7, 0x29

    if-ne v3, v7, :cond_1b

    .line 471
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 472
    const/4 v2, 0x0

    .line 474
    .restart local v2       #stmt:Landroid/database/sqlite/SQLiteStatement;
    :try_start_f
    const-string v7, "DELETE FROM system WHERE name=\'haptic_feedback_enabled\'"

    invoke-virtual {p1, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 476
    const-string v7, "INSERT INTO system(name,value) VALUES(?,?);"

    invoke-virtual {p1, v7}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    .line 478
    invoke-direct {p0, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadDefaultHapticSettings(Landroid/database/sqlite/SQLiteStatement;)V

    .line 479
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_f

    .line 481
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 482
    if-eqz v2, :cond_1a

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 484
    :cond_1a
    const/16 v3, 0x2a

    .line 487
    .end local v2           #stmt:Landroid/database/sqlite/SQLiteStatement;
    :cond_1b
    const/16 v7, 0x2a

    if-ne v3, v7, :cond_1d

    .line 491
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 492
    const/4 v2, 0x0

    .line 494
    .restart local v2       #stmt:Landroid/database/sqlite/SQLiteStatement;
    :try_start_10
    const-string v7, "INSERT INTO system(name,value) VALUES(?,?);"

    invoke-virtual {p1, v7}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    .line 496
    const-string v7, "notification_light_pulse"

    const v8, 0x7f03000d

    invoke-direct {p0, v2, v7, v8}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 498
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_10

    .line 500
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 501
    if-eqz v2, :cond_1c

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 503
    :cond_1c
    const/16 v3, 0x2b

    .line 506
    .end local v2           #stmt:Landroid/database/sqlite/SQLiteStatement;
    :cond_1d
    const/16 v7, 0x2b

    if-ne v3, v7, :cond_1f

    .line 510
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 511
    const/4 v2, 0x0

    .line 513
    .restart local v2       #stmt:Landroid/database/sqlite/SQLiteStatement;
    :try_start_11
    const-string v7, "INSERT OR IGNORE INTO system(name,value) VALUES(?,?);"

    invoke-virtual {p1, v7}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    .line 515
    const-string v7, "volume_bluetooth_sco"

    sget-object v8, Landroid/media/AudioManager;->DEFAULT_STREAM_VOLUME:[I

    const/4 v9, 0x6

    aget v8, v8, v9

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {p0, v2, v7, v8}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 517
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_11

    .line 519
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 520
    if-eqz v2, :cond_1e

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 522
    :cond_1e
    const/16 v3, 0x2c

    .line 525
    .end local v2           #stmt:Landroid/database/sqlite/SQLiteStatement;
    :cond_1f
    const/16 v7, 0x2c

    if-ne v3, v7, :cond_20

    .line 529
    const-string v7, "DROP TABLE IF EXISTS gservices"

    invoke-virtual {p1, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 530
    const-string v7, "DROP INDEX IF EXISTS gservicesIndex1"

    invoke-virtual {p1, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 531
    const/16 v3, 0x2d

    .line 534
    :cond_20
    const/16 v7, 0x2d

    if-ne v3, v7, :cond_21

    .line 538
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 540
    :try_start_12
    const-string v7, "INSERT INTO secure(name,value) values(\'mount_play_not_snd\',\'1\');"

    invoke-virtual {p1, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 542
    const-string v7, "INSERT INTO secure(name,value) values(\'mount_ums_autostart\',\'0\');"

    invoke-virtual {p1, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 544
    const-string v7, "INSERT INTO secure(name,value) values(\'mount_ums_prompt\',\'1\');"

    invoke-virtual {p1, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 546
    const-string v7, "INSERT INTO secure(name,value) values(\'mount_ums_notify_enabled\',\'1\');"

    invoke-virtual {p1, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 548
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_12

    .line 550
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 552
    const/16 v3, 0x2e

    .line 555
    :cond_21
    const/16 v7, 0x2e

    if-ne v3, v7, :cond_22

    .line 560
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 562
    :try_start_13
    const-string v7, "DELETE FROM system WHERE name=\'lockscreen.password_type\';"

    invoke-virtual {p1, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 563
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_13

    .line 565
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 567
    const/16 v3, 0x2f

    .line 571
    :cond_22
    const/16 v7, 0x2f

    if-ne v3, v7, :cond_23

    .line 576
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 578
    :try_start_14
    const-string v7, "DELETE FROM system WHERE name=\'lockscreen.password_type\';"

    invoke-virtual {p1, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 579
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_14

    .line 581
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 583
    const/16 v3, 0x30

    .line 586
    :cond_23
    const/16 v7, 0x30

    if-ne v3, v7, :cond_24

    .line 591
    const/16 v3, 0x31

    .line 594
    :cond_24
    const/16 v7, 0x31

    if-ne v3, v7, :cond_26

    .line 598
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 599
    const/4 v2, 0x0

    .line 601
    .restart local v2       #stmt:Landroid/database/sqlite/SQLiteStatement;
    :try_start_15
    const-string v7, "INSERT INTO system(name,value) VALUES(?,?);"

    invoke-virtual {p1, v7}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    .line 603
    invoke-direct {p0, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadUISoundEffectsSettings(Landroid/database/sqlite/SQLiteStatement;)V

    .line 604
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_15

    .line 606
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 607
    if-eqz v2, :cond_25

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 610
    :cond_25
    const/16 v3, 0x32

    .line 613
    .end local v2           #stmt:Landroid/database/sqlite/SQLiteStatement;
    :cond_26
    const/16 v7, 0x32

    if-ne v3, v7, :cond_27

    .line 617
    const/16 v3, 0x33

    .line 620
    :cond_27
    const/16 v7, 0x33

    if-ne v3, v7, :cond_28

    .line 622
    const/16 v7, 0x9

    new-array v1, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "lock_pattern_autolock"

    aput-object v8, v1, v7

    const/4 v7, 0x1

    const-string v8, "lock_pattern_visible_pattern"

    aput-object v8, v1, v7

    const/4 v7, 0x2

    const-string v8, "lock_pattern_tactile_feedback_enabled"

    aput-object v8, v1, v7

    const/4 v7, 0x3

    const-string v8, "lockscreen.password_type"

    aput-object v8, v1, v7

    const/4 v7, 0x4

    const-string v8, "lockscreen.lockoutattemptdeadline"

    aput-object v8, v1, v7

    const/4 v7, 0x5

    const-string v8, "lockscreen.patterneverchosen"

    aput-object v8, v1, v7

    const/4 v7, 0x6

    const-string v8, "lock_pattern_autolock"

    aput-object v8, v1, v7

    const/4 v7, 0x7

    const-string v8, "lockscreen.lockedoutpermanently"

    aput-object v8, v1, v7

    const/16 v7, 0x8

    const-string v8, "lockscreen.password_salt"

    aput-object v8, v1, v7

    .line 633
    .restart local v1       #settingsToMove:[Ljava/lang/String;
    invoke-direct {p0, p1, v1}, Lcom/android/providers/settings/DatabaseHelper;->moveFromSystemToSecure(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;)V

    .line 634
    const/16 v3, 0x34

    .line 637
    .end local v1           #settingsToMove:[Ljava/lang/String;
    :cond_28
    const/16 v7, 0x34

    if-ne v3, v7, :cond_2a

    .line 639
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 640
    const/4 v2, 0x0

    .line 642
    .restart local v2       #stmt:Landroid/database/sqlite/SQLiteStatement;
    :try_start_16
    const-string v7, "INSERT INTO system(name,value) VALUES(?,?);"

    invoke-virtual {p1, v7}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    .line 644
    const-string v7, "vibrate_in_silent"

    const v8, 0x7f030013

    invoke-direct {p0, v2, v7, v8}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 646
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_16

    .line 648
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 649
    if-eqz v2, :cond_29

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 652
    :cond_29
    const/16 v3, 0x35

    .line 655
    .end local v2           #stmt:Landroid/database/sqlite/SQLiteStatement;
    :cond_2a
    const/16 v7, 0x35

    if-ne v3, v7, :cond_2b

    .line 659
    const/16 v3, 0x36

    .line 662
    :cond_2b
    const/16 v7, 0x36

    if-ne v3, v7, :cond_2c

    .line 666
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 668
    :try_start_17
    invoke-direct {p0, p1}, Lcom/android/providers/settings/DatabaseHelper;->upgradeScreenTimeoutFromNever(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 669
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_17

    .line 671
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 674
    const/16 v3, 0x37

    .line 677
    :cond_2c
    const/16 v7, 0x37

    if-ne v3, v7, :cond_2e

    .line 679
    const/4 v7, 0x2

    new-array v1, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "set_install_location"

    aput-object v8, v1, v7

    const/4 v7, 0x1

    const-string v8, "default_install_location"

    aput-object v8, v1, v7

    .line 683
    .restart local v1       #settingsToMove:[Ljava/lang/String;
    invoke-direct {p0, p1, v1}, Lcom/android/providers/settings/DatabaseHelper;->moveFromSystemToSecure(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;)V

    .line 684
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 685
    const/4 v2, 0x0

    .line 687
    .restart local v2       #stmt:Landroid/database/sqlite/SQLiteStatement;
    :try_start_18
    const-string v7, "INSERT INTO system(name,value) VALUES(?,?);"

    invoke-virtual {p1, v7}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    .line 689
    const-string v7, "set_install_location"

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {p0, v2, v7, v8}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 690
    const-string v7, "default_install_location"

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {p0, v2, v7, v8}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 692
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_18

    .line 694
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 695
    if-eqz v2, :cond_2d

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 697
    :cond_2d
    const/16 v3, 0x38

    .line 700
    .end local v1           #settingsToMove:[Ljava/lang/String;
    .end local v2           #stmt:Landroid/database/sqlite/SQLiteStatement;
    :cond_2e
    const/16 v7, 0x38

    if-ne v3, v7, :cond_30

    .line 704
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 705
    const/4 v2, 0x0

    .line 707
    .restart local v2       #stmt:Landroid/database/sqlite/SQLiteStatement;
    :try_start_19
    const-string v7, "DELETE FROM system WHERE name=\'airplane_mode_toggleable_radios\'"

    invoke-virtual {p1, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 709
    const-string v7, "INSERT OR IGNORE INTO system(name,value) VALUES(?,?);"

    invoke-virtual {p1, v7}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    .line 711
    const-string v7, "airplane_mode_toggleable_radios"

    const v8, 0x7f050001

    invoke-direct {p0, v2, v7, v8}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 713
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_19

    .line 715
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 716
    if-eqz v2, :cond_2f

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 718
    :cond_2f
    const/16 v3, 0x39

    .line 722
    .end local v2           #stmt:Landroid/database/sqlite/SQLiteStatement;
    :cond_30
    if-eq v3, p3, :cond_31

    .line 723
    const-string v7, "SettingsProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Got stuck trying to upgrade from version "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", must wipe the settings provider"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    const-string v7, "DROP TABLE IF EXISTS system"

    invoke-virtual {p1, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 726
    const-string v7, "DROP INDEX IF EXISTS systemIndex1"

    invoke-virtual {p1, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 727
    const-string v7, "DROP TABLE IF EXISTS secure"

    invoke-virtual {p1, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 728
    const-string v7, "DROP INDEX IF EXISTS secureIndex1"

    invoke-virtual {p1, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 729
    const-string v7, "DROP TABLE IF EXISTS gservices"

    invoke-virtual {p1, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 730
    const-string v7, "DROP INDEX IF EXISTS gservicesIndex1"

    invoke-virtual {p1, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 731
    const-string v7, "DROP TABLE IF EXISTS bluetooth_devices"

    invoke-virtual {p1, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 732
    const-string v7, "DROP TABLE IF EXISTS bookmarks"

    invoke-virtual {p1, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 733
    const-string v7, "DROP INDEX IF EXISTS bookmarksIndex1"

    invoke-virtual {p1, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 734
    const-string v7, "DROP INDEX IF EXISTS bookmarksIndex2"

    invoke-virtual {p1, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 735
    const-string v7, "DROP TABLE IF EXISTS favorites"

    invoke-virtual {p1, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 736
    invoke-virtual {p0, p1}, Lcom/android/providers/settings/DatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 739
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 740
    .local v6, wipeReason:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "INSERT INTO secure(name,value) values(\'wiped_db_reason\',\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\');"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 743
    .end local v6           #wipeReason:Ljava/lang/String;
    :cond_31
    return-void

    .line 178
    :catchall_0
    move-exception v7

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v7

    .line 193
    :catchall_1
    move-exception v7

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v7

    .line 205
    :catchall_2
    move-exception v7

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v7

    .line 217
    :catchall_3
    move-exception v7

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v7

    .line 279
    :catchall_4
    move-exception v7

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v7

    .line 297
    :catchall_5
    move-exception v7

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v7

    .line 319
    .restart local v2       #stmt:Landroid/database/sqlite/SQLiteStatement;
    :catchall_6
    move-exception v7

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 320
    if-eqz v2, :cond_32

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_32
    throw v7

    .line 337
    .end local v2           #stmt:Landroid/database/sqlite/SQLiteStatement;
    .restart local v5       #wifiWatchList:Ljava/lang/String;
    :catchall_7
    move-exception v7

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v7

    .line 350
    .end local v5           #wifiWatchList:Ljava/lang/String;
    :catchall_8
    move-exception v7

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v7

    .line 364
    .restart local v2       #stmt:Landroid/database/sqlite/SQLiteStatement;
    :catchall_9
    move-exception v7

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 365
    if-eqz v2, :cond_33

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_33
    throw v7

    .line 393
    .end local v2           #stmt:Landroid/database/sqlite/SQLiteStatement;
    :catchall_a
    move-exception v7

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v7

    .line 408
    .restart local v2       #stmt:Landroid/database/sqlite/SQLiteStatement;
    :catchall_b
    move-exception v7

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 409
    if-eqz v2, :cond_34

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_34
    throw v7

    .line 417
    .end local v2           #stmt:Landroid/database/sqlite/SQLiteStatement;
    :cond_35
    :try_start_1a
    const-string v7, "0"
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_c

    move-object v4, v7

    goto/16 :goto_0

    .line 423
    :catchall_c
    move-exception v7

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v7

    .line 432
    :cond_36
    :try_start_1b
    const-string v7, "0"
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_d

    move-object v4, v7

    goto/16 :goto_1

    .line 439
    :catchall_d
    move-exception v7

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v7

    .line 461
    .restart local v2       #stmt:Landroid/database/sqlite/SQLiteStatement;
    :catchall_e
    move-exception v7

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 462
    if-eqz v2, :cond_37

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_37
    throw v7

    .line 481
    :catchall_f
    move-exception v7

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 482
    if-eqz v2, :cond_38

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_38
    throw v7

    .line 500
    :catchall_10
    move-exception v7

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 501
    if-eqz v2, :cond_39

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_39
    throw v7

    .line 519
    :catchall_11
    move-exception v7

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 520
    if-eqz v2, :cond_3a

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_3a
    throw v7

    .line 550
    .end local v2           #stmt:Landroid/database/sqlite/SQLiteStatement;
    :catchall_12
    move-exception v7

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v7

    .line 565
    :catchall_13
    move-exception v7

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v7

    .line 581
    :catchall_14
    move-exception v7

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v7

    .line 606
    .restart local v2       #stmt:Landroid/database/sqlite/SQLiteStatement;
    :catchall_15
    move-exception v7

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 607
    if-eqz v2, :cond_3b

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_3b
    throw v7

    .line 648
    :catchall_16
    move-exception v7

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 649
    if-eqz v2, :cond_3c

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_3c
    throw v7

    .line 671
    .end local v2           #stmt:Landroid/database/sqlite/SQLiteStatement;
    :catchall_17
    move-exception v7

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v7

    .line 694
    .restart local v1       #settingsToMove:[Ljava/lang/String;
    .restart local v2       #stmt:Landroid/database/sqlite/SQLiteStatement;
    :catchall_18
    move-exception v7

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 695
    if-eqz v2, :cond_3d

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_3d
    throw v7

    .line 715
    .end local v1           #settingsToMove:[Ljava/lang/String;
    :catchall_19
    move-exception v7

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 716
    if-eqz v2, :cond_3e

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_3e
    throw v7
.end method
