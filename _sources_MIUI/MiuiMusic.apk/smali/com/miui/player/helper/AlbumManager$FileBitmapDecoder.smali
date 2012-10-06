.class public Lcom/miui/player/helper/AlbumManager$FileBitmapDecoder;
.super Ljava/lang/Object;
.source "AlbumManager.java"

# interfaces
.implements Lcom/miui/player/helper/AlbumManager$BitmapDecoder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/helper/AlbumManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FileBitmapDecoder"
.end annotation


# instance fields
.field private final mPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "path"

    .prologue
    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    iput-object p1, p0, Lcom/miui/player/helper/AlbumManager$FileBitmapDecoder;->mPath:Ljava/lang/String;

    .line 118
    return-void
.end method


# virtual methods
.method public decode(II)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "w"
    .parameter "h"

    .prologue
    .line 122
    const/4 v0, 0x0

    .line 124
    .local v0, bm:Landroid/graphics/Bitmap;
    :try_start_0
    invoke-static {}, Lcom/miui/player/helper/AlbumManager;->access$000()Landroid/graphics/BitmapFactory$Options;

    move-result-object v1

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 125
    iget-object v1, p0, Lcom/miui/player/helper/AlbumManager$FileBitmapDecoder;->mPath:Ljava/lang/String;

    invoke-static {}, Lcom/miui/player/helper/AlbumManager;->access$000()Landroid/graphics/BitmapFactory$Options;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 126
    iget-object v1, p0, Lcom/miui/player/helper/AlbumManager$FileBitmapDecoder;->mPath:Ljava/lang/String;

    invoke-static {}, Lcom/miui/player/helper/AlbumManager;->access$000()Landroid/graphics/BitmapFactory$Options;

    move-result-object v2

    #calls: Lcom/miui/player/helper/AlbumManager;->getSampleOpt(Landroid/graphics/BitmapFactory$Options;II)Landroid/graphics/BitmapFactory$Options;
    invoke-static {v2, p1, p2}, Lcom/miui/player/helper/AlbumManager;->access$100(Landroid/graphics/BitmapFactory$Options;II)Landroid/graphics/BitmapFactory$Options;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 130
    :goto_0
    return-object v0

    .line 127
    :catch_0
    move-exception v1

    goto :goto_0
.end method
