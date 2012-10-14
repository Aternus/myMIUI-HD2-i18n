.class public Lcom/miui/player/ui/OnlineMusicActivity;
.super Lcom/miui/player/ui/OnlineMusicBaseActivity;
.source "OnlineMusicActivity.java"


# instance fields
.field private mCategoryName:Ljava/lang/String;

.field private mOnlineDownloadIcon:Landroid/widget/ImageView;

.field private mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/miui/player/ui/OnlineMusicBaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected getCategoryName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/miui/player/ui/OnlineMusicActivity;->mCategoryName:Ljava/lang/String;

    return-object v0
.end method

.method protected getContentViewId()I
    .locals 1

    .prologue
    .line 50
    const v0, 0x7f030021

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/miui/player/ui/OnlineMusicActivity;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public isCacheEnable()Z
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x1

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "icicle"

    .prologue
    .line 25
    invoke-super {p0, p1}, Lcom/miui/player/ui/OnlineMusicBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 26
    const v0, 0x7f0c0059

    iget-object v1, p0, Lcom/miui/player/ui/OnlineMusicActivity;->mCategoryName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/miui/player/MusicUtils;->updateHeaderText(Landroid/app/Activity;ILjava/lang/CharSequence;I)V

    .line 27
    const v0, 0x7f0c0052

    invoke-virtual {p0, v0}, Lcom/miui/player/ui/OnlineMusicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/player/ui/OnlineMusicActivity;->mOnlineDownloadIcon:Landroid/widget/ImageView;

    .line 28
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outcicle"

    .prologue
    .line 44
    const-string v0, "category_name"

    iget-object v1, p0, Lcom/miui/player/ui/OnlineMusicActivity;->mCategoryName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    const-string v0, "list_url"

    iget-object v1, p0, Lcom/miui/player/ui/OnlineMusicActivity;->mUrl:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method public onScanReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 32
    invoke-static {}, Landroid/os/Environment;->isExternalStorageMounted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    iget-object v0, p0, Lcom/miui/player/ui/OnlineMusicActivity;->mOnlineDownloadIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 34
    iget-object v0, p0, Lcom/miui/player/ui/OnlineMusicActivity;->mOnlineDownloadIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/miui/player/ui/OnlineMusicBaseActivity;->mBatchDownloadClickListener:Lcom/miui/player/ui/OnlineMusicBaseActivity$BatchDownloadClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 39
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/miui/player/ui/OnlineMusicBaseActivity;->onScanReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 40
    return-void

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/miui/player/ui/OnlineMusicActivity;->mOnlineDownloadIcon:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 37
    iget-object v0, p0, Lcom/miui/player/ui/OnlineMusicActivity;->mOnlineDownloadIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method protected prepareForLoading(Landroid/os/Bundle;)V
    .locals 4
    .parameter "icicle"

    .prologue
    const-string v3, "list_url"

    const-string v2, "category_name"

    .line 70
    if-eqz p1, :cond_0

    .line 71
    const-string v0, "category_name"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/player/ui/OnlineMusicActivity;->mCategoryName:Ljava/lang/String;

    .line 72
    const-string v0, "list_url"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/player/ui/OnlineMusicActivity;->mUrl:Ljava/lang/String;

    .line 78
    :goto_0
    return-void

    .line 74
    :cond_0
    invoke-virtual {p0}, Lcom/miui/player/ui/OnlineMusicActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "category_name"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/player/ui/OnlineMusicActivity;->mCategoryName:Ljava/lang/String;

    .line 75
    invoke-virtual {p0}, Lcom/miui/player/ui/OnlineMusicActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "list_url"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/player/ui/OnlineMusicActivity;->mUrl:Ljava/lang/String;

    goto :goto_0
.end method
