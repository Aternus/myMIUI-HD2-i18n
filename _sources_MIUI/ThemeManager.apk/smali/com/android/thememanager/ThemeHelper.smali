.class public Lcom/android/thememanager/ThemeHelper;
.super Ljava/lang/Object;
.source "ThemeHelper.java"

# interfaces
.implements Lcom/miui/android/resourcebrowser/ResourceConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/thememanager/ThemeHelper$BackupThemeTask;
    }
.end annotation


# static fields
.field public static ALL_RINGTONE_FLAGS:J

.field public static final BACKUP_PATH:Ljava/lang/String;

.field public static final BACKUP_THEME_PATH:Ljava/lang/String;

.field public static final DEFAULT_ALARM_FILE_PATH:Ljava/lang/String;

.field public static final DEFAULT_NOTIFICATION_FILE_PATH:Ljava/lang/String;

.field public static final DEFAULT_RINGTONE_FILE_PATH:Ljava/lang/String;

.field public static final DEFAULT_THEME_FLAGS:J

.field public static final DOWNLOADED_ALARM_PATH:Ljava/lang/String;

.field public static final DOWNLOADED_LOCKSCREEN_PATH:Ljava/lang/String;

.field public static final DOWNLOADED_NOTIFICATION_PATH:Ljava/lang/String;

.field public static final DOWNLOADED_RESOURCE_BASE_PATH:Ljava/lang/String;

.field public static final DOWNLOADED_RINGTONE_PATH:Ljava/lang/String;

.field public static final DOWNLOADED_THEME_PATH:Ljava/lang/String;

.field public static final DOWNLOADED_WALLPAPER_PATH:Ljava/lang/String;

.field public static final EXTERNAL_ALARM_PATH:Ljava/lang/String;

.field public static final EXTERNAL_LOCKSCREEN_PATH:Ljava/lang/String;

.field public static final EXTERNAL_NOTIFICATION_PATH:Ljava/lang/String;

.field public static final EXTERNAL_RESOURCE_BASE_PATH:Ljava/lang/String;

.field public static final EXTERNAL_RINGTONE_PATH:Ljava/lang/String;

.field public static final EXTERNAL_THEME_PATH:Ljava/lang/String;

.field public static final EXTERNAL_WALLPAPER_PATH:Ljava/lang/String;

.field public static final INTERNAL_ALARM_PATH:Ljava/lang/String;

.field public static final INTERNAL_LOCKSCREEN_PATH:Ljava/lang/String;

.field public static final INTERNAL_NOTIFICATION_PATH:Ljava/lang/String;

.field public static final INTERNAL_RESOURCE_BASE_PATH:Ljava/lang/String;

.field public static final INTERNAL_RINGTONE_PATH:Ljava/lang/String;

.field public static final INTERNAL_THEME_PATH:Ljava/lang/String;

.field public static final INTERNAL_WALLPAPER_PATH:Ljava/lang/String;

.field public static final THEME_FLAG_COUNT:I

.field public static final THEME_PATH:Ljava/lang/String;

.field public static final THEME_PATH_PREVIEW:Ljava/lang/String;

