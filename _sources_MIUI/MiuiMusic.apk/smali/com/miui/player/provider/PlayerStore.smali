.class public final Lcom/miui/player/provider/PlayerStore;
.super Ljava/lang/Object;
.source "PlayerStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/player/provider/PlayerStore$MiuiEqualizer;,
        Lcom/miui/player/provider/PlayerStore$MiuiNowPlayingAudio;,
        Lcom/miui/player/provider/PlayerStore$MiuiAudioFolder;,
        Lcom/miui/player/provider/PlayerStore$MiuiPlaylists;,
        Lcom/miui/player/provider/PlayerStore$MiuiPlaylistsAudioMap;,
        Lcom/miui/player/provider/PlayerStore$MemberColomns;,
        Lcom/miui/player/provider/PlayerStore$OnlineAudioColumns;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.miui.player"

.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/vnd.google.miui"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/vnd.google.miui"

.field public static final MIUI_CONTENT_AUTHORITY_SLASH:Ljava/lang/String; = "content://com.miui.player/"

.field public static final NOWPLAYING_PLAYLIST_ID:I = 0x0

.field public static final NOWPLAYING_PLAYLIST_NAME:Ljava/lang/String; = "nowplaying"

.field public static final ONLINE_AUDIO_ID_BASE:I = 0x1fffffff

.field public static final TRIGGER_AUDIO_PLAYLIST_CLEANUP:Ljava/lang/String; = "audio_playlist_cleanup"

.field public static final TRIGGER_NOW_PLAYING_DELETE:Ljava/lang/String; = "nowplayinglist_delete"

.field public static final TRIGGER_NOW_PLAYING_INSERT:Ljava/lang/String; = "nowplayinglist_insert"

.field public static final TRIGGER_PLAYLIST_AUDIO_DELETE:Ljava/lang/String; = "playlist_audio_delete"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    return-void
.end method

.method public static getContentUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .parameter "tableName"

    .prologue
    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://com.miui.player/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
