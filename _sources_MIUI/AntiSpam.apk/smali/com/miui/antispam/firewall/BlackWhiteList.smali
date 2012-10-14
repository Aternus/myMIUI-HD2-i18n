.class public Lcom/miui/antispam/firewall/BlackWhiteList;
.super Landroid/app/Activity;
.source "BlackWhiteList.java"

# interfaces
.implements Landroid/widget/ExpandableListView$OnChildClickListener;


# instance fields
.field private mAdapter:Lcom/miui/antispam/firewall/BlackWhiteListAdapter;

.field private mBlackSelected:Ljava/lang/Boolean;

.field private mList:Landroid/widget/ExpandableListView;

.field private mSelectedId:Ljava/lang/String;

.field private mSelectedNotes:Ljava/lang/String;

.field private mSelectedNumber:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/antispam/firewall/BlackWhiteList;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/miui/antispam/firewall/BlackWhiteList;->addBlacklist(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/miui/antispam/firewall/BlackWhiteList;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/miui/antispam/firewall/BlackWhiteList;->addWhitelist(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/antispam/firewall/BlackWhiteList;)Lcom/miui/antispam/firewall/BlackWhiteListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/miui/antispam/firewall/BlackWhiteList;->mAdapter:Lcom/miui/antispam/firewall/BlackWhiteListAdapter;

    return-object v0
.end method

.method private addBlacklist(Ljava/lang/String;)V
    .locals 1
    .parameter "number"

    .prologue
    .line 338
    iget-object v0, p0, Lcom/miui/antispam/firewall/BlackWhiteList;->mAdapter:Lcom/miui/antispam/firewall/BlackWhiteListAdapter;

    invoke-virtual {v0}, Lcom/miui/antispam/firewall/BlackWhiteListAdapter;->getBlackListAdapter()Lcom/miui/antispam/firewall/BlackListAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/antispam/firewall/BlackListAdapter;->add(Ljava/lang/String;)V

    .line 340
    iget-object v0, p0, Lcom/miui/antispam/firewall/BlackWhiteList;->mAdapter:Lcom/miui/antispam/firewall/BlackWhiteListAdapter;

    invoke-virtual {v0}, Lcom/miui/antispam/firewall/BlackWhiteListAdapter;->load()V

    .line 341
    return-void
.end method

.method private addManually()V
    .locals 3

    .prologue
    .line 279
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 280
    const-class v1, Lcom/miui/antispam/firewall/AddFirewall;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 282
    iget-object v1, p0, Lcom/miui/antispam/firewall/BlackWhiteList;->mBlackSelected:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 283
    sget-object v1, Lcom/miui/antispam/firewall/AddFirewall;->MODE:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 288
    :goto_0
    const/16 v1, 0x67

    invoke-virtual {p0, v0, v1}, Lcom/miui/antispam/firewall/BlackWhiteList;->startActivityForResult(Landroid/content/Intent;I)V

    .line 289
    return-void

    .line 285
    :cond_0
    sget-object v1, Lcom/miui/antispam/firewall/AddFirewall;->MODE:Ljava/lang/String;

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0
.end method

.method private addWhitelist(Ljava/lang/String;)V
    .locals 1
    .parameter "number"

    .prologue
    .line 344
    iget-object v0, p0, Lcom/miui/antispam/firewall/BlackWhiteList;->mAdapter:Lcom/miui/antispam/firewall/BlackWhiteListAdapter;

    invoke-virtual {v0}, Lcom/miui/antispam/firewall/BlackWhiteListAdapter;->getWhiteListAdapter()Lcom/miui/antispam/firewall/WhiteListAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/antispam/firewall/WhiteListAdapter;->add(Ljava/lang/String;)V

    .line 346
    iget-object v0, p0, Lcom/miui/antispam/firewall/BlackWhiteList;->mAdapter:Lcom/miui/antispam/firewall/BlackWhiteListAdapter;

    invoke-virtual {v0}, Lcom/miui/antispam/firewall/BlackWhiteListAdapter;->load()V

    .line 347
    return-void
.end method

.method private edit()V
    .locals 3

    .prologue
    .line 310
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 311
    const-class v1, Lcom/miui/antispam/firewall/AddFirewall;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 312
    const-string v1, "id"

    iget-object v2, p0, Lcom/miui/antispam/firewall/BlackWhiteList;->mSelectedId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 313
    const-string v1, "number"

    iget-object v2, p0, Lcom/miui/antispam/firewall/BlackWhiteList;->mSelectedNumber:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 314
    const-string v1, "notes"

    iget-object v2, p0, Lcom/miui/antispam/firewall/BlackWhiteList;->mSelectedNotes:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 316
    iget-object v1, p0, Lcom/miui/antispam/firewall/BlackWhiteList;->mBlackSelected:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 317
    sget-object v1, Lcom/miui/antispam/firewall/AddFirewall;->MODE:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 322
    :goto_0
    const/16 v1, 0x67

    invoke-virtual {p0, v0, v1}, Lcom/miui/antispam/firewall/BlackWhiteList;->startActivityForResult(Landroid/content/Intent;I)V

    .line 323
    return-void

    .line 319
    :cond_0
    sget-object v1, Lcom/miui/antispam/firewall/AddFirewall;->MODE:Ljava/lang/String;

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0
.end method

.method private importBatch([Ljava/lang/String;I)V
    .locals 3
    .parameter "phoneNumbers"
    .parameter "requestCode"

    .prologue
    const/4 v2, 0x0

    .line 357
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 359
    .local v0, pDialog:Landroid/app/ProgressDialog;
    const/16 v1, 0x65

    if-ne p2, v1, :cond_0

    .line 360
    const v1, 0x7f070040

    invoke-virtual {p0, v1}, Lcom/miui/antispam/firewall/BlackWhiteList;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 365
    :goto_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 366
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 368
    new-instance v1, Lcom/miui/antispam/firewall/BlackWhiteList$1;

    invoke-direct {v1, p0, v0, p1, p2}, Lcom/miui/antispam/firewall/BlackWhiteList$1;-><init>(Lcom/miui/antispam/firewall/BlackWhiteList;Landroid/app/ProgressDialog;[Ljava/lang/String;I)V

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/miui/antispam/firewall/BlackWhiteList$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 399
    return-void

    .line 362
    :cond_0
    const v1, 0x7f070041

    invoke-virtual {p0, v1}, Lcom/miui/antispam/firewall/BlackWhiteList;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private pick()V
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lcom/miui/antispam/firewall/BlackWhiteList;->mBlackSelected:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x65

    :goto_0
    invoke-direct {p0, v0}, Lcom/miui/antispam/firewall/BlackWhiteList;->startAddMemberIntent(I)V

    .line 295
    iget-object v0, p0, Lcom/miui/antispam/firewall/BlackWhiteList;->mAdapter:Lcom/miui/antispam/firewall/BlackWhiteListAdapter;

    invoke-virtual {v0}, Lcom/miui/antispam/firewall/BlackWhiteListAdapter;->load()V

    .line 296
    return-void

    .line 292
    :cond_0
    const/16 v0, 0x66

    goto :goto_0
.end method

.method private remove()V
    .locals 2

    .prologue
    .line 299
    iget-object v0, p0, Lcom/miui/antispam/firewall/BlackWhiteList;->mBlackSelected:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/miui/antispam/firewall/BlackWhiteList;->mAdapter:Lcom/miui/antispam/firewall/BlackWhiteListAdapter;

    invoke-virtual {v0}, Lcom/miui/antispam/firewall/BlackWhiteListAdapter;->getBlackListAdapter()Lcom/miui/antispam/firewall/BlackListAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/antispam/firewall/BlackWhiteList;->mSelectedId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/miui/antispam/firewall/BlackListAdapter;->remove(Ljava/lang/String;)V

    .line 306
    :goto_0
    iget-object v0, p0, Lcom/miui/antispam/firewall/BlackWhiteList;->mAdapter:Lcom/miui/antispam/firewall/BlackWhiteListAdapter;

    invoke-virtual {v0}, Lcom/miui/antispam/firewall/BlackWhiteListAdapter;->load()V

    .line 307
    return-void

    .line 303
    :cond_0
    iget-object v0, p0, Lcom/miui/antispam/firewall/BlackWhiteList;->mAdapter:Lcom/miui/antispam/firewall/BlackWhiteListAdapter;

    invoke-virtual {v0}, Lcom/miui/antispam/firewall/BlackWhiteListAdapter;->getWhiteListAdapter()Lcom/miui/antispam/firewall/WhiteListAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/antispam/firewall/BlackWhiteList;->mSelectedId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/miui/antispam/firewall/WhiteListAdapter;->remove(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private startAddMemberIntent(I)V
    .locals 2
    .parameter "requestCode"

    .prologue
    .line 350
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 351
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "vnd.android.cursor.dir/phone_v2"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 353
    invoke-virtual {p0, v0, p1}, Lcom/miui/antispam/firewall/BlackWhiteList;->startActivityForResult(Landroid/content/Intent;I)V

    .line 354
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 403
    const/16 v1, 0x67

    if-ne p1, v1, :cond_1

    .line 404
    iget-object v1, p0, Lcom/miui/antispam/firewall/BlackWhiteList;->mAdapter:Lcom/miui/antispam/firewall/BlackWhiteListAdapter;

    invoke-virtual {v1}, Lcom/miui/antispam/firewall/BlackWhiteListAdapter;->load()V

    .line 416
    :cond_0
    :goto_0
    return-void

    .line 407
    :cond_1
    if-eqz p3, :cond_0

    .line 410
    const/16 v1, 0x65

    if-eq p1, v1, :cond_2

    const/16 v1, 0x66

    if-ne p1, v1, :cond_0

    .line 411
    :cond_2
    const-string v1, "numbers"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 412
    .local v0, phoneNumbers:[Ljava/lang/String;
    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    .line 413
    invoke-direct {p0, v0, p1}, Lcom/miui/antispam/firewall/BlackWhiteList;->importBatch([Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public onChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z
    .locals 1
    .parameter "parent"
    .parameter "v"
    .parameter "groupPosition"
    .parameter "childPosition"
    .parameter "id"

    .prologue
    .line 275
    invoke-virtual {p1, p2}, Landroid/widget/ExpandableListView;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 9
    .parameter "menuItem"

    .prologue
    const/4 v8, 0x0

    const/high16 v7, 0x1400

    const/4 v6, 0x1

    .line 184
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v1

    check-cast v1, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;

    .line 185
    .local v1, info:Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;
    iget-wide v3, v1, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;->packedPosition:J

    invoke-static {v3, v4}, Landroid/widget/ExpandableListView;->getPackedPositionType(J)I

    move-result v2

    .line 187
    .local v2, type:I
    if-ne v2, v6, :cond_0

    .line 188
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 238
    :pswitch_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    .line 242
    :goto_0
    return v3

    .line 190
    :pswitch_1
    invoke-direct {p0}, Lcom/miui/antispam/firewall/BlackWhiteList;->addManually()V

    move v3, v6

    .line 191
    goto :goto_0

    .line 194
    :pswitch_2
    invoke-direct {p0}, Lcom/miui/antispam/firewall/BlackWhiteList;->pick()V

    move v3, v6

    .line 195
    goto :goto_0

    .line 198
    :pswitch_3
    invoke-direct {p0}, Lcom/miui/antispam/firewall/BlackWhiteList;->remove()V

    move v3, v6

    .line 199
    goto :goto_0

    .line 202
    :pswitch_4
    invoke-direct {p0}, Lcom/miui/antispam/firewall/BlackWhiteList;->addManually()V

    move v3, v6

    .line 203
    goto :goto_0

    .line 206
    :pswitch_5
    invoke-direct {p0}, Lcom/miui/antispam/firewall/BlackWhiteList;->pick()V

    move v3, v6

    .line 207
    goto :goto_0

    .line 210
    :pswitch_6
    invoke-direct {p0}, Lcom/miui/antispam/firewall/BlackWhiteList;->remove()V

    move v3, v6

    .line 211
    goto :goto_0

    .line 214
    :pswitch_7
    invoke-direct {p0}, Lcom/miui/antispam/firewall/BlackWhiteList;->edit()V

    move v3, v6

    .line 215
    goto :goto_0

    .line 218
    :pswitch_8
    invoke-direct {p0}, Lcom/miui/antispam/firewall/BlackWhiteList;->edit()V

    move v3, v6

    .line 219
    goto :goto_0

    .line 222
    :pswitch_9
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.CALL_PRIVILEGED"

    const-string v4, "tel"

    iget-object v5, p0, Lcom/miui/antispam/firewall/BlackWhiteList;->mSelectedNumber:Ljava/lang/String;

    invoke-static {v4, v5, v8}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 224
    .local v0, i:Landroid/content/Intent;
    invoke-virtual {v0, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 225
    invoke-virtual {p0, v0}, Lcom/miui/antispam/firewall/BlackWhiteList;->startActivity(Landroid/content/Intent;)V

    move v3, v6

    .line 226
    goto :goto_0

    .line 230
    .end local v0           #i:Landroid/content/Intent;
    :pswitch_a
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.SENDTO"

    const-string v4, "smsto"

    iget-object v5, p0, Lcom/miui/antispam/firewall/BlackWhiteList;->mSelectedNumber:Ljava/lang/String;

    invoke-static {v4, v5, v8}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 232
    .restart local v0       #i:Landroid/content/Intent;
    invoke-virtual {v0, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 233
    invoke-virtual {p0, v0}, Lcom/miui/antispam/firewall/BlackWhiteList;->startActivity(Landroid/content/Intent;)V

    move v3, v6

    .line 234
    goto :goto_0

    .line 242
    .end local v0           #i:Landroid/content/Intent;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 188
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_9
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 60
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 61
    const v1, 0x7f030002

    invoke-virtual {p0, v1}, Lcom/miui/antispam/firewall/BlackWhiteList;->setContentView(I)V

    .line 63
    const v1, 0x1020004

    invoke-virtual {p0, v1}, Lcom/miui/antispam/firewall/BlackWhiteList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 64
    .local v0, emptyView:Landroid/view/View;
    const v1, 0x7f090006

    invoke-virtual {p0, v1}, Lcom/miui/antispam/firewall/BlackWhiteList;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ExpandableListView;

    iput-object v1, p0, Lcom/miui/antispam/firewall/BlackWhiteList;->mList:Landroid/widget/ExpandableListView;

    .line 65
    if-eqz v0, :cond_0

    .line 66
    iget-object v1, p0, Lcom/miui/antispam/firewall/BlackWhiteList;->mList:Landroid/widget/ExpandableListView;

    invoke-virtual {v1, v0}, Landroid/widget/ExpandableListView;->setEmptyView(Landroid/view/View;)V

    .line 69
    :cond_0
    iget-object v1, p0, Lcom/miui/antispam/firewall/BlackWhiteList;->mList:Landroid/widget/ExpandableListView;

    invoke-virtual {v1, p0}, Landroid/widget/ExpandableListView;->setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V

    .line 70
    iget-object v1, p0, Lcom/miui/antispam/firewall/BlackWhiteList;->mList:Landroid/widget/ExpandableListView;

    invoke-virtual {v1, p0}, Landroid/widget/ExpandableListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 72
    new-instance v1, Lcom/miui/antispam/firewall/BlackWhiteListAdapter;

    invoke-direct {v1, p0}, Lcom/miui/antispam/firewall/BlackWhiteListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/miui/antispam/firewall/BlackWhiteList;->mAdapter:Lcom/miui/antispam/firewall/BlackWhiteListAdapter;

    .line 74
    iget-object v1, p0, Lcom/miui/antispam/firewall/BlackWhiteList;->mList:Landroid/widget/ExpandableListView;

    iget-object v2, p0, Lcom/miui/antispam/firewall/BlackWhiteList;->mAdapter:Lcom/miui/antispam/firewall/BlackWhiteListAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 75
    iget-object v1, p0, Lcom/miui/antispam/firewall/BlackWhiteList;->mList:Landroid/widget/ExpandableListView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    .line 76
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 14
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    .line 87
    invoke-super/range {p0 .. p3}, Landroid/app/Activity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 89
    move-object/from16 v0, p3

    check-cast v0, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;

    move-object v5, v0

    .line 90
    .local v5, info:Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;
    iget-wide v9, v5, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;->packedPosition:J

    invoke-static {v9, v10}, Landroid/widget/ExpandableListView;->getPackedPositionType(J)I

    move-result v8

    .line 91
    .local v8, type:I
    iget-wide v9, v5, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;->packedPosition:J

    invoke-static {v9, v10}, Landroid/widget/ExpandableListView;->getPackedPositionGroup(J)I

    move-result v4

    .line 92
    .local v4, group:I
    iget-wide v9, v5, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;->packedPosition:J

    invoke-static {v9, v10}, Landroid/widget/ExpandableListView;->getPackedPositionChild(J)I

    move-result v2

    .line 95
    .local v2, child:I
    const/4 v9, 0x1

    if-ne v8, v9, :cond_0

    .line 96
    const/4 v1, 0x0

    .line 98
    .local v1, body:Ljava/lang/String;
    const/4 v9, 0x1

    if-ne v4, v9, :cond_5

    .line 100
    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    iput-object v9, p0, Lcom/miui/antispam/firewall/BlackWhiteList;->mBlackSelected:Ljava/lang/Boolean;

    .line 102
    iget-object v9, p0, Lcom/miui/antispam/firewall/BlackWhiteList;->mAdapter:Lcom/miui/antispam/firewall/BlackWhiteListAdapter;

    invoke-virtual {v9}, Lcom/miui/antispam/firewall/BlackWhiteListAdapter;->getBlackListAdapter()Lcom/miui/antispam/firewall/BlackListAdapter;

    move-result-object v9

    invoke-virtual {v9}, Lcom/miui/antispam/firewall/BlackListAdapter;->isEmpty()Z

    move-result v6

    .line 104
    .local v6, isEmpty:Z
    if-eqz v6, :cond_1

    if-nez v2, :cond_1

    .line 180
    .end local v1           #body:Ljava/lang/String;
    .end local v6           #isEmpty:Z
    :cond_0
    :goto_0
    return-void

    .line 108
    .restart local v1       #body:Ljava/lang/String;
    .restart local v6       #isEmpty:Z
    :cond_1
    if-eqz v6, :cond_2

    const/4 v9, 0x1

    if-eq v2, v9, :cond_3

    :cond_2
    if-nez v6, :cond_4

    if-nez v2, :cond_4

    .line 110
    :cond_3
    invoke-virtual {p0}, Lcom/miui/antispam/firewall/BlackWhiteList;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f070033

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {p1, v9}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 113
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {p0}, Lcom/miui/antispam/firewall/BlackWhiteList;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f070035

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {p1, v9, v10, v11, v12}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 115
    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-virtual {p0}, Lcom/miui/antispam/firewall/BlackWhiteList;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f070037

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {p1, v9, v10, v11, v12}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_0

    .line 120
    :cond_4
    iget-object v9, p0, Lcom/miui/antispam/firewall/BlackWhiteList;->mAdapter:Lcom/miui/antispam/firewall/BlackWhiteListAdapter;

    invoke-virtual {v9, v4, v2}, Lcom/miui/antispam/firewall/BlackWhiteListAdapter;->getChild(II)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/database/Cursor;

    .line 121
    .local v3, cursor:Landroid/database/Cursor;
    invoke-static {v3}, Lcom/miui/antispam/firewall/BlackListAdapter;->getNumber(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v7

    .line 122
    .local v7, number:Ljava/lang/String;
    invoke-interface {p1, v7}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 124
    iput-object v7, p0, Lcom/miui/antispam/firewall/BlackWhiteList;->mSelectedNumber:Ljava/lang/String;

    .line 125
    invoke-static {v3}, Lcom/miui/antispam/firewall/BlackListAdapter;->getId(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/miui/antispam/firewall/BlackWhiteList;->mSelectedId:Ljava/lang/String;

    .line 126
    invoke-static {v3}, Lcom/miui/antispam/firewall/BlackListAdapter;->getNotes(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/miui/antispam/firewall/BlackWhiteList;->mSelectedNotes:Ljava/lang/String;

    .line 128
    const/4 v9, 0x0

    const/4 v10, 0x6

    const/4 v11, 0x0

    invoke-virtual {p0}, Lcom/miui/antispam/firewall/BlackWhiteList;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f07006a

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {p1, v9, v10, v11, v12}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 130
    const/4 v9, 0x0

    const/4 v10, 0x7

    const/4 v11, 0x0

    invoke-virtual {p0}, Lcom/miui/antispam/firewall/BlackWhiteList;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f07006b

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {p1, v9, v10, v11, v12}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 132
    const/4 v9, 0x0

    const/16 v10, 0xa

    const/4 v11, 0x0

    invoke-virtual {p0}, Lcom/miui/antispam/firewall/BlackWhiteList;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f070063

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {p1, v9, v10, v11, v12}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 134
    const/4 v9, 0x0

    const/4 v10, 0x2

    const/4 v11, 0x0

    invoke-virtual {p0}, Lcom/miui/antispam/firewall/BlackWhiteList;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f070038

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {p1, v9, v10, v11, v12}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 138
    .end local v3           #cursor:Landroid/database/Cursor;
    .end local v6           #isEmpty:Z
    .end local v7           #number:Ljava/lang/String;
    :cond_5
    if-nez v4, :cond_0

    .line 140
    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    iput-object v9, p0, Lcom/miui/antispam/firewall/BlackWhiteList;->mBlackSelected:Ljava/lang/Boolean;

    .line 142
    iget-object v9, p0, Lcom/miui/antispam/firewall/BlackWhiteList;->mAdapter:Lcom/miui/antispam/firewall/BlackWhiteListAdapter;

    invoke-virtual {v9}, Lcom/miui/antispam/firewall/BlackWhiteListAdapter;->getWhiteListAdapter()Lcom/miui/antispam/firewall/WhiteListAdapter;

    move-result-object v9

    invoke-virtual {v9}, Lcom/miui/antispam/firewall/WhiteListAdapter;->isEmpty()Z

    move-result v6

    .line 144
    .restart local v6       #isEmpty:Z
    if-eqz v6, :cond_6

    if-eqz v2, :cond_0

    .line 148
    :cond_6
    if-eqz v6, :cond_7

    const/4 v9, 0x1

    if-eq v2, v9, :cond_8

    :cond_7
    if-nez v6, :cond_9

    if-nez v2, :cond_9

    .line 150
    :cond_8
    invoke-virtual {p0}, Lcom/miui/antispam/firewall/BlackWhiteList;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f070034

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {p1, v9}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 153
    const/4 v9, 0x0

    const/4 v10, 0x3

    const/4 v11, 0x0

    invoke-virtual {p0}, Lcom/miui/antispam/firewall/BlackWhiteList;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f070035

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {p1, v9, v10, v11, v12}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 155
    const/4 v9, 0x0

    const/4 v10, 0x4

    const/4 v11, 0x0

    invoke-virtual {p0}, Lcom/miui/antispam/firewall/BlackWhiteList;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f070037

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {p1, v9, v10, v11, v12}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 160
    :cond_9
    iget-object v9, p0, Lcom/miui/antispam/firewall/BlackWhiteList;->mAdapter:Lcom/miui/antispam/firewall/BlackWhiteListAdapter;

    invoke-virtual {v9, v4, v2}, Lcom/miui/antispam/firewall/BlackWhiteListAdapter;->getChild(II)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/database/Cursor;

    .line 161
    .restart local v3       #cursor:Landroid/database/Cursor;
    invoke-static {v3}, Lcom/miui/antispam/firewall/WhiteListAdapter;->getNumber(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v7

    .line 162
    .restart local v7       #number:Ljava/lang/String;
    invoke-interface {p1, v7}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 164
    iput-object v7, p0, Lcom/miui/antispam/firewall/BlackWhiteList;->mSelectedNumber:Ljava/lang/String;

    .line 165
    invoke-static {v3}, Lcom/miui/antispam/firewall/WhiteListAdapter;->getId(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/miui/antispam/firewall/BlackWhiteList;->mSelectedId:Ljava/lang/String;

    .line 166
    invoke-static {v3}, Lcom/miui/antispam/firewall/WhiteListAdapter;->getNotes(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/miui/antispam/firewall/BlackWhiteList;->mSelectedNotes:Ljava/lang/String;

    .line 168
    const/4 v9, 0x0

    const/4 v10, 0x6

    const/4 v11, 0x0

    invoke-virtual {p0}, Lcom/miui/antispam/firewall/BlackWhiteList;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f07006a

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {p1, v9, v10, v11, v12}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 170
    const/4 v9, 0x0

    const/4 v10, 0x7

    const/4 v11, 0x0

    invoke-virtual {p0}, Lcom/miui/antispam/firewall/BlackWhiteList;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f07006b

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {p1, v9, v10, v11, v12}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 172
    const/4 v9, 0x0

    const/16 v10, 0xb

    const/4 v11, 0x0

    invoke-virtual {p0}, Lcom/miui/antispam/firewall/BlackWhiteList;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f070064

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {p1, v9, v10, v11, v12}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 174
    const/4 v9, 0x0

    const/4 v10, 0x5

    const/4 v11, 0x0

    invoke-virtual {p0}, Lcom/miui/antispam/firewall/BlackWhiteList;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f070038

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {p1, v9, v10, v11, v12}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    goto/16 :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v2, 0x0

    .line 247
    const/16 v0, 0x8

    const v1, 0x7f07003b

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 248
    const/16 v0, 0x9

    const v1, 0x7f07003c

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 249
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 254
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 266
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 256
    :pswitch_0
    invoke-virtual {p0}, Lcom/miui/antispam/firewall/BlackWhiteList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Blacklist;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 257
    iget-object v0, p0, Lcom/miui/antispam/firewall/BlackWhiteList;->mAdapter:Lcom/miui/antispam/firewall/BlackWhiteListAdapter;

    invoke-virtual {v0}, Lcom/miui/antispam/firewall/BlackWhiteListAdapter;->load()V

    move v0, v3

    .line 258
    goto :goto_0

    .line 261
    :pswitch_1
    invoke-virtual {p0}, Lcom/miui/antispam/firewall/BlackWhiteList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Whitelist;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 262
    iget-object v0, p0, Lcom/miui/antispam/firewall/BlackWhiteList;->mAdapter:Lcom/miui/antispam/firewall/BlackWhiteListAdapter;

    invoke-virtual {v0}, Lcom/miui/antispam/firewall/BlackWhiteListAdapter;->load()V

    move v0, v3

    .line 263
    goto :goto_0

    .line 254
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 80
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 82
    iget-object v0, p0, Lcom/miui/antispam/firewall/BlackWhiteList;->mAdapter:Lcom/miui/antispam/firewall/BlackWhiteListAdapter;

    invoke-virtual {v0}, Lcom/miui/antispam/firewall/BlackWhiteListAdapter;->load()V

    .line 83
    return-void
.end method
