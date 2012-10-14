.class Lcom/miui/player/model/AlbumBrowserAdapter$AlbumDrawableWorker;
.super Ljava/lang/Object;
.source "AlbumBrowserAdapter.java"

# interfaces
.implements Lcom/miui/player/helper/DrawableProvider$DrawableWorker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/model/AlbumBrowserAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AlbumDrawableWorker"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/miui/player/helper/DrawableProvider$DrawableWorker",
        "<",
        "Lcom/miui/player/model/AlbumBrowserAdapter$AlbumDrawableInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/model/AlbumBrowserAdapter;


# direct methods
.method public constructor <init>(Lcom/miui/player/model/AlbumBrowserAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 213
    iput-object p1, p0, Lcom/miui/player/model/AlbumBrowserAdapter$AlbumDrawableWorker;->this$0:Lcom/miui/player/model/AlbumBrowserAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 214
    return-void
.end method


# virtual methods
.method public asKey(Lcom/miui/player/model/AlbumBrowserAdapter$AlbumDrawableInfo;)Ljava/lang/String;
    .locals 3
    .parameter "key"

    .prologue
    .line 218
    iget-object v0, p1, Lcom/miui/player/model/AlbumBrowserAdapter$AlbumDrawableInfo;->mDrawableAlbumName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/miui/player/model/AlbumBrowserAdapter$AlbumDrawableInfo;->mDrawableArtistName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 220
    const/4 v0, 0x0

    .line 223
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p1, Lcom/miui/player/model/AlbumBrowserAdapter$AlbumDrawableInfo;->mDrawableAlbumName:Ljava/lang/String;

    iget-object v1, p1, Lcom/miui/player/model/AlbumBrowserAdapter$AlbumDrawableInfo;->mDrawableArtistName:Ljava/lang/String;

    const-string v2, "music/album"

    invoke-static {v0, v1, v2}, Lcom/miui/player/helper/MusicMetaManager;->getFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic asKey(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 211
    check-cast p1, Lcom/miui/player/model/AlbumBrowserAdapter$AlbumDrawableInfo;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/miui/player/model/AlbumBrowserAdapter$AlbumDrawableWorker;->asKey(Lcom/miui/player/model/AlbumBrowserAdapter$AlbumDrawableInfo;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDrawable(Lcom/miui/player/model/AlbumBrowserAdapter$AlbumDrawableInfo;Z)Landroid/graphics/drawable/Drawable;
    .locals 8
    .parameter "key"
    .parameter "fromFile"

    .prologue
    .line 230
    iget-object v0, p0, Lcom/miui/player/model/AlbumBrowserAdapter$AlbumDrawableWorker;->this$0:Lcom/miui/player/model/AlbumBrowserAdapter;

    #getter for: Lcom/miui/player/model/AlbumBrowserAdapter;->mBrowserSource:Lcom/miui/player/model/BrowserSource;
    invoke-static {v0}, Lcom/miui/player/model/AlbumBrowserAdapter;->access$000(Lcom/miui/player/model/AlbumBrowserAdapter;)Lcom/miui/player/model/BrowserSource;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/player/model/BrowserSource;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-wide v1, p1, Lcom/miui/player/model/AlbumBrowserAdapter$AlbumDrawableInfo;->mDrawableAlbumId:J

    iget-object v3, p1, Lcom/miui/player/model/AlbumBrowserAdapter$AlbumDrawableInfo;->mDrawableAlbumName:Ljava/lang/String;

    iget-object v4, p1, Lcom/miui/player/model/AlbumBrowserAdapter$AlbumDrawableInfo;->mDrawableArtistName:Ljava/lang/String;

    iget-object v5, p0, Lcom/miui/player/model/AlbumBrowserAdapter$AlbumDrawableWorker;->this$0:Lcom/miui/player/model/AlbumBrowserAdapter;

    #getter for: Lcom/miui/player/model/AlbumBrowserAdapter;->mAlbumWidth:I
    invoke-static {v5}, Lcom/miui/player/model/AlbumBrowserAdapter;->access$100(Lcom/miui/player/model/AlbumBrowserAdapter;)I

    move-result v5

    iget-object v6, p0, Lcom/miui/player/model/AlbumBrowserAdapter$AlbumDrawableWorker;->this$0:Lcom/miui/player/model/AlbumBrowserAdapter;

    #getter for: Lcom/miui/player/model/AlbumBrowserAdapter;->mAlbumHeight:I
    invoke-static {v6}, Lcom/miui/player/model/AlbumBrowserAdapter;->access$200(Lcom/miui/player/model/AlbumBrowserAdapter;)I

    move-result v6

    move v7, p2

    invoke-static/range {v0 .. v7}, Lcom/miui/player/helper/AlbumManager;->getCachedArtwork(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;IIZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDrawable(Ljava/lang/Object;Z)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 211
    check-cast p1, Lcom/miui/player/model/AlbumBrowserAdapter$AlbumDrawableInfo;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lcom/miui/player/model/AlbumBrowserAdapter$AlbumDrawableWorker;->getDrawable(Lcom/miui/player/model/AlbumBrowserAdapter$AlbumDrawableInfo;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public needFindFromDB(Lcom/miui/player/model/AlbumBrowserAdapter$AlbumDrawableInfo;)Z
    .locals 2
    .parameter "key"

    .prologue
    .line 247
    iget-object v1, p0, Lcom/miui/player/model/AlbumBrowserAdapter$AlbumDrawableWorker;->this$0:Lcom/miui/player/model/AlbumBrowserAdapter;

    #getter for: Lcom/miui/player/model/AlbumBrowserAdapter;->mBrowserSource:Lcom/miui/player/model/BrowserSource;
    invoke-static {v1}, Lcom/miui/player/model/AlbumBrowserAdapter;->access$000(Lcom/miui/player/model/AlbumBrowserAdapter;)Lcom/miui/player/model/BrowserSource;

    move-result-object v1

    invoke-interface {v1}, Lcom/miui/player/model/BrowserSource;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 248
    .local v0, context:Landroid/content/Context;
    const-string v1, "android_album"

    invoke-static {v0, v1}, Lcom/miui/player/ui/PreferencesActivity;->getPrefAsBoolean(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/miui/player/model/AlbumBrowserAdapter$AlbumDrawableInfo;->mDrawableAlbumArt:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public bridge synthetic needFindFromDB(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 211
    check-cast p1, Lcom/miui/player/model/AlbumBrowserAdapter$AlbumDrawableInfo;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/miui/player/model/AlbumBrowserAdapter$AlbumDrawableWorker;->needFindFromDB(Lcom/miui/player/model/AlbumBrowserAdapter$AlbumDrawableInfo;)Z

    move-result v0

    return v0
.end method

.method public needFindFromFile(Lcom/miui/player/model/AlbumBrowserAdapter$AlbumDrawableInfo;)Z
    .locals 7
    .parameter "key"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 237
    iget-object v0, p1, Lcom/miui/player/model/AlbumBrowserAdapter$AlbumDrawableInfo;->mDrawableAlbumName:Ljava/lang/String;

    .line 238
    .local v0, albumName:Ljava/lang/String;
    iget-object v1, p1, Lcom/miui/player/model/AlbumBrowserAdapter$AlbumDrawableInfo;->mDrawableArtistName:Ljava/lang/String;

    .line 239
    .local v1, artistName:Ljava/lang/String;
    invoke-static {v0}, Lcom/miui/player/helper/MediaInfo;->isUnknowName(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    move v2, v6

    .line 240
    .local v2, isValidAlbum:Z
    :goto_0
    invoke-static {v1}, Lcom/miui/player/helper/MediaInfo;->isUnknowName(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    move v3, v6

    .line 242
    .local v3, isValidArtist:Z
    :goto_1
    if-nez v2, :cond_0

    if-eqz v3, :cond_3

    :cond_0
    move v4, v6

    :goto_2
    return v4

    .end local v2           #isValidAlbum:Z
    .end local v3           #isValidArtist:Z
    :cond_1
    move v2, v5

    .line 239
    goto :goto_0

    .restart local v2       #isValidAlbum:Z
    :cond_2
    move v3, v5

    .line 240
    goto :goto_1

    .restart local v3       #isValidArtist:Z
    :cond_3
    move v4, v5

    .line 242
    goto :goto_2
.end method

.method public bridge synthetic needFindFromFile(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 211
    check-cast p1, Lcom/miui/player/model/AlbumBrowserAdapter$AlbumDrawableInfo;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/miui/player/model/AlbumBrowserAdapter$AlbumDrawableWorker;->needFindFromFile(Lcom/miui/player/model/AlbumBrowserAdapter$AlbumDrawableInfo;)Z

    move-result v0

    return v0
.end method
