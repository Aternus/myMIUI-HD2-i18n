.class Lcom/miui/player/ui/DeleteItems$1;
.super Ljava/lang/Object;
.source "DeleteItems.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/ui/DeleteItems;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/ui/DeleteItems;


# direct methods
.method constructor <init>(Lcom/miui/player/ui/DeleteItems;)V
    .locals 0
    .parameter

    .prologue
    .line 67
    iput-object p1, p0, Lcom/miui/player/ui/DeleteItems$1;->this$0:Lcom/miui/player/ui/DeleteItems;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 70
    const/4 v0, 0x0

    .line 71
    .local v0, confirm:Z
    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    .line 72
    const/4 v0, 0x1

    .line 74
    iget-object v1, p0, Lcom/miui/player/ui/DeleteItems$1;->this$0:Lcom/miui/player/ui/DeleteItems;

    #getter for: Lcom/miui/player/ui/DeleteItems;->mItemList:[J
    invoke-static {v1}, Lcom/miui/player/ui/DeleteItems;->access$000(Lcom/miui/player/ui/DeleteItems;)[J

    move-result-object v1

    if-eqz v1, :cond_0

    .line 75
    iget-object v1, p0, Lcom/miui/player/ui/DeleteItems$1;->this$0:Lcom/miui/player/ui/DeleteItems;

    #getter for: Lcom/miui/player/ui/DeleteItems;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/miui/player/ui/DeleteItems;->access$100(Lcom/miui/player/ui/DeleteItems;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/player/ui/DeleteItems$1;->this$0:Lcom/miui/player/ui/DeleteItems;

    #getter for: Lcom/miui/player/ui/DeleteItems;->mItemList:[J
    invoke-static {v2}, Lcom/miui/player/ui/DeleteItems;->access$000(Lcom/miui/player/ui/DeleteItems;)[J

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/player/MusicUtils;->deleteTracks(Landroid/content/Context;[J)V

    .line 78
    :cond_0
    iget-object v1, p0, Lcom/miui/player/ui/DeleteItems$1;->this$0:Lcom/miui/player/ui/DeleteItems;

    #getter for: Lcom/miui/player/ui/DeleteItems;->mPath:Ljava/lang/String;
    invoke-static {v1}, Lcom/miui/player/ui/DeleteItems;->access$200(Lcom/miui/player/ui/DeleteItems;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 79
    iget-object v1, p0, Lcom/miui/player/ui/DeleteItems$1;->this$0:Lcom/miui/player/ui/DeleteItems;

    #getter for: Lcom/miui/player/ui/DeleteItems;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/miui/player/ui/DeleteItems;->access$100(Lcom/miui/player/ui/DeleteItems;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/player/ui/DeleteItems$1;->this$0:Lcom/miui/player/ui/DeleteItems;

    #getter for: Lcom/miui/player/ui/DeleteItems;->mPath:Ljava/lang/String;
    invoke-static {v2}, Lcom/miui/player/ui/DeleteItems;->access$200(Lcom/miui/player/ui/DeleteItems;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/player/ui/DeleteItems$1;->this$0:Lcom/miui/player/ui/DeleteItems;

    #getter for: Lcom/miui/player/ui/DeleteItems;->mOnlineId:Ljava/lang/String;
    invoke-static {v3}, Lcom/miui/player/ui/DeleteItems;->access$300(Lcom/miui/player/ui/DeleteItems;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/miui/player/MusicUtils;->deleteTrackByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    :cond_1
    iget-object v1, p0, Lcom/miui/player/ui/DeleteItems$1;->this$0:Lcom/miui/player/ui/DeleteItems;

    #getter for: Lcom/miui/player/ui/DeleteItems;->mCallback:Lcom/miui/player/MusicUtils$OnDialogCallback;
    invoke-static {v1}, Lcom/miui/player/ui/DeleteItems;->access$400(Lcom/miui/player/ui/DeleteItems;)Lcom/miui/player/MusicUtils$OnDialogCallback;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 84
    iget-object v1, p0, Lcom/miui/player/ui/DeleteItems$1;->this$0:Lcom/miui/player/ui/DeleteItems;

    #getter for: Lcom/miui/player/ui/DeleteItems;->mCallback:Lcom/miui/player/MusicUtils$OnDialogCallback;
    invoke-static {v1}, Lcom/miui/player/ui/DeleteItems;->access$400(Lcom/miui/player/ui/DeleteItems;)Lcom/miui/player/MusicUtils$OnDialogCallback;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/player/ui/DeleteItems$1;->this$0:Lcom/miui/player/ui/DeleteItems;

    #getter for: Lcom/miui/player/ui/DeleteItems;->mRequestCode:I
    invoke-static {v2}, Lcom/miui/player/ui/DeleteItems;->access$500(Lcom/miui/player/ui/DeleteItems;)I

    move-result v2

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    invoke-interface {v1, v2, v0, v3}, Lcom/miui/player/MusicUtils$OnDialogCallback;->onDialogResult(IZLandroid/content/Intent;)V

    .line 86
    :cond_2
    return-void
.end method
