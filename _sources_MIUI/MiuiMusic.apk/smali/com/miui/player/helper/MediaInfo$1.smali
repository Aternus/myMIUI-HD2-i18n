.class final Lcom/miui/player/helper/MediaInfo$1;
.super Landroid/os/AsyncTask;
.source "MediaInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/player/helper/MediaInfo;->batchCorretID3Async(Landroid/content/Context;[Lcom/miui/player/helper/MediaInfo$MediaEditInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Landroid/net/Uri;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$editInfo:[Lcom/miui/player/helper/MediaInfo$MediaEditInfo;


# direct methods
.method constructor <init>([Lcom/miui/player/helper/MediaInfo$MediaEditInfo;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 101
    iput-object p1, p0, Lcom/miui/player/helper/MediaInfo$1;->val$editInfo:[Lcom/miui/player/helper/MediaInfo$MediaEditInfo;

    iput-object p2, p0, Lcom/miui/player/helper/MediaInfo$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/miui/player/helper/MediaInfo$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 6
    .parameter "params"

    .prologue
    .line 105
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v3, p0, Lcom/miui/player/helper/MediaInfo$1;->val$editInfo:[Lcom/miui/player/helper/MediaInfo$MediaEditInfo;

    array-length v3, v3

    if-ge v1, v3, :cond_1

    .line 106
    iget-object v3, p0, Lcom/miui/player/helper/MediaInfo$1;->val$editInfo:[Lcom/miui/player/helper/MediaInfo$MediaEditInfo;

    aget-object v2, v3, v1

    .line 107
    .local v2, info:Lcom/miui/player/helper/MediaInfo$MediaEditInfo;
    new-instance v0, Ljava/io/File;

    iget-object v3, v2, Lcom/miui/player/helper/MediaInfo$MediaEditInfo;->mPath:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 108
    .local v0, f:Ljava/io/File;
    iget-object v3, v2, Lcom/miui/player/helper/MediaInfo$MediaEditInfo;->mNewTitle:Ljava/lang/String;

    iget-object v4, v2, Lcom/miui/player/helper/MediaInfo$MediaEditInfo;->mNewArtist:Ljava/lang/String;

    iget-object v5, v2, Lcom/miui/player/helper/MediaInfo$MediaEditInfo;->mNewAlbum:Ljava/lang/String;

    invoke-static {v0, v3, v4, v5}, Lcom/miui/player/helper/MediaInfo;->doCorrect(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 109
    invoke-static {v0}, Lcom/miui/player/helper/MediaInfo;->getMIMEType(Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 110
    const/4 v3, 0x1

    new-array v3, v3, [Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, v3}, Lcom/miui/player/helper/MediaInfo$1;->publishProgress([Ljava/lang/Object;)V

    .line 105
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 113
    .end local v0           #f:Ljava/io/File;
    .end local v2           #info:Lcom/miui/player/helper/MediaInfo$MediaEditInfo;
    :cond_1
    const/4 v3, 0x0

    return-object v3
.end method

.method protected varargs onProgressUpdate([Landroid/net/Uri;)V
    .locals 3
    .parameter "uris"

    .prologue
    .line 118
    if-eqz p1, :cond_0

    array-length v1, p1

    if-lez v1, :cond_0

    .line 119
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 120
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/miui/player/helper/MediaInfo$1;->val$context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 122
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 101
    check-cast p1, [Landroid/net/Uri;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/miui/player/helper/MediaInfo$1;->onProgressUpdate([Landroid/net/Uri;)V

    return-void
.end method
