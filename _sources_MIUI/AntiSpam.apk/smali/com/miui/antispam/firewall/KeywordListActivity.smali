.class public Lcom/miui/antispam/firewall/KeywordListActivity;
.super Landroid/app/Activity;
.source "KeywordListActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/antispam/firewall/KeywordListActivity$ListViews;,
        Lcom/miui/antispam/firewall/KeywordListActivity$KeywordListAdapter;,
        Lcom/miui/antispam/firewall/KeywordListActivity$QueryHandler;
    }
.end annotation


# instance fields
.field private mActionBar:Landroid/widget/EditableListActionBar;

.field private final mDeleteModeListener:Landroid/widget/EditableListActionBar$OnButtonBarClickListener;

.field private mListAdapter:Landroid/widget/ResourceCursorAdapter;

.field private mListView:Landroid/widget/EditableListView;

.field private mNewDialog:Landroid/app/AlertDialog;

.field private mNewView:Landroid/widget/TextView;

.field private mQueryHandler:Lcom/miui/antispam/firewall/KeywordListActivity$QueryHandler;

.field private mSelectedId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 63
    new-instance v0, Lcom/miui/antispam/firewall/KeywordListActivity$1;

    invoke-direct {v0, p0}, Lcom/miui/antispam/firewall/KeywordListActivity$1;-><init>(Lcom/miui/antispam/firewall/KeywordListActivity;)V

    iput-object v0, p0, Lcom/miui/antispam/firewall/KeywordListActivity;->mDeleteModeListener:Landroid/widget/EditableListActionBar$OnButtonBarClickListener;

    .line 263
    return-void
.end method

.method static synthetic access$000(Lcom/miui/antispam/firewall/KeywordListActivity;)Landroid/widget/ResourceCursorAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/miui/antispam/firewall/KeywordListActivity;->mListAdapter:Landroid/widget/ResourceCursorAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/antispam/firewall/KeywordListActivity;)Landroid/widget/EditableListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/miui/antispam/firewall/KeywordListActivity;->mListView:Landroid/widget/EditableListView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/antispam/firewall/KeywordListActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/miui/antispam/firewall/KeywordListActivity;->startQuery()V

    return-void
.end method

