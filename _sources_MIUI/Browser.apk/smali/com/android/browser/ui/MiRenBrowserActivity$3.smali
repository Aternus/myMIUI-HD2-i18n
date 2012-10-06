.class Lcom/android/browser/ui/MiRenBrowserActivity$3;
.super Landroid/content/BroadcastReceiver;
.source "MiRenBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/ui/MiRenBrowserActivity;->initializeNetworkStateChangeFilter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/ui/MiRenBrowserActivity;


# direct methods
.method constructor <init>(Lcom/android/browser/ui/MiRenBrowserActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 517
    iput-object p1, p0, Lcom/android/browser/ui/MiRenBrowserActivity$3;->this$0:Lcom/android/browser/ui/MiRenBrowserActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 520
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 521
    const-string v3, "browser/BrowserActivity"

    const-string v4, "CONNECTIVITY_ACTION: onReceive"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    const-string v3, "networkInfo"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    .line 525
    .local v0, info:Landroid/net/NetworkInfo;
    if-nez v0, :cond_1

    .line 536
    .end local v0           #info:Landroid/net/NetworkInfo;
    :cond_0
    :goto_0
    return-void

    .line 527
    .restart local v0       #info:Landroid/net/NetworkInfo;
    :cond_1
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v2

    .line 528
    .local v2, typeName:Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 529
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v1

    .line 530
    .local v1, subtypeName:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/browser/ui/MiRenBrowserActivity$3;->this$0:Lcom/android/browser/ui/MiRenBrowserActivity;

    #getter for: Lcom/android/browser/ui/MiRenBrowserActivity;->mTabController:Lcom/android/browser/controller/TabController;
    invoke-static {v3}, Lcom/android/browser/ui/MiRenBrowserActivity;->access$000(Lcom/android/browser/ui/MiRenBrowserActivity;)Lcom/android/browser/controller/TabController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/browser/controller/TabController;->getCurrentTab()Lcom/android/browser/controller/Tab;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    :goto_1
    invoke-virtual {v3, v4, v5}, Lcom/android/browser/controller/Tab;->sendNetworkType(Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    .end local v1           #subtypeName:Ljava/lang/String;
    :cond_2
    iget-object v3, p0, Lcom/android/browser/ui/MiRenBrowserActivity$3;->this$0:Lcom/android/browser/ui/MiRenBrowserActivity;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/browser/ui/MiRenBrowserActivity;->onNetworkToggle(Z)V

    goto :goto_0

    .line 530
    .restart local v1       #subtypeName:Ljava/lang/String;
    :cond_3
    const-string v5, ""

    goto :goto_1
.end method
