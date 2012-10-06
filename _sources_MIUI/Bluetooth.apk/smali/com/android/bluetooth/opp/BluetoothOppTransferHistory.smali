.class public Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;
.super Landroid/app/Activity;
.source "BluetoothOppTransferHistory.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private mContextMenuPosition:I

.field private mIdColumnId:I

.field private mListView:Landroid/widget/ListView;

.field private mNotifier:Lcom/android/bluetooth/opp/BluetoothOppNotification;

.field private mTransferAdapter:Lcom/android/bluetooth/opp/BluetoothOppTransferAdapter;

.field private mTransferCursor:Landroid/database/Cursor;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->clearAllDownloads()V

    return-void
.end method

.method private clearAllDownloads()V
    .locals 4

    .prologue
    .line 227
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mTransferCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 228
    :goto_0
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mTransferCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_0

    .line 229
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mTransferCursor:Landroid/database/Cursor;

    iget v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mIdColumnId:I

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 230
    .local v1, sessionId:I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 231
    .local v0, contentUri:Landroid/net/Uri;
    invoke-static {p0, v0}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->updateVisibilityToHidden(Landroid/content/Context;Landroid/net/Uri;)V

    .line 233
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mTransferCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 235
    .end local v0           #contentUri:Landroid/net/Uri;
    .end local v1           #sessionId:I
    :cond_0
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->updateNotificationWhenBtDisabled()V

    .line 237
    :cond_1
    return-void
.end method

