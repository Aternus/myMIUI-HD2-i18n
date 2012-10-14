.class Lcom/android/gallery/ui/TabFolderTreeActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "TabFolderTreeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery/ui/TabFolderTreeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery/ui/TabFolderTreeActivity;


# direct methods
.method constructor <init>(Lcom/android/gallery/ui/TabFolderTreeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 83
    iput-object p1, p0, Lcom/android/gallery/ui/TabFolderTreeActivity$1;->this$0:Lcom/android/gallery/ui/TabFolderTreeActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 86
    const-string v1, "FileViewActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "received broadcast:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 88
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 90
    :cond_0
    iget-object v1, p0, Lcom/android/gallery/ui/TabFolderTreeActivity$1;->this$0:Lcom/android/gallery/ui/TabFolderTreeActivity;

    #calls: Lcom/android/gallery/ui/TabFolderTreeActivity;->updateUI()V
    invoke-static {v1}, Lcom/android/gallery/ui/TabFolderTreeActivity;->access$000(Lcom/android/gallery/ui/TabFolderTreeActivity;)V

    .line 92
    :cond_1
    return-void
.end method
