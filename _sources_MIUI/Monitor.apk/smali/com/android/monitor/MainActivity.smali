.class public Lcom/android/monitor/MainActivity;
.super Landroid/app/TabActivity;
.source "MainActivity.java"


# instance fields
.field private mTabHost:Landroid/widget/TabHost;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Landroid/app/TabActivity;-><init>()V

    return-void
.end method

.method private createTabs()V
    .locals 4

    .prologue
    .line 18
    invoke-virtual {p0}, Lcom/android/monitor/MainActivity;->getTabHost()Landroid/widget/TabHost;

    move-result-object v0

    iput-object v0, p0, Lcom/android/monitor/MainActivity;->mTabHost:Landroid/widget/TabHost;

    .line 19
    iget-object v0, p0, Lcom/android/monitor/MainActivity;->mTabHost:Landroid/widget/TabHost;

    iget-object v1, p0, Lcom/android/monitor/MainActivity;->mTabHost:Landroid/widget/TabHost;

    const-string v2, "traffic_data"

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    const v2, 0x7f070017

    invoke-virtual {p0, v2}, Lcom/android/monitor/MainActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/android/monitor/Traffic;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 22
    iget-object v0, p0, Lcom/android/monitor/MainActivity;->mTabHost:Landroid/widget/TabHost;

    iget-object v1, p0, Lcom/android/monitor/MainActivity;->mTabHost:Landroid/widget/TabHost;

    const-string v2, "network_monitor"

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    const v2, 0x7f07002c

    invoke-virtual {p0, v2}, Lcom/android/monitor/MainActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/android/monitor/NetworkMonitor;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 25
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 12
    invoke-super {p0, p1}, Landroid/app/TabActivity;->onCreate(Landroid/os/Bundle;)V

    .line 13
    invoke-virtual {p0}, Lcom/android/monitor/MainActivity;->getTabHost()Landroid/widget/TabHost;

    move-result-object v0

    iput-object v0, p0, Lcom/android/monitor/MainActivity;->mTabHost:Landroid/widget/TabHost;

    .line 14
    invoke-direct {p0}, Lcom/android/monitor/MainActivity;->createTabs()V

    .line 15
    return-void
.end method
