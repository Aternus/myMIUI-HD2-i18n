.class Lcom/miui/player/model/OnlineCategoryAdapter$SongPreviewWaiter;
.super Ljava/lang/Object;
.source "OnlineCategoryAdapter.java"

# interfaces
.implements Lcom/miui/player/helper/SongListCache$SongListWaiter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/model/OnlineCategoryAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SongPreviewWaiter"
.end annotation


# instance fields
.field private final mUrl:Ljava/lang/String;

.field private final mView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/miui/player/model/OnlineCategoryAdapter;


# direct methods
.method public constructor <init>(Lcom/miui/player/model/OnlineCategoryAdapter;Landroid/view/View;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter "view"
    .parameter "url"

    .prologue
    .line 134
    iput-object p1, p0, Lcom/miui/player/model/OnlineCategoryAdapter$SongPreviewWaiter;->this$0:Lcom/miui/player/model/OnlineCategoryAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/player/model/OnlineCategoryAdapter$SongPreviewWaiter;->mView:Ljava/lang/ref/WeakReference;

    .line 136
    iput-object p3, p0, Lcom/miui/player/model/OnlineCategoryAdapter$SongPreviewWaiter;->mUrl:Ljava/lang/String;

    .line 137
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 138
    const v0, 0x7f0c008a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 139
    return-void
.end method


# virtual methods
.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/miui/player/model/OnlineCategoryAdapter$SongPreviewWaiter;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public isCacheEnable()Z
    .locals 1

    .prologue
    .line 162
    const/4 v0, 0x1

    return v0
.end method

.method public onRequestCompleted(Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList;)V
    .locals 3
    .parameter "songList"

    .prologue
    .line 143
    iget-object v1, p0, Lcom/miui/player/model/OnlineCategoryAdapter$SongPreviewWaiter;->this$0:Lcom/miui/player/model/OnlineCategoryAdapter;

    #getter for: Lcom/miui/player/model/OnlineCategoryAdapter;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/miui/player/model/OnlineCategoryAdapter;->access$000(Lcom/miui/player/model/OnlineCategoryAdapter;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 153
    :cond_0
    :goto_0
    return-void

    .line 147
    :cond_1
    iget-object v1, p0, Lcom/miui/player/model/OnlineCategoryAdapter$SongPreviewWaiter;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 148
    .local v0, view:Landroid/view/View;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/miui/player/model/OnlineCategoryAdapter$SongPreviewWaiter;->mUrl:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 152
    iget-object v1, p0, Lcom/miui/player/model/OnlineCategoryAdapter$SongPreviewWaiter;->this$0:Lcom/miui/player/model/OnlineCategoryAdapter;

    #calls: Lcom/miui/player/model/OnlineCategoryAdapter;->setSongPreview(Landroid/view/View;Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList;)V
    invoke-static {v1, v0, p1}, Lcom/miui/player/model/OnlineCategoryAdapter;->access$100(Lcom/miui/player/model/OnlineCategoryAdapter;Landroid/view/View;Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList;)V

    goto :goto_0
.end method
