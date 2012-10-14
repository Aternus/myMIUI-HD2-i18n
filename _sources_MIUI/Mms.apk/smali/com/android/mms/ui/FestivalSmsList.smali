.class public Lcom/android/mms/ui/FestivalSmsList;
.super Landroid/app/ListActivity;
.source "FestivalSmsList.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Lcom/android/mms/util/SDCardMonitor$SdCardStatusListener;


# instance fields
.field private mCategoryName:Ljava/lang/String;

.field private mDownloadingView:Landroid/view/View;

.field private mEmptyView:Landroid/widget/TextView;

.field private mIsAtLastItem:Z

.field private mIsGettingMessages:Z

.field private mListAdapter:Lcom/android/mms/ui/FestivalSmsListAdapter;

.field private mListView:Landroid/widget/ListView;

.field private mMessageBody:Ljava/lang/String;

.field private mPickerMode:Z

.field private mSDCardMonitor:Lcom/android/mms/util/SDCardMonitor;

.field private mShuffleButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/FestivalSmsList;)Lcom/android/mms/ui/FestivalSmsListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/mms/ui/FestivalSmsList;->mListAdapter:Lcom/android/mms/ui/FestivalSmsListAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/mms/ui/FestivalSmsList;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/mms/ui/FestivalSmsList;->mCategoryName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/mms/ui/FestivalSmsList;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    iput-boolean p1, p0, Lcom/android/mms/ui/FestivalSmsList;->mIsGettingMessages:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/mms/ui/FestivalSmsList;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/mms/ui/FestivalSmsList;->mDownloadingView:Landroid/view/View;

    return-object v0
.end method

.method private startGettingMoreMessages()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 113
    iget-boolean v0, p0, Lcom/android/mms/ui/FestivalSmsList;->mIsGettingMessages:Z

    if-eqz v0, :cond_0

    .line 136
    :goto_0
    return-void

    .line 116
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/FestivalSmsList;->mIsGettingMessages:Z

    .line 117
    iget-object v0, p0, Lcom/android/mms/ui/FestivalSmsList;->mDownloadingView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 118
    new-instance v0, Lcom/android/mms/ui/FestivalSmsList$2;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/FestivalSmsList$2;-><init>(Lcom/android/mms/ui/FestivalSmsList;)V

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/FestivalSmsList$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method


