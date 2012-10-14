.class public Lcom/android/mms/ui/ManageSimMessages;
.super Landroid/app/Activity;
.source "ManageSimMessages.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/ManageSimMessages$QueryHandler;
    }
.end annotation


# static fields
.field private static final ICC_URI:Landroid/net/Uri;


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field private mCursor:Landroid/database/Cursor;

.field private mIsGSM:Z

.field private mListAdapter:Lcom/android/mms/ui/MessageListAdapter;

.field private mMessage:Landroid/widget/TextView;

.field private mQueryHandler:Landroid/content/AsyncQueryHandler;

.field private mSimList:Landroid/widget/ListView;

.field private mState:I

.field private final simChangeObserver:Landroid/database/ContentObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const-string v0, "content://sms/icc"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/ui/ManageSimMessages;->ICC_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 54
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 71
    iput-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mCursor:Landroid/database/Cursor;

    .line 74
    iput-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    .line 75
    iput-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    .line 77
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mIsGSM:Z

    .line 81
    new-instance v0, Lcom/android/mms/ui/ManageSimMessages$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/mms/ui/ManageSimMessages$1;-><init>(Lcom/android/mms/ui/ManageSimMessages;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->simChangeObserver:Landroid/database/ContentObserver;

    .line 128
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/ManageSimMessages;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/mms/ui/ManageSimMessages;->refreshMessageList()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/mms/ui/ManageSimMessages;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/mms/ui/ManageSimMessages;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/android/mms/ui/ManageSimMessages;->mCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/mms/ui/ManageSimMessages;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ManageSimMessages;->updateState(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/mms/ui/ManageSimMessages;)Lcom/android/mms/ui/MessageListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/mms/ui/ManageSimMessages;Lcom/android/mms/ui/MessageListAdapter;)Lcom/android/mms/ui/MessageListAdapter;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/android/mms/ui/ManageSimMessages;->mListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/mms/ui/ManageSimMessages;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mSimList:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/mms/ui/ManageSimMessages;Landroid/database/Cursor;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ManageSimMessages;->deleteFromSim(Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/mms/ui/ManageSimMessages;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/mms/ui/ManageSimMessages;->deleteAllFromSim()V

    return-void
.end method

.method private confirmDeleteDialog(Landroid/content/DialogInterface$OnClickListener;I)V
    .locals 3
    .parameter "listener"
    .parameter "messageId"

    .prologue
    .line 339
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 340
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f090084

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 341
    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 342
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 343
    const v1, 0x7f090068

    invoke-virtual {v0, v1, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 344
    const v1, 0x7f090069

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 345
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 347
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 348
    return-void
.end method

.method private copyToPhoneMemory(Landroid/database/Cursor;)V
    .locals 9
    .parameter "cursor"

    .prologue
    .line 261
    const-string v0, "address"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 263
    .local v1, address:Ljava/lang/String;
    const-string v0, "body"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 264
    .local v2, body:Ljava/lang/String;
    const-string v0, "date"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 267
    .local v4, date:Ljava/lang/Long;
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ManageSimMessages;->isIncomingMessage(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v3, 0x0

    const/4 v5, 0x1

    invoke-static/range {v0 .. v5}, Landroid/provider/Telephony$Sms$Inbox;->addMessage(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Z)Landroid/net/Uri;

    .line 275
    :goto_0
    return-void

    .line 270
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Landroid/provider/Telephony$Sms$Sent;->addMessage(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 272
    :catch_0
    move-exception v0

    move-object v6, v0

    .line 273
    .local v6, e:Landroid/database/sqlite/SQLiteException;
    invoke-static {p0, v6}, Landroid/database/sqlite/SqliteWrapper;->checkSQLiteException(Landroid/content/Context;Landroid/database/sqlite/SQLiteException;)V

    goto :goto_0
.end method

.method private deleteAllFromSim()V
    .locals 4

    .prologue
    .line 294
    iget-object v3, p0, Lcom/android/mms/ui/ManageSimMessages;->mListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v3}, Lcom/android/mms/ui/MessageListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    .line 296
    .local v1, cursor:Landroid/database/Cursor;
    if-eqz v1, :cond_0

    .line 297
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 298
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 300
    .local v0, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 301
    invoke-direct {p0, v1}, Lcom/android/mms/ui/ManageSimMessages;->deleteFromSim(Landroid/database/Cursor;)V

    .line 302
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    .line 300
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 306
    .end local v0           #count:I
    .end local v2           #i:I
    :cond_0
    return-void
.end method

.method private deleteFromSim(Landroid/database/Cursor;)V
    .locals 4
    .parameter "cursor"

    .prologue
    const/4 v3, 0x0

    .line 286
    const-string v2, "index_on_icc"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 288
    .local v0, messageIndexString:Ljava/lang/String;
    sget-object v2, Lcom/android/mms/ui/ManageSimMessages;->ICC_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 290
    .local v1, simUri:Landroid/net/Uri;
    iget-object v2, p0, Lcom/android/mms/ui/ManageSimMessages;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {p0, v2, v1, v3, v3}, Landroid/database/sqlite/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 291
    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    .line 121
    invoke-virtual {p0}, Lcom/android/mms/ui/ManageSimMessages;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0xea

    invoke-static {v0, v1}, Lcom/android/mms/transaction/MessagingNotification;->cancelNotification(Landroid/content/Context;I)V

    .line 124
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ManageSimMessages;->updateState(I)V

    .line 125
    invoke-direct {p0}, Lcom/android/mms/ui/ManageSimMessages;->startQuery()V

    .line 126
    return-void
.end method

.method private isIncomingMessage(Landroid/database/Cursor;)Z
    .locals 3
    .parameter "cursor"

    .prologue
    const/4 v2, 0x1

    .line 278
    const-string v1, "status"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 281
    .local v0, messageStatus:I
    if-eq v0, v2, :cond_0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    :cond_0
    move v1, v2

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private refreshMessageList()V
    .locals 1

    .prologue
    .line 176
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ManageSimMessages;->updateState(I)V

    .line 177
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ManageSimMessages;->stopManagingCursor(Landroid/database/Cursor;)V

    .line 179
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 181
    :cond_0
    invoke-direct {p0}, Lcom/android/mms/ui/ManageSimMessages;->startQuery()V

    .line 182
    return-void
.end method

.method private registerSimChangeObserver()V
    .locals 4

    .prologue
    .line 246
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/mms/ui/ManageSimMessages;->ICC_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/mms/ui/ManageSimMessages;->simChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 248
    return-void
.end method

.method private startQuery()V
    .locals 9

    .prologue
    .line 169
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    const/4 v1, 0x0

    const/4 v2, 0x0

    sget-object v3, Lcom/android/mms/ui/ManageSimMessages;->ICC_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    :goto_0
    return-void

    .line 170
    :catch_0
    move-exception v0

    move-object v8, v0

    .line 171
    .local v8, e:Landroid/database/sqlite/SQLiteException;
    invoke-static {p0, v8}, Landroid/database/sqlite/SqliteWrapper;->checkSQLiteException(Landroid/content/Context;Landroid/database/sqlite/SQLiteException;)V

    goto :goto_0
.end method

.method private updateState(I)V
    .locals 3
    .parameter "state"

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 351
    iget v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mState:I

    if-ne v0, p1, :cond_0

    .line 375
    :goto_0
    return-void

    .line 355
    :cond_0
    iput p1, p0, Lcom/android/mms/ui/ManageSimMessages;->mState:I

    .line 356
    packed-switch p1, :pswitch_data_0

    .line 373
    const-string v0, "ManageSimMessages"

    const-string v1, "Invalid State"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 358
    :pswitch_0
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mSimList:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 359
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mMessage:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 360
    invoke-virtual {p0, v1}, Lcom/android/mms/ui/ManageSimMessages;->setProgressBarIndeterminateVisibility(Z)V

    goto :goto_0

    .line 363
    :pswitch_1
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mSimList:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 364
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mMessage:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 365
    invoke-virtual {p0, v1}, Lcom/android/mms/ui/ManageSimMessages;->setProgressBarIndeterminateVisibility(Z)V

    goto :goto_0

    .line 368
    :pswitch_2
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mSimList:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 369
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mMessage:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 370
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ManageSimMessages;->setProgressBarIndeterminateVisibility(Z)V

    goto :goto_0

    .line 356
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private viewMessage(Landroid/database/Cursor;)V
    .locals 0
    .parameter "cursor"

    .prologue
    .line 379
    return-void
.end method


# virtual methods
.method public forwardMessage(Landroid/database/Cursor;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 251
    const-string v0, "body"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 253
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/mms/ui/NewMessageActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 254
    const-string v2, "exit_on_sent"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 255
    const-string v2, "sms_body"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 256
    const-string v0, "forwarded_message"

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 257
    invoke-virtual {p0, v1}, Lcom/android/mms/ui/ManageSimMessages;->startActivity(Landroid/content/Intent;)V

    .line 258
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .parameter "item"

    .prologue
    const/4 v5, 0x1

    .line 201
    :try_start_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v2

    check-cast v2, Landroid/widget/AdapterView$AdapterContextMenuInfo;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    .local v2, info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    iget-object v3, p0, Lcom/android/mms/ui/ManageSimMessages;->mListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    iget v4, v2, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v3, v4}, Lcom/android/mms/ui/MessageListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 209
    .local v0, cursor:Landroid/database/Cursor;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 230
    invoke-super {p0, p1}, Landroid/app/Activity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    .end local v0           #cursor:Landroid/database/Cursor;
    .end local v2           #info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    :goto_0
    return v3

    .line 202
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 203
    .local v1, exception:Ljava/lang/ClassCastException;
    const-string v3, "ManageSimMessages"

    const-string v4, "Bad menuInfo."

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 204
    const/4 v3, 0x0

    goto :goto_0

    .line 211
    .end local v1           #exception:Ljava/lang/ClassCastException;
    .restart local v0       #cursor:Landroid/database/Cursor;
    .restart local v2       #info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    :pswitch_0
    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ManageSimMessages;->forwardMessage(Landroid/database/Cursor;)V

    move v3, v5

    .line 212
    goto :goto_0

    .line 214
    :pswitch_1
    invoke-direct {p0, v0}, Lcom/android/mms/ui/ManageSimMessages;->copyToPhoneMemory(Landroid/database/Cursor;)V

    move v3, v5

    .line 215
    goto :goto_0

    .line 217
    :pswitch_2
    new-instance v3, Lcom/android/mms/ui/ManageSimMessages$2;

    invoke-direct {v3, p0, v0}, Lcom/android/mms/ui/ManageSimMessages$2;-><init>(Lcom/android/mms/ui/ManageSimMessages;Landroid/database/Cursor;)V

    iget-boolean v4, p0, Lcom/android/mms/ui/ManageSimMessages;->mIsGSM:Z

    if-eqz v4, :cond_0

    const v4, 0x7f09008c

    :goto_1
    invoke-direct {p0, v3, v4}, Lcom/android/mms/ui/ManageSimMessages;->confirmDeleteDialog(Landroid/content/DialogInterface$OnClickListener;I)V

    move v3, v5

    .line 225
    goto :goto_0

    .line 217
    :cond_0
    const v4, 0x7f09017c

    goto :goto_1

    .line 227
    :pswitch_3
    invoke-direct {p0, v0}, Lcom/android/mms/ui/ManageSimMessages;->viewMessage(Landroid/database/Cursor;)V

    move v3, v5

    .line 228
    goto :goto_0

    .line 209
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "icicle"

    .prologue
    const/4 v2, 0x1

    .line 91
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 92
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ManageSimMessages;->requestWindowFeature(I)Z

    .line 94
    invoke-virtual {p0}, Lcom/android/mms/ui/ManageSimMessages;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mContentResolver:Landroid/content/ContentResolver;

    .line 95
    new-instance v0, Lcom/android/mms/ui/ManageSimMessages$QueryHandler;

    iget-object v1, p0, Lcom/android/mms/ui/ManageSimMessages;->mContentResolver:Landroid/content/ContentResolver;

    invoke-direct {v0, p0, v1, p0}, Lcom/android/mms/ui/ManageSimMessages$QueryHandler;-><init>(Lcom/android/mms/ui/ManageSimMessages;Landroid/content/ContentResolver;Lcom/android/mms/ui/ManageSimMessages;)V

    iput-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    .line 96
    const v0, 0x7f03004c

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ManageSimMessages;->setContentView(I)V

    .line 97
    const v0, 0x7f0d00d5

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ManageSimMessages;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mSimList:Landroid/widget/ListView;

    .line 98
    const v0, 0x7f0d00d6

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ManageSimMessages;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mMessage:Landroid/widget/TextView;

    .line 100
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 101
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mIsGSM:Z

    .line 102
    const v0, 0x7f09017d

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ManageSimMessages;->setTitle(I)V

    .line 103
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mMessage:Landroid/widget/TextView;

    const v1, 0x7f09017e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 110
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/mms/ui/ManageSimMessages;->init()V

    .line 111
    return-void

    .line 104
    :cond_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 105
    iput-boolean v2, p0, Lcom/android/mms/ui/ManageSimMessages;->mIsGSM:Z

    .line 106
    const v0, 0x7f0900a9

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ManageSimMessages;->setTitle(I)V

    .line 107
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mMessage:Landroid/widget/TextView;

    const v1, 0x7f0900ab

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 3
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    const/4 v2, 0x0

    .line 191
    const v0, 0x7f090019

    invoke-interface {p1, v2, v2, v2, v0}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 192
    const/4 v0, 0x2

    const v1, 0x7f0900a8

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 195
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .parameter "intent"

    .prologue
    .line 115
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/ManageSimMessages;->setIntent(Landroid/content/Intent;)V

    .line 117
    invoke-direct {p0}, Lcom/android/mms/ui/ManageSimMessages;->init()V

    .line 118
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 322
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 335
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 324
    :pswitch_0
    new-instance v0, Lcom/android/mms/ui/ManageSimMessages$3;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ManageSimMessages$3;-><init>(Lcom/android/mms/ui/ManageSimMessages;)V

    iget-boolean v1, p0, Lcom/android/mms/ui/ManageSimMessages;->mIsGSM:Z

    if-eqz v1, :cond_0

    const v1, 0x7f09008b

    :goto_1
    invoke-direct {p0, v0, v1}, Lcom/android/mms/ui/ManageSimMessages;->confirmDeleteDialog(Landroid/content/DialogInterface$OnClickListener;I)V

    goto :goto_0

    :cond_0
    const v1, 0x7f09017b

    goto :goto_1

    .line 322
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 241
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 242
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/mms/ui/ManageSimMessages;->simChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 243
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    const/4 v1, 0x0

    .line 310
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 312
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    iget v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mState:I

    if-nez v0, :cond_0

    .line 313
    const v0, 0x7f0900a4

    invoke-interface {p1, v1, v1, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x108003c

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 317
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 235
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 236
    invoke-direct {p0}, Lcom/android/mms/ui/ManageSimMessages;->registerSimChangeObserver()V

    .line 237
    return-void
.end method
