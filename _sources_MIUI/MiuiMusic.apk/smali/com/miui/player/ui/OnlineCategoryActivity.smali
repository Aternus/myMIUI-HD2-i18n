.class public Lcom/miui/player/ui/OnlineCategoryActivity;
.super Lcom/miui/player/ui/BaseActivity;
.source "OnlineCategoryActivity.java"

# interfaces
.implements Lcom/miui/player/MusicUtils$Defs;
.implements Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup$OptionsMenuProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/player/ui/OnlineCategoryActivity$SearchHistoryListVisibleChanged;,
        Lcom/miui/player/ui/OnlineCategoryActivity$SearchCommond;,
        Lcom/miui/player/ui/OnlineCategoryActivity$OnCategoryItemClickListener;,
        Lcom/miui/player/ui/OnlineCategoryActivity$OnRetryClickListener;
    }
.end annotation


# static fields
.field private static sCategoryListCache:Lcom/miui/player/plugin/onlinemusic/MusicInfoSongCategoryList;


# instance fields
.field private mCategoryAdapter:Lcom/miui/player/model/OnlineCategoryAdapter;

.field private mCategoryGrid:Landroid/widget/GridView;

.field private mOnlineStatusBarController:Lcom/miui/player/helper/controller/OnlineStatusBarController;

.field private mSearchBarController:Lcom/miui/player/helper/controller/SearchBarController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 100
    const/4 v0, 0x0

    sput-object v0, Lcom/miui/player/ui/OnlineCategoryActivity;->sCategoryListCache:Lcom/miui/player/plugin/onlinemusic/MusicInfoSongCategoryList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/miui/player/ui/BaseActivity;-><init>()V

    .line 242
    return-void
.end method