.method private getClearableCount()I
    .locals 5

    .prologue
    .line 209
    const/4 v0, 0x0

    .line 210
    .local v0, count:I
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mTransferCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 211
    :goto_0
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mTransferCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-nez v3, :cond_1

    .line 212
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mTransferCursor:Landroid/database/Cursor;

    const-string v4, "status"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 213
    .local v2, statusColumnId:I
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mTransferCursor:Landroid/database/Cursor;

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 214
    .local v1, status:I
    invoke-static {v1}, Lcom/android/bluetooth/opp/BluetoothShare;->isStatusCompleted(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 215
    add-int/lit8 v0, v0, 0x1

    .line 217
    :cond_0
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mTransferCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 220
    .end local v1           #status:I
    .end local v2           #statusColumnId:I
    :cond_1
    return v0
.end method

.method private openCompleteTransfer()V
    .locals 4

    .prologue
    .line 257
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mTransferCursor:Landroid/database/Cursor;

    iget v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mIdColumnId:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 258
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 259
    new-instance v1, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    invoke-direct {v1}, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;-><init>()V

    .line 260
    invoke-static {p0, v0}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->queryRecord(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    move-result-object v1

    .line 261
    if-nez v1, :cond_0

    .line 262
    const-string v0, "BluetoothOppTransferHistory"

    const-string v1, "Error: Can not get data from db"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    :goto_0
    return-void

    .line 265
    :cond_0
    iget v2, v1, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mDirection:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    iget v2, v1, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mStatus:I

    invoke-static {v2}, Lcom/android/bluetooth/opp/BluetoothShare;->isStatusSuccess(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 268
    invoke-static {p0, v0}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->updateVisibilityToHidden(Landroid/content/Context;Landroid/net/Uri;)V

    .line 269
    iget-object v2, v1, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mFileName:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mFileType:Ljava/lang/String;

    iget-object v1, v1, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mTimeStamp:Ljava/lang/Long;

    invoke-static {p0, v2, v3, v1, v0}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->openReceivedFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Landroid/net/Uri;)V

    goto :goto_0

    .line 272
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 273
    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 274
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 275
    invoke-virtual {p0, v1}, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private promptClearList()V
    .locals 3

    .prologue
    .line 196
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f04005b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f040054

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory$1;

    invoke-direct {v2, p0}, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory$1;-><init>(Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 203
    return-void
.end method

.method private updateNotificationWhenBtDisabled()V
    .locals 2

    .prologue
    .line 284
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 285
    .local v0, adapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 287
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mNotifier:Lcom/android/bluetooth/opp/BluetoothOppNotification;

    invoke-virtual {v1}, Lcom/android/bluetooth/opp/BluetoothOppNotification;->updateNotification()V

    .line 289
    :cond_0
    return-void
.end method


# virtual methods
.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .parameter "item"

    .prologue
    const/4 v4, 0x1

    .line 156
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mTransferCursor:Landroid/database/Cursor;

    iget v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mContextMenuPosition:I

    invoke-interface {v2, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 157
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 170
    const/4 v2, 0x0

    :goto_0
    return v2

    .line 159
    :pswitch_0
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->openCompleteTransfer()V

    .line 160
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->updateNotificationWhenBtDisabled()V

    move v2, v4

    .line 161
    goto :goto_0

    .line 164
    :pswitch_1
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mTransferCursor:Landroid/database/Cursor;

    iget v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mIdColumnId:I

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 165
    .local v1, sessionId:I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 166
    .local v0, contentUri:Landroid/net/Uri;
    invoke-static {p0, v0}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->updateVisibilityToHidden(Landroid/content/Context;Landroid/net/Uri;)V

    .line 167
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->updateNotificationWhenBtDisabled()V

    move v2, v4

    .line 168
    goto :goto_0

    .line 157
    :pswitch_data_0
    .packed-switch 0x7f060025
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter "icicle"

    .prologue
    const/4 v7, 0x0

    const-string v9, "direction"

    const-string v8, "_id"

    .line 84
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 85
    const v4, 0x7f030003

    invoke-virtual {p0, v4}, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->setContentView(I)V

    .line 86
    const v4, 0x7f060008

    invoke-virtual {p0, v4}, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ListView;

    iput-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mListView:Landroid/widget/ListView;

    .line 87
    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mListView:Landroid/widget/ListView;

    const v5, 0x7f060009

    invoke-virtual {p0, v5}, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 90
    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "direction"

    invoke-virtual {v4, v9, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 91
    .local v0, dir:I
    if-nez v0, :cond_1

    .line 92
    const v4, 0x7f040052

    invoke-virtual {p0, v4}, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->setTitle(Ljava/lang/CharSequence;)V

    .line 93
    const-string v1, "(direction == 0)"

    .line 101
    .local v1, direction:Ljava/lang/String;
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "status >= \'200\' AND (visibility IS NULL OR visibility == \'0\') AND "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 104
    .local v2, selection:Ljava/lang/String;
    const-string v3, "timestamp DESC"

    .line 106
    .local v3, sortOrder:Ljava/lang/String;
    sget-object v4, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    const/16 v5, 0x9

    new-array v5, v5, [Ljava/lang/String;

    const-string v6, "_id"

    aput-object v8, v5, v7

    const/4 v6, 0x1

    const-string v7, "hint"

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-string v7, "status"

    aput-object v7, v5, v6

    const/4 v6, 0x3

    const-string v7, "total_bytes"

    aput-object v7, v5, v6

    const/4 v6, 0x4

    const-string v7, "_data"

    aput-object v7, v5, v6

    const/4 v6, 0x5

    const-string v7, "timestamp"

    aput-object v7, v5, v6

    const/4 v6, 0x6

    const-string v7, "visibility"

    aput-object v7, v5, v6

    const/4 v6, 0x7

    const-string v7, "destination"

    aput-object v7, v5, v6

    const/16 v6, 0x8

    const-string v7, "direction"

    aput-object v9, v5, v6

    const-string v6, "timestamp DESC"

    invoke-virtual {p0, v4, v5, v2, v6}, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    iput-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mTransferCursor:Landroid/database/Cursor;

    .line 114
    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mTransferCursor:Landroid/database/Cursor;

    if-eqz v4, :cond_0

    .line 115
    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mTransferCursor:Landroid/database/Cursor;

    const-string v5, "_id"

    invoke-interface {v4, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mIdColumnId:I

    .line 117
    new-instance v4, Lcom/android/bluetooth/opp/BluetoothOppTransferAdapter;

    const v5, 0x7f030002

    iget-object v6, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mTransferCursor:Landroid/database/Cursor;

    invoke-direct {v4, p0, v5, v6}, Lcom/android/bluetooth/opp/BluetoothOppTransferAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;)V

    iput-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mTransferAdapter:Lcom/android/bluetooth/opp/BluetoothOppTransferAdapter;

    .line 119
    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mListView:Landroid/widget/ListView;

    iget-object v5, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mTransferAdapter:Lcom/android/bluetooth/opp/BluetoothOppTransferAdapter;

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 120
    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mListView:Landroid/widget/ListView;

    const/high16 v5, 0x100

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setScrollBarStyle(I)V

    .line 121
    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4, p0}, Landroid/widget/ListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 122
    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 125
    :cond_0
    new-instance v4, Lcom/android/bluetooth/opp/BluetoothOppNotification;

    invoke-direct {v4, p0}, Lcom/android/bluetooth/opp/BluetoothOppNotification;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mNotifier:Lcom/android/bluetooth/opp/BluetoothOppNotification;

    .line 126
    return-void

    .line 96
    .end local v1           #direction:Ljava/lang/String;
    .end local v2           #selection:Ljava/lang/String;
    .end local v3           #sortOrder:Ljava/lang/String;
    :cond_1
    const v4, 0x7f040051

    invoke-virtual {p0, v4}, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->setTitle(Ljava/lang/CharSequence;)V

    .line 97
    const-string v1, "(direction == 1)"

    .restart local v1       #direction:Ljava/lang/String;
    goto/16 :goto_0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 7
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    .line 175
    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mTransferCursor:Landroid/database/Cursor;

    if-eqz v4, :cond_1

    .line 176
    move-object v0, p3

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    move-object v3, v0

    .line 177
    .local v3, info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mTransferCursor:Landroid/database/Cursor;

    iget v5, v3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-interface {v4, v5}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 178
    iget v4, v3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    iput v4, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mContextMenuPosition:I

    .line 180
    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mTransferCursor:Landroid/database/Cursor;

    iget-object v5, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mTransferCursor:Landroid/database/Cursor;

    const-string v6, "hint"

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 182
    .local v1, fileName:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 183
    const v4, 0x7f040034

    invoke-virtual {p0, v4}, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 185
    :cond_0
    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 187
    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v2

    .line 188
    .local v2, inflater:Landroid/view/MenuInflater;
    const v4, 0x7f050001

    invoke-virtual {v2, v4, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 190
    .end local v1           #fileName:Ljava/lang/String;
    .end local v2           #inflater:Landroid/view/MenuInflater;
    .end local v3           #info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    :cond_1
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 130
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mTransferCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    .line 131
    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 132
    .local v0, inflater:Landroid/view/MenuInflater;
    const/high16 v1, 0x7f05

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 134
    .end local v0           #inflater:Landroid/view/MenuInflater;
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .parameter "parent"
    .parameter "view"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 247
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mTransferCursor:Landroid/database/Cursor;

    invoke-interface {v0, p3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 248
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->openCompleteTransfer()V

    .line 249
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->updateNotificationWhenBtDisabled()V

    .line 250
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 146
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 151
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 148
    :pswitch_0
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->promptClearList()V

    .line 149
    const/4 v0, 0x1

    goto :goto_0

    .line 146
    :pswitch_data_0
    .packed-switch 0x7f060024
        :pswitch_0
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 139
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->getClearableCount()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    move v0, v1

    .line 140
    .local v0, showClear:Z
    :goto_0
    const v1, 0x7f060024

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 141
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1

    .line 139
    .end local v0           #showClear:Z
    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method
