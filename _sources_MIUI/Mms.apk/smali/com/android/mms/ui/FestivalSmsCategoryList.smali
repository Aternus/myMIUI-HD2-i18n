.class public Lcom/android/mms/ui/FestivalSmsCategoryList;
.super Landroid/app/ListActivity;
.source "FestivalSmsCategoryList.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/android/mms/util/SDCardMonitor$SdCardStatusListener;


# instance fields
.field private mDownloadingView:Landroid/view/View;

.field private mEmptyView:Landroid/widget/TextView;

.field private mListAdapter:Lcom/android/mms/ui/FestivalSmsCategoryListAdapter;

.field private mListView:Landroid/widget/ListView;

.field private mPickerMode:Z

.field private mSDCardMonitor:Lcom/android/mms/util/SDCardMonitor;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/FestivalSmsCategoryList;)Lcom/android/mms/ui/FestivalSmsCategoryListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/mms/ui/FestivalSmsCategoryList;->mListAdapter:Lcom/android/mms/ui/FestivalSmsCategoryListAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/mms/ui/FestivalSmsCategoryList;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/mms/ui/FestivalSmsCategoryList;->mDownloadingView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/mms/ui/FestivalSmsCategoryList;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/mms/ui/FestivalSmsCategoryList;->mEmptyView:Landroid/widget/TextView;

    return-object v0
.end method

