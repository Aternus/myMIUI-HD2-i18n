.class public Lcom/miui/milk/source/antispam/AntiSpamManager;
.super Ljava/lang/Object;
.source "AntiSpamManager.java"


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/miui/milk/source/antispam/AntiSpamManager;->mContext:Landroid/content/Context;

    .line 26
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/source/antispam/AntiSpamManager;->mResolver:Landroid/content/ContentResolver;

    .line 27
    return-void
.end method

.method private isInBlacklist(Ljava/lang/String;)Z
    .locals 8
    .parameter "id"

    .prologue
    const/4 v2, 0x0

    .line 202
    iget-object v0, p0, Lcom/miui/milk/source/antispam/AntiSpamManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/Telephony$Blacklist;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 206
    .local v6, c:Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 207
    .local v7, result:Z
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    const/4 v7, 0x1

    .line 211
    :cond_0
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 212
    :cond_1
    return v7
.end method

.method private isInWhitelist(Ljava/lang/String;)Z
    .locals 8
    .parameter "id"

    .prologue
    const/4 v2, 0x0

    .line 216
    iget-object v0, p0, Lcom/miui/milk/source/antispam/AntiSpamManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/Telephony$Whitelist;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 220
    .local v6, c:Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 221
    .local v7, result:Z
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 222
    const/4 v7, 0x1

    .line 225
    :cond_0
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 226
    :cond_1
    return v7
.end method

.method private isKeyword(Ljava/lang/String;)Z
    .locals 8
    .parameter "keyword"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 230
    iget-object v0, p0, Lcom/miui/milk/source/antispam/AntiSpamManager;->mResolver:Landroid/content/ContentResolver;

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

    .line 237
    .local v6, c:Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 238
    .local v7, result:Z
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 239
    const/4 v7, 0x1

    .line 242
    :cond_0
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 243
    :cond_1
    return v7
.end method


