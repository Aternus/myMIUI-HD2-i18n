.class public Lcom/android/contacts/ExportSimCardActivity;
.super Landroid/app/Activity;
.source "ExportSimCardActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/ExportSimCardActivity$CopyAllThread;
    }
.end annotation


# static fields
.field public static final SIM_CAPACITY_URI:Landroid/net/Uri;

.field public static final SIM_CONTENT_URI:Landroid/net/Uri;

.field public static final SIM_FREESPACE_URI:Landroid/net/Uri;


# instance fields
.field private mCanceled:Z

.field private mCopyAllThread:Lcom/android/contacts/ExportSimCardActivity$CopyAllThread;

.field private mHandler:Landroid/os/Handler;

.field private mProgressDialog:Landroid/app/ProgressDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-string v0, "content://icc/adn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/ExportSimCardActivity;->SIM_CONTENT_URI:Landroid/net/Uri;

    .line 24
    const-string v0, "content://icc/freeadn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/ExportSimCardActivity;->SIM_FREESPACE_URI:Landroid/net/Uri;

    .line 25
    const-string v0, "content://icc/adncapacity"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/ExportSimCardActivity;->SIM_CAPACITY_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 218
    new-instance v0, Lcom/android/contacts/ExportSimCardActivity$1;

    invoke-direct {v0, p0}, Lcom/android/contacts/ExportSimCardActivity$1;-><init>(Lcom/android/contacts/ExportSimCardActivity;)V

    iput-object v0, p0, Lcom/android/contacts/ExportSimCardActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/ExportSimCardActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/contacts/ExportSimCardActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/contacts/ExportSimCardActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/android/contacts/ExportSimCardActivity;->getFreeSpace()I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/contacts/ExportSimCardActivity;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Lcom/android/contacts/ExportSimCardActivity;->quitNoSpace(II)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/contacts/ExportSimCardActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/android/contacts/ExportSimCardActivity;->initProgress(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/contacts/ExportSimCardActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/android/contacts/ExportSimCardActivity;->mCanceled:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/contacts/ExportSimCardActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    iput-boolean p1, p0, Lcom/android/contacts/ExportSimCardActivity;->mCanceled:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/contacts/ExportSimCardActivity;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Lcom/android/contacts/ExportSimCardActivity;->copyOne(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/contacts/ExportSimCardActivity;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Lcom/android/contacts/ExportSimCardActivity;->updateProgress(II)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/contacts/ExportSimCardActivity;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Lcom/android/contacts/ExportSimCardActivity;->promptCancel(II)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/contacts/ExportSimCardActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/android/contacts/ExportSimCardActivity;->confirmDone(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/contacts/ExportSimCardActivity;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/contacts/ExportSimCardActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/contacts/ExportSimCardActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    iput-object p1, p0, Lcom/android/contacts/ExportSimCardActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method private checkSIM()Z
    .locals 1

    .prologue
    .line 170
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/android/contacts/ExportSimCardActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v0

    return v0
.end method

.method private confirmDone(I)V
    .locals 4
    .parameter "max"

    .prologue
    .line 215
    iget-object v0, p0, Lcom/android/contacts/ExportSimCardActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/contacts/ExportSimCardActivity;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, p1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 216
    return-void
.end method

.method private copyOne(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "name"
    .parameter "number"

    .prologue
    .line 192
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 193
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "tag"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    const-string v1, "number"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    invoke-virtual {p0}, Lcom/android/contacts/ExportSimCardActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/contacts/ExportSimCardActivity;->SIM_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getFreeSpace()I
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 174
    const/4 v7, 0x0

    .line 175
    .local v7, freeSpace:I
    invoke-virtual {p0}, Lcom/android/contacts/ExportSimCardActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/contacts/ExportSimCardActivity;->SIM_FREESPACE_URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 177
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 179
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    .line 184
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 188
    :cond_1
    :goto_0
    return v7

    .line 182
    :catch_0
    move-exception v0

    .line 184
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private initProgress(I)V
    .locals 4
    .parameter "max"

    .prologue
    .line 203
    iget-object v0, p0, Lcom/android/contacts/ExportSimCardActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/contacts/ExportSimCardActivity;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, p1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 204
    return-void
.end method

.method private promptCancel(II)V
    .locals 3
    .parameter "cur"
    .parameter "max"

    .prologue
    .line 211
    iget-object v0, p0, Lcom/android/contacts/ExportSimCardActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/contacts/ExportSimCardActivity;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p2, p1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 212
    return-void
.end method

.method private quitNoSpace(II)V
    .locals 3
    .parameter "needed"
    .parameter "free"

    .prologue
    .line 199
    iget-object v0, p0, Lcom/android/contacts/ExportSimCardActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/contacts/ExportSimCardActivity;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 200
    return-void
.end method

.method private updateProgress(II)V
    .locals 3
    .parameter "cur"
    .parameter "max"

    .prologue
    .line 207
    iget-object v0, p0, Lcom/android/contacts/ExportSimCardActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/contacts/ExportSimCardActivity;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 208
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 130
    if-nez p1, :cond_0

    .line 131
    if-nez p2, :cond_1

    .line 132
    invoke-virtual {p0}, Lcom/android/contacts/ExportSimCardActivity;->finish()V

    .line 148
    :cond_0
    :goto_0
    return-void

    .line 134
    :cond_1
    const-string v2, "numbers"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 135
    .local v1, phoneNumbers:[Ljava/lang/String;
    const-string v2, "names"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 137
    .local v0, names:[Ljava/lang/String;
    array-length v2, v1

    if-nez v2, :cond_2

    .line 138
    invoke-virtual {p0}, Lcom/android/contacts/ExportSimCardActivity;->finish()V

    goto :goto_0

    .line 142
    :cond_2
    new-instance v2, Lcom/android/contacts/ExportSimCardActivity$CopyAllThread;

    invoke-direct {v2, p0, v0, v1}, Lcom/android/contacts/ExportSimCardActivity$CopyAllThread;-><init>(Lcom/android/contacts/ExportSimCardActivity;[Ljava/lang/String;[Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/contacts/ExportSimCardActivity;->mCopyAllThread:Lcom/android/contacts/ExportSimCardActivity$CopyAllThread;

    .line 143
    const v2, 0x7f07000b

    invoke-virtual {p0, v2}, Lcom/android/contacts/ExportSimCardActivity;->showDialog(I)V

    .line 144
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/contacts/ExportSimCardActivity;->mCanceled:Z

    .line 145
    iget-object v2, p0, Lcom/android/contacts/ExportSimCardActivity;->mCopyAllThread:Lcom/android/contacts/ExportSimCardActivity$CopyAllThread;

    invoke-virtual {v2}, Lcom/android/contacts/ExportSimCardActivity$CopyAllThread;->start()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 109
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 111
    invoke-direct {p0}, Lcom/android/contacts/ExportSimCardActivity;->checkSIM()Z

    move-result v1

    if-nez v1, :cond_0

    .line 117
    :goto_0
    return-void

    .line 114
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 115
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "vnd.android.cursor.dir/phone_v2"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 116
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/contacts/ExportSimCardActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7
    .parameter "id"
    .parameter "args"

    .prologue
    const/4 v6, 0x1

    .line 152
    packed-switch p1, :pswitch_data_0

    .line 166
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v2

    :goto_0
    return-object v2

    .line 154
    :pswitch_0
    iget-object v2, p0, Lcom/android/contacts/ExportSimCardActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    if-nez v2, :cond_0

    .line 155
    const v2, 0x7f0b0098

    invoke-virtual {p0, v2}, Lcom/android/contacts/ExportSimCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 156
    .local v1, title:Ljava/lang/String;
    const v2, 0x7f0b0099

    new-array v3, v6, [Ljava/lang/Object;

    const/4 v4, 0x0

    const v5, 0x7f0b0160

    invoke-virtual {p0, v5}, Lcom/android/contacts/ExportSimCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/android/contacts/ExportSimCardActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 158
    .local v0, text:Ljava/lang/String;
    new-instance v2, Landroid/app/ProgressDialog;

    invoke-direct {v2, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/contacts/ExportSimCardActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 159
    iget-object v2, p0, Lcom/android/contacts/ExportSimCardActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 160
    iget-object v2, p0, Lcom/android/contacts/ExportSimCardActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 161
    iget-object v2, p0, Lcom/android/contacts/ExportSimCardActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2, v6}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 162
    iget-object v2, p0, Lcom/android/contacts/ExportSimCardActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    iget-object v3, p0, Lcom/android/contacts/ExportSimCardActivity;->mCopyAllThread:Lcom/android/contacts/ExportSimCardActivity$CopyAllThread;

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 164
    .end local v0           #text:Ljava/lang/String;
    .end local v1           #title:Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/android/contacts/ExportSimCardActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    goto :goto_0

    .line 152
    nop

    :pswitch_data_0
    .packed-switch 0x7f07000b
        :pswitch_0
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 120
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 121
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/ExportSimCardActivity;->mCanceled:Z

    .line 122
    iget-object v0, p0, Lcom/android/contacts/ExportSimCardActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/android/contacts/ExportSimCardActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 124
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/ExportSimCardActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 126
    :cond_0
    return-void
.end method
