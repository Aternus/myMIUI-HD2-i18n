.class public Lcom/miui/player/ui/OnlineMusicSearchActivity;
.super Lcom/miui/player/ui/OnlineMusicBaseActivity;
.source "OnlineMusicSearchActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/player/ui/OnlineMusicSearchActivity$1;,
        Lcom/miui/player/ui/OnlineMusicSearchActivity$SearchHistoryListVisibleChanged;,
        Lcom/miui/player/ui/OnlineMusicSearchActivity$SearchCommond;
    }
.end annotation


# instance fields
.field private mDownloadTextView:Landroid/widget/TextView;

.field private mHeaderView:Landroid/view/View;

.field private mSearchBarController:Lcom/miui/player/helper/controller/SearchBarController;

.field private mSearchKey:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/miui/player/ui/OnlineMusicBaseActivity;-><init>()V

    .line 125
    return-void
.end method

.method static synthetic access$202(Lcom/miui/player/ui/OnlineMusicSearchActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18
    iput-object p1, p0, Lcom/miui/player/ui/OnlineMusicSearchActivity;->mSearchKey:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/miui/player/ui/OnlineMusicSearchActivity;)Lcom/miui/player/helper/controller/SearchBarController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/miui/player/ui/OnlineMusicSearchActivity;->mSearchBarController:Lcom/miui/player/helper/controller/SearchBarController;

    return-object v0
.end method