# virtual methods
.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 92
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 94
    iget v0, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    .line 95
    iget-object v1, p0, Lcom/android/mms/ui/FestivalSmsList;->mListAdapter:Lcom/android/mms/ui/FestivalSmsListAdapter;

    invoke-virtual {v1, v0}, Lcom/android/mms/ui/FestivalSmsListAdapter;->getItemMessage(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/FestivalSmsList;->mMessageBody:Ljava/lang/String;

    .line 96
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 108
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 98
    :sswitch_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/mms/ui/NewMessageActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 99
    const-string v1, "sms_body"

    iget-object v2, p0, Lcom/android/mms/ui/FestivalSmsList;->mMessageBody:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 100
    const-string v1, "forwarded_message"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 101
    invoke-virtual {p0, v0}, Lcom/android/mms/ui/FestivalSmsList;->startActivity(Landroid/content/Intent;)V

    move v0, v3

    .line 102
    goto :goto_0

    .line 104
    :sswitch_1
    const-string v0, "clipboard"

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/FestivalSmsList;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    iget-object v1, p0, Lcom/android/mms/ui/FestivalSmsList;->mMessageBody:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    move v0, v3

    .line 105
    goto :goto_0

    .line 96
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f090019 -> :sswitch_0
        0x7f090122 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x0

    .line 47
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    const v2, 0x7f030013

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/FestivalSmsList;->setContentView(I)V

    .line 50
    invoke-virtual {p0}, Lcom/android/mms/ui/FestivalSmsList;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 51
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "category_name"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/FestivalSmsList;->mCategoryName:Ljava/lang/String;

    .line 52
    const v2, 0x7f0d0055

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/FestivalSmsList;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/mms/ui/FestivalSmsList;->mCategoryName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    const v2, 0x7f0d0052

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/FestivalSmsList;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/FestivalSmsList;->mDownloadingView:Landroid/view/View;

    .line 55
    const v2, 0x7f0d004c

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/FestivalSmsList;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/mms/ui/FestivalSmsList;->mEmptyView:Landroid/widget/TextView;

    .line 56
    const v2, 0x7f0d0056

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/FestivalSmsList;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/mms/ui/FestivalSmsList;->mShuffleButton:Landroid/widget/Button;

    .line 57
    iget-object v2, p0, Lcom/android/mms/ui/FestivalSmsList;->mShuffleButton:Landroid/widget/Button;

    new-instance v3, Lcom/android/mms/ui/FestivalSmsList$1;

    invoke-direct {v3, p0}, Lcom/android/mms/ui/FestivalSmsList$1;-><init>(Lcom/android/mms/ui/FestivalSmsList;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    invoke-virtual {p0}, Lcom/android/mms/ui/FestivalSmsList;->getListView()Landroid/widget/ListView;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/FestivalSmsList;->mListView:Landroid/widget/ListView;

    .line 65
    iget-object v2, p0, Lcom/android/mms/ui/FestivalSmsList;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 66
    iget-object v2, p0, Lcom/android/mms/ui/FestivalSmsList;->mListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/android/mms/ui/FestivalSmsList;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 68
    new-instance v2, Lcom/android/mms/ui/FestivalSmsListAdapter;

    iget-object v3, p0, Lcom/android/mms/ui/FestivalSmsList;->mCategoryName:Ljava/lang/String;

    invoke-direct {v2, p0, v3}, Lcom/android/mms/ui/FestivalSmsListAdapter;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/mms/ui/FestivalSmsList;->mListAdapter:Lcom/android/mms/ui/FestivalSmsListAdapter;

    .line 69
    iget-object v2, p0, Lcom/android/mms/ui/FestivalSmsList;->mListAdapter:Lcom/android/mms/ui/FestivalSmsListAdapter;

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/FestivalSmsList;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 71
    iget-object v2, p0, Lcom/android/mms/ui/FestivalSmsList;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/FestivalSmsList;->registerForContextMenu(Landroid/view/View;)V

    .line 73
    iput-boolean v4, p0, Lcom/android/mms/ui/FestivalSmsList;->mIsAtLastItem:Z

    .line 74
    iput-boolean v4, p0, Lcom/android/mms/ui/FestivalSmsList;->mIsGettingMessages:Z

    .line 76
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 77
    .local v0, action:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v2, "android.intent.action.PICK"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p0, Lcom/android/mms/ui/FestivalSmsList;->mPickerMode:Z

    .line 79
    invoke-static {p0}, Lcom/android/mms/util/SDCardMonitor;->getSDCardMonitor(Landroid/content/Context;)Lcom/android/mms/util/SDCardMonitor;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/FestivalSmsList;->mSDCardMonitor:Lcom/android/mms/util/SDCardMonitor;

    .line 80
    iget-object v2, p0, Lcom/android/mms/ui/FestivalSmsList;->mSDCardMonitor:Lcom/android/mms/util/SDCardMonitor;

    invoke-virtual {v2, p0}, Lcom/android/mms/util/SDCardMonitor;->addSdCardStatusListener(Lcom/android/mms/util/SDCardMonitor$SdCardStatusListener;)V

    .line 81
    return-void

    :cond_0
    move v2, v4

    .line 77
    goto :goto_0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 3
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    const v2, 0x7f090122

    const v1, 0x7f090019

    const/4 v0, 0x0

    .line 85
    invoke-super {p0, p1, p2, p3}, Landroid/app/ListActivity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 86
    invoke-interface {p1, v0, v1, v0, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 87
    invoke-interface {p1, v0, v2, v0, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 88
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 186
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 187
    iget-object v0, p0, Lcom/android/mms/ui/FestivalSmsList;->mSDCardMonitor:Lcom/android/mms/util/SDCardMonitor;

    invoke-virtual {v0, p0}, Lcom/android/mms/util/SDCardMonitor;->removeSdCardStatusListener(Lcom/android/mms/util/SDCardMonitor$SdCardStatusListener;)V

    .line 188
    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 3
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 140
    iget-object v2, p0, Lcom/android/mms/ui/FestivalSmsList;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v2

    sub-int/2addr p3, v2

    .line 141
    if-gez p3, :cond_1

    .line 155
    :cond_0
    :goto_0
    return-void

    .line 144
    :cond_1
    iget-boolean v2, p0, Lcom/android/mms/ui/FestivalSmsList;->mPickerMode:Z

    if-eqz v2, :cond_2

    .line 145
    iget-object v2, p0, Lcom/android/mms/ui/FestivalSmsList;->mListAdapter:Lcom/android/mms/ui/FestivalSmsListAdapter;

    invoke-virtual {v2, p3}, Lcom/android/mms/ui/FestivalSmsListAdapter;->getItemMessage(I)Ljava/lang/String;

    move-result-object v0

    .line 146
    .local v0, body:Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 147
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "android.intent.extra.shortcut.NAME"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 148
    const/4 v2, -0x1

    invoke-virtual {p0, v2, v1}, Lcom/android/mms/ui/FestivalSmsList;->setResult(ILandroid/content/Intent;)V

    .line 149
    invoke-virtual {p0}, Lcom/android/mms/ui/FestivalSmsList;->finish()V

    goto :goto_0

    .line 151
    .end local v0           #body:Ljava/lang/String;
    .end local v1           #intent:Landroid/content/Intent;
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 152
    invoke-virtual {p2}, Landroid/view/View;->showContextMenu()Z

    goto :goto_0
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 160
    add-int v0, p2, p3

    if-ne p4, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/mms/ui/FestivalSmsList;->mIsAtLastItem:Z

    .line 161
    return-void

    .line 160
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 2
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 165
    if-nez p2, :cond_0

    .line 166
    iget-object v0, p0, Lcom/android/mms/ui/FestivalSmsList;->mDownloadingView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/mms/ui/FestivalSmsList;->mIsAtLastItem:Z

    if-eqz v0, :cond_0

    .line 167
    invoke-direct {p0}, Lcom/android/mms/ui/FestivalSmsList;->startGettingMoreMessages()V

    .line 170
    :cond_0
    return-void
.end method

.method public onSdcardStatusChanged(Z)V
    .locals 1
    .parameter "mount"

    .prologue
    .line 192
    if-eqz p1, :cond_0

    .line 193
    iget-object v0, p0, Lcom/android/mms/ui/FestivalSmsList;->mListAdapter:Lcom/android/mms/ui/FestivalSmsListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/FestivalSmsListAdapter;->requery()V

    .line 197
    :goto_0
    return-void

    .line 195
    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/ui/FestivalSmsList;->finish()V

    goto :goto_0
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 174
    invoke-super {p0}, Landroid/app/ListActivity;->onStart()V

    .line 175
    iget-object v0, p0, Lcom/android/mms/ui/FestivalSmsList;->mListAdapter:Lcom/android/mms/ui/FestivalSmsListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/FestivalSmsListAdapter;->requery()V

    .line 176
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 180
    invoke-super {p0}, Landroid/app/ListActivity;->onStop()V

    .line 181
    iget-object v0, p0, Lcom/android/mms/ui/FestivalSmsList;->mListAdapter:Lcom/android/mms/ui/FestivalSmsListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/FestivalSmsListAdapter;->close()V

    .line 182
    return-void
.end method
