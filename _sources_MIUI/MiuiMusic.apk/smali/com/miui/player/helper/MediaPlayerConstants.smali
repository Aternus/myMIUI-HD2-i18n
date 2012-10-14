.class public interface abstract Lcom/miui/player/helper/MediaPlayerConstants;
.super Ljava/lang/Object;
.source "MediaPlayerConstants.java"


# static fields
.field public static final APP_NAME:Ljava/lang/String; = "MiuiPlayer"

.field public static final DEBUG:Z = false

.field public static final DEFAULT_FILTER_SIZE:I = 0xc8000

.field public static final FOLDER_MUSIC_PATTERN:Ljava/lang/String; = "%s LIKE \"%%%s%%\""

.field public static final HEX_DIGITS:[C = null

.field public static final MEDIA_BUTTON_RECEIVER_PRIORITY:I = 0x7ffffffe

.field public static final MIUI_PREFERENCE_MUSIC_SEARCH_HISTROY:Ljava/lang/String; = "miui_preference_music_search_histroy"

.field public static final MUSIC_PROVIDER:Ljava/lang/String; = "baidu"

.field public static final NOT_FOLDER_MUSIC_PATTERN:Ljava/lang/String; = "%s NOT LIKE \"%%%s%%/%%\""

.field public static final RECENTLY_ADDED:Ljava/lang/String; = "recentlyadded"

.field public static final TWO_WEEKS:I = 0x127500


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/miui/player/helper/MediaPlayerConstants;->HEX_DIGITS:[C

    return-void

    :array_0
    .array-data 0x2
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x61t 0x0t
        0x62t 0x0t
        0x63t 0x0t
        0x64t 0x0t
        0x65t 0x0t
        0x66t 0x0t
    .end array-data
.end method
