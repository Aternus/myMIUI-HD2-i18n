.class public Lcom/miui/antispam/firewall/AddFirewall;
.super Landroid/app/Activity;
.source "AddFirewall.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/antispam/firewall/AddFirewall$1;,
        Lcom/miui/antispam/firewall/AddFirewall$OKListener;,
        Lcom/miui/antispam/firewall/AddFirewall$CancelListener;,
        Lcom/miui/antispam/firewall/AddFirewall$Cancel;
    }
.end annotation


# static fields
.field public static MODE:Ljava/lang/String;


# instance fields
.field private mId:Ljava/lang/String;

.field private mImportMs:Landroid/widget/CheckBox;

.field private mImportMsText:Landroid/widget/TextView;

.field private mMode:I

.field private mNotesView:Landroid/widget/TextView;

.field private mNumberEdit:Landroid/widget/TextView;

.field private mNumberView:Landroid/widget/TextView;

.field private mPhoneNumbers:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-string v0, "mode"

    sput-object v0, Lcom/miui/antispam/firewall/AddFirewall;->MODE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 166
    return-void
.end method

.method static synthetic access$1000(Lcom/miui/antispam/firewall/AddFirewall;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/miui/antispam/firewall/AddFirewall;->isInWhitelist(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/miui/antispam/firewall/AddFirewall;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/miui/antispam/firewall/AddFirewall;->mId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/antispam/firewall/AddFirewall;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget v0, p0, Lcom/miui/antispam/firewall/AddFirewall;->mMode:I

    return v0
.end method

.method static synthetic access$400(Lcom/miui/antispam/firewall/AddFirewall;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/miui/antispam/firewall/AddFirewall;->mPhoneNumbers:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/miui/antispam/firewall/AddFirewall;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/miui/antispam/firewall/AddFirewall;->isInBlacklist(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/miui/antispam/firewall/AddFirewall;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/miui/antispam/firewall/AddFirewall;->mNotesView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/miui/antispam/firewall/AddFirewall;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/miui/antispam/firewall/AddFirewall;->mImportMs:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$800(Lcom/miui/antispam/firewall/AddFirewall;[Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/miui/antispam/firewall/AddFirewall;->importMessage([Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/miui/antispam/firewall/AddFirewall;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/miui/antispam/firewall/AddFirewall;->mNumberEdit:Landroid/widget/TextView;

    return-object v0
.end method

.method private importMessage([Ljava/lang/String;)V
    .locals 22
    .parameter "numbers"

    .prologue
    .line 281
    if-eqz p1, :cond_0

    move-object/from16 v0, p1

    array-length v0, v0

    move v3, v0

    if-nez v3, :cond_1

    .line 341
    :cond_0
    return-void

    .line 284
    :cond_1
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 286
    .local v18, normalizedNumbers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v10, p1

    .local v10, arr$:[Ljava/lang/String;
    move-object v0, v10

    array-length v0, v0

    move/from16 v17, v0

    .local v17, len$:I
    const/4 v13, 0x0

    .local v13, i$:I
    :goto_0
    move v0, v13

    move/from16 v1, v17

    if-ge v0, v1, :cond_3

    aget-object v19, v10, v13

    .line 287
    .local v19, number:Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 288
    invoke-static/range {v19 .. v19}, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->getHashString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v18

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 286
    :cond_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 292
    .end local v19           #number:Ljava/lang/String;
    :cond_3
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 294
    .local v16, ids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v10, p1

    move-object v0, v10

    array-length v0, v0

    move/from16 v17, v0

    const/4 v13, 0x0

    move v14, v13

    .end local v13           #i$:I
    .local v14, i$:I
    :goto_1
    move v0, v14

    move/from16 v1, v17

    if-ge v0, v1, :cond_9

    aget-object v20, v10, v14

    .line 295
    .local v20, phoneNumber:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/miui/antispam/firewall/AddFirewall;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/Telephony$Sms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "_id"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "address"

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-string v7, "body"

    aput-object v7, v5, v6

    const/4 v6, 0x3

    const-string v7, "date"

    aput-object v7, v5, v6

    const-string v6, "PHONE_NUMBERS_EQUAL(address, ?)"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v20, v7, v8

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 306
    .local v11, c:Landroid/database/Cursor;
    if-eqz v11, :cond_8

    .line 307
    .end local v14           #i$:I
    :cond_4
    :goto_2
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 308
    const/4 v3, 0x1

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 311
    .local v9, address:Ljava/lang/String;
    const/4 v12, 0x0

    .line 312
    .local v12, found:Z
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, i$:Ljava/util/Iterator;
    :cond_5
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    .line 313
    .restart local v19       #number:Ljava/lang/String;
    invoke-static {v9}, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->getHashString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v19

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 314
    const/4 v12, 0x1

    .line 319
    .end local v19           #number:Ljava/lang/String;
    :cond_6
    if-eqz v12, :cond_4

    .line 320
    const/4 v3, 0x0

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 322
    new-instance v21, Landroid/content/ContentValues;

    invoke-direct/range {v21 .. v21}, Landroid/content/ContentValues;-><init>()V

    .line 323
    .local v21, values:Landroid/content/ContentValues;
    const-string v3, "number"

    move-object/from16 v0, v21

    move-object v1, v3

    move-object v2, v9

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    const-string v3, "date"

    const/4 v4, 0x3

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v21

    move-object v1, v3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 325
    const-string v3, "type"

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v21

    move-object v1, v3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 326
    const-string v3, "data1"

    const/4 v4, 0x2

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v21

    move-object v1, v3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    const-string v3, "reason"

    const/high16 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v21

    move-object v1, v3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 329
    const-string v3, "read"

    const-string v4, "1"

    move-object/from16 v0, v21

    move-object v1, v3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    invoke-virtual/range {p0 .. p0}, Lcom/miui/antispam/firewall/AddFirewall;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/Telephony$FirewallLog;->CONTENT_URI:Landroid/net/Uri;

    move-object v0, v3

    move-object v1, v4

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto/16 :goto_2

    .line 334
    .end local v9           #address:Ljava/lang/String;
    .end local v12           #found:Z
    .end local v13           #i$:Ljava/util/Iterator;
    .end local v21           #values:Landroid/content/ContentValues;
    :cond_7
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 294
    :cond_8
    add-int/lit8 v13, v14, 0x1

    .local v13, i$:I
    move v14, v13

    .end local v13           #i$:I
    .restart local v14       #i$:I
    goto/16 :goto_1

    .line 338
    .end local v11           #c:Landroid/database/Cursor;
    .end local v20           #phoneNumber:Ljava/lang/String;
    :cond_9
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .end local v14           #i$:I
    .local v13, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 339
    .local v15, id:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/miui/antispam/firewall/AddFirewall;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4, v15}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_3
.end method

.method private isInBlacklist(Ljava/lang/String;)Z
    .locals 8
    .parameter "phone"

    .prologue
    const/4 v2, 0x0

    .line 245
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 259
    :goto_0
    return v0

    .line 247
    :cond_0
    invoke-virtual {p0}, Lcom/miui/antispam/firewall/AddFirewall;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Blacklist;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 251
    .local v6, c:Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 252
    .local v7, result:Z
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 253
    const/4 v7, 0x1

    .line 258
    :goto_1
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    move v0, v7

    .line 259
    goto :goto_0

    .line 255
    :cond_2
    const/4 v7, 0x0

    goto :goto_1
.end method

.method private isInWhitelist(Ljava/lang/String;)Z
    .locals 8
    .parameter "phone"

    .prologue
    const/4 v2, 0x0

    .line 263
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 277
    :goto_0
    return v0

    .line 265
    :cond_0
    invoke-virtual {p0}, Lcom/miui/antispam/firewall/AddFirewall;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Whitelist;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 269
    .local v6, c:Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 270
    .local v7, result:Z
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 271
    const/4 v7, 0x1

    .line 276
    :goto_1
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    move v0, v7

    .line 277
    goto :goto_0

    .line 273
    :cond_2
    const/4 v7, 0x0

    goto :goto_1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 18
    .parameter "icicle"

    .prologue
    .line 58
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 60
    invoke-static/range {p0 .. p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v15

    const/high16 v16, 0x7f03

    const/16 v17, 0x0

    invoke-virtual/range {v15 .. v17}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v14

    .line 61
    .local v14, view:Landroid/view/View;
    new-instance v4, Landroid/app/AlertDialog$Builder;

    move-object v0, v4

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 62
    .local v4, dialog:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v4, v14}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 64
    const/high16 v15, 0x7f09

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .end local p1
    check-cast p1, Landroid/widget/TextView;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/miui/antispam/firewall/AddFirewall;->mNumberView:Landroid/widget/TextView;

    .line 65
    const v15, 0x7f090001

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/miui/antispam/firewall/AddFirewall;->mNumberEdit:Landroid/widget/TextView;

    .line 66
    const v15, 0x7f090002

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/miui/antispam/firewall/AddFirewall;->mNotesView:Landroid/widget/TextView;

    .line 67
    const v15, 0x7f090003

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/miui/antispam/firewall/AddFirewall;->mImportMs:Landroid/widget/CheckBox;

    .line 68
    const v15, 0x7f090004

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/miui/antispam/firewall/AddFirewall;->mImportMsText:Landroid/widget/TextView;

    .line 69
    const/4 v13, 0x0

    .line 71
    .local v13, showTextEdit:Z
    invoke-virtual/range {p0 .. p0}, Lcom/miui/antispam/firewall/AddFirewall;->getIntent()Landroid/content/Intent;

    move-result-object v6

    .line 72
    .local v6, i:Landroid/content/Intent;
    sget-object v15, Lcom/miui/antispam/firewall/AddFirewall;->MODE:Ljava/lang/String;

    const/16 v16, 0x0

    move-object v0, v6

    move-object v1, v15

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v15

    move v0, v15

    move-object/from16 v1, p0

    iput v0, v1, Lcom/miui/antispam/firewall/AddFirewall;->mMode:I

    .line 73
    const-string v15, "id"

    invoke-virtual {v6, v15}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/miui/antispam/firewall/AddFirewall;->mId:Ljava/lang/String;

    .line 74
    const-string v15, "number"

    invoke-virtual {v6, v15}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 75
    .local v12, phoneNumber:Ljava/lang/String;
    const-string v15, "notes"

    invoke-virtual {v6, v15}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 77
    .local v10, notes:Ljava/lang/String;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/antispam/firewall/AddFirewall;->mMode:I

    move v15, v0

    packed-switch v15, :pswitch_data_0

    .line 138
    :goto_0
    if-eqz v13, :cond_3

    .line 139
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/antispam/firewall/AddFirewall;->mNumberEdit:Landroid/widget/TextView;

    move-object v15, v0

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setVisibility(I)V

    .line 145
    :goto_1
    const v15, 0x7f07005f

    new-instance v16, Lcom/miui/antispam/firewall/AddFirewall$OKListener;

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/miui/antispam/firewall/AddFirewall$OKListener;-><init>(Lcom/miui/antispam/firewall/AddFirewall;Lcom/miui/antispam/firewall/AddFirewall$1;)V

    move-object v0, v4

    move v1, v15

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 146
    const v15, 0x7f070060

    new-instance v16, Lcom/miui/antispam/firewall/AddFirewall$CancelListener;

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/miui/antispam/firewall/AddFirewall$CancelListener;-><init>(Lcom/miui/antispam/firewall/AddFirewall;Lcom/miui/antispam/firewall/AddFirewall$1;)V

    move-object v0, v4

    move v1, v15

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 147
    new-instance v15, Lcom/miui/antispam/firewall/AddFirewall$Cancel;

    const/16 v16, 0x0

    move-object v0, v15

    move-object/from16 v1, p0

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/miui/antispam/firewall/AddFirewall$Cancel;-><init>(Lcom/miui/antispam/firewall/AddFirewall;Lcom/miui/antispam/firewall/AddFirewall$1;)V

    invoke-virtual {v4, v15}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 149
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 150
    return-void

    .line 79
    :pswitch_0
    const v15, 0x7f070061

    invoke-virtual {v4, v15}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 81
    const-string v15, "numbers"

    invoke-virtual {v6, v15}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/miui/antispam/firewall/AddFirewall;->mPhoneNumbers:[Ljava/lang/String;

    .line 82
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 83
    .local v9, message:Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/antispam/firewall/AddFirewall;->mPhoneNumbers:[Ljava/lang/String;

    move-object v15, v0

    if-eqz v15, :cond_2

    .line 84
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/antispam/firewall/AddFirewall;->mPhoneNumbers:[Ljava/lang/String;

    move-object v3, v0

    .local v3, arr$:[Ljava/lang/String;
    array-length v8, v3

    .local v8, len$:I
    const/4 v7, 0x0

    .local v7, i$:I
    :goto_2
    if-ge v7, v8, :cond_1

    aget-object v11, v3, v7

    .line 85
    .local v11, number:Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v15

    if-lez v15, :cond_0

    .line 86
    const-string v15, "\n"

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    :cond_0
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 91
    .end local v11           #number:Ljava/lang/String;
    :cond_1
    invoke-static/range {p0 .. p0}, Lcom/miui/antispam/firewall/FirewallHelper;->getFirewallEnalbed(Landroid/content/Context;)Z

    move-result v5

    .line 92
    .local v5, enableFirewall:Z
    if-nez v5, :cond_2

    .line 94
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "\n\n"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const v16, 0x7f070044

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/miui/antispam/firewall/AddFirewall;->getString(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "\n"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .end local v3           #arr$:[Ljava/lang/String;
    .end local v5           #enableFirewall:Z
    .end local v7           #i$:I
    .end local v8           #len$:I
    :cond_2
    const/4 v13, 0x0

    .line 98
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/antispam/firewall/AddFirewall;->mNumberView:Landroid/widget/TextView;

    move-object v15, v0

    invoke-virtual {v15, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/antispam/firewall/AddFirewall;->mImportMs:Landroid/widget/CheckBox;

    move-object v15, v0

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 100
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/antispam/firewall/AddFirewall;->mImportMsText:Landroid/widget/TextView;

    move-object v15, v0

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 105
    .end local v9           #message:Ljava/lang/StringBuilder;
    :pswitch_1
    const v15, 0x7f070061

    invoke-virtual {v4, v15}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 106
    const/4 v13, 0x1

    .line 107
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/antispam/firewall/AddFirewall;->mImportMs:Landroid/widget/CheckBox;

    move-object v15, v0

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 108
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/antispam/firewall/AddFirewall;->mImportMsText:Landroid/widget/TextView;

    move-object v15, v0

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 113
    :pswitch_2
    const v15, 0x7f070062

    invoke-virtual {v4, v15}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 114
    const/4 v13, 0x1

    .line 115
    goto/16 :goto_0

    .line 119
    :pswitch_3
    const v15, 0x7f070063

    invoke-virtual {v4, v15}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 120
    const/4 v13, 0x0

    .line 121
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/antispam/firewall/AddFirewall;->mNumberView:Landroid/widget/TextView;

    move-object v15, v0

    invoke-virtual {v15, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/antispam/firewall/AddFirewall;->mNotesView:Landroid/widget/TextView;

    move-object v15, v0

    invoke-virtual {v15, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 127
    :pswitch_4
    const v15, 0x7f070064

    invoke-virtual {v4, v15}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 128
    const/4 v13, 0x0

    .line 129
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/antispam/firewall/AddFirewall;->mNumberView:Landroid/widget/TextView;

    move-object v15, v0

    invoke-virtual {v15, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/antispam/firewall/AddFirewall;->mNotesView:Landroid/widget/TextView;

    move-object v15, v0

    invoke-virtual {v15, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 142
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/antispam/firewall/AddFirewall;->mNumberView:Landroid/widget/TextView;

    move-object v15, v0

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 77
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method
