.class Lcom/android/browser/controller/TabController$1;
.super Landroid/os/Handler;
.source "TabController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/controller/TabController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/controller/TabController;


# direct methods
.method constructor <init>(Lcom/android/browser/controller/TabController;)V
    .locals 0
    .parameter

    .prologue
    .line 84
    iput-object p1, p0, Lcom/android/browser/controller/TabController$1;->this$0:Lcom/android/browser/controller/TabController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 86
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 97
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 98
    :cond_1
    return-void

    .line 88
    :pswitch_0
    iget-object v0, p0, Lcom/android/browser/controller/TabController$1;->this$0:Lcom/android/browser/controller/TabController;

    #getter for: Lcom/android/browser/controller/TabController;->mContext:Lcom/android/browser/ui/MiRenBrowserActivity;
    invoke-static {v0}, Lcom/android/browser/controller/TabController;->access$000(Lcom/android/browser/controller/TabController;)Lcom/android/browser/ui/MiRenBrowserActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/ui/MiRenBrowserActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 90
    iget-object v0, p0, Lcom/android/browser/controller/TabController$1;->this$0:Lcom/android/browser/controller/TabController;

    #getter for: Lcom/android/browser/controller/TabController;->mCachedBufferTab:Lcom/android/browser/controller/Tab;
    invoke-static {v0}, Lcom/android/browser/controller/TabController;->access$100(Lcom/android/browser/controller/TabController;)Lcom/android/browser/controller/Tab;

    move-result-object v0

    if-nez v0, :cond_0

    .line 91
    const-string v0, "com.android.browser.controller.TabController"

    monitor-enter v0

    .line 92
    :try_start_0
    iget-object v1, p0, Lcom/android/browser/controller/TabController$1;->this$0:Lcom/android/browser/controller/TabController;

    #getter for: Lcom/android/browser/controller/TabController;->mCachedBufferTab:Lcom/android/browser/controller/Tab;
    invoke-static {v1}, Lcom/android/browser/controller/TabController;->access$100(Lcom/android/browser/controller/TabController;)Lcom/android/browser/controller/Tab;

    move-result-object v1

    if-nez v1, :cond_2

    .line 93
    iget-object v1, p0, Lcom/android/browser/controller/TabController$1;->this$0:Lcom/android/browser/controller/TabController;

    iget-object v2, p0, Lcom/android/browser/controller/TabController$1;->this$0:Lcom/android/browser/controller/TabController;

    #calls: Lcom/android/browser/controller/TabController;->createNewTab()Lcom/android/browser/controller/Tab;
    invoke-static {v2}, Lcom/android/browser/controller/TabController;->access$200(Lcom/android/browser/controller/TabController;)Lcom/android/browser/controller/Tab;

    move-result-object v2

    #setter for: Lcom/android/browser/controller/TabController;->mCachedBufferTab:Lcom/android/browser/controller/Tab;
    invoke-static {v1, v2}, Lcom/android/browser/controller/TabController;->access$102(Lcom/android/browser/controller/TabController;Lcom/android/browser/controller/Tab;)Lcom/android/browser/controller/Tab;

    .line 94
    :cond_2
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 86
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
