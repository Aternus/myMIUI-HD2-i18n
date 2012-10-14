.class public interface abstract Lcom/miui/player/provider/PlayerStore$MiuiPlaylists;
.super Ljava/lang/Object;
.source "PlayerStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/provider/PlayerStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MiuiPlaylists"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/player/provider/PlayerStore$MiuiPlaylists$Members;,
        Lcom/miui/player/provider/PlayerStore$MiuiPlaylists$Columns;
    }
.end annotation


# static fields
.field public static final EXTERNAL_URI:Landroid/net/Uri; = null

.field public static final FAVOURITE_LIST:I = 0x3

.field public static final FOLDER:I = 0x1

.field public static final NOMAL_PLAYLIST:I = 0x0

.field public static final NOW_PLAYING_LIST:I = 0x2

.field public static final TABLE_NAME:Ljava/lang/String; = "playlists"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 66
    const-string v0, "playlists"

    invoke-static {v0}, Lcom/miui/player/provider/PlayerStore;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/miui/player/provider/PlayerStore$MiuiPlaylists;->EXTERNAL_URI:Landroid/net/Uri;

    return-void
.end method
