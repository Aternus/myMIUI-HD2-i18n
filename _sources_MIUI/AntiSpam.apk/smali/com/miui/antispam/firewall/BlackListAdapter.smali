.class public final Lcom/miui/antispam/firewall/BlackListAdapter;
.super Landroid/widget/ResourceCursorAdapter;
.source "BlackListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/antispam/firewall/BlackListAdapter$QueryHandler;,
        Lcom/miui/antispam/firewall/BlackListAdapter$ItemView;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mQueryHandler:Lcom/miui/antispam/firewall/BlackListAdapter$QueryHandler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 31
    const v0, 0x7f030005

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/widget/ResourceCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;Z)V

    .line 33
    iput-object p1, p0, Lcom/miui/antispam/firewall/BlackListAdapter;->mContext:Landroid/content/Context;

    .line 34
    new-instance v0, Lcom/miui/antispam/firewall/BlackListAdapter$QueryHandler;

    invoke-direct {v0, p0, p0}, Lcom/miui/antispam/firewall/BlackListAdapter$QueryHandler;-><init>(Lcom/miui/antispam/firewall/BlackListAdapter;Lcom/miui/antispam/firewall/BlackListAdapter;)V

    iput-object v0, p0, Lcom/miui/antispam/firewall/BlackListAdapter;->mQueryHandler:Lcom/miui/antispam/firewall/BlackListAdapter$QueryHandler;

    .line 35
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/miui/antispam/firewall/BlackListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 36
    return-void
.end method