.method private checkForUpdate(Z)V
    .locals 10
    .parameter "forceUpdate"

    .prologue
    const/4 v9, 0x0

    .line 75
    invoke-virtual {p0, v9}, Lcom/android/mms/ui/FestivalSmsCategoryList;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 77
    .local v0, pref:Landroid/content/SharedPreferences;
    const-string v5, "update_timestamp"

    const-wide/16 v6, 0x0

    invoke-interface {v0, v5, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    .line 78
    .local v3, updateTimestamp:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 79
    .local v1, time:J
    sub-long v5, v1, v3

    const-wide/32 v7, 0x5265c00

    cmp-long v5, v5, v7

    if-gez v5, :cond_0

    if-nez p1, :cond_0

    .line 110
    :goto_0
    return-void

    .line 83
    :cond_0
    iget-object v5, p0, Lcom/android/mms/ui/FestivalSmsCategoryList;->mDownloadingView:Landroid/view/View;

    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    .line 84
    iget-object v5, p0, Lcom/android/mms/ui/FestivalSmsCategoryList;->mEmptyView:Landroid/widget/TextView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    new-instance v5, Lcom/android/mms/ui/FestivalSmsCategoryList$1;

    invoke-direct {v5, p0}, Lcom/android/mms/ui/FestivalSmsCategoryList$1;-><init>(Lcom/android/mms/ui/FestivalSmsCategoryList;)V

    new-array v6, v9, [Ljava/lang/Void;

    invoke-virtual {v5, v6}, Lcom/android/mms/ui/FestivalSmsCategoryList$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v1, -0x1

    .line 134
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_0

    if-ne p2, v1, :cond_0

    if-nez p3, :cond_1

    .line 140
    :cond_0
    :goto_0
    return-void

    .line 138
    :cond_1
    invoke-virtual {p0, v1, p3}, Lcom/android/mms/ui/FestivalSmsCategoryList;->setResult(ILandroid/content/Intent;)V

    .line 139
    invoke-virtual {p0}, Lcom/android/mms/ui/FestivalSmsCategoryList;->finish()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 45
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    const v2, 0x7f030010

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/FestivalSmsCategoryList;->setContentView(I)V

    .line 48
    const v2, 0x7f0d0052

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/FestivalSmsCategoryList;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/FestivalSmsCategoryList;->mDownloadingView:Landroid/view/View;

    .line 49
    const v2, 0x7f0d004c

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/FestivalSmsCategoryList;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/mms/ui/FestivalSmsCategoryList;->mEmptyView:Landroid/widget/TextView;

    .line 51
    invoke-virtual {p0}, Lcom/android/mms/ui/FestivalSmsCategoryList;->getListView()Landroid/widget/ListView;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/FestivalSmsCategoryList;->mListView:Landroid/widget/ListView;

    .line 52
    iget-object v2, p0, Lcom/android/mms/ui/FestivalSmsCategoryList;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 53
    iget-object v2, p0, Lcom/android/mms/ui/FestivalSmsCategoryList;->mListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/android/mms/ui/FestivalSmsCategoryList;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 55
    new-instance v2, Lcom/android/mms/ui/FestivalSmsCategoryListAdapter;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/FestivalSmsCategoryListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/mms/ui/FestivalSmsCategoryList;->mListAdapter:Lcom/android/mms/ui/FestivalSmsCategoryListAdapter;

    .line 56
    iget-object v2, p0, Lcom/android/mms/ui/FestivalSmsCategoryList;->mListAdapter:Lcom/android/mms/ui/FestivalSmsCategoryListAdapter;

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/FestivalSmsCategoryList;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 58
    invoke-virtual {p0}, Lcom/android/mms/ui/FestivalSmsCategoryList;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 59
    .local v0, action:Ljava/lang/String;
    if-eqz v0, :cond_1

    const-string v2, "android.intent.action.PICK"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v5

    :goto_0
    iput-boolean v2, p0, Lcom/android/mms/ui/FestivalSmsCategoryList;->mPickerMode:Z

    .line 61
    invoke-static {p0}, Lcom/android/mms/util/SDCardMonitor;->getSDCardMonitor(Landroid/content/Context;)Lcom/android/mms/util/SDCardMonitor;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/FestivalSmsCategoryList;->mSDCardMonitor:Lcom/android/mms/util/SDCardMonitor;

    .line 62
    iget-object v2, p0, Lcom/android/mms/ui/FestivalSmsCategoryList;->mSDCardMonitor:Lcom/android/mms/util/SDCardMonitor;

    invoke-virtual {v2, p0}, Lcom/android/mms/util/SDCardMonitor;->addSdCardStatusListener(Lcom/android/mms/util/SDCardMonitor$SdCardStatusListener;)V

    .line 64
    invoke-direct {p0, v4}, Lcom/android/mms/ui/FestivalSmsCategoryList;->checkForUpdate(Z)V

    .line 66
    invoke-virtual {p0}, Lcom/android/mms/ui/FestivalSmsCategoryList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "confirm_miui_disclaimer"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v5, :cond_0

    .line 68
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MIUI_DISCLAIMER"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 69
    .local v1, i:Landroid/content/Intent;
    const-string v2, "stop_package_name"

    invoke-virtual {p0}, Lcom/android/mms/ui/FestivalSmsCategoryList;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 70
    invoke-virtual {p0, v1}, Lcom/android/mms/ui/FestivalSmsCategoryList;->startActivity(Landroid/content/Intent;)V

    .line 72
    .end local v1           #i:Landroid/content/Intent;
    :cond_0
    return-void

    :cond_1
    move v2, v4

    .line 59
    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 157
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 158
    iget-object v0, p0, Lcom/android/mms/ui/FestivalSmsCategoryList;->mSDCardMonitor:Lcom/android/mms/util/SDCardMonitor;

    invoke-virtual {v0, p0}, Lcom/android/mms/util/SDCardMonitor;->removeSdCardStatusListener(Lcom/android/mms/util/SDCardMonitor$SdCardStatusListener;)V

    .line 159
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/mms/ui/FestivalSmsCategoryList;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    sub-int v0, p3, v0

    .line 115
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/FestivalSmsCategoryList;->mListAdapter:Lcom/android/mms/ui/FestivalSmsCategoryListAdapter;

    invoke-virtual {v1}, Lcom/android/mms/ui/FestivalSmsCategoryListAdapter;->getCount()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 130
    :cond_0
    :goto_0
    return-void

    .line 118
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/FestivalSmsCategoryList;->mListAdapter:Lcom/android/mms/ui/FestivalSmsCategoryListAdapter;

    invoke-virtual {v1, v0}, Lcom/android/mms/ui/FestivalSmsCategoryListAdapter;->getItem(I)Landroid/database/Cursor;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 119
    if-eqz v0, :cond_0

    .line 120
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/mms/ui/FestivalSmsList;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 121
    const-string v2, "category_name"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 122
    iget-boolean v0, p0, Lcom/android/mms/ui/FestivalSmsCategoryList;->mPickerMode:Z

    if-eqz v0, :cond_2

    .line 123
    const-string v0, "android.intent.action.PICK"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 124
    const/16 v0, 0x3e8

    invoke-virtual {p0, v1, v0}, Lcom/android/mms/ui/FestivalSmsCategoryList;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 126
    :cond_2
    const-string v0, "android.intent.action.VIEW"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 127
    invoke-virtual {p0, v1}, Lcom/android/mms/ui/FestivalSmsCategoryList;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    .line 176
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    if-nez v0, :cond_0

    .line 177
    invoke-direct {p0, v1}, Lcom/android/mms/ui/FestivalSmsCategoryList;->checkForUpdate(Z)V

    move v0, v1

    .line 180
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    const/4 v1, 0x0

    .line 169
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 170
    const v0, 0x7f09010d

    invoke-interface {p1, v1, v1, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 171
    const/4 v0, 0x1

    return v0
.end method

.method public onSdcardStatusChanged(Z)V
    .locals 1
    .parameter "mount"

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/mms/ui/FestivalSmsCategoryList;->mListAdapter:Lcom/android/mms/ui/FestivalSmsCategoryListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/FestivalSmsCategoryListAdapter;->requery()V

    .line 164
    iget-object v0, p0, Lcom/android/mms/ui/FestivalSmsCategoryList;->mListAdapter:Lcom/android/mms/ui/FestivalSmsCategoryListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/FestivalSmsCategoryListAdapter;->notifyDataSetChanged()V

    .line 165
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 144
    invoke-super {p0}, Landroid/app/ListActivity;->onStart()V

    .line 145
    iget-object v0, p0, Lcom/android/mms/ui/FestivalSmsCategoryList;->mListAdapter:Lcom/android/mms/ui/FestivalSmsCategoryListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/FestivalSmsCategoryListAdapter;->requery()V

    .line 146
    iget-object v0, p0, Lcom/android/mms/ui/FestivalSmsCategoryList;->mListAdapter:Lcom/android/mms/ui/FestivalSmsCategoryListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/FestivalSmsCategoryListAdapter;->notifyDataSetChanged()V

    .line 147
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 151
    invoke-super {p0}, Landroid/app/ListActivity;->onStop()V

    .line 152
    iget-object v0, p0, Lcom/android/mms/ui/FestivalSmsCategoryList;->mListAdapter:Lcom/android/mms/ui/FestivalSmsCategoryListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/FestivalSmsCategoryListAdapter;->close()V

    .line 153
    return-void
.end method