.method static synthetic access$300(Lcom/miui/antispam/firewall/KeywordListActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/miui/antispam/firewall/KeywordListActivity;->add()V

    return-void
.end method

.method static synthetic access$400(Lcom/miui/antispam/firewall/KeywordListActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/miui/antispam/firewall/KeywordListActivity;->mNewView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/miui/antispam/firewall/KeywordListActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/miui/antispam/firewall/KeywordListActivity;->mSelectedId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/miui/antispam/firewall/KeywordListActivity;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/miui/antispam/firewall/KeywordListActivity;->addMultiple(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/miui/antispam/firewall/KeywordListActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/miui/antispam/firewall/KeywordListActivity;->update(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private add()V
    .locals 4

    .prologue
    const-string v3, ""

    .line 285
    const-string v1, ""

    iput-object v3, p0, Lcom/miui/antispam/firewall/KeywordListActivity;->mSelectedId:Ljava/lang/String;

    .line 287
    iget-object v1, p0, Lcom/miui/antispam/firewall/KeywordListActivity;->mNewView:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 288
    iget-object v1, p0, Lcom/miui/antispam/firewall/KeywordListActivity;->mNewDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Lcom/miui/antispam/firewall/KeywordListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07004e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 290
    iget-object v1, p0, Lcom/miui/antispam/firewall/KeywordListActivity;->mNewDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 291
    .local v0, window:Landroid/view/Window;
    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 294
    iget-object v1, p0, Lcom/miui/antispam/firewall/KeywordListActivity;->mNewDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 295
    return-void
.end method

.method private add(Ljava/lang/String;)V
    .locals 5
    .parameter "data"

    .prologue
    const/4 v4, 0x0

    .line 328
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 329
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 348
    :goto_0
    return-void

    .line 333
    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/antispam/firewall/KeywordListActivity;->isKeyword(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 334
    const v2, 0x7f070051

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/miui/antispam/firewall/KeywordListActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 340
    :cond_1
    invoke-virtual {p0}, Lcom/miui/antispam/firewall/KeywordListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 341
    .local v0, resovler:Landroid/content/ContentResolver;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 342
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "data"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    sget-object v2, Landroid/provider/Telephony$Keyword;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 347
    invoke-direct {p0}, Lcom/miui/antispam/firewall/KeywordListActivity;->startQuery()V

    goto :goto_0
.end method

.method private addMultiple(Ljava/lang/String;)V
    .locals 6
    .parameter "data"

    .prologue
    .line 313
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 314
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 325
    :cond_0
    return-void

    .line 318
    :cond_1
    const-string v5, ",|\uff0c"

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 320
    .local v4, subStrs:[Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 321
    move-object v0, v4

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v2, v0, v1

    .line 322
    .local v2, item:Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/miui/antispam/firewall/KeywordListActivity;->add(Ljava/lang/String;)V

    .line 321
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private buildNewDialog()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 369
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f03000b

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/miui/antispam/firewall/KeywordListActivity;->mNewView:Landroid/widget/TextView;

    .line 371
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 372
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 373
    iget-object v1, p0, Lcom/miui/antispam/firewall/KeywordListActivity;->mNewView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 375
    const v1, 0x7f070039

    new-instance v2, Lcom/miui/antispam/firewall/KeywordListActivity$3;

    invoke-direct {v2, p0}, Lcom/miui/antispam/firewall/KeywordListActivity$3;-><init>(Lcom/miui/antispam/firewall/KeywordListActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 387
    const v1, 0x7f07003a

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 388
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/antispam/firewall/KeywordListActivity;->mNewDialog:Landroid/app/AlertDialog;

    .line 389
    return-void
.end method

.method private edit(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "id"
    .parameter "data"

    .prologue
    .line 272
    iput-object p1, p0, Lcom/miui/antispam/firewall/KeywordListActivity;->mSelectedId:Ljava/lang/String;

    .line 274
    iget-object v1, p0, Lcom/miui/antispam/firewall/KeywordListActivity;->mNewView:Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 275
    iget-object v1, p0, Lcom/miui/antispam/firewall/KeywordListActivity;->mNewDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Lcom/miui/antispam/firewall/KeywordListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07004f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 277
    iget-object v1, p0, Lcom/miui/antispam/firewall/KeywordListActivity;->mNewDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 278
    .local v0, window:Landroid/view/Window;
    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 281
    iget-object v1, p0, Lcom/miui/antispam/firewall/KeywordListActivity;->mNewDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 282
    return-void
.end method

.method private isKeyword(Ljava/lang/String;)Z
    .locals 8
    .parameter "keyword"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 351
    invoke-virtual {p0}, Lcom/miui/antispam/firewall/KeywordListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 352
    .local v0, resovler:Landroid/content/ContentResolver;
    sget-object v1, Landroid/provider/Telephony$Keyword;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "data"

    aput-object v3, v2, v5

    const-string v3, "data=?"

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 359
    .local v6, c:Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 360
    .local v7, result:Z
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 361
    const/4 v7, 0x1

    .line 364
    :cond_0
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 365
    :cond_1
    return v7
.end method

.method private startQuery()V
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 213
    iget-object v0, p0, Lcom/miui/antispam/firewall/KeywordListActivity;->mQueryHandler:Lcom/miui/antispam/firewall/KeywordListActivity$QueryHandler;

    invoke-virtual {v0, v1}, Lcom/miui/antispam/firewall/KeywordListActivity$QueryHandler;->cancelOperation(I)V

    .line 214
    iget-object v0, p0, Lcom/miui/antispam/firewall/KeywordListActivity;->mQueryHandler:Lcom/miui/antispam/firewall/KeywordListActivity$QueryHandler;

    sget-object v3, Landroid/provider/Telephony$Keyword;->CONTENT_URI:Landroid/net/Uri;

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/miui/antispam/firewall/KeywordListActivity$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    return-void
.end method

.method private update(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "id"
    .parameter "data"

    .prologue
    const/4 v3, 0x0

    .line 298
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 299
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 310
    :goto_0
    return-void

    .line 303
    :cond_0
    invoke-virtual {p0}, Lcom/miui/antispam/firewall/KeywordListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 304
    .local v0, resovler:Landroid/content/ContentResolver;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 305
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "data"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    sget-object v2, Landroid/provider/Telephony$Keyword;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2, v1, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 309
    invoke-direct {p0}, Lcom/miui/antispam/firewall/KeywordListActivity;->startQuery()V

    goto :goto_0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/miui/antispam/firewall/KeywordListActivity;->mListView:Landroid/widget/EditableListView;

    invoke-virtual {v0}, Landroid/widget/EditableListView;->isEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/miui/antispam/firewall/KeywordListActivity;->mListView:Landroid/widget/EditableListView;

    invoke-virtual {v0}, Landroid/widget/EditableListView;->exitEditMode()V

    .line 130
    :goto_0
    return-void

    .line 129
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 13
    .parameter "item"

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 136
    :try_start_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v6

    check-cast v6, Landroid/widget/AdapterView$AdapterContextMenuInfo;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    .local v6, info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    iget-object v7, p0, Lcom/miui/antispam/firewall/KeywordListActivity;->mListAdapter:Landroid/widget/ResourceCursorAdapter;

    iget v8, v6, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    const/4 v9, 0x2

    sub-int/2addr v8, v9

    invoke-virtual {v7, v8}, Landroid/widget/ResourceCursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/database/Cursor;

    .line 142
    .local v2, cursor:Landroid/database/Cursor;
    invoke-interface {v2, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 143
    .local v0, _id:J
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 145
    .local v3, data:Ljava/lang/String;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 163
    invoke-super {p0, p1}, Landroid/app/Activity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v7

    .end local v0           #_id:J
    .end local v2           #cursor:Landroid/database/Cursor;
    .end local v3           #data:Ljava/lang/String;
    .end local v6           #info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    :goto_0
    return v7

    .line 137
    :catch_0
    move-exception v7

    move-object v4, v7

    .local v4, e:Ljava/lang/ClassCastException;
    move v7, v11

    .line 138
    goto :goto_0

    .line 148
    .end local v4           #e:Ljava/lang/ClassCastException;
    .restart local v0       #_id:J
    .restart local v2       #cursor:Landroid/database/Cursor;
    .restart local v3       #data:Ljava/lang/String;
    .restart local v6       #info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    :pswitch_0
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    .line 149
    .local v5, id:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/miui/antispam/firewall/KeywordListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    sget-object v8, Landroid/provider/Telephony$Keyword;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v8, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v7, v8, v12, v12}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 152
    invoke-direct {p0}, Lcom/miui/antispam/firewall/KeywordListActivity;->startQuery()V

    move v7, v10

    .line 153
    goto :goto_0

    .line 157
    .end local v5           #id:Ljava/lang/String;
    :pswitch_1
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    .line 158
    .restart local v5       #id:Ljava/lang/String;
    invoke-direct {p0, v5, v3}, Lcom/miui/antispam/firewall/KeywordListActivity;->edit(Ljava/lang/String;Ljava/lang/String;)V

    move v7, v10

    .line 159
    goto :goto_0

    .line 145
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "icicle"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 85
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 86
    const v2, 0x7f030009

    invoke-virtual {p0, v2}, Lcom/miui/antispam/firewall/KeywordListActivity;->setContentView(I)V

    .line 87
    const v2, 0x7f09000f

    invoke-virtual {p0, v2}, Lcom/miui/antispam/firewall/KeywordListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditableListView;

    iput-object v2, p0, Lcom/miui/antispam/firewall/KeywordListActivity;->mListView:Landroid/widget/EditableListView;

    .line 88
    const v2, 0x7f09000b

    invoke-virtual {p0, v2}, Lcom/miui/antispam/firewall/KeywordListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditableListActionBar;

    iput-object v2, p0, Lcom/miui/antispam/firewall/KeywordListActivity;->mActionBar:Landroid/widget/EditableListActionBar;

    .line 90
    invoke-virtual {p0}, Lcom/miui/antispam/firewall/KeywordListActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030008

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 91
    .local v1, v:Landroid/view/View;
    iget-object v2, p0, Lcom/miui/antispam/firewall/KeywordListActivity;->mListView:Landroid/widget/EditableListView;

    invoke-virtual {v2, v1, v4, v5}, Landroid/widget/EditableListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 93
    invoke-virtual {p0}, Lcom/miui/antispam/firewall/KeywordListActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030007

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 94
    .local v0, addNumberView:Landroid/view/View;
    new-instance v2, Lcom/miui/antispam/firewall/KeywordListActivity$2;

    invoke-direct {v2, p0}, Lcom/miui/antispam/firewall/KeywordListActivity$2;-><init>(Lcom/miui/antispam/firewall/KeywordListActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    iget-object v2, p0, Lcom/miui/antispam/firewall/KeywordListActivity;->mListView:Landroid/widget/EditableListView;

    invoke-virtual {v2, v0, v4, v5}, Landroid/widget/EditableListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 101
    iget-object v2, p0, Lcom/miui/antispam/firewall/KeywordListActivity;->mListView:Landroid/widget/EditableListView;

    invoke-virtual {v2, v5}, Landroid/widget/EditableListView;->setEditable(Z)V

    .line 102
    iget-object v2, p0, Lcom/miui/antispam/firewall/KeywordListActivity;->mListView:Landroid/widget/EditableListView;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/widget/EditableListView;->setChoiceMode(I)V

    .line 104
    iget-object v2, p0, Lcom/miui/antispam/firewall/KeywordListActivity;->mListView:Landroid/widget/EditableListView;

    iget-object v3, p0, Lcom/miui/antispam/firewall/KeywordListActivity;->mActionBar:Landroid/widget/EditableListActionBar;

    invoke-virtual {v2, v3}, Landroid/widget/EditableListView;->addEditModeListener(Landroid/widget/EditableListView$EditModeListener;)V

    .line 105
    new-instance v2, Lcom/miui/antispam/firewall/KeywordListActivity$KeywordListAdapter;

    invoke-direct {v2, p0, p0}, Lcom/miui/antispam/firewall/KeywordListActivity$KeywordListAdapter;-><init>(Lcom/miui/antispam/firewall/KeywordListActivity;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/miui/antispam/firewall/KeywordListActivity;->mListAdapter:Landroid/widget/ResourceCursorAdapter;

    .line 106
    iget-object v2, p0, Lcom/miui/antispam/firewall/KeywordListActivity;->mListView:Landroid/widget/EditableListView;

    iget-object v3, p0, Lcom/miui/antispam/firewall/KeywordListActivity;->mListAdapter:Landroid/widget/ResourceCursorAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/EditableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 108
    iget-object v2, p0, Lcom/miui/antispam/firewall/KeywordListActivity;->mListView:Landroid/widget/EditableListView;

    invoke-virtual {v2, p0}, Landroid/widget/EditableListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 109
    iget-object v2, p0, Lcom/miui/antispam/firewall/KeywordListActivity;->mListView:Landroid/widget/EditableListView;

    invoke-virtual {v2, p0}, Landroid/widget/EditableListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 110
    new-instance v2, Lcom/miui/antispam/firewall/KeywordListActivity$QueryHandler;

    invoke-direct {v2, p0}, Lcom/miui/antispam/firewall/KeywordListActivity$QueryHandler;-><init>(Lcom/miui/antispam/firewall/KeywordListActivity;)V

    iput-object v2, p0, Lcom/miui/antispam/firewall/KeywordListActivity;->mQueryHandler:Lcom/miui/antispam/firewall/KeywordListActivity$QueryHandler;

    .line 111
    invoke-direct {p0}, Lcom/miui/antispam/firewall/KeywordListActivity;->buildNewDialog()V

    .line 113
    iget-object v2, p0, Lcom/miui/antispam/firewall/KeywordListActivity;->mActionBar:Landroid/widget/EditableListActionBar;

    iget-object v3, p0, Lcom/miui/antispam/firewall/KeywordListActivity;->mDeleteModeListener:Landroid/widget/EditableListActionBar$OnButtonBarClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/EditableListActionBar;->setOnButtonBarClickListener(Landroid/widget/EditableListActionBar$OnButtonBarClickListener;)V

    .line 114
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 10
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x2

    const/4 v7, 0x0

    .line 171
    :try_start_0
    move-object v0, p3

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    move-object v4, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    .local v4, info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    iget v5, v4, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    if-ge v5, v8, :cond_0

    .line 185
    .end local v4           #info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    :goto_0
    return-void

    .line 172
    :catch_0
    move-exception v3

    .line 173
    .local v3, e:Ljava/lang/ClassCastException;
    goto :goto_0

    .line 178
    .end local v3           #e:Ljava/lang/ClassCastException;
    .restart local v4       #info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    :cond_0
    iget-object v5, p0, Lcom/miui/antispam/firewall/KeywordListActivity;->mListAdapter:Landroid/widget/ResourceCursorAdapter;

    iget v6, v4, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    sub-int/2addr v6, v8

    invoke-virtual {v5, v6}, Landroid/widget/ResourceCursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/Cursor;

    .line 180
    .local v1, cursor:Landroid/database/Cursor;
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 182
    .local v2, data:Ljava/lang/String;
    invoke-interface {p1, v2}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 183
    const v5, 0x7f07004d

    invoke-interface {p1, v7, v8, v7, v5}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 184
    const v5, 0x10402df

    invoke-interface {p1, v7, v9, v7, v5}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v2, 0x0

    .line 190
    const/4 v0, 0x3

    const v1, 0x7f070050

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 191
    const/4 v0, 0x1

    return v0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
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
    .line 209
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1, p2}, Landroid/widget/AdapterView;->showContextMenuForChild(Landroid/view/View;)Z

    .line 210
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    const/4 v2, 0x0

    .line 196
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 203
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 198
    :pswitch_0
    invoke-virtual {p0}, Lcom/miui/antispam/firewall/KeywordListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Keyword;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 199
    invoke-direct {p0}, Lcom/miui/antispam/firewall/KeywordListActivity;->startQuery()V

    .line 200
    const/4 v0, 0x1

    goto :goto_0

    .line 196
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 118
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 119
    iget-object v0, p0, Lcom/miui/antispam/firewall/KeywordListActivity;->mListView:Landroid/widget/EditableListView;

    invoke-virtual {v0}, Landroid/widget/EditableListView;->exitEditMode()V

    .line 120
    invoke-direct {p0}, Lcom/miui/antispam/firewall/KeywordListActivity;->startQuery()V

    .line 121
    return-void
.end method
