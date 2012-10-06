.class public interface abstract Lcom/miui/player/provider/PlayerStore$MiuiEqualizer;
.super Ljava/lang/Object;
.source "PlayerStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/provider/PlayerStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MiuiEqualizer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/player/provider/PlayerStore$MiuiEqualizer$Columns;
    }
.end annotation


# static fields
.field public static final BAND_COUNT:I = 0x5

.field public static final CUSTOM_URI:Landroid/net/Uri; = null

.field public static final DATA_DEFAULT_STR:Ljava/lang/String; = "[0,0,0,0,0]"

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "_id"

.field public static final EXTERNAL_URI:Landroid/net/Uri; = null

.field public static final ID_CUSTOM:I = 0x0

.field public static final ID_INVALIDE:I = -0x1

.field public static final NAME_CUSTOM:Ljava/lang/String; = "$$custom"

.field public static final TABLE_NAME:Ljava/lang/String; = "equalizer"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 138
    const-string v0, "equalizer"

    invoke-static {v0}, Lcom/miui/player/provider/PlayerStore;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/miui/player/provider/PlayerStore$MiuiEqualizer;->EXTERNAL_URI:Landroid/net/Uri;

    .line 139
    sget-object v0, Lcom/miui/player/provider/PlayerStore$MiuiEqualizer;->EXTERNAL_URI:Landroid/net/Uri;

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/miui/player/provider/PlayerStore$MiuiEqualizer;->CUSTOM_URI:Landroid/net/Uri;

    return-void
.end method
