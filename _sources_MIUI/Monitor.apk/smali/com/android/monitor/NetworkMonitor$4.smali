.class Lcom/android/monitor/NetworkMonitor$4;
.super Ljava/lang/Object;
.source "NetworkMonitor.java"

# interfaces
.implements Landroid/widget/SlidingButton$OnCheckedChangedListener;


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
    .line 709
    iput-object p1, p0, Lcom/android/monitor/NetworkMonitor$4;->this$0:Lcom/android/monitor/NetworkMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Z)V
    .locals 4
    .parameter "isChecked"

    .prologue
    .line 713
    move v0, p1

    .line 714
    .local v0, enabled:Z
    iget-object v1, p0, Lcom/android/monitor/NetworkMonitor$4;->this$0:Lcom/android/monitor/NetworkMonitor;

    invoke-static {v1, v0}, Lcom/android/monitor/Firewall;->setEnabled(Landroid/content/Context;Z)V

    .line 715
    if-eqz v0, :cond_0

    .line 716
    iget-object v1, p0, Lcom/android/monitor/NetworkMonitor$4;->this$0:Lcom/android/monitor/NetworkMonitor;

    #getter for: Lcom/android/monitor/NetworkMonitor;->mMobileAccess:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/monitor/NetworkMonitor;->access$800(Lcom/android/monitor/NetworkMonitor;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/monitor/NetworkMonitor$4;->this$0:Lcom/android/monitor/NetworkMonitor;

    #getter for: Lcom/android/monitor/NetworkMonitor;->mMobileImages:[I
    invoke-static {v2}, Lcom/android/monitor/NetworkMonitor;->access$1000(Lcom/android/monitor/NetworkMonitor;)[I

    move-result-object v2

    iget-object v3, p0, Lcom/android/monitor/NetworkMonitor$4;->this$0:Lcom/android/monitor/NetworkMonitor;

    invoke-static {v3}, Lcom/android/monitor/Firewall;->getMobileAccessMode(Landroid/content/Context;)I

    move-result v3

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 717
    iget-object v1, p0, Lcom/android/monitor/NetworkMonitor$4;->this$0:Lcom/android/monitor/NetworkMonitor;

    #getter for: Lcom/android/monitor/NetworkMonitor;->mWifiAccess:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/monitor/NetworkMonitor;->access$1100(Lcom/android/monitor/NetworkMonitor;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/monitor/NetworkMonitor$4;->this$0:Lcom/android/monitor/NetworkMonitor;

    #getter for: Lcom/android/monitor/NetworkMonitor;->mWifiImages:[I
    invoke-static {v2}, Lcom/android/monitor/NetworkMonitor;->access$1200(Lcom/android/monitor/NetworkMonitor;)[I

    move-result-object v2

    iget-object v3, p0, Lcom/android/monitor/NetworkMonitor$4;->this$0:Lcom/android/monitor/NetworkMonitor;

    invoke-static {v3}, Lcom/android/monitor/Firewall;->getWifiAccessMode(Landroid/content/Context;)I

    move-result v3

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 722
    :goto_0
    iget-object v1, p0, Lcom/android/monitor/NetworkMonitor$4;->this$0:Lcom/android/monitor/NetworkMonitor;

    #getter for: Lcom/android/monitor/NetworkMonitor;->mMobileAccess:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/monitor/NetworkMonitor;->access$800(Lcom/android/monitor/NetworkMonitor;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 723
    iget-object v1, p0, Lcom/android/monitor/NetworkMonitor$4;->this$0:Lcom/android/monitor/NetworkMonitor;

    #getter for: Lcom/android/monitor/NetworkMonitor;->mWifiAccess:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/monitor/NetworkMonitor;->access$1100(Lcom/android/monitor/NetworkMonitor;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 724
    iget-object v1, p0, Lcom/android/monitor/NetworkMonitor$4;->this$0:Lcom/android/monitor/NetworkMonitor;

    #getter for: Lcom/android/monitor/NetworkMonitor;->mUidInfoAdapter:Lcom/android/monitor/NetworkMonitor$UidInfoAdapter;
    invoke-static {v1}, Lcom/android/monitor/NetworkMonitor;->access$900(Lcom/android/monitor/NetworkMonitor;)Lcom/android/monitor/NetworkMonitor$UidInfoAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/monitor/NetworkMonitor$UidInfoAdapter;->notifyDataSetChanged()V

    .line 725
    return-void

    .line 719
    :cond_0
    iget-object v1, p0, Lcom/android/monitor/NetworkMonitor$4;->this$0:Lcom/android/monitor/NetworkMonitor;

    #getter for: Lcom/android/monitor/NetworkMonitor;->mMobileAccess:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/monitor/NetworkMonitor;->access$800(Lcom/android/monitor/NetworkMonitor;)Landroid/widget/ImageView;

    move-result-object v1

    const v2, 0x7f020005

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 720
    iget-object v1, p0, Lcom/android/monitor/NetworkMonitor$4;->this$0:Lcom/android/monitor/NetworkMonitor;

    #getter for: Lcom/android/monitor/NetworkMonitor;->mWifiAccess:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/monitor/NetworkMonitor;->access$1100(Lcom/android/monitor/NetworkMonitor;)Landroid/widget/ImageView;

    move-result-object v1

    const v2, 0x7f020024

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method