.method static synthetic access$1000(Lcom/miui/player/ui/OnlineCategoryActivity;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/miui/player/ui/OnlineCategoryActivity;->gotoSearch(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$402(Lcom/miui/player/plugin/onlinemusic/MusicInfoSongCategoryList;)Lcom/miui/player/plugin/onlinemusic/MusicInfoSongCategoryList;
    .locals 0
    .parameter "x0"

    .prologue
    .line 33
    sput-object p0, Lcom/miui/player/ui/OnlineCategoryActivity;->sCategoryListCache:Lcom/miui/player/plugin/onlinemusic/MusicInfoSongCategoryList;

    return-object p0
.end method

.method static synthetic access$500(Lcom/miui/player/ui/OnlineCategoryActivity;)Lcom/miui/player/model/OnlineCategoryAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/miui/player/ui/OnlineCategoryActivity;->mCategoryAdapter:Lcom/miui/player/model/OnlineCategoryAdapter;

    return-object v0
.end method

.method static synthetic access$600(Lcom/miui/player/ui/OnlineCategoryActivity;)Lcom/miui/player/helper/controller/OnlineStatusBarController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/miui/player/ui/OnlineCategoryActivity;->mOnlineStatusBarController:Lcom/miui/player/helper/controller/OnlineStatusBarController;

    return-object v0
.end method

.method static synthetic access$700(Lcom/miui/player/ui/OnlineCategoryActivity;)Lcom/miui/player/helper/controller/SearchBarController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/miui/player/ui/OnlineCategoryActivity;->mSearchBarController:Lcom/miui/player/helper/controller/SearchBarController;

    return-object v0
.end method

.method static synthetic access$800(Lcom/miui/player/ui/OnlineCategoryActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/miui/player/ui/OnlineCategoryActivity;->startCategoryLoadingAsync()V

    return-void
.end method

.method static synthetic access$900(Lcom/miui/player/ui/OnlineCategoryActivity;)Landroid/widget/GridView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/miui/player/ui/OnlineCategoryActivity;->mCategoryGrid:Landroid/widget/GridView;

    return-object v0
.end method

.method private gotoSearch(Ljava/lang/String;)V
    .locals 2
    .parameter "searchInput"

    .prologue
    .line 237
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.miui.music.ONLINE_SEARCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 238
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "search_key"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 239
    invoke-static {p0, v0}, Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;->pushActivity(Landroid/app/Activity;Landroid/content/Intent;)V

    .line 240
    return-void
.end method

.method private startCategoryLoadingAsync()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 103
    iget-object v0, p0, Lcom/miui/player/ui/OnlineCategoryActivity;->mCategoryAdapter:Lcom/miui/player/model/OnlineCategoryAdapter;

    sget-object v1, Lcom/miui/player/ui/OnlineCategoryActivity;->sCategoryListCache:Lcom/miui/player/plugin/onlinemusic/MusicInfoSongCategoryList;

    invoke-virtual {v0, v1}, Lcom/miui/player/model/OnlineCategoryAdapter;->updateCategoryList(Lcom/miui/player/plugin/onlinemusic/MusicInfoSongCategoryList;)V

    .line 104
    sget-object v0, Lcom/miui/player/ui/OnlineCategoryActivity;->sCategoryListCache:Lcom/miui/player/plugin/onlinemusic/MusicInfoSongCategoryList;

    if-nez v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/miui/player/ui/OnlineCategoryActivity;->mOnlineStatusBarController:Lcom/miui/player/helper/controller/OnlineStatusBarController;

    invoke-virtual {v0}, Lcom/miui/player/helper/controller/OnlineStatusBarController;->setLoadInProcess()V

    .line 106
    iget-object v0, p0, Lcom/miui/player/ui/OnlineCategoryActivity;->mSearchBarController:Lcom/miui/player/helper/controller/SearchBarController;

    invoke-virtual {v0}, Lcom/miui/player/helper/controller/SearchBarController;->getSearchBar()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 112
    :goto_0
    iget-object v0, p0, Lcom/miui/player/ui/OnlineCategoryActivity;->mCategoryAdapter:Lcom/miui/player/model/OnlineCategoryAdapter;

    invoke-virtual {v0}, Lcom/miui/player/model/OnlineCategoryAdapter;->notifyDataSetChanged()V

    .line 114
    new-instance v0, Lcom/miui/player/ui/OnlineCategoryActivity$1;

    invoke-direct {v0, p0}, Lcom/miui/player/ui/OnlineCategoryActivity$1;-><init>(Lcom/miui/player/ui/OnlineCategoryActivity;)V

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/miui/player/ui/OnlineCategoryActivity$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 142
    return-void

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/miui/player/ui/OnlineCategoryActivity;->mOnlineStatusBarController:Lcom/miui/player/helper/controller/OnlineStatusBarController;

    invoke-virtual {v0}, Lcom/miui/player/helper/controller/OnlineStatusBarController;->setLoadSuccess()V

    .line 109
    iget-object v0, p0, Lcom/miui/player/ui/OnlineCategoryActivity;->mSearchBarController:Lcom/miui/player/helper/controller/SearchBarController;

    invoke-virtual {v0}, Lcom/miui/player/helper/controller/SearchBarController;->getSearchBar()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .prologue
    .line 258
    iget-object v0, p0, Lcom/miui/player/ui/OnlineCategoryActivity;->mSearchBarController:Lcom/miui/player/helper/controller/SearchBarController;

    invoke-virtual {v0}, Lcom/miui/player/helper/controller/SearchBarController;->isHistoryVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/miui/player/ui/OnlineCategoryActivity;->mSearchBarController:Lcom/miui/player/helper/controller/SearchBarController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/player/helper/controller/SearchBarController;->showHistoryList(Z)V

    .line 263
    :goto_0
    return-void

    .line 261
    :cond_0
    invoke-super {p0}, Lcom/miui/player/ui/BaseActivity;->onBackPressed()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "icicle"

    .prologue
    const/4 v5, 0x0

    .line 46
    invoke-super {p0, p1}, Lcom/miui/player/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    invoke-virtual {p0}, Lcom/miui/player/ui/OnlineCategoryActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setFormat(I)V

    .line 48
    invoke-virtual {p0}, Lcom/miui/player/ui/OnlineCategoryActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 49
    const v0, 0x7f03001d

    invoke-virtual {p0, v0}, Lcom/miui/player/ui/OnlineCategoryActivity;->setContentView(I)V

    .line 51
    const v0, 0x7f0c006a

    invoke-static {p0, v0}, Lcom/miui/player/MusicUtils;->updateNavigationHeader(Landroid/app/Activity;I)V

    .line 53
    new-instance v0, Lcom/miui/player/helper/controller/OnlineStatusBarController;

    const v1, 0x7f0c007d

    new-instance v2, Lcom/miui/player/ui/OnlineCategoryActivity$OnRetryClickListener;

    invoke-direct {v2, p0, v5}, Lcom/miui/player/ui/OnlineCategoryActivity$OnRetryClickListener;-><init>(Lcom/miui/player/ui/OnlineCategoryActivity;Lcom/miui/player/ui/OnlineCategoryActivity$1;)V

    invoke-direct {v0, p0, v1, v2}, Lcom/miui/player/helper/controller/OnlineStatusBarController;-><init>(Landroid/app/Activity;ILandroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lcom/miui/player/ui/OnlineCategoryActivity;->mOnlineStatusBarController:Lcom/miui/player/helper/controller/OnlineStatusBarController;

    .line 55
    iget-object v0, p0, Lcom/miui/player/ui/OnlineCategoryActivity;->mOnlineStatusBarController:Lcom/miui/player/helper/controller/OnlineStatusBarController;

    const v1, 0x7f080085

    const v2, 0x7f080086

    invoke-virtual {v0, v1, v2}, Lcom/miui/player/helper/controller/OnlineStatusBarController;->setLoadingHintTextId(II)V

    .line 58
    const v0, 0x7f0c007f

    invoke-virtual {p0, v0}, Lcom/miui/player/ui/OnlineCategoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/miui/player/ui/OnlineCategoryActivity;->mCategoryGrid:Landroid/widget/GridView;

    .line 60
    :try_start_0
    invoke-virtual {p0}, Lcom/miui/player/ui/OnlineCategoryActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/player/model/OnlineCategoryAdapter;

    iput-object v0, p0, Lcom/miui/player/ui/OnlineCategoryActivity;->mCategoryAdapter:Lcom/miui/player/model/OnlineCategoryAdapter;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    :goto_0
    iget-object v0, p0, Lcom/miui/player/ui/OnlineCategoryActivity;->mCategoryAdapter:Lcom/miui/player/model/OnlineCategoryAdapter;

    if-nez v0, :cond_0

    .line 65
    new-instance v0, Lcom/miui/player/model/OnlineCategoryAdapter;

    invoke-direct {v0, p0}, Lcom/miui/player/model/OnlineCategoryAdapter;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/miui/player/ui/OnlineCategoryActivity;->mCategoryAdapter:Lcom/miui/player/model/OnlineCategoryAdapter;

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/miui/player/ui/OnlineCategoryActivity;->mCategoryGrid:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/miui/player/ui/OnlineCategoryActivity;->mCategoryAdapter:Lcom/miui/player/model/OnlineCategoryAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 69
    iget-object v0, p0, Lcom/miui/player/ui/OnlineCategoryActivity;->mCategoryGrid:Landroid/widget/GridView;

    new-instance v1, Lcom/miui/player/ui/OnlineCategoryActivity$OnCategoryItemClickListener;

    invoke-direct {v1, p0, v5}, Lcom/miui/player/ui/OnlineCategoryActivity$OnCategoryItemClickListener;-><init>(Lcom/miui/player/ui/OnlineCategoryActivity;Lcom/miui/player/ui/OnlineCategoryActivity$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 71
    new-instance v0, Lcom/miui/player/helper/controller/SearchBarController;

    const-string v2, "miui_preference_music_search_histroy"

    new-instance v3, Lcom/miui/player/ui/OnlineCategoryActivity$SearchCommond;

    invoke-direct {v3, p0, v5}, Lcom/miui/player/ui/OnlineCategoryActivity$SearchCommond;-><init>(Lcom/miui/player/ui/OnlineCategoryActivity;Lcom/miui/player/ui/OnlineCategoryActivity$1;)V

    new-instance v4, Lcom/miui/player/ui/OnlineCategoryActivity$SearchHistoryListVisibleChanged;

    invoke-direct {v4, p0, v5}, Lcom/miui/player/ui/OnlineCategoryActivity$SearchHistoryListVisibleChanged;-><init>(Lcom/miui/player/ui/OnlineCategoryActivity;Lcom/miui/player/ui/OnlineCategoryActivity$1;)V

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/miui/player/helper/controller/SearchBarController;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/miui/player/helper/controller/SearchBarController$Command;Lcom/miui/player/helper/controller/SearchBarController$OnHistoryListVisibleChangedListener;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/player/ui/OnlineCategoryActivity;->mSearchBarController:Lcom/miui/player/helper/controller/SearchBarController;

    .line 74
    invoke-direct {p0}, Lcom/miui/player/ui/OnlineCategoryActivity;->startCategoryLoadingAsync()V

    .line 75
    return-void

    .line 61
    :catch_0
    move-exception v0

    move-object v6, v0

    .line 62
    .local v6, e:Ljava/lang/ClassCastException;
    iput-object v5, p0, Lcom/miui/player/ui/OnlineCategoryActivity;->mCategoryAdapter:Lcom/miui/player/model/OnlineCategoryAdapter;

    goto :goto_0
.end method

.method public onCreateOptionsMenuForParent(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 171
    const/4 v0, 0x7

    const v1, 0x7f0800b2

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02003b

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 172
    const v0, 0x7f08004c

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020038

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 173
    const/4 v0, 0x6

    const v1, 0x7f08003d

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020036

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 175
    const/4 v0, 0x3

    const v1, 0x7f08003c

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020037

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 176
    return v3
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 85
    iget-object v0, p0, Lcom/miui/player/ui/OnlineCategoryActivity;->mCategoryGrid:Landroid/widget/GridView;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 86
    iput-object v1, p0, Lcom/miui/player/ui/OnlineCategoryActivity;->mCategoryAdapter:Lcom/miui/player/model/OnlineCategoryAdapter;

    .line 87
    invoke-super {p0}, Lcom/miui/player/ui/BaseActivity;->onDestroy()V

    .line 88
    return-void
.end method

.method public onOptionsItemSelectedForParent(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    const/4 v3, 0x1

    .line 186
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 208
    :pswitch_0
    const/4 v2, 0x0

    :goto_0
    return v2

    .line 188
    :pswitch_1
    new-instance v1, Lcom/miui/player/helper/SleepModeManager;

    invoke-direct {v1}, Lcom/miui/player/helper/SleepModeManager;-><init>()V

    .line 189
    .local v1, sleepModeManager:Lcom/miui/player/helper/SleepModeManager;
    invoke-virtual {v1, p0}, Lcom/miui/player/helper/SleepModeManager;->showSelectTimeDialog(Landroid/app/Activity;)V

    move v2, v3

    .line 190
    goto :goto_0

    .line 193
    .end local v1           #sleepModeManager:Lcom/miui/player/helper/SleepModeManager;
    :pswitch_2
    const/4 v2, 0x0

    sput-object v2, Lcom/miui/player/ui/OnlineCategoryActivity;->sCategoryListCache:Lcom/miui/player/plugin/onlinemusic/MusicInfoSongCategoryList;

    .line 194
    invoke-direct {p0}, Lcom/miui/player/ui/OnlineCategoryActivity;->startCategoryLoadingAsync()V

    move v2, v3

    .line 195
    goto :goto_0

    .line 198
    :pswitch_3
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/miui/player/ui/PreferencesActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 199
    .local v0, settingIntent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/miui/player/ui/OnlineCategoryActivity;->startActivity(Landroid/content/Intent;)V

    move v2, v3

    .line 200
    goto :goto_0

    .line 203
    .end local v0           #settingIntent:Landroid/content/Intent;
    :pswitch_4
    invoke-static {p0}, Lcom/miui/player/MusicUtils;->quitMediaPlay(Landroid/content/Context;)V

    .line 204
    invoke-static {p0}, Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;->finishParent(Landroid/app/Activity;)V

    move v2, v3

    .line 205
    goto :goto_0

    .line 186
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method public onPrepareOptionsMenuForParent(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 181
    const/4 v0, 0x1

    return v0
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 92
    invoke-super {p0}, Lcom/miui/player/ui/BaseActivity;->onResume()V

    .line 93
    iget-object v0, p0, Lcom/miui/player/ui/OnlineCategoryActivity;->mCategoryGrid:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->requestFocus()Z

    .line 94
    iget-object v0, p0, Lcom/miui/player/ui/OnlineCategoryActivity;->mSearchBarController:Lcom/miui/player/helper/controller/SearchBarController;

    invoke-virtual {v0}, Lcom/miui/player/helper/controller/SearchBarController;->updateSearchHistroy()V

    .line 95
    return-void
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/miui/player/ui/OnlineCategoryActivity;->mCategoryAdapter:Lcom/miui/player/model/OnlineCategoryAdapter;

    .line 80
    .local v0, a:Lcom/miui/player/model/OnlineCategoryAdapter;
    return-object v0
.end method