.method static synthetic access$000(Lcom/miui/antispam/firewall/BlackListAdapter;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/miui/antispam/firewall/BlackListAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static add(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "context"
    .parameter "number"
    .parameter "notes"

    .prologue
    .line 47
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 65
    :cond_0
    :goto_0
    return-void

    .line 48
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 49
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 51
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 53
    .local v0, resovler:Landroid/content/ContentResolver;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 54
    .local v2, values:Landroid/content/ContentValues;
    const-string v4, "_id"

    invoke-virtual {v2, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    const-string v4, "notes"

    invoke-virtual {v2, v4, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    sget-object v4, Landroid/provider/Telephony$Blacklist;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v0, v4, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    .line 61
    .local v1, uri:Landroid/net/Uri;
    invoke-static {p0, p1}, Lcom/miui/antispam/firewall/BlackListAdapter;->getWhitelistId(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 62
    .local v3, whitelistId:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 63
    invoke-static {p0, v3}, Lcom/miui/antispam/firewall/WhiteListAdapter;->remove(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getId(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 1
    .parameter "cursor"

    .prologue
    .line 149
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getNotes(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 1
    .parameter "cursor"

    .prologue
    .line 153
    const/4 v0, 0x1

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getNumber(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 1
    .parameter "cursor"

    .prologue
    .line 145
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->getDialableNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getWhitelistId(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "context"
    .parameter "number"

    .prologue
    const/4 v2, 0x0

    .line 252
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Whitelist;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 256
    .local v6, c:Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 257
    .local v7, result:Ljava/lang/String;
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 258
    invoke-static {v6}, Lcom/miui/antispam/firewall/WhiteListAdapter;->getId(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v7

    .line 261
    :cond_0
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 263
    :cond_1
    return-object v7
.end method

.method public static remove(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "id"

    .prologue
    const/4 v2, 0x0

    .line 79
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Blacklist;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 82
    return-void
.end method

.method private startQuery()V
    .locals 8

    .prologue
    const/16 v1, 0xb

    const/4 v2, 0x0

    .line 217
    iget-object v0, p0, Lcom/miui/antispam/firewall/BlackListAdapter;->mQueryHandler:Lcom/miui/antispam/firewall/BlackListAdapter$QueryHandler;

    invoke-virtual {v0, v1}, Lcom/miui/antispam/firewall/BlackListAdapter$QueryHandler;->cancelOperation(I)V

    .line 218
    iget-object v0, p0, Lcom/miui/antispam/firewall/BlackListAdapter;->mQueryHandler:Lcom/miui/antispam/firewall/BlackListAdapter$QueryHandler;

    sget-object v3, Landroid/provider/Telephony$Blacklist;->CONTENT_URI:Landroid/net/Uri;

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/miui/antispam/firewall/BlackListAdapter$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    return-void
.end method

.method public static update(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "id"
    .parameter "notes"

    .prologue
    const/4 v3, 0x0

    .line 68
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 76
    :goto_0
    return-void

    .line 70
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 72
    .local v0, resovler:Landroid/content/ContentResolver;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 73
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "notes"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    sget-object v2, Landroid/provider/Telephony$Blacklist;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2, v1, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public add(Ljava/lang/String;)V
    .locals 2
    .parameter "number"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/miui/antispam/firewall/BlackListAdapter;->mContext:Landroid/content/Context;

    const-string v1, ""

    invoke-static {v0, p1, v1}, Lcom/miui/antispam/firewall/BlackListAdapter;->add(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 17
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 158
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/miui/antispam/firewall/BlackListAdapter$ItemView;

    .line 160
    .local v12, main:Lcom/miui/antispam/firewall/BlackListAdapter$ItemView;
    invoke-static/range {p3 .. p3}, Lcom/miui/antispam/firewall/BlackListAdapter;->getNumber(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v14

    .line 161
    .local v14, number:Ljava/lang/String;
    iput-object v14, v12, Lcom/miui/antispam/firewall/BlackListAdapter$ItemView;->number:Ljava/lang/String;

    .line 164
    invoke-static/range {p3 .. p3}, Lcom/miui/antispam/firewall/BlackListAdapter;->getNotes(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v13

    .line 165
    .local v13, name:Ljava/lang/String;
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 166
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {v4, v14}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "display_name"

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 171
    .local v15, phoneCursor:Landroid/database/Cursor;
    if-eqz v15, :cond_1

    .line 172
    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 173
    const/4 v3, 0x0

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 175
    :cond_0
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 179
    .end local v15           #phoneCursor:Landroid/database/Cursor;
    :cond_1
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 180
    iget-object v3, v12, Lcom/miui/antispam/firewall/BlackListAdapter$ItemView;->blacklistName:Landroid/widget/TextView;

    invoke-virtual {v3, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/Telephony$FirewallLog;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4, v14}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "type"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "count(*)"

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 190
    .local v9, c:Landroid/database/Cursor;
    const/4 v11, 0x0

    .line 191
    .local v11, count_tel:I
    const/4 v10, 0x0

    .line 192
    .local v10, count_ms:I
    if-eqz v9, :cond_7

    .line 193
    :cond_2
    :goto_1
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 194
    const/4 v3, 0x0

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 195
    .local v16, type:I
    const/4 v3, 0x1

    move/from16 v0, v16

    move v1, v3

    if-ne v0, v1, :cond_4

    .line 196
    const/4 v3, 0x1

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    add-int/2addr v11, v3

    goto :goto_1

    .line 182
    .end local v9           #c:Landroid/database/Cursor;
    .end local v10           #count_ms:I
    .end local v11           #count_tel:I
    .end local v16           #type:I
    :cond_3
    iget-object v3, v12, Lcom/miui/antispam/firewall/BlackListAdapter$ItemView;->blacklistName:Landroid/widget/TextView;

    invoke-virtual {v3, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 197
    .restart local v9       #c:Landroid/database/Cursor;
    .restart local v10       #count_ms:I
    .restart local v11       #count_tel:I
    .restart local v16       #type:I
    :cond_4
    const/4 v3, 0x3

    move/from16 v0, v16

    move v1, v3

    if-eq v0, v1, :cond_5

    const/4 v3, 0x2

    move/from16 v0, v16

    move v1, v3

    if-ne v0, v1, :cond_2

    .line 199
    :cond_5
    const/4 v3, 0x1

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    add-int/2addr v10, v3

    goto :goto_1

    .line 202
    .end local v16           #type:I
    :cond_6
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 205
    :cond_7
    iget-object v3, v12, Lcom/miui/antispam/firewall/BlackListAdapter$ItemView;->blacklistLog:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_8

    const-string v5, ""

    :goto_2
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const v5, 0x7f070052

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    move-object/from16 v0, p2

    move v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 207
    return-void

    .line 205
    :cond_8
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " | "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_2
.end method

.method public getCount()I
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 98
    invoke-virtual {p0}, Lcom/miui/antispam/firewall/BlackListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 99
    invoke-virtual {p0}, Lcom/miui/antispam/firewall/BlackListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 100
    .local v0, count:I
    if-nez v0, :cond_0

    move v1, v2

    .line 102
    .end local v0           #count:I
    :goto_0
    return v1

    .line 100
    .restart local v0       #count:I
    :cond_0
    add-int/lit8 v1, v0, 0x1

    goto :goto_0

    .end local v0           #count:I
    :cond_1
    move v1, v2

    .line 102
    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2
    .parameter "position"

    .prologue
    const/4 v1, 0x0

    .line 107
    if-nez p1, :cond_0

    move-object v0, v1

    .line 112
    :goto_0
    return-object v0

    .line 109
    :cond_0
    invoke-virtual {p0}, Lcom/miui/antispam/firewall/BlackListAdapter;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 110
    const/4 v0, 0x1

    sub-int v0, p1, v0

    invoke-super {p0, v0}, Landroid/widget/ResourceCursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 112
    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const v1, 0x7f030007

    const/4 v2, 0x0

    .line 118
    invoke-virtual {p0}, Lcom/miui/antispam/firewall/BlackListAdapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 119
    if-nez p1, :cond_0

    .line 120
    iget-object v0, p0, Lcom/miui/antispam/firewall/BlackListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f030004

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 139
    :goto_0
    return-object v0

    .line 122
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 123
    iget-object v0, p0, Lcom/miui/antispam/firewall/BlackListAdapter;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v2

    .line 126
    goto :goto_0

    .line 129
    :cond_2
    if-nez p1, :cond_3

    .line 130
    iget-object v0, p0, Lcom/miui/antispam/firewall/BlackListAdapter;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 133
    :cond_3
    add-int/lit8 p1, p1, -0x1

    .line 135
    if-eqz p2, :cond_4

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/miui/antispam/firewall/BlackListAdapter$ItemView;

    if-eqz v0, :cond_4

    .line 136
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ResourceCursorAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 139
    :cond_4
    invoke-super {p0, p1, v2, p3}, Landroid/widget/ResourceCursorAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/miui/antispam/firewall/BlackListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/antispam/firewall/BlackListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public load()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/miui/antispam/firewall/BlackListAdapter;->startQuery()V

    .line 40
    return-void
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 211
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ResourceCursorAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 212
    .local v0, view:Landroid/view/View;
    new-instance v1, Lcom/miui/antispam/firewall/BlackListAdapter$ItemView;

    invoke-direct {v1, v0}, Lcom/miui/antispam/firewall/BlackListAdapter$ItemView;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 213
    return-object v0
.end method

.method public remove(Ljava/lang/String;)V
    .locals 1
    .parameter "id"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/miui/antispam/firewall/BlackListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/miui/antispam/firewall/BlackListAdapter;->remove(Landroid/content/Context;Ljava/lang/String;)V

    .line 86
    return-void
.end method
