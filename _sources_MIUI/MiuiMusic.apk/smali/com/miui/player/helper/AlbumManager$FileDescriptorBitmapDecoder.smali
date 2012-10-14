.class public Lcom/miui/player/helper/AlbumManager$FileDescriptorBitmapDecoder;
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
    name = "FileDescriptorBitmapDecoder"
.end annotation


# instance fields
.field private final mFd:Ljava/io/FileDescriptor;


# direct methods
.method public constructor <init>(Ljava/io/FileDescriptor;)V
    .locals 0
    .parameter "fd"

    .prologue
    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    iput-object p1, p0, Lcom/miui/player/helper/AlbumManager$FileDescriptorBitmapDecoder;->mFd:Ljava/io/FileDescriptor;

    .line 140
    return-void
.end method


# virtual methods
.method public decode(II)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "w"
    .parameter "h"

    .prologue
    .line 144
    const/4 v0, 0x0

    .line 146
    .local v0, bm:Landroid/graphics/Bitmap;
    :try_start_0
    invoke-static {}, Lcom/miui/player/helper/AlbumManager;->access$000()Landroid/graphics/BitmapFactory$Options;

    move-result-object v1

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 147
    iget-object v1, p0, Lcom/miui/player/helper/AlbumManager$FileDescriptorBitmapDecoder;->mFd:Ljava/io/FileDescriptor;

    const/4 v2, 0x0

    invoke-static {}, Lcom/miui/player/helper/AlbumManager;->access$000()Landroid/graphics/BitmapFactory$Options;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 148
    iget-object v1, p0, Lcom/miui/player/helper/AlbumManager$FileDescriptorBitmapDecoder;->mFd:Ljava/io/FileDescriptor;

    const/4 v2, 0x0

    invoke-static {}, Lcom/miui/player/helper/AlbumManager;->access$000()Landroid/graphics/BitmapFactory$Options;

    move-result-object v3

    #calls: Lcom/miui/player/helper/AlbumManager;->getSampleOpt(Landroid/graphics/BitmapFactory$Options;II)Landroid/graphics/BitmapFactory$Options;
    invoke-static {v3, p1, p2}, Lcom/miui/player/helper/AlbumManager;->access$100(Landroid/graphics/BitmapFactory$Options;II)Landroid/graphics/BitmapFactory$Options;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 152
    :goto_0
    return-object v0

    .line 149
    :catch_0
    move-exception v1

    goto :goto_0
.end method