.method static synthetic access$400(Lcom/miui/player/ui/OnlineMusicSearchActivity;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/miui/player/ui/OnlineMusicBaseActivity;->mList:Landroid/widget/ListView;

    return-object v0
.end method


# virtual methods
.method public getCategoryName()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x22

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/player/ui/OnlineMusicSearchActivity;->mSearchKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getContentViewId()I
    .locals 1

    .prologue
    .line 62
    const v0, 0x7f030022

    return v0
.end method

.method public getResultView()Landroid/view/View;
    .locals 4

    .prologue
    .line 27
    iget-object v0, p0, Lcom/miui/player/ui/OnlineMusicSearchActivity;->mHeaderView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 28
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03002a

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/player/ui/OnlineMusicSearchActivity;->mHeaderView:Landroid/view/View;

    .line 32
    :cond_0
    invoke-virtual {p0}, Lcom/miui/player/ui/OnlineMusicSearchActivity;->updateHeaderView()V

    .line 33
    iget-object v0, p0, Lcom/miui/player/ui/OnlineMusicSearchActivity;->mHeaderView:Landroid/view/View;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 3

    .prologue
    .line 97
    invoke-virtual {p0}, Lcom/miui/player/ui/OnlineMusicSearchActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/player/ui/OnlineMusicSearchActivity;->mSearchKey:Ljava/lang/String;

    const-string v2, "baidu"

    invoke-static {v0, v1, v2}, Lcom/miui/player/helper/OnlineMusicProxy;->getSearchSongUrl(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isCacheEnable()Z
    .locals 1

    .prologue
    .line 102
    const/4 v0, 0x0

    return v0
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 147
    iget-object v0, p0, Lcom/miui/player/ui/OnlineMusicSearchActivity;->mSearchBarController:Lcom/miui/player/helper/controller/SearchBarController;

    invoke-virtual {v0}, Lcom/miui/player/helper/controller/SearchBarController;->isHistoryVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/miui/player/ui/OnlineMusicSearchActivity;->mSearchBarController:Lcom/miui/player/helper/controller/SearchBarController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/player/helper/controller/SearchBarController;->showHistoryList(Z)V

    .line 152
    :goto_0
    return-void

    .line 150
    :cond_0
    invoke-super {p0}, Lcom/miui/player/ui/OnlineMusicBaseActivity;->onBackPressed()V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outcicle"

    .prologue
    .line 57
    const-string v0, "search_key"

    iget-object v1, p0, Lcom/miui/player/ui/OnlineMusicSearchActivity;->mSearchKey:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    return-void
.end method

.method public onScanReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 67
    invoke-static {}, Landroid/os/Environment;->isExternalStorageMounted()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/player/ui/OnlineMusicBaseActivity;->mAdapter:Lcom/miui/player/model/OnlineMusicAdapter;

    invoke-virtual {v0}, Lcom/miui/player/model/OnlineMusicAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/miui/player/ui/OnlineMusicSearchActivity;->mDownloadTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 69
    iget-object v0, p0, Lcom/miui/player/ui/OnlineMusicSearchActivity;->mDownloadTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/player/ui/OnlineMusicBaseActivity;->mBatchDownloadClickListener:Lcom/miui/player/ui/OnlineMusicBaseActivity$BatchDownloadClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/miui/player/ui/OnlineMusicBaseActivity;->onScanReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 75
    return-void

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/miui/player/ui/OnlineMusicSearchActivity;->mDownloadTextView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 72
    iget-object v0, p0, Lcom/miui/player/ui/OnlineMusicSearchActivity;->mDownloadTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method protected prepareForLoading(Landroid/os/Bundle;)V
    .locals 7
    .parameter "icicle"

    .prologue
    const/4 v5, 0x0

    const-string v2, "search_key"

    .line 79
    if-eqz p1, :cond_0

    .line 80
    const-string v0, "search_key"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/player/ui/OnlineMusicSearchActivity;->mSearchKey:Ljava/lang/String;

    .line 85
    :goto_0
    iget-object v0, p0, Lcom/miui/player/ui/OnlineMusicBaseActivity;->mOnlineStatusBarController:Lcom/miui/player/helper/controller/OnlineStatusBarController;

    const v1, 0x7f080087

    const v2, 0x7f080088

    invoke-virtual {v0, v1, v2}, Lcom/miui/player/helper/controller/OnlineStatusBarController;->setLoadingHintTextId(II)V

    .line 88
    new-instance v0, Lcom/miui/player/helper/controller/SearchBarController;

    const-string v2, "miui_preference_music_search_histroy"

    new-instance v3, Lcom/miui/player/ui/OnlineMusicSearchActivity$SearchCommond;

    invoke-direct {v3, p0, v5}, Lcom/miui/player/ui/OnlineMusicSearchActivity$SearchCommond;-><init>(Lcom/miui/player/ui/OnlineMusicSearchActivity;Lcom/miui/player/ui/OnlineMusicSearchActivity$1;)V

    new-instance v4, Lcom/miui/player/ui/OnlineMusicSearchActivity$SearchHistoryListVisibleChanged;

    invoke-direct {v4, p0, v5}, Lcom/miui/player/ui/OnlineMusicSearchActivity$SearchHistoryListVisibleChanged;-><init>(Lcom/miui/player/ui/OnlineMusicSearchActivity;Lcom/miui/player/ui/OnlineMusicSearchActivity$1;)V

    iget-object v5, p0, Lcom/miui/player/ui/OnlineMusicSearchActivity;->mSearchKey:Ljava/lang/String;

    const v6, 0x7f02002d

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/miui/player/helper/controller/SearchBarController;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/miui/player/helper/controller/SearchBarController$Command;Lcom/miui/player/helper/controller/SearchBarController$OnHistoryListVisibleChangedListener;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/miui/player/ui/OnlineMusicSearchActivity;->mSearchBarController:Lcom/miui/player/helper/controller/SearchBarController;

    .line 92
    iget-object v0, p0, Lcom/miui/player/ui/OnlineMusicSearchActivity;->mSearchBarController:Lcom/miui/player/helper/controller/SearchBarController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/player/helper/controller/SearchBarController;->showHistoryList(Z)V

    .line 93
    return-void

    .line 82
    :cond_0
    invoke-virtual {p0}, Lcom/miui/player/ui/OnlineMusicSearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "search_key"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/player/ui/OnlineMusicSearchActivity;->mSearchKey:Ljava/lang/String;

    goto :goto_0
.end method

.method public updateHeaderView()V
    .locals 7

    .prologue
    .line 38
    iget-object v3, p0, Lcom/miui/player/ui/OnlineMusicSearchActivity;->mHeaderView:Landroid/view/View;

    if-nez v3, :cond_0

    .line 53
    :goto_0
    return-void

    .line 41
    :cond_0
    iget-object v3, p0, Lcom/miui/player/ui/OnlineMusicSearchActivity;->mHeaderView:Landroid/view/View;

    const v4, 0x7f0c009f

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 42
    .local v2, reportTextView:Landroid/widget/TextView;
    iget-object v3, p0, Lcom/miui/player/ui/OnlineMusicSearchActivity;->mHeaderView:Landroid/view/View;

    const v4, 0x7f0c00a0

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/miui/player/ui/OnlineMusicSearchActivity;->mDownloadTextView:Landroid/widget/TextView;

    .line 43
    const/4 v1, 0x0

    .line 44
    .local v1, report:Ljava/lang/String;
    iget-object v3, p0, Lcom/miui/player/ui/OnlineMusicBaseActivity;->mAdapter:Lcom/miui/player/model/OnlineMusicAdapter;

    invoke-virtual {v3}, Lcom/miui/player/model/OnlineMusicAdapter;->getCount()I

    move-result v0

    .line 45
    .local v0, count:I
    if-nez v0, :cond_1

    .line 46
    const v3, 0x7f080091

    invoke-virtual {p0, v3}, Lcom/miui/player/ui/OnlineMusicSearchActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 47
    iget-object v3, p0, Lcom/miui/player/ui/OnlineMusicSearchActivity;->mDownloadTextView:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 52
    :goto_1
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 49
    :cond_1
    const v3, 0x7f080090

    invoke-virtual {p0, v3}, Lcom/miui/player/ui/OnlineMusicSearchActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 50
    const/4 v3, 0x0

    invoke-virtual {p0, p0, v3}, Lcom/miui/player/ui/OnlineMusicSearchActivity;->onScanReceive(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_1
.end method