# virtual methods
.method public AddBlacklist(Lcom/miui/milk/model/AntiSpamProtos$BlacklistEntry;)Z
    .locals 6
    .parameter "entry"

    .prologue
    const/4 v5, 0x0

    .line 130
    invoke-virtual {p1}, Lcom/miui/milk/model/AntiSpamProtos$BlacklistEntry;->getId()Ljava/lang/String;

    move-result-object v0

    .line 131
    .local v0, id:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/miui/milk/model/AntiSpamProtos$BlacklistEntry;->getNotes()Ljava/lang/String;

    move-result-object v1

    .line 133
    .local v1, notes:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v5

    .line 152
    :goto_0
    return v4

    .line 137
    :cond_0
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->getDialableNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 139
    .local v2, number:Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/miui/milk/source/antispam/AntiSpamManager;->isInBlacklist(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v4, v5

    .line 140
    goto :goto_0

    .line 143
    :cond_1
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 144
    .local v3, values:Landroid/content/ContentValues;
    const-string v4, "_id"

    invoke-virtual {v3, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    const-string v4, "notes"

    invoke-virtual {v3, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    iget-object v4, p0, Lcom/miui/milk/source/antispam/AntiSpamManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v5, Landroid/provider/Telephony$Blacklist;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v5, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 150
    invoke-virtual {p0, v0}, Lcom/miui/milk/source/antispam/AntiSpamManager;->removeWhitelist(Ljava/lang/String;)V

    .line 152
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public AddKeyword(Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry;)Z
    .locals 4
    .parameter "entry"

    .prologue
    const/4 v3, 0x0

    .line 182
    invoke-virtual {p1}, Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry;->getKeyword()Ljava/lang/String;

    move-result-object v0

    .line 184
    .local v0, keyword:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v3

    .line 198
    :goto_0
    return v2

    .line 188
    :cond_0
    invoke-direct {p0, v0}, Lcom/miui/milk/source/antispam/AntiSpamManager;->isKeyword(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v3

    .line 189
    goto :goto_0

    .line 192
    :cond_1
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 193
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "data"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    iget-object v2, p0, Lcom/miui/milk/source/antispam/AntiSpamManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Landroid/provider/Telephony$Keyword;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 198
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public AddWhitelist(Lcom/miui/milk/model/AntiSpamProtos$WhitelistEntry;)Z
    .locals 6
    .parameter "entry"

    .prologue
    const/4 v5, 0x0

    .line 156
    invoke-virtual {p1}, Lcom/miui/milk/model/AntiSpamProtos$WhitelistEntry;->getId()Ljava/lang/String;

    move-result-object v0

    .line 157
    .local v0, id:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/miui/milk/model/AntiSpamProtos$WhitelistEntry;->getNotes()Ljava/lang/String;

    move-result-object v1

    .line 159
    .local v1, notes:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v5

    .line 178
    :goto_0
    return v4

    .line 163
    :cond_0
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->getDialableNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 165
    .local v2, number:Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/miui/milk/source/antispam/AntiSpamManager;->isInWhitelist(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v4, v5

    .line 166
    goto :goto_0

    .line 169
    :cond_1
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 170
    .local v3, values:Landroid/content/ContentValues;
    const-string v4, "_id"

    invoke-virtual {v3, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    const-string v4, "notes"

    invoke-virtual {v3, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    iget-object v4, p0, Lcom/miui/milk/source/antispam/AntiSpamManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v5, Landroid/provider/Telephony$Whitelist;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v5, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 176
    invoke-virtual {p0, v0}, Lcom/miui/milk/source/antispam/AntiSpamManager;->removeBlacklist(Ljava/lang/String;)V

    .line 178
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public getAllBlacklist()Ljava/util/Vector;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Lcom/miui/milk/model/AntiSpamProtos$BlacklistEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 31
    new-instance v10, Ljava/util/Vector;

    invoke-direct {v10}, Ljava/util/Vector;-><init>()V

    .line 32
    .local v10, result:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/miui/milk/model/AntiSpamProtos$BlacklistEntry;>;"
    const/4 v7, 0x0

    .line 34
    .local v7, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/miui/milk/source/antispam/AntiSpamManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/Telephony$Blacklist;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "notes"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 40
    if-nez v7, :cond_1

    .line 57
    if-eqz v7, :cond_0

    .line 58
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 61
    :cond_0
    :goto_0
    return-object v10

    .line 44
    :cond_1
    :goto_1
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 45
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 46
    .local v8, id:Ljava/lang/String;
    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 48
    .local v9, notes:Ljava/lang/String;
    invoke-static {}, Lcom/miui/milk/model/AntiSpamProtos$BlacklistEntry;->newBuilder()Lcom/miui/milk/model/AntiSpamProtos$BlacklistEntry$Builder;

    move-result-object v6

    .line 49
    .local v6, builder:Lcom/miui/milk/model/AntiSpamProtos$BlacklistEntry$Builder;
    invoke-virtual {v6, v8}, Lcom/miui/milk/model/AntiSpamProtos$BlacklistEntry$Builder;->setId(Ljava/lang/String;)Lcom/miui/milk/model/AntiSpamProtos$BlacklistEntry$Builder;

    .line 50
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 51
    invoke-virtual {v6, v9}, Lcom/miui/milk/model/AntiSpamProtos$BlacklistEntry$Builder;->setNotes(Ljava/lang/String;)Lcom/miui/milk/model/AntiSpamProtos$BlacklistEntry$Builder;

    .line 54
    :cond_2
    invoke-virtual {v6}, Lcom/miui/milk/model/AntiSpamProtos$BlacklistEntry$Builder;->build()Lcom/miui/milk/model/AntiSpamProtos$BlacklistEntry;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 57
    .end local v6           #builder:Lcom/miui/milk/model/AntiSpamProtos$BlacklistEntry$Builder;
    .end local v8           #id:Ljava/lang/String;
    .end local v9           #notes:Ljava/lang/String;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_3

    .line 58
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    .line 57
    :cond_4
    if-eqz v7, :cond_0

    .line 58
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public getAllKeywords()Ljava/util/Vector;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 99
    new-instance v9, Ljava/util/Vector;

    invoke-direct {v9}, Ljava/util/Vector;-><init>()V

    .line 100
    .local v9, result:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry;>;"
    const/4 v7, 0x0

    .line 102
    .local v7, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/miui/milk/source/antispam/AntiSpamManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/Telephony$Keyword;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "data"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 108
    if-nez v7, :cond_1

    .line 122
    if-eqz v7, :cond_0

    .line 123
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 126
    :cond_0
    :goto_0
    return-object v9

    .line 112
    :cond_1
    :goto_1
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 113
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 115
    .local v8, keyword:Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 116
    invoke-static {}, Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry;->newBuilder()Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry$Builder;

    move-result-object v6

    .line 117
    .local v6, builder:Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry$Builder;
    invoke-virtual {v6, v8}, Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry$Builder;->setKeyword(Ljava/lang/String;)Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry$Builder;

    .line 118
    invoke-virtual {v6}, Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry$Builder;->build()Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 122
    .end local v6           #builder:Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry$Builder;
    .end local v8           #keyword:Ljava/lang/String;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_2

    .line 123
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    .line 122
    :cond_3
    if-eqz v7, :cond_0

    .line 123
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public getAllWhitelist()Ljava/util/Vector;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Lcom/miui/milk/model/AntiSpamProtos$WhitelistEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 65
    new-instance v10, Ljava/util/Vector;

    invoke-direct {v10}, Ljava/util/Vector;-><init>()V

    .line 66
    .local v10, result:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/miui/milk/model/AntiSpamProtos$WhitelistEntry;>;"
    const/4 v7, 0x0

    .line 68
    .local v7, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/miui/milk/source/antispam/AntiSpamManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/Telephony$Whitelist;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "notes"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 74
    if-nez v7, :cond_1

    .line 91
    if-eqz v7, :cond_0

    .line 92
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 95
    :cond_0
    :goto_0
    return-object v10

    .line 78
    :cond_1
    :goto_1
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 79
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 80
    .local v8, id:Ljava/lang/String;
    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 82
    .local v9, notes:Ljava/lang/String;
    invoke-static {}, Lcom/miui/milk/model/AntiSpamProtos$WhitelistEntry;->newBuilder()Lcom/miui/milk/model/AntiSpamProtos$WhitelistEntry$Builder;

    move-result-object v6

    .line 83
    .local v6, builder:Lcom/miui/milk/model/AntiSpamProtos$WhitelistEntry$Builder;
    invoke-virtual {v6, v8}, Lcom/miui/milk/model/AntiSpamProtos$WhitelistEntry$Builder;->setId(Ljava/lang/String;)Lcom/miui/milk/model/AntiSpamProtos$WhitelistEntry$Builder;

    .line 84
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 85
    invoke-virtual {v6, v9}, Lcom/miui/milk/model/AntiSpamProtos$WhitelistEntry$Builder;->setNotes(Ljava/lang/String;)Lcom/miui/milk/model/AntiSpamProtos$WhitelistEntry$Builder;

    .line 88
    :cond_2
    invoke-virtual {v6}, Lcom/miui/milk/model/AntiSpamProtos$WhitelistEntry$Builder;->build()Lcom/miui/milk/model/AntiSpamProtos$WhitelistEntry;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 91
    .end local v6           #builder:Lcom/miui/milk/model/AntiSpamProtos$WhitelistEntry$Builder;
    .end local v8           #id:Ljava/lang/String;
    .end local v9           #notes:Ljava/lang/String;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_3

    .line 92
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    .line 91
    :cond_4
    if-eqz v7, :cond_0

    .line 92
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public removeBlacklist(Ljava/lang/String;)V
    .locals 3
    .parameter "id"

    .prologue
    const/4 v2, 0x0

    .line 247
    iget-object v0, p0, Lcom/miui/milk/source/antispam/AntiSpamManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/Telephony$Blacklist;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 250
    return-void
.end method

.method public removeWhitelist(Ljava/lang/String;)V
    .locals 3
    .parameter "id"

    .prologue
    const/4 v2, 0x0

    .line 253
    iget-object v0, p0, Lcom/miui/milk/source/antispam/AntiSpamManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/Telephony$Whitelist;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 256
    return-void
.end method