.field private static final sAudioEffectMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final sAudioEffectOrder:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sComponentIcon:[I

.field public static final sComponentIdentity:[Ljava/lang/String;

.field public static final sComponentOrder:[J

.field public static final sComponentPreviewPrefix:[Ljava/lang/String;

.field private static final sComponentTitle:[I

.field private static sCurrentLanguage:Ljava/lang/String;

.field public static final sLOG2:D

.field public static final sLockstyleSDCardConfigDirPath:Ljava/lang/String;

.field public static final sPreviewCacheOrder:[J

.field public static sPreviewShowingOrder:[J

.field private static final sUnCompressedComponent:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/16 v7, 0xa

    const/16 v6, 0x10

    const/4 v4, 0x0

    const-string v5, "wallpaper"

    const-string v2, "ringtone"

    .line 68
    sget-object v0, Lcom/android/thememanager/ThemeHelper;->MIUI_INTERNAL_PATH:Ljava/lang/String;

    sput-object v0, Lcom/android/thememanager/ThemeHelper;->INTERNAL_RESOURCE_BASE_PATH:Ljava/lang/String;

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/thememanager/ThemeHelper;->INTERNAL_RESOURCE_BASE_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "theme"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/thememanager/ThemeHelper;->INTERNAL_THEME_PATH:Ljava/lang/String;

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/thememanager/ThemeHelper;->INTERNAL_RESOURCE_BASE_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "wallpaper"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/thememanager/ThemeHelper;->INTERNAL_WALLPAPER_PATH:Ljava/lang/String;

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/thememanager/ThemeHelper;->INTERNAL_RESOURCE_BASE_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "wallpaper"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/thememanager/ThemeHelper;->INTERNAL_LOCKSCREEN_PATH:Ljava/lang/String;

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/thememanager/ThemeHelper;->INTERNAL_RESOURCE_BASE_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ringtone"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/thememanager/ThemeHelper;->INTERNAL_RINGTONE_PATH:Ljava/lang/String;

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/thememanager/ThemeHelper;->INTERNAL_RESOURCE_BASE_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ringtone"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/thememanager/ThemeHelper;->INTERNAL_NOTIFICATION_PATH:Ljava/lang/String;

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/thememanager/ThemeHelper;->INTERNAL_RESOURCE_BASE_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ringtone"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/thememanager/ThemeHelper;->INTERNAL_ALARM_PATH:Ljava/lang/String;

    .line 76
    sget-object v0, Lcom/android/thememanager/ThemeHelper;->MIUI_EXTERNAL_PATH:Ljava/lang/String;

    sput-object v0, Lcom/android/thememanager/ThemeHelper;->EXTERNAL_RESOURCE_BASE_PATH:Ljava/lang/String;

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/thememanager/ThemeHelper;->EXTERNAL_RESOURCE_BASE_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "theme"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/thememanager/ThemeHelper;->EXTERNAL_THEME_PATH:Ljava/lang/String;

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/thememanager/ThemeHelper;->EXTERNAL_RESOURCE_BASE_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "wallpaper"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/thememanager/ThemeHelper;->EXTERNAL_WALLPAPER_PATH:Ljava/lang/String;

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/thememanager/ThemeHelper;->EXTERNAL_RESOURCE_BASE_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "wallpaper"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/thememanager/ThemeHelper;->EXTERNAL_LOCKSCREEN_PATH:Ljava/lang/String;

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/thememanager/ThemeHelper;->EXTERNAL_RESOURCE_BASE_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ringtone"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/thememanager/ThemeHelper;->EXTERNAL_RINGTONE_PATH:Ljava/lang/String;

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/thememanager/ThemeHelper;->EXTERNAL_RESOURCE_BASE_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ringtone"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/thememanager/ThemeHelper;->EXTERNAL_NOTIFICATION_PATH:Ljava/lang/String;

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/thememanager/ThemeHelper;->EXTERNAL_RESOURCE_BASE_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ringtone"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/thememanager/ThemeHelper;->EXTERNAL_ALARM_PATH:Ljava/lang/String;

    .line 84
    sget-object v0, Lcom/android/thememanager/ThemeHelper;->MIUI_PATH:Ljava/lang/String;

    sput-object v0, Lcom/android/thememanager/ThemeHelper;->DOWNLOADED_RESOURCE_BASE_PATH:Ljava/lang/String;

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/thememanager/ThemeHelper;->DOWNLOADED_RESOURCE_BASE_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "theme"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/thememanager/ThemeHelper;->DOWNLOADED_THEME_PATH:Ljava/lang/String;

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/thememanager/ThemeHelper;->DOWNLOADED_RESOURCE_BASE_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "wallpaper"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/thememanager/ThemeHelper;->DOWNLOADED_WALLPAPER_PATH:Ljava/lang/String;

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/thememanager/ThemeHelper;->DOWNLOADED_RESOURCE_BASE_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "wallpaper"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/thememanager/ThemeHelper;->DOWNLOADED_LOCKSCREEN_PATH:Ljava/lang/String;

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/thememanager/ThemeHelper;->DOWNLOADED_RESOURCE_BASE_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ringtone"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/thememanager/ThemeHelper;->DOWNLOADED_RINGTONE_PATH:Ljava/lang/String;

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/thememanager/ThemeHelper;->DOWNLOADED_RESOURCE_BASE_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ringtone"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/thememanager/ThemeHelper;->DOWNLOADED_NOTIFICATION_PATH:Ljava/lang/String;

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/thememanager/ThemeHelper;->DOWNLOADED_RESOURCE_BASE_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ringtone"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/thememanager/ThemeHelper;->DOWNLOADED_ALARM_PATH:Ljava/lang/String;

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/system/media/audio/ringtones/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ro.config.ringtone"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/thememanager/ThemeHelper;->DEFAULT_RINGTONE_FILE_PATH:Ljava/lang/String;

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/system/media/audio/notifications/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ro.config.notification_sound"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/thememanager/ThemeHelper;->DEFAULT_NOTIFICATION_FILE_PATH:Ljava/lang/String;

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/system/media/audio/alarms/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ro.config.alarm_alert"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/thememanager/ThemeHelper;->DEFAULT_ALARM_FILE_PATH:Ljava/lang/String;

    .line 99
    sget-object v0, Lcom/android/thememanager/ThemeHelper;->DOWNLOADED_THEME_PATH:Ljava/lang/String;

    sput-object v0, Lcom/android/thememanager/ThemeHelper;->THEME_PATH:Ljava/lang/String;

    .line 100
    sget-object v0, Lcom/android/thememanager/ThemeHelper;->PREVIEW_PATH:Ljava/lang/String;

    sput-object v0, Lcom/android/thememanager/ThemeHelper;->THEME_PATH_PREVIEW:Ljava/lang/String;

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/thememanager/ThemeHelper;->THEME_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/backup"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/thememanager/ThemeHelper;->BACKUP_PATH:Ljava/lang/String;

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/thememanager/ThemeHelper;->BACKUP_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/backup.mtz"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/thememanager/ThemeHelper;->BACKUP_THEME_PATH:Ljava/lang/String;

    .line 130
    const-wide/16 v0, 0x700

    sput-wide v0, Lcom/android/thememanager/ThemeHelper;->ALL_RINGTONE_FLAGS:J

    .line 134
    const-wide/high16 v0, 0x4000

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    sput-wide v0, Lcom/android/thememanager/ThemeHelper;->sLOG2:D

    .line 136
    const-wide/32 v0, 0x8000

    invoke-static {v0, v1}, Lcom/android/thememanager/ThemeHelper;->getComponentIndex(J)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/thememanager/ThemeHelper;->THEME_FLAG_COUNT:I

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/thememanager/ThemeHelper;->THEME_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "config"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/thememanager/ThemeHelper;->sLockstyleSDCardConfigDirPath:Ljava/lang/String;

    .line 177
    const-string v0, ""

    sput-object v0, Lcom/android/thememanager/ThemeHelper;->sCurrentLanguage:Ljava/lang/String;

    .line 207
    new-array v0, v6, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/thememanager/ThemeHelper;->sComponentIcon:[I

    .line 226
    new-array v0, v6, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/thememanager/ThemeHelper;->sComponentTitle:[I

    .line 281
    new-array v0, v6, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "framework-res"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "wallpaper/default_wallpaper.jpg"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "wallpaper/default_lock_wallpaper.jpg"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "icons"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "fonts"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "boots/bootanimation.zip"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "boots/bootaudio.mp3"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "com.android.mms"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "ringtones/ringtone.mp3"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "ringtones/notification.mp3"

    aput-object v2, v0, v1

    const-string v1, "ringtones/alarm.mp3"

    aput-object v1, v0, v7

    const/16 v1, 0xb

    const-string v2, "com.android.contacts"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "lockscreen"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "com.android.systemui"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "com.android.launcher"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "audioeffect"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/thememanager/ThemeHelper;->sComponentIdentity:[Ljava/lang/String;

    .line 300
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/thememanager/ThemeHelper;->sAudioEffectMap:Ljava/util/HashMap;

    .line 301
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/thememanager/ThemeHelper;->sAudioEffectOrder:Ljava/util/ArrayList;

    .line 345
    const-wide/16 v0, 0x0

    .line 347
    :try_start_0
    new-instance v2, Ljava/util/zip/ZipFile;

    const-string v3, "/system/media/theme/default.mtz"

    invoke-direct {v2, v3}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/android/thememanager/ThemeHelper;->identifyComponents(Ljava/util/zip/ZipFile;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 350
    :goto_0
    sput-wide v0, Lcom/android/thememanager/ThemeHelper;->DEFAULT_THEME_FLAGS:J

    .line 445
    new-array v0, v6, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "preview_"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object v4, v0, v1

    const/4 v1, 0x2

    aput-object v4, v0, v1

    const/4 v1, 0x3

    const-string v2, "preview_icons_"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "preview_fonts_"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "preview_animation_"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    aput-object v4, v0, v1

    const/4 v1, 0x7

    const-string v2, "preview_mms_"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    aput-object v4, v0, v1

    const/16 v1, 0x9

    aput-object v4, v0, v1

    aput-object v4, v0, v7

    const/16 v1, 0xb

    const-string v2, "preview_contact_"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "preview_lockscreen_"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "preview_statusbar_"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "preview_launcher_"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    aput-object v4, v0, v1

    sput-object v0, Lcom/android/thememanager/ThemeHelper;->sComponentPreviewPrefix:[Ljava/lang/String;

    .line 465
    new-array v0, v7, [J

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/thememanager/ThemeHelper;->sPreviewShowingOrder:[J

    .line 488
    new-array v0, v7, [J

    fill-array-data v0, :array_3

    sput-object v0, Lcom/android/thememanager/ThemeHelper;->sPreviewCacheOrder:[J

    .line 501
    new-array v0, v6, [J

    fill-array-data v0, :array_4

    sput-object v0, Lcom/android/thememanager/ThemeHelper;->sComponentOrder:[J

    .line 521
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "wallpaper"

    aput-object v5, v0, v1

    const/4 v1, 0x1

    const-string v2, "fonts"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "boots"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "ringtones"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "preview"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "description.xml"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "audioeffect"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/thememanager/ThemeHelper;->sUnCompressedComponent:[Ljava/lang/String;

    return-void

    .line 348
    :catch_0
    move-exception v2

    goto/16 :goto_0

    .line 207
    :array_0
    .array-data 0x4
        0xdt 0x0t 0x2t 0x7ft
        0x16t 0x0t 0x2t 0x7ft
        0x11t 0x0t 0x2t 0x7ft
        0xet 0x0t 0x2t 0x7ft
        0xct 0x0t 0x2t 0x7ft
        0x9t 0x0t 0x2t 0x7ft
        0xat 0x0t 0x2t 0x7ft
        0x12t 0x0t 0x2t 0x7ft
        0x14t 0x0t 0x2t 0x7ft
        0x13t 0x0t 0x2t 0x7ft
        0x7t 0x0t 0x2t 0x7ft
        0xbt 0x0t 0x2t 0x7ft
        0x10t 0x0t 0x2t 0x7ft
        0x15t 0x0t 0x2t 0x7ft
        0xft 0x0t 0x2t 0x7ft
        0x8t 0x0t 0x2t 0x7ft
    .end array-data

    .line 226
    :array_1
    .array-data 0x4
        0x10t 0x0t 0x7t 0x7ft
        0x12t 0x0t 0x7t 0x7ft
        0x13t 0x0t 0x7t 0x7ft
        0x14t 0x0t 0x7t 0x7ft
        0x17t 0x0t 0x7t 0x7ft
        0x15t 0x0t 0x7t 0x7ft
        0x16t 0x0t 0x7t 0x7ft
        0x11t 0x0t 0x7t 0x7ft
        0x18t 0x0t 0x7t 0x7ft
        0x19t 0x0t 0x7t 0x7ft
        0x1at 0x0t 0x7t 0x7ft
        0x1bt 0x0t 0x7t 0x7ft
        0x1ct 0x0t 0x7t 0x7ft
        0x1dt 0x0t 0x7t 0x7ft
        0x1et 0x0t 0x7t 0x7ft
        0x1ft 0x0t 0x7t 0x7ft
    .end array-data

    .line 465
    :array_2
    .array-data 0x8
        0x0t 0x10t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x40t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x20t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x8t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x80t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x80t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 488
    :array_3
    .array-data 0x8
        0x0t 0x10t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x20t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x8t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x80t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x40t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x80t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 501
    :array_4
    .array-data 0x8
        0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x40t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x10t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x20t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x40t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x80t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x8t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x2t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x4t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x80t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 966
    return-void
.end method

.method public static applyBootAudio(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 8
    .parameter "context"
    .parameter "path"

    .prologue
    const/4 v7, -0x1

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 829
    const/4 v0, 0x1

    .line 831
    .local v0, result:Z
    const-string v2, "mkdir -p %s"

    new-array v3, v6, [Ljava/lang/Object;

    const-string v4, "/data/system/theme/boots"

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Lcom/miui/android/resourcebrowser/ResourceHelper;->run(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 833
    const-string v1, "/data/system/theme/boots/bootaudio.mp3"

    .line 834
    .local v1, targetPath:Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 835
    const-string v2, "rm -rf %s"

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v1, v3, v5

    invoke-static {v2, v3}, Lcom/miui/android/resourcebrowser/ResourceHelper;->run(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 836
    const-string v2, "touch %s"

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v1, v3, v5

    invoke-static {v2, v3}, Lcom/miui/android/resourcebrowser/ResourceHelper;->run(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 845
    :goto_0
    if-eqz v0, :cond_0

    .line 846
    const-wide/16 v2, 0x40

    invoke-static {p0, v2, v3, p1}, Lcom/android/thememanager/ThemeHelper;->saveUserPreferenceOnlyPath(Landroid/content/Context;JLjava/lang/String;)V

    .line 849
    :cond_0
    return v0

    .line 838
    :cond_1
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 839
    const-string v2, "cp -rf \"%s\" %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v5

    aput-object v1, v3, v6

    invoke-static {v2, v3}, Lcom/miui/android/resourcebrowser/ResourceHelper;->run(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 840
    const/16 v2, 0x1fd

    invoke-static {v1, v2, v7, v7}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    goto :goto_0

    .line 842
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static applyRingtone(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .parameter "context"
    .parameter "type"
    .parameter "subPath"
    .parameter "basePath"
    .parameter "themeName"

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 867
    const-string v3, "%s/%s"

    new-array v4, v8, [Ljava/lang/Object;

    aput-object p3, v4, v7

    aput-object p2, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 869
    .local v2, srcPath:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 870
    .local v1, file:Ljava/io/File;
    const/4 v0, 0x0

    .line 871
    .local v0, desPath:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_3

    .line 872
    if-ne p1, v6, :cond_1

    .line 873
    sget-object v0, Lcom/android/thememanager/ThemeHelper;->DEFAULT_RINGTONE_FILE_PATH:Ljava/lang/String;

    .line 885
    :cond_0
    :goto_0
    invoke-static {p0, p1, v0}, Lcom/android/thememanager/ThemeHelper;->setRingtone(Landroid/content/Context;ILjava/lang/String;)Z

    .line 886
    return-void

    .line 874
    :cond_1
    if-ne p1, v8, :cond_2

    .line 875
    sget-object v0, Lcom/android/thememanager/ThemeHelper;->DEFAULT_NOTIFICATION_FILE_PATH:Ljava/lang/String;

    goto :goto_0

    .line 876
    :cond_2
    const/4 v3, 0x4

    if-ne p1, v3, :cond_0

    .line 877
    sget-object v0, Lcom/android/thememanager/ThemeHelper;->DEFAULT_ALARM_FILE_PATH:Ljava/lang/String;

    goto :goto_0

    .line 880
    :cond_3
    const-string v3, "%s/%s_%s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    sget-object v5, Lcom/android/thememanager/ThemeHelper;->DOWNLOADED_RINGTONE_PATH:Ljava/lang/String;

    aput-object v5, v4, v7

    aput-object p4, v4, v6

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 881
    const-string v3, "mkdir -p %s"

    new-array v4, v6, [Ljava/lang/Object;

    sget-object v5, Lcom/android/thememanager/ThemeHelper;->DOWNLOADED_RINGTONE_PATH:Ljava/lang/String;

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Lcom/miui/android/resourcebrowser/ResourceHelper;->run(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 882
    const-string v3, "cp -f \"%s\" \"%s\""

    new-array v4, v8, [Ljava/lang/Object;

    aput-object v2, v4, v7

    aput-object v0, v4, v6

    invoke-static {v3, v4}, Lcom/miui/android/resourcebrowser/ResourceHelper;->run(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static applyRingtones(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "flags"
    .parameter "name"
    .parameter "basePath"

    .prologue
    const-wide/16 v2, 0x0

    .line 853
    const-wide/16 v0, 0x100

    and-long/2addr v0, p1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 854
    const/4 v0, 0x1

    const-string v1, "ringtones/ringtone.mp3"

    invoke-static {p0, v0, v1, p4, p3}, Lcom/android/thememanager/ThemeHelper;->applyRingtone(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 857
    :cond_0
    const-wide/16 v0, 0x200

    and-long/2addr v0, p1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 858
    const/4 v0, 0x2

    const-string v1, "ringtones/notification.mp3"

    invoke-static {p0, v0, v1, p4, p3}, Lcom/android/thememanager/ThemeHelper;->applyRingtone(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 861
    :cond_1
    const-wide/16 v0, 0x400

    and-long/2addr v0, p1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 862
    const/4 v0, 0x4

    const-string v1, "ringtones/alarm.mp3"

    invoke-static {p0, v0, v1, p4, p3}, Lcom/android/thememanager/ThemeHelper;->applyRingtone(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 864
    :cond_2
    return-void
.end method

.method public static applyTheme(ZJLjava/lang/Runnable;Lcom/android/thememanager/ThemeInfo;)V
    .locals 6
    .parameter "removeAllOld"
    .parameter "flags"
    .parameter "runnable"
    .parameter "info"

    .prologue
    .line 1082
    const/4 v5, 0x0

    move v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lcom/android/thememanager/ThemeHelper;->applyTheme(ZJLjava/lang/Runnable;Lcom/android/thememanager/ThemeInfo;Z)V

    .line 1083
    return-void
.end method

.method public static applyTheme(ZJLjava/lang/Runnable;Lcom/android/thememanager/ThemeInfo;Z)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1087
    iget-object v0, p4, Lcom/android/thememanager/ThemeInfo;->mPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/thememanager/ThemeHelper;->isNewCompressedFormat(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1088
    invoke-virtual {p4, p0, p1, p2, p3}, Lcom/android/thememanager/ThemeInfo;->apply_async(ZJLjava/lang/Runnable;)V

    .line 1110
    :goto_0
    return-void

    .line 1089
    :cond_0
    if-eqz p5, :cond_1

    .line 1090
    invoke-virtual {p4, p0, p1, p2, p3}, Lcom/android/thememanager/ThemeInfo;->convert_async(ZJLjava/lang/Runnable;)V

    goto :goto_0

    .line 1092
    :cond_1
    iget-object v0, p4, Lcom/android/thememanager/ThemeInfo;->mContext:Landroid/content/Context;

    const v1, 0x7f070036

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1093
    iget-object v1, p4, Lcom/android/thememanager/ThemeInfo;->mPath:Ljava/lang/String;

    invoke-static {v1}, Lcom/miui/android/resourcebrowser/ResourceHelper;->parseIdVersion(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1094
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p4, Lcom/android/thememanager/ThemeInfo;->mContext:Landroid/content/Context;

    const v2, 0x7f070037

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1096
    :cond_2
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p4, Lcom/android/thememanager/ThemeInfo;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setUseLongMsgStyleForced(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f070034

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x104000a

    new-instance v0, Lcom/android/thememanager/ThemeHelper$2;

    move-object v1, p4

    move v2, p0

    move-wide v3, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/thememanager/ThemeHelper$2;-><init>(Lcom/android/thememanager/ThemeInfo;ZJLjava/lang/Runnable;)V

    invoke-virtual {v6, v7, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method public static applyWallpaper(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 11
    .parameter "context"
    .parameter "themePathID"
    .parameter "isLockscreen"

    .prologue
    const-string v10, "wallpaper"

    .line 782
    if-eqz p2, :cond_1

    :try_start_0
    const-string v6, "/data/system/theme/wallpaper/default_lock_wallpaper.jpg"

    move-object v3, v6

    .line 785
    .local v3, path:Ljava/lang/String;
    :goto_0
    if-eqz p2, :cond_0

    .line 786
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v2, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 787
    .local v2, height:I
    const-string v4, "/data/system/theme/wallpaper/default_lock_wallpaper_800.jpg"

    .line 788
    .local v4, path800:Ljava/lang/String;
    const/16 v6, 0x320

    if-ne v2, v6, :cond_0

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 789
    move-object v3, v4

    .line 794
    .end local v2           #height:I
    .end local v4           #path800:Ljava/lang/String;
    :cond_0
    const-string v6, "%s/%s_%s"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    sget-object v9, Lcom/android/thememanager/ThemeHelper;->DOWNLOADED_WALLPAPER_PATH:Ljava/lang/String;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object p1, v7, v8

    const/4 v8, 0x2

    if-eqz p2, :cond_2

    const-string v9, "lockscreen"

    :goto_1
    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 796
    .local v0, desPath:Ljava/lang/String;
    const-string v6, "mkdir -p \"%s\""

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    sget-object v9, Lcom/android/thememanager/ThemeHelper;->DOWNLOADED_WALLPAPER_PATH:Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Lcom/miui/android/resourcebrowser/ResourceHelper;->run(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 797
    const-string v6, "cp -f \"%s\" \"%s\""

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v3, v7, v8

    const/4 v8, 0x1

    aput-object v0, v7, v8

    invoke-static {v6, v7}, Lcom/miui/android/resourcebrowser/ResourceHelper;->run(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 800
    const-string v6, "wallpaper"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/WallpaperManager;

    .line 801
    .local v5, ws:Landroid/app/WallpaperManager;
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 802
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6, p2}, Landroid/app/WallpaperManager;->setStream(Ljava/io/InputStream;Z)V

    .line 812
    :goto_2
    if-eqz p2, :cond_5

    const-wide/16 v6, 0x4

    :goto_3
    const/4 v8, 0x0

    invoke-static {p0, v6, v7, v0, v8}, Lcom/android/thememanager/ThemeHelper;->saveUserPreferenceOnlyPath(Landroid/content/Context;JLjava/lang/String;Z)V

    .line 820
    .end local v0           #desPath:Ljava/lang/String;
    .end local v3           #path:Ljava/lang/String;
    .end local v5           #ws:Landroid/app/WallpaperManager;
    :goto_4
    return-void

    .line 782
    :cond_1
    const-string v6, "/data/system/theme/wallpaper/default_wallpaper.jpg"

    move-object v3, v6

    goto :goto_0

    .line 794
    .restart local v3       #path:Ljava/lang/String;
    :cond_2
    const-string v9, "wallpaper"

    move-object v9, v10

    goto :goto_1

    .line 805
    .restart local v0       #desPath:Ljava/lang/String;
    .restart local v5       #ws:Landroid/app/WallpaperManager;
    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    if-eqz p2, :cond_4

    const v7, 0x1080184

    :goto_5
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v6

    invoke-virtual {v5, v6, p2}, Landroid/app/WallpaperManager;->setStream(Ljava/io/InputStream;Z)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_2

    .line 815
    .end local v0           #desPath:Ljava/lang/String;
    .end local v3           #path:Ljava/lang/String;
    .end local v5           #ws:Landroid/app/WallpaperManager;
    :catch_0
    move-exception v6

    move-object v1, v6

    .line 816
    .local v1, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_4

    .line 805
    .end local v1           #e:Ljava/io/FileNotFoundException;
    .restart local v0       #desPath:Ljava/lang/String;
    .restart local v3       #path:Ljava/lang/String;
    .restart local v5       #ws:Landroid/app/WallpaperManager;
    :cond_4
    const v7, 0x1080185

    goto :goto_5

    .line 812
    :cond_5
    const-wide/16 v6, 0x2

    goto :goto_3

    .line 817
    .end local v0           #desPath:Ljava/lang/String;
    .end local v3           #path:Ljava/lang/String;
    .end local v5           #ws:Landroid/app/WallpaperManager;
    :catch_1
    move-exception v6

    move-object v1, v6

    .line 818
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4
.end method

.method public static backupCurrentTheme(Landroid/content/Context;)V
    .locals 6
    .parameter

    .prologue
    .line 952
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f070007

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/io/File;

    sget-object v5, Lcom/android/thememanager/ThemeHelper;->BACKUP_THEME_PATH:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070006

    new-instance v2, Lcom/android/thememanager/ThemeHelper$1;

    invoke-direct {v2, p0}, Lcom/android/thememanager/ThemeHelper$1;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 964
    return-void
.end method

.method public static clearUserPreference(Landroid/content/SharedPreferences$Editor;J)V
    .locals 2
    .parameter "edit"
    .parameter "flag"

    .prologue
    .line 748
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "path-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 749
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "flags-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 750
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "title-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 751
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "designer-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 752
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "author-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 753
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "update_time-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 754
    return-void
.end method

.method public static convertIntoNewFormat(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 7
    .parameter "context"
    .parameter "themePath"

    .prologue
    .line 627
    const/4 v3, 0x0

    .line 628
    .local v3, result:Z
    invoke-static {p1}, Lcom/miui/android/resourcebrowser/ResourceHelper;->isZipResource(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "/system/media/theme"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 629
    invoke-static {p1}, Lcom/android/thememanager/ThemeHelper;->isNewCompressedFormat(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 630
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 631
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    .line 632
    .local v1, lastModifyTime:J
    invoke-static {p1}, Lcom/android/thememanager/ThemeHelper;->convertOldThemeIntoCompressedFormat(Ljava/lang/String;)Z

    move-result v3

    .line 633
    if-eqz v3, :cond_1

    .line 634
    invoke-virtual {v0, v1, v2}, Ljava/io/File;->setLastModified(J)Z

    .line 640
    .end local v0           #file:Ljava/io/File;
    .end local v1           #lastModifyTime:J
    :cond_0
    :goto_0
    return v3

    .line 636
    .restart local v0       #file:Ljava/io/File;
    .restart local v1       #lastModifyTime:J
    :cond_1
    const-string v4, "ResourceBrowser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fail to convert new format: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static convertOldThemeIntoCompressedFormat(Ljava/lang/String;)Z
    .locals 8
    .parameter "themeZipFilePath"

    .prologue
    .line 568
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 569
    .local v3, srcFile:Ljava/io/File;
    new-instance v5, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".cmp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 572
    .local v5, tmpUnzipFile:Ljava/io/File;
    const-string v0, "rm -rf \"%s\""

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v0, v1}, Lcom/miui/android/resourcebrowser/ResourceHelper;->run(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 573
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/thememanager/Helper;->unzip(Ljava/lang/String;Ljava/lang/String;)V

    .line 576
    const/4 p0, 0x3

    new-array p0, p0, [Ljava/lang/String;

    .end local p0
    const/4 v0, 0x0

    const-string v1, "framework-res/res/drawable-hdpi/default_wallpaper.jpg"

    aput-object v1, p0, v0

    const/4 v0, 0x1

    const-string v1, "framework-res/res/drawable-hdpi/default_lock_wallpaper.jpg"

    aput-object v1, p0, v0

    const/4 v0, 0x2

    const-string v1, "framework-res/res/drawable-hdpi/default_lock_wallpaper_800.jpg"

    aput-object v1, p0, v0

    .line 579
    .local p0, deprecatedPaper:[Ljava/lang/String;
    move-object p0, p0

    .local p0, arr$:[Ljava/lang/String;
    array-length v1, p0

    .local v1, len$:I
    const/4 v0, 0x0

    .local v0, i$:I
    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v2, p0, v0

    .line 580
    .local v2, paper:Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v5, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 581
    .local v4, tmpFile:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v2

    .end local v2           #paper:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 583
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "wallpaper"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/miui/android/resourcebrowser/ResourceHelper;->writeTo(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 585
    invoke-virtual {v4}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 579
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 592
    .end local v4           #tmpFile:Ljava/io/File;
    :cond_1
    new-instance p0, Ljava/io/File;

    .end local p0           #arr$:[Ljava/lang/String;
    const-string v0, "framework-res/res/drawable-hdpi/default_lock_wallpaper.jpg"

    .end local v0           #i$:I
    invoke-direct {p0, v5, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 594
    .end local v1           #len$:I
    .local p0, frameworkResFile:Ljava/io/File;
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p0

    .line 595
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 596
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "framework-res"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 599
    const/4 v0, 0x1

    .line 600
    .local v0, convertResult:Z
    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    .local p0, arr$:[Ljava/io/File;
    array-length v2, p0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_2
    if-ge v1, v2, :cond_5

    aget-object v4, p0, v1

    .line 601
    .local v4, sub:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/thememanager/ThemeHelper;->shouldCompressedComponent(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 602
    invoke-virtual {v4}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v6

    array-length v6, v6

    if-nez v6, :cond_4

    .line 604
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 600
    .end local v4           #sub:Ljava/io/File;
    :cond_3
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 605
    .restart local v4       #sub:Ljava/io/File;
    :cond_4
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/thememanager/Helper;->convertFileToZipFormat(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 606
    new-instance v0, Ljava/lang/StringBuilder;

    .end local v0           #convertResult:Z
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "rm -rf \"%s\""

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    .end local v4           #sub:Ljava/io/File;
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v4}, Lcom/miui/android/resourcebrowser/ResourceHelper;->run(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 607
    const/4 v0, 0x0

    .restart local v0       #convertResult:Z
    goto :goto_3

    .line 613
    :cond_5
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    .end local p0           #arr$:[Ljava/io/File;
    invoke-static {p0}, Lcom/android/thememanager/Helper;->convertFileToZipFormat(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_7

    .line 614
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "rm -rf \"%s\""

    .end local v0           #convertResult:Z
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, v0}, Lcom/miui/android/resourcebrowser/ResourceHelper;->run(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 615
    const/4 p0, 0x0

    .line 618
    .local p0, convertResult:Z
    :goto_4
    if-eqz p0, :cond_6

    .line 619
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 620
    invoke-virtual {v5, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 623
    :cond_6
    return p0

    .line 586
    .end local v2           #len$:I
    .local v0, i$:I
    .local v1, len$:I
    .local v4, tmpFile:Ljava/io/File;
    .local p0, arr$:[Ljava/lang/String;
    :catch_0
    move-exception v2

    goto/16 :goto_1

    .end local v4           #tmpFile:Ljava/io/File;
    .end local p0           #arr$:[Ljava/lang/String;
    .local v0, convertResult:Z
    .local v1, i$:I
    .restart local v2       #len$:I
    :cond_7
    move p0, v0

    .end local v0           #convertResult:Z
    .local p0, convertResult:Z
    goto :goto_4
.end method

.method public static deleteDeprecatedPreviewCache()V
    .locals 4

    .prologue
    .line 194
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/thememanager/ThemeHelper;->MIUI_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".cache/ThemeManager"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 195
    .local v0, deprecatedThemeMangerDir:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 196
    const-string v1, "rm -rf %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/miui/android/resourcebrowser/ResourceHelper;->runAsync(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 198
    :cond_0
    return-void
.end method

.method public static deleteUnusedThemeTmpFile(Ljava/lang/String;)Z
    .locals 4
    .parameter "themePath"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 644
    const-string v0, ".mtz.cmp"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, ".mtz"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ".zip"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 647
    :cond_1
    const-string v0, "rm -rf \"%s\""

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Lcom/miui/android/resourcebrowser/ResourceHelper;->run(Ljava/lang/String;[Ljava/lang/Object;)Z

    move v0, v3

    .line 650
    :goto_0
    return v0

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method public static filterAudioEffect([Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .parameter "audio"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 328
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 329
    .local v6, ret:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p0, :cond_2

    .line 330
    sget-object v7, Lcom/android/thememanager/ThemeHelper;->sAudioEffectOrder:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 331
    .local v5, orderName:Ljava/lang/String;
    move-object v0, p0

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 332
    .local v4, name:Ljava/lang/String;
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 333
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 331
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 340
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v4           #name:Ljava/lang/String;
    .end local v5           #orderName:Ljava/lang/String;
    :cond_2
    return-object v6
.end method

.method public static final getAllComponentsCombineFlag()J
    .locals 2

    .prologue
    .line 278
    const-wide/32 v0, 0xffff

    return-wide v0
.end method

.method public static getAllThirdAppResourcePath()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 1113
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1114
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/system/theme"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    move v3, v8

    :goto_0
    if-ge v3, v2, :cond_4

    aget-object v4, v1, v3

    .line 1115
    const-string v5, "preview"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "description.xml"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1114
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1119
    :cond_1
    const/4 v5, 0x1

    move v6, v8

    .line 1120
    :goto_2
    sget-object v7, Lcom/android/thememanager/ThemeHelper;->sComponentIdentity:[Ljava/lang/String;

    array-length v7, v7

    if-ge v6, v7, :cond_2

    .line 1121
    sget-object v7, Lcom/android/thememanager/ThemeHelper;->sComponentIdentity:[Ljava/lang/String;

    aget-object v7, v7, v6

    invoke-virtual {v4, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    move v5, v8

    .line 1126
    :cond_2
    if-eqz v5, :cond_0

    .line 1127
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1120
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 1131
    :cond_4
    return-object v0
.end method

.method public static getAppliedConfigFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 767
    sget-object v0, Landroid/app/ThemeResource;->sAppliedLockstyleConfigPath:Ljava/lang/String;

    return-object v0
.end method

.method public static getCompatibleFlag(IJ)J
    .locals 5
    .parameter "platformVersion"
    .parameter "flag"

    .prologue
    const/4 v4, 0x1

    .line 398
    const-wide/16 v0, 0x1

    .local v0, i:J
    :goto_0
    const-wide/32 v2, 0x8000

    cmp-long v2, v0, v2

    if-gtz v2, :cond_1

    .line 399
    invoke-static {v0, v1}, Lcom/android/thememanager/ConstantsHelper;->getMinPlatformVersion(J)I

    move-result v2

    invoke-static {p0, v2, v4}, Lcom/miui/android/resourcebrowser/ResourceHelper;->isCompatiblePlatformVersion(III)Z

    move-result v2

    if-nez v2, :cond_0

    .line 401
    const-wide/16 v2, -0x1

    xor-long/2addr v2, v0

    and-long/2addr p1, v2

    .line 398
    :cond_0
    shl-long/2addr v0, v4

    goto :goto_0

    .line 404
    :cond_1
    return-wide p1
.end method

.method public static getComponentIndex(J)I
    .locals 4
    .parameter "flag"

    .prologue
    .line 201
    const-wide/16 v0, -0x1

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    .line 202
    const/4 v0, 0x0

    .line 204
    :goto_0
    return v0

    :cond_0
    long-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    sget-wide v2, Lcom/android/thememanager/ThemeHelper;->sLOG2:D

    div-double/2addr v0, v2

    const-wide v2, 0x3fb999999999999aL

    add-double/2addr v0, v2

    double-to-int v0, v0

    goto :goto_0
.end method

.method public static final getComponentNumber(J)I
    .locals 3
    .parameter "flag"

    .prologue
    .line 265
    const/4 v0, 0x0

    .line 266
    .local v0, cnt:I
    const-wide/16 v1, -0x1

    cmp-long v1, p0, v1

    if-nez v1, :cond_0

    .line 267
    sget v1, Lcom/android/thememanager/ThemeHelper;->THEME_FLAG_COUNT:I

    add-int/lit8 v1, v1, 0x1

    .line 274
    :goto_0
    return v1

    .line 269
    :cond_0
    :goto_1
    const-wide/16 v1, 0x0

    cmp-long v1, p0, v1

    if-eqz v1, :cond_1

    .line 270
    const-wide/16 v1, 0x1

    sub-long v1, p0, v1

    and-long/2addr p0, v1

    .line 271
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move v1, v0

    .line 274
    goto :goto_0
.end method

.method public static getCurrentLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 190
    sget-object v0, Lcom/android/thememanager/ThemeHelper;->sCurrentLanguage:Ljava/lang/String;

    return-object v0
.end method

.method public static getHumanNameForAudioEffect(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "ringtonePath"

    .prologue
    const/16 v2, 0x2e

    .line 316
    sget-char v1, Ljava/io/File;->separatorChar:C

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 317
    .local v0, name:Ljava/lang/String;
    sget-object v1, Lcom/android/thememanager/ThemeHelper;->sAudioEffectMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 318
    sget-object v1, Lcom/android/thememanager/ThemeHelper;->sAudioEffectMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #name:Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 320
    .restart local v0       #name:Ljava/lang/String;
    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-lez v1, :cond_1

    .line 321
    const/4 v1, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 324
    :cond_1
    return-object v0
.end method

.method public static final getIconIDByFlag(J)I
    .locals 2
    .parameter "flag"

    .prologue
    .line 258
    sget-object v0, Lcom/android/thememanager/ThemeHelper;->sComponentIcon:[I

    invoke-static {p0, p1}, Lcom/android/thememanager/ThemeHelper;->getComponentIndex(J)I

    move-result v1

    aget v0, v0, v1

    return v0
.end method

.method public static getLockstyleSDCardConfigPathFromThemePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "themePath"

    .prologue
    .line 771
    if-nez p0, :cond_0

    .line 772
    const/4 v3, 0x0

    .line 777
    :goto_0
    return-object v3

    .line 774
    :cond_0
    const-string v3, "/"

    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 775
    .local v1, start:I
    const-string v3, "."

    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 776
    .local v0, end:I
    if-gt v0, v1, :cond_1

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 777
    .local v2, themeName:Ljava/lang/String;
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/thememanager/ThemeHelper;->sLockstyleSDCardConfigDirPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".config"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 776
    .end local v2           #themeName:Ljava/lang/String;
    :cond_1
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    goto :goto_1
.end method

.method public static final getPreviewPrefixByFlag(J)Ljava/lang/String;
    .locals 2
    .parameter "flag"

    .prologue
    .line 479
    sget-object v0, Lcom/android/thememanager/ThemeHelper;->sComponentPreviewPrefix:[Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/thememanager/ThemeHelper;->getComponentIndex(J)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static getResourceTypeFromFlags(J)J
    .locals 8
    .parameter "componentFlags"

    .prologue
    .line 428
    const-wide/16 v2, 0x0

    .line 429
    .local v2, resourceType:J
    const-wide/16 v4, 0x1

    invoke-static {v4, v5, p0, p1}, Lcom/android/thememanager/ThemeHelper;->matchThemeResource(JJ)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 430
    const-wide/16 v2, -0x1

    .line 442
    :cond_0
    :goto_0
    return-wide v2

    .line 431
    :cond_1
    const-wide/16 v4, 0x1004

    cmp-long v4, p0, v4

    if-nez v4, :cond_2

    .line 432
    const-wide/16 v2, 0x1000

    goto :goto_0

    .line 434
    :cond_2
    const-wide/32 v4, 0xf8b8

    and-long/2addr p0, v4

    .line 435
    const-wide/16 v0, 0x1

    .local v0, i:J
    :goto_1
    const-wide/32 v4, 0x8000

    cmp-long v4, v0, v4

    if-gtz v4, :cond_0

    .line 436
    and-long v4, p0, v0

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_3

    .line 437
    move-wide v2, v0

    .line 438
    goto :goto_0

    .line 435
    :cond_3
    const/4 v4, 0x1

    shl-long/2addr v0, v4

    goto :goto_1
.end method

.method public static final getTitleIDByFlag(J)I
    .locals 2
    .parameter "flag"

    .prologue
    .line 246
    const-wide/16 v0, -0x1

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    .line 247
    const v0, 0x7f070021

    .line 253
    :goto_0
    return v0

    .line 248
    :cond_0
    const-wide/32 v0, 0x10000000

    cmp-long v0, p0, v0

    if-nez v0, :cond_1

    .line 249
    const v0, 0x7f070020

    goto :goto_0

    .line 250
    :cond_1
    const-wide/16 v0, 0x1

    cmp-long v0, v0, p0

    if-gtz v0, :cond_2

    const-wide/32 v0, 0x8000

    cmp-long v0, p0, v0

    if-gtz v0, :cond_2

    .line 251
    sget-object v0, Lcom/android/thememanager/ThemeHelper;->sComponentTitle:[I

    invoke-static {p0, p1}, Lcom/android/thememanager/ThemeHelper;->getComponentIndex(J)I

    move-result v1

    aget v0, v0, v1

    goto :goto_0

    .line 253
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static identifyComponents(Ljava/util/zip/ZipFile;)J
    .locals 2
    .parameter "zipfile"

    .prologue
    .line 354
    const/4 v0, -0x1

    invoke-static {p0, v0}, Lcom/android/thememanager/ThemeHelper;->identifyComponents(Ljava/util/zip/ZipFile;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static identifyComponents(Ljava/util/zip/ZipFile;I)J
    .locals 13
    .parameter "zipfile"
    .parameter "platformVersion"

    .prologue
    const/4 v12, 0x1

    .line 358
    const-wide/16 v3, 0x0

    .line 359
    .local v3, flags:J
    const/4 v5, 0x1

    .local v5, i:I
    :goto_0
    sget v8, Lcom/android/thememanager/ThemeHelper;->THEME_FLAG_COUNT:I

    if-ge v5, v8, :cond_1

    .line 360
    sget-object v8, Lcom/android/thememanager/ThemeHelper;->sComponentIdentity:[Ljava/lang/String;

    aget-object v8, v8, v5

    invoke-virtual {p0, v8}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 361
    shl-int v8, v12, v5

    int-to-long v8, v8

    or-long/2addr v3, v8

    .line 359
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 367
    :cond_1
    invoke-virtual {p0}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v1

    .line 368
    .local v1, entries:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/util/zip/ZipEntry;>;"
    const/4 v2, 0x0

    .line 369
    .local v2, entry:Ljava/util/zip/ZipEntry;
    const/4 v7, 0x0

    .line 370
    .local v7, path:Ljava/lang/String;
    :cond_2
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 371
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    .end local v2           #entry:Ljava/util/zip/ZipEntry;
    check-cast v2, Ljava/util/zip/ZipEntry;

    .line 372
    .restart local v2       #entry:Ljava/util/zip/ZipEntry;
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v7

    .line 373
    const/4 v5, 0x0

    :goto_1
    sget v8, Lcom/android/thememanager/ThemeHelper;->THEME_FLAG_COUNT:I

    if-ge v5, v8, :cond_2

    .line 374
    const-wide/16 v8, 0x1

    shl-long/2addr v8, v5

    and-long/2addr v8, v3

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-nez v8, :cond_3

    sget-object v8, Lcom/android/thememanager/ThemeHelper;->sComponentIdentity:[Ljava/lang/String;

    aget-object v8, v8, v5

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 375
    if-nez v5, :cond_4

    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v8

    if-nez v8, :cond_3

    const-string v8, "framework-res/res/drawable-hdpi/default_wallpaper.jpg"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3

    const-string v8, "framework-res/res/drawable-hdpi/default_lock_wallpaper.jpg"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3

    const-string v8, "framework-res/res/drawable-hdpi/default_lock_wallpaper_800.jpg"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 373
    :cond_3
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 381
    :cond_4
    shl-int v8, v12, v5

    int-to-long v8, v8

    or-long/2addr v3, v8

    goto :goto_2

    .line 386
    :cond_5
    if-gez p1, :cond_6

    .line 387
    const-string v8, "description.xml"

    invoke-static {p0, v8}, Lcom/miui/android/resourcebrowser/ZipFileHelper;->getZipResourceDescribeInfo(Ljava/util/zip/ZipFile;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v6

    .line 389
    .local v6, nvp:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v6, :cond_7

    :try_start_0
    const-string v8, "uiVersion"

    invoke-interface {v6, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    move p1, v8

    .line 394
    .end local v6           #nvp:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_6
    :goto_3
    invoke-static {p1, v3, v4}, Lcom/android/thememanager/ThemeHelper;->getCompatibleFlag(IJ)J

    move-result-wide v8

    return-wide v8

    .line 389
    .restart local v6       #nvp:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local p0
    :cond_7
    const/4 v8, 0x0

    move p1, v8

    goto :goto_3

    .line 390
    .end local p0
    :catch_0
    move-exception v8

    move-object v0, v8

    .line 391
    .local v0, e:Ljava/lang/NumberFormatException;
    const/4 p1, 0x0

    goto :goto_3
.end method

.method private static initAudioEffectMap(Landroid/content/res/Resources;)V
    .locals 6
    .parameter "res"

    .prologue
    .line 304
    const/high16 v3, 0x7f05

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    .line 305
    .local v1, key:[Ljava/lang/CharSequence;
    const v3, 0x7f050001

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v2

    .line 306
    .local v2, value:[Ljava/lang/CharSequence;
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    array-length v3, v1

    array-length v4, v2

    if-ne v3, v4, :cond_0

    .line 307
    sget-object v3, Lcom/android/thememanager/ThemeHelper;->sAudioEffectMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 308
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_0

    .line 309
    sget-object v3, Lcom/android/thememanager/ThemeHelper;->sAudioEffectMap:Ljava/util/HashMap;

    aget-object v4, v1, v0

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    aget-object v5, v2, v0

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    sget-object v3, Lcom/android/thememanager/ThemeHelper;->sAudioEffectOrder:Ljava/util/ArrayList;

    aget-object v4, v1, v0

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 308
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 313
    .end local v0           #i:I
    :cond_0
    return-void
.end method

.method public static initLanguage(Ljava/lang/String;)V
    .locals 0
    .parameter "language"

    .prologue
    .line 186
    sput-object p0, Lcom/android/thememanager/ThemeHelper;->sCurrentLanguage:Ljava/lang/String;

    .line 187
    return-void
.end method

.method public static initResource(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 180
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 181
    .local v0, res:Landroid/content/res/Resources;
    invoke-static {v0}, Lcom/android/thememanager/ThemeHelper;->initAudioEffectMap(Landroid/content/res/Resources;)V

    .line 182
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/thememanager/ThemeHelper;->initLanguage(Ljava/lang/String;)V

    .line 183
    return-void
.end method

.method private static isNewCompressedFormat(Ljava/lang/String;)Z
    .locals 9
    .parameter "themeZipFilePath"

    .prologue
    .line 541
    const/4 v3, 0x1

    .line 543
    .local v3, newFormat:Z
    :try_start_0
    new-instance v5, Ljava/util/zip/ZipFile;

    invoke-direct {v5, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    .line 545
    .local v5, zipfile:Ljava/util/zip/ZipFile;
    invoke-virtual {v5}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v1

    .line 546
    .local v1, entries:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/util/zip/ZipEntry;>;"
    const/4 v2, 0x0

    .line 547
    .local v2, entry:Ljava/util/zip/ZipEntry;
    const/4 v4, 0x0

    .line 548
    .local v4, path:Ljava/lang/String;
    :cond_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 549
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    .end local v2           #entry:Ljava/util/zip/ZipEntry;
    check-cast v2, Ljava/util/zip/ZipEntry;

    .line 550
    .restart local v2       #entry:Ljava/util/zip/ZipEntry;
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v4

    .line 551
    invoke-static {v4}, Lcom/android/thememanager/ThemeHelper;->shouldCompressedComponent(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 552
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v6

    if-nez v6, :cond_1

    const/16 v6, 0x2f

    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-lez v6, :cond_0

    .line 553
    :cond_1
    const/4 v3, 0x0

    .line 558
    :cond_2
    invoke-virtual {v5}, Ljava/util/zip/ZipFile;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 564
    .end local v1           #entries:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/util/zip/ZipEntry;>;"
    .end local v2           #entry:Ljava/util/zip/ZipEntry;
    .end local v4           #path:Ljava/lang/String;
    .end local v5           #zipfile:Ljava/util/zip/ZipFile;
    :goto_0
    return v3

    .line 560
    :catch_0
    move-exception v6

    move-object v0, v6

    .line 561
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 562
    const-string v6, "ResourceBrowser"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "fail to call isNewCompressedFormat() : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static loadUserPreferencePath(Landroid/content/Context;J)Ljava/lang/String;
    .locals 3
    .parameter "context"
    .parameter "flag"

    .prologue
    .line 762
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 763
    .local v0, pref:Landroid/content/SharedPreferences;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "path-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static matchThemeResource(JJ)Z
    .locals 7
    .parameter "resourceType"
    .parameter "flags"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 413
    and-long v1, p2, p0

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    move v0, v6

    .line 414
    .local v0, result:Z
    :goto_0
    if-nez v0, :cond_0

    const-wide/16 v1, 0x1

    cmp-long v1, p0, v1

    if-nez v1, :cond_0

    .line 419
    const-wide/32 v1, 0xf8b8

    and-long/2addr v1, p2

    invoke-static {v1, v2}, Lcom/android/thememanager/ThemeHelper;->getComponentNumber(J)I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_2

    move v0, v6

    .line 421
    :cond_0
    :goto_1
    return v0

    .end local v0           #result:Z
    :cond_1
    move v0, v5

    .line 413
    goto :goto_0

    .restart local v0       #result:Z
    :cond_2
    move v0, v5

    .line 419
    goto :goto_1
.end method

.method public static moveThemeFileIntoLibrary(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter
    .parameter

    .prologue
    const/4 v9, -0x1

    const/4 v8, 0x0

    .line 1045
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 1077
    :goto_0
    return-object v0

    .line 1048
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1049
    sget-object v1, Lcom/android/thememanager/ThemeHelper;->THEME_PATH:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 1050
    goto :goto_0

    .line 1054
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1055
    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/android/thememanager/ThemeHelper;->THEME_PATH:Ljava/lang/String;

    invoke-direct {v2, v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1056
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1058
    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    invoke-virtual {v1, v8, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    move v2, v8

    .line 1061
    :goto_1
    new-instance v3, Ljava/io/File;

    const-string v4, "%s/%s_%d.mtz"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    sget-object v6, Lcom/android/thememanager/ThemeHelper;->THEME_PATH:Ljava/lang/String;

    aput-object v6, v5, v8

    const/4 v6, 0x1

    aput-object v1, v5, v6

    const/4 v6, 0x2

    add-int/lit8 v7, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1062
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    move-object v1, v3

    .line 1064
    :goto_2
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    const/16 v3, 0x1ff

    invoke-static {v2, v3, v9, v9}, Landroid/os/FileUtils;->mkdirs(Ljava/io/File;III)Z

    .line 1067
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mv -f \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v8, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/miui/android/resourcebrowser/ResourceHelper;->run(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1068
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/io/File;->setLastModified(J)Z

    .line 1071
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1072
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1073
    invoke-virtual {p0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1074
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1075
    invoke-virtual {p0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1077
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_2
    move v2, v7

    goto/16 :goto_1

    :cond_3
    move-object v1, v2

    goto :goto_2
.end method

.method public static saveUserPreference(Landroid/content/SharedPreferences$Editor;Lcom/android/thememanager/ThemeInfo;JZ)V
    .locals 3
    .parameter "edit"
    .parameter "info"
    .parameter "flag"
    .parameter "savePath"

    .prologue
    .line 737
    if-eqz p4, :cond_0

    .line 738
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "path-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/android/thememanager/ThemeInfo;->mPath:Ljava/lang/String;

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 740
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "flags-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-wide v1, p1, Lcom/android/thememanager/ThemeInfo;->mFlags:J

    invoke-interface {p0, v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 741
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "title-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/android/thememanager/ThemeInfo;->mTitle:Ljava/lang/String;

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 742
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "designer-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/android/thememanager/ThemeInfo;->mDesigner:Ljava/lang/String;

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 743
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "author-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/android/thememanager/ThemeInfo;->mAuthor:Ljava/lang/String;

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 744
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "update_time-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-interface {p0, v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 745
    return-void
.end method

.method public static saveUserPreference(Lcom/android/thememanager/ThemeInfo;JJZ)V
    .locals 10
    .parameter "info"
    .parameter "saveFlags"
    .parameter "clearFlags"
    .parameter "savePath"

    .prologue
    const/4 v6, 0x1

    const-wide/16 v8, 0x0

    .line 715
    iget-object v4, p0, Lcom/android/thememanager/ThemeInfo;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 716
    .local v3, pref:Landroid/content/SharedPreferences;
    monitor-enter v3

    .line 717
    :try_start_0
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 720
    .local v0, edit:Landroid/content/SharedPreferences$Editor;
    const-wide/16 v1, 0x1

    .local v1, flag:J
    :goto_0
    const-wide/32 v4, 0x8000

    cmp-long v4, v1, v4

    if-gtz v4, :cond_2

    .line 721
    and-long v4, v1, p1

    cmp-long v4, v4, v8

    if-eqz v4, :cond_1

    .line 722
    invoke-static {v0, p0, v1, v2, p5}, Lcom/android/thememanager/ThemeHelper;->saveUserPreference(Landroid/content/SharedPreferences$Editor;Lcom/android/thememanager/ThemeInfo;JZ)V

    .line 720
    :cond_0
    :goto_1
    shl-long/2addr v1, v6

    goto :goto_0

    .line 723
    :cond_1
    and-long v4, v1, p3

    cmp-long v4, v4, v8

    if-eqz v4, :cond_0

    .line 724
    invoke-static {v0, v1, v2}, Lcom/android/thememanager/ThemeHelper;->clearUserPreference(Landroid/content/SharedPreferences$Editor;J)V

    goto :goto_1

    .line 733
    .end local v0           #edit:Landroid/content/SharedPreferences$Editor;
    .end local v1           #flag:J
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 728
    .restart local v0       #edit:Landroid/content/SharedPreferences$Editor;
    .restart local v1       #flag:J
    :cond_2
    or-long v4, p1, p3

    const-wide/16 v6, 0x1

    and-long/2addr v4, v6

    cmp-long v4, v4, v8

    if-eqz v4, :cond_3

    .line 729
    const-wide/16 v4, -0x1

    const/4 v6, 0x1

    :try_start_1
    invoke-static {v0, p0, v4, v5, v6}, Lcom/android/thememanager/ThemeHelper;->saveUserPreference(Landroid/content/SharedPreferences$Editor;Lcom/android/thememanager/ThemeInfo;JZ)V

    .line 732
    :cond_3
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 733
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 734
    return-void
.end method

.method public static saveUserPreferenceOnlyPath(Landroid/content/Context;JLjava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "flag"
    .parameter "path"

    .prologue
    .line 680
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, p3, v0}, Lcom/android/thememanager/ThemeHelper;->saveUserPreferenceOnlyPath(Landroid/content/Context;JLjava/lang/String;Z)V

    .line 681
    return-void
.end method

.method public static saveUserPreferenceOnlyPath(Landroid/content/Context;JLjava/lang/String;Z)V
    .locals 6
    .parameter "context"
    .parameter "flag"
    .parameter "path"
    .parameter "updateTitle"

    .prologue
    const-string v3, "title-"

    .line 683
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 684
    .local v1, pref:Landroid/content/SharedPreferences;
    monitor-enter v1

    .line 685
    :try_start_0
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 686
    .local v0, edit:Landroid/content/SharedPreferences$Editor;
    const/4 v2, 0x0

    .line 687
    .local v2, title:Ljava/lang/String;
    if-nez p4, :cond_0

    .line 688
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "title-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 690
    :cond_0
    if-nez v2, :cond_1

    .line 691
    const v3, 0x7f07000b

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 693
    :cond_1
    invoke-static {v0, p1, p2}, Lcom/android/thememanager/ThemeHelper;->clearUserPreference(Landroid/content/SharedPreferences$Editor;J)V

    .line 694
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "path-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 695
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "title-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 696
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "update_time-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-interface {v0, v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 697
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 698
    monitor-exit v1

    .line 699
    return-void

    .line 698
    .end local v0           #edit:Landroid/content/SharedPreferences$Editor;
    .end local v2           #title:Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public static sendThemeConfigurationChangeMsg(J)V
    .locals 10
    .parameter "changeFlag"

    .prologue
    const-wide/16 v8, 0x0

    .line 934
    const-wide/16 v1, 0x10

    and-long/2addr v1, p0

    cmp-long v1, v1, v8

    if-eqz v1, :cond_0

    .line 935
    const-string v1, "/system/xbin/run_as -u root \'setprop debug.skia.free_cache %s\'"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Landroid/util/CommandLineUtils;->run(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 938
    :cond_0
    const-wide/32 v1, 0x10007899

    and-long/2addr p0, v1

    .line 939
    cmp-long v1, p0, v8

    if-nez v1, :cond_1

    .line 949
    :goto_0
    return-void

    .line 944
    :cond_1
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 945
    .local v0, curConfig:Landroid/content/res/Configuration;
    invoke-virtual {v0, p0, p1}, Landroid/content/res/Configuration;->updateTheme(J)V

    .line 946
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 947
    .end local v0           #curConfig:Landroid/content/res/Configuration;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static setMusicVolumeType(Landroid/app/Activity;J)V
    .locals 3
    .parameter "activity"
    .parameter "flag"

    .prologue
    .line 915
    const/4 v0, -0x1

    .line 916
    .local v0, playType:I
    const-wide/16 v1, 0x100

    cmp-long v1, p1, v1

    if-nez v1, :cond_1

    .line 917
    const/4 v0, 0x2

    .line 928
    :goto_0
    if-ltz v0, :cond_0

    .line 929
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setVolumeControlStream(I)V

    .line 931
    :cond_0
    return-void

    .line 918
    :cond_1
    const-wide/16 v1, 0x200

    cmp-long v1, p1, v1

    if-nez v1, :cond_2

    .line 919
    const/4 v0, 0x5

    goto :goto_0

    .line 920
    :cond_2
    const-wide/16 v1, 0x400

    cmp-long v1, p1, v1

    if-nez v1, :cond_3

    .line 921
    const/4 v0, 0x4

    goto :goto_0

    .line 922
    :cond_3
    const-wide/32 v1, 0x8000

    cmp-long v1, p1, v1

    if-nez v1, :cond_4

    .line 923
    const/4 v0, 0x1

    goto :goto_0

    .line 925
    :cond_4
    const/4 v0, 0x3

    goto :goto_0
.end method

.method public static setRingtone(Landroid/content/Context;ILjava/lang/String;)Z
    .locals 4
    .parameter "context"
    .parameter "type"
    .parameter "path"

    .prologue
    .line 889
    const/4 v2, 0x0

    .line 890
    .local v2, uri:Landroid/net/Uri;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 891
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    .line 892
    invoke-static {p2, p1}, Landroid/media/RingtoneManager;->copyRingtone(Ljava/lang/String;I)V

    .line 894
    :cond_0
    invoke-static {p0, p1, v2}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    .line 896
    const-wide/16 v0, 0x100

    .line 897
    .local v0, flag:J
    packed-switch p1, :pswitch_data_0

    .line 910
    :goto_0
    :pswitch_0
    invoke-static {p0, v0, v1, p2}, Lcom/android/thememanager/ThemeHelper;->saveUserPreferenceOnlyPath(Landroid/content/Context;JLjava/lang/String;)V

    .line 911
    const/4 v3, 0x1

    return v3

    .line 899
    :pswitch_1
    const-wide/16 v0, 0x100

    .line 900
    goto :goto_0

    .line 903
    :pswitch_2
    const-wide/16 v0, 0x200

    .line 904
    goto :goto_0

    .line 907
    :pswitch_3
    const-wide/16 v0, 0x400

    goto :goto_0

    .line 897
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private static shouldCompressedComponent(Ljava/lang/String;)Z
    .locals 5
    .parameter "zipEntryPath"

    .prologue
    .line 532
    sget-object v0, Lcom/android/thememanager/ThemeHelper;->sUnCompressedComponent:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 533
    .local v3, tmp:Ljava/lang/String;
    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 534
    const/4 v4, 0x0

    .line 537
    .end local v3           #tmp:Ljava/lang/String;
    :goto_1
    return v4

    .line 532
    .restart local v3       #tmp:Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 537
    .end local v3           #tmp:Ljava/lang/String;
    :cond_1
    const/4 v4, 0x1

    goto :goto_1
.end method

.method public static showThemeChangedToast(Landroid/content/Context;Z)V
    .locals 2
    .parameter "context"
    .parameter "result"

    .prologue
    .line 823
    if-eqz p1, :cond_0

    const v1, 0x7f070003

    :goto_0
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 825
    .local v0, text:Ljava/lang/String;
    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 826
    return-void

    .line 823
    .end local v0           #text:Ljava/lang/String;
    :cond_0
    const v1, 0x7f070004

    goto :goto_0
.end method

.method public static updateUserPreferenceModifyTime(Landroid/content/Context;JJ)V
    .locals 8
    .parameter "context"
    .parameter "saveFlags"
    .parameter "modifyTime"

    .prologue
    .line 702
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 703
    .local v3, pref:Landroid/content/SharedPreferences;
    monitor-enter v3

    .line 704
    :try_start_0
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 705
    .local v0, edit:Landroid/content/SharedPreferences$Editor;
    const-wide/16 v1, 0x1

    .local v1, flag:J
    :goto_0
    const-wide/32 v4, 0x8000

    cmp-long v4, v1, v4

    if-gtz v4, :cond_1

    .line 706
    and-long v4, v1, p1

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    .line 707
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "update_time-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4, p3, p4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 705
    :cond_0
    const/4 v4, 0x1

    shl-long/2addr v1, v4

    goto :goto_0

    .line 710
    :cond_1
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 711
    monitor-exit v3

    .line 712
    return-void

    .line 711
    .end local v0           #edit:Landroid/content/SharedPreferences$Editor;
    .end local v1           #flag:J
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public static wallpaperPrefOlderThanSystem(Landroid/content/Context;J)Z
    .locals 7
    .parameter "context"
    .parameter "wallpaperFlag"

    .prologue
    const-string v6, "/data/system/wallpapers"

    .line 654
    const/4 v3, 0x0

    .line 655
    .local v3, wallpaper:Ljava/io/File;
    const-wide/16 v4, 0x2

    cmp-long v4, p1, v4

    if-nez v4, :cond_1

    .line 656
    new-instance v3, Ljava/io/File;

    .end local v3           #wallpaper:Ljava/io/File;
    const-string v4, "/data/system/wallpapers"

    const-string v4, "wallpaper"

    invoke-direct {v3, v6, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 661
    .restart local v3       #wallpaper:Ljava/io/File;
    :cond_0
    :goto_0
    if-eqz v3, :cond_2

    .line 662
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 663
    .local v0, pref:Landroid/content/SharedPreferences;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "update_time-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-wide/16 v5, 0x0

    invoke-interface {v0, v4, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 664
    .local v1, updateTime:J
    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    cmp-long v4, v1, v4

    if-gez v4, :cond_2

    .line 665
    const/4 v4, 0x1

    .line 669
    .end local v0           #pref:Landroid/content/SharedPreferences;
    .end local v1           #updateTime:J
    :goto_1
    return v4

    .line 657
    :cond_1
    const-wide/16 v4, 0x4

    cmp-long v4, p1, v4

    if-nez v4, :cond_0

    .line 658
    new-instance v3, Ljava/io/File;

    .end local v3           #wallpaper:Ljava/io/File;
    const-string v4, "/data/system/wallpapers"

    const-string v4, "lockscreen"

    invoke-direct {v3, v6, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v3       #wallpaper:Ljava/io/File;
    goto :goto_0

    .line 669
    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method
