.class public Lcom/miui/antispam/firewall/FirewallLog;
.super Landroid/app/Activity;
.source "FirewallLog.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/antispam/firewall/FirewallLog$QueryHandler;
    }
.end annotation


# instance fields
.field private mActionBar:Landroid/widget/EditableListActionBar;

.field private mCountView:Landroid/widget/TextView;

.field private final mDeleteModeListener:Landroid/widget/EditableListActionBar$OnButtonBarClickListener;

.field private mListAdapter:Landroid/widget/ResourceCursorAdapter;

.field private mListView:Landroid/widget/EditableListView;

.field private mOriginalQueryNumber:Ljava/lang/String;

.field private mQueryHandler:Lcom/miui/antispam/firewall/FirewallLog$QueryHandler;

.field private mQueryNumber:Ljava/lang/String;

.field private mQueryTarget:I


# direct methods
.method protected constructor <init>(I)V
    .locals 1
    .parameter "queryTarget"

    .prologue
    .line 129
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 85
    new-instance v0, Lcom/miui/antispam/firewall/FirewallLog$1;

    invoke-direct {v0, p0}, Lcom/miui/antispam/firewall/FirewallLog$1;-><init>(Lcom/miui/antispam/firewall/FirewallLog;)V

    iput-object v0, p0, Lcom/miui/antispam/firewall/FirewallLog;->mDeleteModeListener:Landroid/widget/EditableListActionBar$OnButtonBarClickListener;

    .line 130
    iput p1, p0, Lcom/miui/antispam/firewall/FirewallLog;->mQueryTarget:I

    .line 131
    return-void
.end method

.method static synthetic access$000(Lcom/miui/antispam/firewall/FirewallLog;)Landroid/widget/ResourceCursorAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/miui/antispam/firewall/FirewallLog;->mListAdapter:Landroid/widget/ResourceCursorAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/antispam/firewall/FirewallLog;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/miui/antispam/firewall/FirewallLog;->inConversionMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/miui/antispam/firewall/FirewallLog;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget v0, p0, Lcom/miui/antispam/firewall/FirewallLog;->mQueryTarget:I

    return v0
.end method

.method static synthetic access$300(Lcom/miui/antispam/firewall/FirewallLog;)Landroid/widget/EditableListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/miui/antispam/firewall/FirewallLog;->mListView:Landroid/widget/EditableListView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/miui/antispam/firewall/FirewallLog;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/miui/antispam/firewall/FirewallLog;->startQuery()V

    return-void
.end method

