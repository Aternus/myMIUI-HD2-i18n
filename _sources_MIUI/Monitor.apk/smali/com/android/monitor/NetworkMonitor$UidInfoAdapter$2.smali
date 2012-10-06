.class Lcom/android/monitor/NetworkMonitor$UidInfoAdapter$2;
.super Ljava/lang/Object;
.source "NetworkMonitor.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/monitor/NetworkMonitor$UidInfoAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/monitor/NetworkMonitor$UidInfoAdapter;


# direct methods
.method constructor <init>(Lcom/android/monitor/NetworkMonitor$UidInfoAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 338
    iput-object p1, p0, Lcom/android/monitor/NetworkMonitor$UidInfoAdapter$2;->this$1:Lcom/android/monitor/NetworkMonitor$UidInfoAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 6
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x2

    .line 341
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/monitor/NetworkMonitor$UidInfo;

    .line 342
    .local v1, u:Lcom/android/monitor/NetworkMonitor$UidInfo;
    iput-boolean p2, v1, Lcom/android/monitor/NetworkMonitor$UidInfo;->mEnableWifi:Z

    .line 343
    iget-object v2, p0, Lcom/android/monitor/NetworkMonitor$UidInfoAdapter$2;->this$1:Lcom/android/monitor/NetworkMonitor$UidInfoAdapter;

    iget-object v2, v2, Lcom/android/monitor/NetworkMonitor$UidInfoAdapter;->this$0:Lcom/android/monitor/NetworkMonitor;

    invoke-static {v2}, Lcom/android/monitor/Firewall;->getWifiAccessMode(Landroid/content/Context;)I

    move-result v0

    .line 344
    .local v0, mode:I
    if-nez p2, :cond_0

    if-eq v0, v4, :cond_1

    :cond_0
    if-eqz p2, :cond_3

    if-nez v0, :cond_3

    .line 346
    :cond_1
    iget-object v2, p0, Lcom/android/monitor/NetworkMonitor$UidInfoAdapter$2;->this$1:Lcom/android/monitor/NetworkMonitor$UidInfoAdapter;

    iget-object v2, v2, Lcom/android/monitor/NetworkMonitor$UidInfoAdapter;->this$0:Lcom/android/monitor/NetworkMonitor;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/monitor/Firewall;->setWifiAccessMode(Landroid/content/Context;I)V

    .line 347
    iget-object v2, p0, Lcom/android/monitor/NetworkMonitor$UidInfoAdapter$2;->this$1:Lcom/android/monitor/NetworkMonitor$UidInfoAdapter;

    iget-object v2, v2, Lcom/android/monitor/NetworkMonitor$UidInfoAdapter;->this$0:Lcom/android/monitor/NetworkMonitor;

    #getter for: Lcom/android/monitor/NetworkMonitor;->mWifiAccess:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/android/monitor/NetworkMonitor;->access$1100(Lcom/android/monitor/NetworkMonitor;)Landroid/widget/ImageView;

    move-result-object v2

    const v3, 0x7f020024

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 357
    :cond_2
    :goto_0
    return-void

    .line 349
    :cond_3
    if-eqz p2, :cond_4

    iget-object v2, p0, Lcom/android/monitor/NetworkMonitor$UidInfoAdapter$2;->this$1:Lcom/android/monitor/NetworkMonitor$UidInfoAdapter;

    iget-object v2, v2, Lcom/android/monitor/NetworkMonitor$UidInfoAdapter;->this$0:Lcom/android/monitor/NetworkMonitor;

    #getter for: Lcom/android/monitor/NetworkMonitor;->mUidInfoAdapter:Lcom/android/monitor/NetworkMonitor$UidInfoAdapter;
    invoke-static {v2}, Lcom/android/monitor/NetworkMonitor;->access$900(Lcom/android/monitor/NetworkMonitor;)Lcom/android/monitor/NetworkMonitor$UidInfoAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/monitor/NetworkMonitor$UidInfoAdapter;->getWifiCheckedMode()I

    move-result v2

    if-ne v2, v4, :cond_4

    .line 350
    iget-object v2, p0, Lcom/android/monitor/NetworkMonitor$UidInfoAdapter$2;->this$1:Lcom/android/monitor/NetworkMonitor$UidInfoAdapter;

    iget-object v2, v2, Lcom/android/monitor/NetworkMonitor$UidInfoAdapter;->this$0:Lcom/android/monitor/NetworkMonitor;

    invoke-static {v2, v4}, Lcom/android/monitor/Firewall;->setWifiAccessMode(Landroid/content/Context;I)V

    .line 351
    iget-object v2, p0, Lcom/android/monitor/NetworkMonitor$UidInfoAdapter$2;->this$1:Lcom/android/monitor/NetworkMonitor$UidInfoAdapter;

    iget-object v2, v2, Lcom/android/monitor/NetworkMonitor$UidInfoAdapter;->this$0:Lcom/android/monitor/NetworkMonitor;

    #getter for: Lcom/android/monitor/NetworkMonitor;->mWifiAccess:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/android/monitor/NetworkMonitor;->access$1100(Lcom/android/monitor/NetworkMonitor;)Landroid/widget/ImageView;

    move-result-object v2

    iget-object v3, p0, Lcom/android/monitor/NetworkMonitor$UidInfoAdapter$2;->this$1:Lcom/android/monitor/NetworkMonitor$UidInfoAdapter;

    iget-object v3, v3, Lcom/android/monitor/NetworkMonitor$UidInfoAdapter;->this$0:Lcom/android/monitor/NetworkMonitor;

    #getter for: Lcom/android/monitor/NetworkMonitor;->mWifiImages:[I
    invoke-static {v3}, Lcom/android/monitor/NetworkMonitor;->access$1200(Lcom/android/monitor/NetworkMonitor;)[I

    move-result-object v3

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 352
    :cond_4
    if-nez p2, :cond_2

    iget-object v2, p0, Lcom/android/monitor/NetworkMonitor$UidInfoAdapter$2;->this$1:Lcom/android/monitor/NetworkMonitor$UidInfoAdapter;

    iget-object v2, v2, Lcom/android/monitor/NetworkMonitor$UidInfoAdapter;->this$0:Lcom/android/monitor/NetworkMonitor;

    #getter for: Lcom/android/monitor/NetworkMonitor;->mUidInfoAdapter:Lcom/android/monitor/NetworkMonitor$UidInfoAdapter;
    invoke-static {v2}, Lcom/android/monitor/NetworkMonitor;->access$900(Lcom/android/monitor/NetworkMonitor;)Lcom/android/monitor/NetworkMonitor$UidInfoAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/monitor/NetworkMonitor$UidInfoAdapter;->getWifiCheckedMode()I

    move-result v2

    if-nez v2, :cond_2

    .line 353
    iget-object v2, p0, Lcom/android/monitor/NetworkMonitor$UidInfoAdapter$2;->this$1:Lcom/android/monitor/NetworkMonitor$UidInfoAdapter;

    iget-object v2, v2, Lcom/android/monitor/NetworkMonitor$UidInfoAdapter;->this$0:Lcom/android/monitor/NetworkMonitor;

    invoke-static {v2, v5}, Lcom/android/monitor/Firewall;->setWifiAccessMode(Landroid/content/Context;I)V

    .line 354
    iget-object v2, p0, Lcom/android/monitor/NetworkMonitor$UidInfoAdapter$2;->this$1:Lcom/android/monitor/NetworkMonitor$UidInfoAdapter;

    iget-object v2, v2, Lcom/android/monitor/NetworkMonitor$UidInfoAdapter;->this$0:Lcom/android/monitor/NetworkMonitor;

    #getter for: Lcom/android/monitor/NetworkMonitor;->mWifiAccess:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/android/monitor/NetworkMonitor;->access$1100(Lcom/android/monitor/NetworkMonitor;)Landroid/widget/ImageView;

    move-result-object v2

    iget-object v3, p0, Lcom/android/monitor/NetworkMonitor$UidInfoAdapter$2;->this$1:Lcom/android/monitor/NetworkMonitor$UidInfoAdapter;

    iget-object v3, v3, Lcom/android/monitor/NetworkMonitor$UidInfoAdapter;->this$0:Lcom/android/monitor/NetworkMonitor;

    #getter for: Lcom/android/monitor/NetworkMonitor;->mWifiImages:[I
    invoke-static {v3}, Lcom/android/monitor/NetworkMonitor;->access$1200(Lcom/android/monitor/NetworkMonitor;)[I

    move-result-object v3

    aget v3, v3, v5

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method
