.class Lcom/miui/player/ui/ScanningProgress$1;
.super Landroid/os/Handler;
.source "ScanningProgress.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/ui/ScanningProgress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/ui/ScanningProgress;


# direct methods
.method constructor <init>(Lcom/miui/player/ui/ScanningProgress;)V
    .locals 0
    .parameter

    .prologue
    .line 48
    iput-object p1, p0, Lcom/miui/player/ui/ScanningProgress$1;->this$0:Lcom/miui/player/ui/ScanningProgress;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    const/4 v2, 0x0

    .line 51
    iget-object v0, p0, Lcom/miui/player/ui/ScanningProgress$1;->this$0:Lcom/miui/player/ui/ScanningProgress;

    #getter for: Lcom/miui/player/ui/ScanningProgress;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/miui/player/ui/ScanningProgress;->access$000(Lcom/miui/player/ui/ScanningProgress;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 74
    :cond_0
    :goto_0
    return-void

    .line 55
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    .line 56
    invoke-static {}, Landroid/os/Environment;->isExternalStorageMounted()Z

    move-result v0

    if-nez v0, :cond_2

    .line 59
    iget-object v0, p0, Lcom/miui/player/ui/ScanningProgress$1;->this$0:Lcom/miui/player/ui/ScanningProgress;

    #getter for: Lcom/miui/player/ui/ScanningProgress;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/miui/player/ui/ScanningProgress;->access$100(Lcom/miui/player/ui/ScanningProgress;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    goto :goto_0

    .line 62
    :cond_2
    iget-object v0, p0, Lcom/miui/player/ui/ScanningProgress$1;->this$0:Lcom/miui/player/ui/ScanningProgress;

    #getter for: Lcom/miui/player/ui/ScanningProgress;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/miui/player/ui/ScanningProgress;->access$000(Lcom/miui/player/ui/ScanningProgress;)Landroid/app/Activity;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Audio$Albums;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-static/range {v0 .. v5}, Lcom/miui/player/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 64
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_3

    .line 67
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 68
    iget-object v0, p0, Lcom/miui/player/ui/ScanningProgress$1;->this$0:Lcom/miui/player/ui/ScanningProgress;

    #getter for: Lcom/miui/player/ui/ScanningProgress;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/miui/player/ui/ScanningProgress;->access$100(Lcom/miui/player/ui/ScanningProgress;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    goto :goto_0

    .line 71
    :cond_3
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/player/ui/ScanningProgress$1;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    .line 72
    .local v7, next:Landroid/os/Message;
    const-wide/16 v0, 0xbb8

    invoke-virtual {p0, v7, v0, v1}, Lcom/miui/player/ui/ScanningProgress$1;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method