.method static synthetic access$500(Lcom/miui/antispam/firewall/FirewallLog;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/miui/antispam/firewall/FirewallLog;->mQueryNumber:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/miui/antispam/firewall/FirewallLog;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/miui/antispam/firewall/FirewallLog;->mCountView:Landroid/widget/TextView;

    return-object v0
.end method

.method public static formatCallData(Landroid/content/Context;Landroid/database/Cursor;)Ljava/lang/String;
    .locals 4
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 596
    invoke-static {p0, p1}, Lcom/miui/antispam/firewall/FirewallLog;->getDate(Landroid/content/Context;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v1

    .line 598
    .local v1, result:Ljava/lang/String;
    invoke-static {p1}, Lcom/miui/antispam/firewall/FirewallLog;->getNumber(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/telephony/PhoneNumberUtils;->parseTelocationString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 599
    .local v0, location:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 600
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 603
    :cond_0
    return-object v1
.end method

.method public static getCountString(J)Ljava/lang/String;
    .locals 2
    .parameter "count"

    .prologue
    .line 520
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 521
    .local v0, b:Ljava/lang/StringBuilder;
    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 522
    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 523
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 524
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getDate(Landroid/content/Context;Landroid/database/Cursor;)Ljava/lang/String;
    .locals 3
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 590
    const/4 v2, 0x2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 591
    .local v0, date:J
    const/16 v2, 0x11

    invoke-static {p0, v0, v1, v2}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getNumber(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 2
    .parameter "cursor"

    .prologue
    .line 504
    const/4 v1, 0x1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->getDialableNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 506
    .local v0, number:Ljava/lang/String;
    const-string v1, "-3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "-2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "-1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 509
    :cond_0
    invoke-static {v0}, Lcom/android/internal/telephony/CallerInfo;->getPresentation(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lcom/android/internal/telephony/Connection;->getPresentationString(I)Ljava/lang/String;

    move-result-object v0

    .line 512
    :cond_1
    return-object v0
.end method

.method public static getOrigianlNumber(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 1
    .parameter "cursor"

    .prologue
    .line 516
    const/4 v0, 0x1

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private inConversionMode()Z
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/miui/antispam/firewall/FirewallLog;->mQueryNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static isFiltered(Landroid/database/Cursor;)Z
    .locals 2
    .parameter "cursor"

    .prologue
    .line 578
    const/4 v1, 0x4

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 580
    .local v0, reason:I
    const/high16 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isImported(Landroid/database/Cursor;)Z
    .locals 2
    .parameter "cursor"

    .prologue
    .line 584
    const/4 v1, 0x4

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 586
    .local v0, reason:I
    const/high16 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isMute(Landroid/database/Cursor;)Z
    .locals 2
    .parameter "cursor"

    .prologue
    .line 567
    const/4 v1, 0x4

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 569
    .local v0, reason:I
    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/16 v1, 0x102

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const/16 v1, 0x103

    if-eq v0, v1, :cond_0

    const/16 v1, 0x105

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static queryContactName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "context"
    .parameter "number"

    .prologue
    const/4 v8, 0x0

    const/4 v3, 0x0

    .line 550
    const/4 v6, 0x0

    .line 552
    .local v6, name:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {v1, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "display_name"

    aput-object v4, v2, v8

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 556
    .local v7, phoneCursor:Landroid/database/Cursor;
    if-eqz v7, :cond_1

    .line 557
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 558
    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 560
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 563
    :cond_1
    return-object v6
.end method

.method public static queryNameFromNumber(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "context"
    .parameter "number"

    .prologue
    const/4 v8, 0x0

    const/4 v3, 0x0

    .line 528
    const/4 v7, 0x0

    .line 531
    .local v7, name:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Blacklist;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "notes"

    aput-object v4, v2, v8

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 537
    .local v6, blackistCursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 538
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 539
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 541
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 544
    :cond_1
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    move-object v0, v7

    .line 546
    :goto_0
    return-object v0

    :cond_2
    invoke-static {p0, p1}, Lcom/miui/antispam/firewall/FirewallLog;->queryContactName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private startQuery()V
    .locals 12

    .prologue
    const/16 v1, 0x64

    const/4 v2, 0x0

    const/4 v11, 0x0

    const/4 v10, 0x2

    const/4 v9, 0x1

    .line 217
    iget-object v0, p0, Lcom/miui/antispam/firewall/FirewallLog;->mQueryHandler:Lcom/miui/antispam/firewall/FirewallLog$QueryHandler;

    invoke-virtual {v0, v1}, Lcom/miui/antispam/firewall/FirewallLog$QueryHandler;->cancelOperation(I)V

    .line 219
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 220
    .local v8, value:Landroid/content/ContentValues;
    const-string v0, "read"

    const-string v3, "1"

    invoke-virtual {v8, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    iget v0, p0, Lcom/miui/antispam/firewall/FirewallLog;->mQueryTarget:I

    const/16 v3, 0x65

    if-ne v0, v3, :cond_2

    .line 223
    iget-object v0, p0, Lcom/miui/antispam/firewall/FirewallLog;->mQueryNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 224
    iget-object v0, p0, Lcom/miui/antispam/firewall/FirewallLog;->mQueryHandler:Lcom/miui/antispam/firewall/FirewallLog$QueryHandler;

    sget-object v3, Landroid/provider/Telephony$FirewallLog;->CONTENT_URI_LOG_CONVERSATION:Landroid/net/Uri;

    new-array v4, v10, [Ljava/lang/String;

    const-string v5, "*"

    aput-object v5, v4, v11

    const-string v5, "count()"

    aput-object v5, v4, v9

    const-string v5, "type=?"

    new-array v6, v9, [Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v11

    const-string v7, "date DESC"

    invoke-virtual/range {v0 .. v7}, Lcom/miui/antispam/firewall/FirewallLog$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    iget-object v0, p0, Lcom/miui/antispam/firewall/FirewallLog;->mQueryHandler:Lcom/miui/antispam/firewall/FirewallLog$QueryHandler;

    sget-object v3, Landroid/provider/Telephony$FirewallLog;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, "type=?"

    new-array v6, v9, [Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v11

    move-object v4, v8

    invoke-virtual/range {v0 .. v6}, Lcom/miui/antispam/firewall/FirewallLog$QueryHandler;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    .line 266
    :cond_0
    :goto_0
    return-void

    .line 230
    :cond_1
    iget-object v0, p0, Lcom/miui/antispam/firewall/FirewallLog;->mQueryHandler:Lcom/miui/antispam/firewall/FirewallLog$QueryHandler;

    sget-object v3, Landroid/provider/Telephony$FirewallLog;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, "type=? AND number=?"

    new-array v6, v10, [Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v11

    iget-object v4, p0, Lcom/miui/antispam/firewall/FirewallLog;->mOriginalQueryNumber:Ljava/lang/String;

    aput-object v4, v6, v9

    const-string v7, "date DESC"

    move-object v4, v2

    invoke-virtual/range {v0 .. v7}, Lcom/miui/antispam/firewall/FirewallLog$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    iget-object v0, p0, Lcom/miui/antispam/firewall/FirewallLog;->mQueryHandler:Lcom/miui/antispam/firewall/FirewallLog$QueryHandler;

    sget-object v3, Landroid/provider/Telephony$FirewallLog;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, "type=? AND number=?"

    new-array v6, v10, [Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v11

    iget-object v4, p0, Lcom/miui/antispam/firewall/FirewallLog;->mOriginalQueryNumber:Ljava/lang/String;

    aput-object v4, v6, v9

    move-object v4, v8

    invoke-virtual/range {v0 .. v6}, Lcom/miui/antispam/firewall/FirewallLog$QueryHandler;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    .line 242
    :cond_2
    iget v0, p0, Lcom/miui/antispam/firewall/FirewallLog;->mQueryTarget:I

    const/16 v3, 0x66

    if-ne v0, v3, :cond_0

    .line 243
    iget-object v0, p0, Lcom/miui/antispam/firewall/FirewallLog;->mQueryNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 244
    iget-object v0, p0, Lcom/miui/antispam/firewall/FirewallLog;->mQueryHandler:Lcom/miui/antispam/firewall/FirewallLog$QueryHandler;

    sget-object v3, Landroid/provider/Telephony$FirewallLog;->CONTENT_URI_LOG_CONVERSATION:Landroid/net/Uri;

    new-array v4, v10, [Ljava/lang/String;

    const-string v5, "*"

    aput-object v5, v4, v11

    const-string v5, "count()"

    aput-object v5, v4, v9

    const-string v5, "type=? OR type=?"

    new-array v6, v10, [Ljava/lang/String;

    const/4 v7, 0x3

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v11

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    const-string v7, "date DESC"

    invoke-virtual/range {v0 .. v7}, Lcom/miui/antispam/firewall/FirewallLog$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    iget-object v0, p0, Lcom/miui/antispam/firewall/FirewallLog;->mQueryHandler:Lcom/miui/antispam/firewall/FirewallLog$QueryHandler;

    sget-object v3, Landroid/provider/Telephony$FirewallLog;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, "type=? OR type=?"

    new-array v6, v10, [Ljava/lang/String;

    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v11

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v9

    move-object v4, v8

    invoke-virtual/range {v0 .. v6}, Lcom/miui/antispam/firewall/FirewallLog$QueryHandler;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    .line 252
    :cond_3
    iget-object v0, p0, Lcom/miui/antispam/firewall/FirewallLog;->mQueryHandler:Lcom/miui/antispam/firewall/FirewallLog$QueryHandler;

    sget-object v3, Landroid/provider/Telephony$FirewallLog;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, "(type=? OR type=?) AND number=?"

    const/4 v4, 0x3

    new-array v6, v4, [Ljava/lang/String;

    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v11

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v9

    iget-object v4, p0, Lcom/miui/antispam/firewall/FirewallLog;->mOriginalQueryNumber:Ljava/lang/String;

    aput-object v4, v6, v10

    const-string v7, "date DESC"

    move-object v4, v2

    invoke-virtual/range {v0 .. v7}, Lcom/miui/antispam/firewall/FirewallLog$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    iget-object v0, p0, Lcom/miui/antispam/firewall/FirewallLog;->mQueryHandler:Lcom/miui/antispam/firewall/FirewallLog$QueryHandler;

    sget-object v3, Landroid/provider/Telephony$FirewallLog;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, "(type=? OR type=?) AND number=?"

    const/4 v4, 0x3

    new-array v6, v4, [Ljava/lang/String;

    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v11

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v9

    iget-object v4, p0, Lcom/miui/antispam/firewall/FirewallLog;->mOriginalQueryNumber:Ljava/lang/String;

    aput-object v4, v6, v10

    move-object v4, v8

    invoke-virtual/range {v0 .. v6}, Lcom/miui/antispam/firewall/FirewallLog$QueryHandler;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/miui/antispam/firewall/FirewallLog;->mListView:Landroid/widget/EditableListView;

    invoke-virtual {v0}, Landroid/widget/EditableListView;->isEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/miui/antispam/firewall/FirewallLog;->mListView:Landroid/widget/EditableListView;

    invoke-virtual {v0}, Landroid/widget/EditableListView;->exitEditMode()V

    .line 210
    :goto_0
    return-void

    .line 209
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 14
    .parameter "item"

    .prologue
    .line 272
    :try_start_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v12

    check-cast v12, Landroid/widget/AdapterView$AdapterContextMenuInfo;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 277
    .local v12, info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    iget-object v0, p0, Lcom/miui/antispam/firewall/FirewallLog;->mListAdapter:Landroid/widget/ResourceCursorAdapter;

    iget v1, v12, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v0, v1}, Landroid/widget/ResourceCursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/database/Cursor;

    .line 278
    .local v6, cursor:Landroid/database/Cursor;
    invoke-static {v6}, Lcom/miui/antispam/firewall/FirewallLog;->getNumber(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v13

    .line 280
    .local v13, number:Ljava/lang/String;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 339
    invoke-super {p0, p1}, Landroid/app/Activity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .end local v6           #cursor:Landroid/database/Cursor;
    .end local v12           #info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    .end local v13           #number:Ljava/lang/String;
    :goto_0
    return v0

    .line 273
    :catch_0
    move-exception v0

    move-object v9, v0

    .line 274
    .local v9, e:Ljava/lang/ClassCastException;
    const/4 v0, 0x0

    goto :goto_0

    .line 283
    .end local v9           #e:Ljava/lang/ClassCastException;
    .restart local v6       #cursor:Landroid/database/Cursor;
    .restart local v12       #info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    .restart local v13       #number:Ljava/lang/String;
    :pswitch_0
    new-instance v10, Landroid/content/Intent;

    const-string v0, "android.intent.action.CALL_PRIVILEGED"

    const-string v1, "tel"

    const/4 v2, 0x0

    invoke-static {v1, v13, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v10, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 285
    .local v10, i:Landroid/content/Intent;
    const/high16 v0, 0x1400

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 286
    invoke-virtual {p0, v10}, Lcom/miui/antispam/firewall/FirewallLog;->startActivity(Landroid/content/Intent;)V

    .line 287
    const/4 v0, 0x1

    goto :goto_0

    .line 291
    .end local v10           #i:Landroid/content/Intent;
    :pswitch_1
    new-instance v10, Landroid/content/Intent;

    const-string v0, "android.intent.action.SENDTO"

    const-string v1, "smsto"

    const/4 v2, 0x0

    invoke-static {v1, v13, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v10, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 293
    .restart local v10       #i:Landroid/content/Intent;
    const/high16 v0, 0x1400

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 294
    invoke-virtual {p0, v10}, Lcom/miui/antispam/firewall/FirewallLog;->startActivity(Landroid/content/Intent;)V

    .line 295
    const/4 v0, 0x1

    goto :goto_0

    .line 299
    .end local v10           #i:Landroid/content/Intent;
    :pswitch_2
    new-instance v10, Landroid/content/Intent;

    const-string v0, "android.intent.action.INSERT"

    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v10, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 300
    .restart local v10       #i:Landroid/content/Intent;
    const-string v0, "phone"

    invoke-virtual {v10, v0, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 301
    const/high16 v0, 0x1400

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 302
    invoke-virtual {p0, v10}, Lcom/miui/antispam/firewall/FirewallLog;->startActivity(Landroid/content/Intent;)V

    .line 303
    const/4 v0, 0x1

    goto :goto_0

    .line 307
    .end local v10           #i:Landroid/content/Intent;
    :pswitch_3
    new-instance v10, Landroid/content/Intent;

    const-string v0, "android.intent.action.INSERT_OR_EDIT"

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 308
    .restart local v10       #i:Landroid/content/Intent;
    const-string v0, "vnd.android.cursor.item/raw_contact"

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 309
    const-string v0, "phone"

    invoke-virtual {v10, v0, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 310
    const/high16 v0, 0x1400

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 311
    invoke-virtual {p0, v10}, Lcom/miui/antispam/firewall/FirewallLog;->startActivity(Landroid/content/Intent;)V

    .line 312
    const/4 v0, 0x1

    goto :goto_0

    .line 316
    .end local v10           #i:Landroid/content/Intent;
    :pswitch_4
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    .line 317
    .local v11, id:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/miui/antispam/firewall/FirewallLog;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$FirewallLog;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, v11}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 320
    invoke-direct {p0}, Lcom/miui/antispam/firewall/FirewallLog;->startQuery()V

    .line 321
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 325
    .end local v11           #id:Ljava/lang/String;
    :pswitch_5
    invoke-static {v6}, Lcom/miui/antispam/firewall/FirewallLog;->getNumber(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v1

    .line 326
    .local v1, address:Ljava/lang/String;
    const/4 v0, 0x5

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 327
    .local v2, body:Ljava/lang/String;
    const/4 v0, 0x2

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 328
    .local v7, date:J
    invoke-virtual {p0}, Lcom/miui/antispam/firewall/FirewallLog;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static/range {v0 .. v5}, Landroid/provider/Telephony$Sms$Inbox;->addMessage(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Z)Landroid/net/Uri;

    .line 330
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    .line 331
    .restart local v11       #id:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/miui/antispam/firewall/FirewallLog;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$FirewallLog;->CONTENT_URI:Landroid/net/Uri;

    .end local v1           #address:Ljava/lang/String;
    invoke-static {v1, v11}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 334
    .end local v2           #body:Ljava/lang/String;
    invoke-direct {p0}, Lcom/miui/antispam/firewall/FirewallLog;->startQuery()V

    .line 335
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 280
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "icicle"

    .prologue
    .line 135
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 136
    iget v7, p0, Lcom/miui/antispam/firewall/FirewallLog;->mQueryTarget:I

    const/16 v8, 0x65

    if-ne v7, v8, :cond_2

    .line 137
    const v7, 0x7f03000d

    invoke-virtual {p0, v7}, Lcom/miui/antispam/firewall/FirewallLog;->setContentView(I)V

    .line 142
    :goto_0
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/miui/antispam/firewall/FirewallLog;->mQueryNumber:Ljava/lang/String;

    .line 143
    invoke-virtual {p0}, Lcom/miui/antispam/firewall/FirewallLog;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 144
    .local v1, i:Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 145
    const-string v7, "data1"

    invoke-virtual {v1, v7}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 146
    .local v0, chars:Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    .line 147
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/miui/antispam/firewall/FirewallLog;->mQueryNumber:Ljava/lang/String;

    .line 148
    const-string v7, "original_number"

    invoke-virtual {v1, v7}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/miui/antispam/firewall/FirewallLog;->mOriginalQueryNumber:Ljava/lang/String;

    .line 152
    .end local v0           #chars:Ljava/lang/CharSequence;
    :cond_0
    iget-object v7, p0, Lcom/miui/antispam/firewall/FirewallLog;->mQueryNumber:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 153
    iget-object v7, p0, Lcom/miui/antispam/firewall/FirewallLog;->mQueryNumber:Ljava/lang/String;

    invoke-static {p0, v7}, Lcom/miui/antispam/firewall/FirewallLog;->queryNameFromNumber(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 155
    .local v4, name:Ljava/lang/String;
    const v7, 0x7f090018

    invoke-virtual {p0, v7}, Lcom/miui/antispam/firewall/FirewallLog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 156
    .local v6, panel:Landroid/view/View;
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 158
    const v7, 0x7f090010

    invoke-virtual {p0, v7}, Lcom/miui/antispam/firewall/FirewallLog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/miui/antispam/firewall/FirewallLog;->mCountView:Landroid/widget/TextView;

    .line 159
    const v7, 0x7f090009

    invoke-virtual {p0, v7}, Lcom/miui/antispam/firewall/FirewallLog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 160
    .local v5, nameView:Landroid/widget/TextView;
    const v7, 0x7f090019

    invoke-virtual {p0, v7}, Lcom/miui/antispam/firewall/FirewallLog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 161
    .local v3, locationView:Landroid/widget/TextView;
    iget-object v7, p0, Lcom/miui/antispam/firewall/FirewallLog;->mQueryNumber:Ljava/lang/String;

    invoke-static {p0, v7}, Landroid/telephony/PhoneNumberUtils;->parseTelocationString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 162
    .local v2, location:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 163
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 165
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/miui/antispam/firewall/FirewallLog;->mQueryNumber:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    .end local v2           #location:Ljava/lang/String;
    .end local v3           #locationView:Landroid/widget/TextView;
    .end local v4           #name:Ljava/lang/String;
    .end local v5           #nameView:Landroid/widget/TextView;
    .end local v6           #panel:Landroid/view/View;
    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/miui/antispam/firewall/FirewallLog;->inConversionMode()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 177
    new-instance v7, Lcom/miui/antispam/firewall/FwlogGroupListAdapter;

    iget v8, p0, Lcom/miui/antispam/firewall/FirewallLog;->mQueryTarget:I

    invoke-direct {v7, p0, v8}, Lcom/miui/antispam/firewall/FwlogGroupListAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v7, p0, Lcom/miui/antispam/firewall/FirewallLog;->mListAdapter:Landroid/widget/ResourceCursorAdapter;

    .line 182
    :goto_2
    const v7, 0x7f09000f

    invoke-virtual {p0, v7}, Lcom/miui/antispam/firewall/FirewallLog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/EditableListView;

    iput-object v7, p0, Lcom/miui/antispam/firewall/FirewallLog;->mListView:Landroid/widget/EditableListView;

    .line 183
    const v7, 0x7f09000b

    invoke-virtual {p0, v7}, Lcom/miui/antispam/firewall/FirewallLog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/EditableListActionBar;

    iput-object v7, p0, Lcom/miui/antispam/firewall/FirewallLog;->mActionBar:Landroid/widget/EditableListActionBar;

    .line 185
    iget-object v7, p0, Lcom/miui/antispam/firewall/FirewallLog;->mListView:Landroid/widget/EditableListView;

    iget-object v8, p0, Lcom/miui/antispam/firewall/FirewallLog;->mListAdapter:Landroid/widget/ResourceCursorAdapter;

    invoke-virtual {v7, v8}, Landroid/widget/EditableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 186
    iget-object v7, p0, Lcom/miui/antispam/firewall/FirewallLog;->mListView:Landroid/widget/EditableListView;

    invoke-virtual {v7, p0}, Landroid/widget/EditableListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 187
    iget-object v7, p0, Lcom/miui/antispam/firewall/FirewallLog;->mListView:Landroid/widget/EditableListView;

    invoke-virtual {v7, p0}, Landroid/widget/EditableListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 188
    new-instance v7, Lcom/miui/antispam/firewall/FirewallLog$QueryHandler;

    invoke-direct {v7, p0}, Lcom/miui/antispam/firewall/FirewallLog$QueryHandler;-><init>(Lcom/miui/antispam/firewall/FirewallLog;)V

    iput-object v7, p0, Lcom/miui/antispam/firewall/FirewallLog;->mQueryHandler:Lcom/miui/antispam/firewall/FirewallLog$QueryHandler;

    .line 190
    iget-object v7, p0, Lcom/miui/antispam/firewall/FirewallLog;->mListView:Landroid/widget/EditableListView;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/widget/EditableListView;->setEditable(Z)V

    .line 191
    iget-object v7, p0, Lcom/miui/antispam/firewall/FirewallLog;->mListView:Landroid/widget/EditableListView;

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Landroid/widget/EditableListView;->setChoiceMode(I)V

    .line 192
    iget-object v7, p0, Lcom/miui/antispam/firewall/FirewallLog;->mListView:Landroid/widget/EditableListView;

    iget-object v8, p0, Lcom/miui/antispam/firewall/FirewallLog;->mActionBar:Landroid/widget/EditableListActionBar;

    invoke-virtual {v7, v8}, Landroid/widget/EditableListView;->addEditModeListener(Landroid/widget/EditableListView$EditModeListener;)V

    .line 193
    iget-object v7, p0, Lcom/miui/antispam/firewall/FirewallLog;->mActionBar:Landroid/widget/EditableListActionBar;

    iget-object v8, p0, Lcom/miui/antispam/firewall/FirewallLog;->mDeleteModeListener:Landroid/widget/EditableListActionBar$OnButtonBarClickListener;

    invoke-virtual {v7, v8}, Landroid/widget/EditableListActionBar;->setOnButtonBarClickListener(Landroid/widget/EditableListActionBar$OnButtonBarClickListener;)V

    .line 194
    return-void

    .line 139
    .end local v1           #i:Landroid/content/Intent;
    :cond_2
    const v7, 0x7f030012

    invoke-virtual {p0, v7}, Lcom/miui/antispam/firewall/FirewallLog;->setContentView(I)V

    goto/16 :goto_0

    .line 167
    .restart local v1       #i:Landroid/content/Intent;
    .restart local v2       #location:Ljava/lang/String;
    .restart local v3       #locationView:Landroid/widget/TextView;
    .restart local v4       #name:Ljava/lang/String;
    .restart local v5       #nameView:Landroid/widget/TextView;
    .restart local v6       #panel:Landroid/view/View;
    :cond_3
    iget-object v7, p0, Lcom/miui/antispam/firewall/FirewallLog;->mQueryNumber:Ljava/lang/String;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 171
    :cond_4
    iget-object v7, p0, Lcom/miui/antispam/firewall/FirewallLog;->mQueryNumber:Ljava/lang/String;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 179
    .end local v2           #location:Ljava/lang/String;
    .end local v3           #locationView:Landroid/widget/TextView;
    .end local v4           #name:Ljava/lang/String;
    .end local v5           #nameView:Landroid/widget/TextView;
    .end local v6           #panel:Landroid/view/View;
    :cond_5
    new-instance v7, Lcom/miui/antispam/firewall/FwlogListAdapter;

    iget v8, p0, Lcom/miui/antispam/firewall/FirewallLog;->mQueryTarget:I

    invoke-direct {v7, p0, v8}, Lcom/miui/antispam/firewall/FwlogListAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v7, p0, Lcom/miui/antispam/firewall/FirewallLog;->mListAdapter:Landroid/widget/ResourceCursorAdapter;

    goto :goto_2
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 12
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    .line 347
    :try_start_0
    move-object v0, p3

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    move-object v3, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 352
    .local v3, info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    iget-object v8, p0, Lcom/miui/antispam/firewall/FirewallLog;->mListAdapter:Landroid/widget/ResourceCursorAdapter;

    iget v9, v3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v8, v9}, Landroid/widget/ResourceCursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/Cursor;

    .line 354
    .local v1, cursor:Landroid/database/Cursor;
    invoke-static {v1}, Lcom/miui/antispam/firewall/FirewallLog;->getNumber(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v5

    .line 355
    .local v5, number:Ljava/lang/String;
    invoke-static {p0, v5}, Lcom/miui/antispam/firewall/FirewallLog;->queryContactName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 357
    .local v4, name:Ljava/lang/String;
    invoke-interface {p1, v5}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 358
    const/4 v8, 0x0

    const/4 v9, 0x2

    const/4 v10, 0x0

    const v11, 0x7f07006a

    invoke-virtual {p0, v11}, Lcom/miui/antispam/firewall/FirewallLog;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {p1, v8, v9, v10, v11}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 359
    const/4 v8, 0x0

    const/4 v9, 0x3

    const/4 v10, 0x0

    const v11, 0x7f07006b

    invoke-interface {p1, v8, v9, v10, v11}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 361
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 363
    const/4 v8, 0x0

    const/4 v9, 0x4

    const/4 v10, 0x0

    const v11, 0x7f07006c

    invoke-interface {p1, v8, v9, v10, v11}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 364
    const/4 v8, 0x0

    const/4 v9, 0x5

    const/4 v10, 0x0

    const v11, 0x7f07006d

    invoke-interface {p1, v8, v9, v10, v11}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 367
    :cond_0
    iget v8, p0, Lcom/miui/antispam/firewall/FirewallLog;->mQueryTarget:I

    const/16 v9, 0x66

    if-ne v8, v9, :cond_2

    invoke-direct {p0}, Lcom/miui/antispam/firewall/FirewallLog;->inConversionMode()Z

    move-result v8

    if-nez v8, :cond_2

    .line 368
    const/4 v8, 0x3

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 369
    .local v7, type:I
    const/4 v8, 0x4

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 370
    .local v6, reason:I
    const/4 v8, 0x2

    if-ne v7, v8, :cond_2

    const/4 v8, 0x4

    if-eq v6, v8, :cond_1

    const/16 v8, 0x104

    if-eq v6, v8, :cond_1

    const/high16 v8, 0x1

    if-eq v6, v8, :cond_1

    const/high16 v8, 0x2

    if-ne v6, v8, :cond_2

    .line 376
    :cond_1
    const/4 v8, 0x0

    const/4 v9, 0x6

    const/4 v10, 0x0

    const v11, 0x7f07003d

    invoke-interface {p1, v8, v9, v10, v11}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 380
    .end local v6           #reason:I
    .end local v7           #type:I
    :cond_2
    invoke-direct {p0}, Lcom/miui/antispam/firewall/FirewallLog;->inConversionMode()Z

    move-result v8

    if-nez v8, :cond_3

    .line 381
    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    const v11, 0x10402df

    invoke-interface {p1, v8, v9, v10, v11}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 383
    .end local v1           #cursor:Landroid/database/Cursor;
    .end local v3           #info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    .end local v4           #name:Ljava/lang/String;
    .end local v5           #number:Ljava/lang/String;
    :cond_3
    :goto_0
    return-void

    .line 348
    :catch_0
    move-exception v2

    .line 349
    .local v2, e:Ljava/lang/ClassCastException;
    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/16 v3, 0xb

    const/4 v2, 0x0

    .line 387
    iget v0, p0, Lcom/miui/antispam/firewall/FirewallLog;->mQueryTarget:I

    const/16 v1, 0x65

    if-ne v0, v1, :cond_1

    .line 388
    const v0, 0x7f070053

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 392
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 389
    :cond_1
    iget v0, p0, Lcom/miui/antispam/firewall/FirewallLog;->mQueryTarget:I

    const/16 v1, 0x66

    if-ne v0, v1, :cond_0

    .line 390
    const v0, 0x7f070054

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
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
    .line 446
    iget-object v0, p0, Lcom/miui/antispam/firewall/FirewallLog;->mListAdapter:Landroid/widget/ResourceCursorAdapter;

    invoke-virtual {v0, p3}, Landroid/widget/ResourceCursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 447
    invoke-static {v0}, Lcom/miui/antispam/firewall/FirewallLog;->getNumber(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v1

    .line 449
    invoke-direct {p0}, Lcom/miui/antispam/firewall/FirewallLog;->inConversionMode()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 450
    const/16 v2, 0x8

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 452
    iget v4, p0, Lcom/miui/antispam/firewall/FirewallLog;->mQueryTarget:I

    const/16 v5, 0x66

    if-eq v4, v5, :cond_0

    const-wide/16 v4, 0x1

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    .line 454
    :cond_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 455
    iget v3, p0, Lcom/miui/antispam/firewall/FirewallLog;->mQueryTarget:I

    const/16 v4, 0x65

    if-ne v3, v4, :cond_1

    const-class v3, Lcom/miui/antispam/firewall/CallLogList;

    :goto_0
    invoke-virtual {v2, p0, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 456
    const-string v3, "data1"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 457
    const-string v1, "original_number"

    invoke-static {v0}, Lcom/miui/antispam/firewall/FirewallLog;->getOrigianlNumber(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 459
    invoke-virtual {p0, v2}, Lcom/miui/antispam/firewall/FirewallLog;->startActivity(Landroid/content/Intent;)V

    .line 465
    :goto_1
    return-void

    .line 455
    :cond_1
    const-class v3, Lcom/miui/antispam/firewall/MmsLogList;

    goto :goto_0

    .line 464
    :cond_2
    invoke-virtual {p1, p2}, Landroid/widget/AdapterView;->showContextMenuForChild(Landroid/view/View;)Z

    goto :goto_1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 8
    .parameter "item"

    .prologue
    const/4 v4, 0x3

    const/4 v7, 0x0

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 407
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 440
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 410
    :pswitch_0
    iget v0, p0, Lcom/miui/antispam/firewall/FirewallLog;->mQueryTarget:I

    const/16 v1, 0x65

    if-ne v0, v1, :cond_2

    .line 411
    iget-object v0, p0, Lcom/miui/antispam/firewall/FirewallLog;->mQueryNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 412
    invoke-virtual {p0}, Lcom/miui/antispam/firewall/FirewallLog;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$FirewallLog;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "type=?"

    new-array v3, v5, [Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 436
    :cond_0
    :goto_1
    invoke-direct {p0}, Lcom/miui/antispam/firewall/FirewallLog;->startQuery()V

    move v0, v5

    .line 437
    goto :goto_0

    .line 415
    :cond_1
    invoke-virtual {p0}, Lcom/miui/antispam/firewall/FirewallLog;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$FirewallLog;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "type=? AND number=?"

    new-array v3, v6, [Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    iget-object v4, p0, Lcom/miui/antispam/firewall/FirewallLog;->mOriginalQueryNumber:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_1

    .line 421
    :cond_2
    iget v0, p0, Lcom/miui/antispam/firewall/FirewallLog;->mQueryTarget:I

    const/16 v1, 0x66

    if-ne v0, v1, :cond_0

    .line 422
    iget-object v0, p0, Lcom/miui/antispam/firewall/FirewallLog;->mQueryNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 423
    invoke-virtual {p0}, Lcom/miui/antispam/firewall/FirewallLog;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$FirewallLog;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "type=? OR type=?"

    new-array v3, v6, [Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_1

    .line 428
    :cond_3
    invoke-virtual {p0}, Lcom/miui/antispam/firewall/FirewallLog;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$FirewallLog;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "(type=? OR type=?) AND number=?"

    new-array v3, v4, [Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/miui/antispam/firewall/FirewallLog;->mOriginalQueryNumber:Ljava/lang/String;

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_1

    .line 407
    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v2, 0x0

    .line 397
    iget v0, p0, Lcom/miui/antispam/firewall/FirewallLog;->mQueryTarget:I

    const/16 v1, 0x65

    if-ne v0, v1, :cond_1

    .line 398
    invoke-interface {p1, v2}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f070053

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 402
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 399
    :cond_1
    iget v0, p0, Lcom/miui/antispam/firewall/FirewallLog;->mQueryTarget:I

    const/16 v1, 0x66

    if-ne v0, v1, :cond_0

    .line 400
    invoke-interface {p1, v2}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f070054

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 198
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 199
    iget-object v0, p0, Lcom/miui/antispam/firewall/FirewallLog;->mListView:Landroid/widget/EditableListView;

    invoke-virtual {v0}, Landroid/widget/EditableListView;->exitEditMode()V

    .line 200
    invoke-direct {p0}, Lcom/miui/antispam/firewall/FirewallLog;->startQuery()V

    .line 201
    return-void
.end method
