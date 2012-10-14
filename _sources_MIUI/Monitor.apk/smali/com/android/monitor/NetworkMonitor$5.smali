.class Lcom/android/monitor/NetworkMonitor$5;
.super Ljava/lang/Object;
.source "NetworkMonitor.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/monitor/NetworkMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/monitor/NetworkMonitor;


# direct methods
.method constructor <init>(Lcom/android/monitor/NetworkMonitor;)V
    .locals 0
    .parameter

    .prologue
    .line 728
    iput-object p1, p0, Lcom/android/monitor/NetworkMonitor$5;->this$0:Lcom/android/monitor/NetworkMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 731
    iget-object v1, p0, Lcom/android/monitor/NetworkMonitor$5;->this$0:Lcom/android/monitor/NetworkMonitor;

    invoke-static {v1}, Lcom/android/monitor/Firewall;->getMobileAccessMode(Landroid/content/Context;)I

    move-result v0

    .line 732
    .local v0, mode:I
    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    if-nez v0, :cond_1

    .line 733
    :cond_0
    const/4 v0, 0x2

    .line 737
    :goto_0
    iget-object v1, p0, Lcom/android/monitor/NetworkMonitor$5;->this$0:Lcom/android/monitor/NetworkMonitor;

    #getter for: Lcom/android/monitor/NetworkMonitor;->mMobileAccess:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/monitor/NetworkMonitor;->access$800(Lcom/android/monitor/NetworkMonitor;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/monitor/NetworkMonitor$5;->this$0:Lcom/android/monitor/NetworkMonitor;

    #getter for: Lcom/android/monitor/NetworkMonitor;->mMobileImages:[I
    invoke-static {v2}, Lcom/android/monitor/NetworkMonitor;->access$1000(Lcom/android/monitor/NetworkMonitor;)[I

    move-result-object v2

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 738
    iget-object v1, p0, Lcom/android/monitor/NetworkMonitor$5;->this$0:Lcom/android/monitor/NetworkMonitor;

    #getter for: Lcom/android/monitor/NetworkMonitor;->mUidInfoAdapter:Lcom/android/monitor/NetworkMonitor$UidInfoAdapter;
    invoke-static {v1}, Lcom/android/monitor/NetworkMonitor;->access$900(Lcom/android/monitor/NetworkMonitor;)Lcom/android/monitor/NetworkMonitor$UidInfoAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/monitor/NetworkMonitor$UidInfoAdapter;->enableMobile(I)V

    .line 739
    iget-object v1, p0, Lcom/android/monitor/NetworkMonitor$5;->this$0:Lcom/android/monitor/NetworkMonitor;

    invoke-static {v1, v0}, Lcom/android/monitor/Firewall;->setMobileAccessMode(Landroid/content/Context;I)V

    .line 740
    return-void

    .line 735
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
