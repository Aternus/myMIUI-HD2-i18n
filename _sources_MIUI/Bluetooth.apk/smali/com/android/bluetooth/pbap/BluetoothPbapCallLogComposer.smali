.class public Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;
.super Ljava/lang/Object;
.source "BluetoothPbapCallLogComposer.java"


# static fields
.field private static final sCallLogProjection:[Ljava/lang/String;


# instance fields
.field private final mCareHandlerErrors:Z

.field private mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private mCursor:Landroid/database/Cursor;

.field private mErrorReason:Ljava/lang/String;

.field private final mHandlerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/pim/vcard/VCardComposer$OneEntryHandler;",
            ">;"
        }
    .end annotation
.end field

.field private mTerminateIsCalled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 62
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "number"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "date"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "type"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "numbertype"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "numberlabel"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->sCallLogProjection:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1
    .parameter "context"
    .parameter "careHandlerErrors"

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    const-string v0, "No error"

    iput-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->mErrorReason:Ljava/lang/String;

    .line 92
    iput-object p1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->mContext:Landroid/content/Context;

    .line 93
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->mContentResolver:Landroid/content/ContentResolver;

    .line 94
    iput-boolean p2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->mCareHandlerErrors:Z

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->mHandlerList:Ljava/util/List;

    .line 96
    return-void
.end method

.method private createOneCallLogEntryInternal()Ljava/lang/String;
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 192
    const/high16 v6, -0x3e00

    .line 194
    .local v6, vcardType:I
    new-instance v0, Landroid/pim/vcard/VCardBuilder;

    const/high16 v7, -0x3e00

    invoke-direct {v0, v7}, Landroid/pim/vcard/VCardBuilder;-><init>(I)V

    .line 195
    .local v0, builder:Landroid/pim/vcard/VCardBuilder;
    iget-object v7, p0, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->mCursor:Landroid/database/Cursor;

    const/4 v8, 0x3

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 196
    .local v2, name:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 197
    iget-object v7, p0, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v7, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 199
    :cond_0
    new-array v7, v10, [Ljava/lang/String;

    aput-object v2, v7, v9

    invoke-static {v7}, Landroid/pim/vcard/VCardUtils;->containsOnlyPrintableAscii([Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    move v3, v10

    .line 200
    .local v3, needCharset:Z
    :goto_0
    const-string v7, "FN"

    invoke-virtual {v0, v7, v2, v3, v9}, Landroid/pim/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 201
    const-string v7, "N"

    invoke-virtual {v0, v7, v2, v3, v9}, Landroid/pim/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 203
    iget-object v7, p0, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v7, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 204
    .local v4, number:Ljava/lang/String;
    const-string v7, "-1"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 205
    iget-object v7, p0, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->mContext:Landroid/content/Context;

    const v8, 0x7f040004

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 207
    :cond_1
    iget-object v7, p0, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->mCursor:Landroid/database/Cursor;

    const/4 v8, 0x4

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 208
    .local v5, type:I
    iget-object v7, p0, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->mCursor:Landroid/database/Cursor;

    const/4 v8, 0x5

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 209
    .local v1, label:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 210
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 212
    :cond_2
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v7, v1, v4, v9}, Landroid/pim/vcard/VCardBuilder;->appendTelLine(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 213
    invoke-direct {p0, v0}, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->tryAppendCallHistoryTimeStampField(Landroid/pim/vcard/VCardBuilder;)V

    .line 215
    invoke-virtual {v0}, Landroid/pim/vcard/VCardBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7

    .end local v1           #label:Ljava/lang/String;
    .end local v3           #needCharset:Z
    .end local v4           #number:Ljava/lang/String;
    .end local v5           #type:I
    :cond_3
    move v3, v9

    .line 199
    goto :goto_0
.end method

.method private final toRfc2455Format(J)Ljava/lang/String;
    .locals 4
    .parameter "millSecs"

    .prologue
    .line 248
    new-instance v1, Landroid/text/format/Time;

    invoke-direct {v1}, Landroid/text/format/Time;-><init>()V

    .line 249
    .local v1, startDate:Landroid/text/format/Time;
    invoke-virtual {v1, p1, p2}, Landroid/text/format/Time;->set(J)V

    .line 250
    invoke-virtual {v1}, Landroid/text/format/Time;->format2445()Ljava/lang/String;

    move-result-object v0

    .line 251
    .local v0, date:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Z"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private tryAppendCallHistoryTimeStampField(Landroid/pim/vcard/VCardBuilder;)V
    .locals 7
    .parameter "builder"

    .prologue
    const/4 v6, 0x1

    .line 267
    iget-object v4, p0, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->mCursor:Landroid/database/Cursor;

    const/4 v5, 0x2

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 269
    .local v0, callLogType:I
    packed-switch v0, :pswitch_data_0

    .line 283
    const-string v4, "CallLogComposer"

    const-string v5, "Call log type not correct."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    :goto_0
    return-void

    .line 271
    :pswitch_0
    const-string v1, "RECEIVED"

    .line 288
    .local v1, callLogTypeStr:Ljava/lang/String;
    :goto_1
    iget-object v4, p0, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 289
    .local v2, dateAsLong:J
    const-string v4, "X-IRMC-CALL-DATETIME"

    new-array v5, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {p0, v2, v3}, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->toRfc2455Format(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v4, v5, v6}, Landroid/pim/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    goto :goto_0

    .line 275
    .end local v1           #callLogTypeStr:Ljava/lang/String;
    .end local v2           #dateAsLong:J
    :pswitch_1
    const-string v1, "DIALED"

    .line 276
    .restart local v1       #callLogTypeStr:Ljava/lang/String;
    goto :goto_1

    .line 279
    .end local v1           #callLogTypeStr:Ljava/lang/String;
    :pswitch_2
    const-string v1, "MISSED"

    .line 280
    .restart local v1       #callLogTypeStr:Ljava/lang/String;
    goto :goto_1

    .line 269
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public addHandler(Landroid/pim/vcard/VCardComposer$OneEntryHandler;)V
    .locals 1
    .parameter "handler"

    .prologue
    .line 150
    if-eqz p1, :cond_0

    .line 151
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->mHandlerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    :cond_0
    return-void
.end method

.method public composeVCardForPhoneOwnNumber(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 7
    .parameter "phonetype"
    .parameter "phoneName"
    .parameter "phoneNumber"
    .parameter "vcardVer21"

    .prologue
    const/4 v6, 0x0

    .line 223
    if-eqz p4, :cond_2

    const/high16 v4, -0x4000

    :goto_0
    const/high16 v5, 0x200

    or-int v3, v4, v5

    .line 227
    .local v3, vcardType:I
    new-instance v0, Landroid/pim/vcard/VCardBuilder;

    invoke-direct {v0, v3}, Landroid/pim/vcard/VCardBuilder;-><init>(I)V

    .line 228
    .local v0, builder:Landroid/pim/vcard/VCardBuilder;
    const/4 v2, 0x0

    .line 229
    .local v2, needCharset:Z
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    aput-object p2, v4, v6

    invoke-static {v4}, Landroid/pim/vcard/VCardUtils;->containsOnlyPrintableAscii([Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 230
    const/4 v2, 0x1

    .line 232
    :cond_0
    const-string v4, "FN"

    invoke-virtual {v0, v4, p2, v2, v6}, Landroid/pim/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 233
    const-string v4, "N"

    invoke-virtual {v0, v4, p2, v2, v6}, Landroid/pim/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 235
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 236
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 237
    .local v1, label:Ljava/lang/String;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4, v1, p3, v6}, Landroid/pim/vcard/VCardBuilder;->appendTelLine(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 240
    .end local v1           #label:Ljava/lang/String;
    :cond_1
    invoke-virtual {v0}, Landroid/pim/vcard/VCardBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 223
    .end local v0           #builder:Landroid/pim/vcard/VCardBuilder;
    .end local v2           #needCharset:Z
    .end local v3           #vcardType:I
    :cond_2
    const v4, -0x3fffffff

    goto :goto_0
.end method

.method public createOneEntry()Z
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 156
    iget-object v5, p0, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->mCursor:Landroid/database/Cursor;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 157
    :cond_0
    const-string v5, "The vCard composer object is not correctly initialized"

    iput-object v5, p0, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->mErrorReason:Ljava/lang/String;

    move v5, v6

    .line 186
    :goto_0
    return v5

    .line 163
    :cond_1
    :try_start_0
    invoke-direct {p0}, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->createOneCallLogEntryInternal()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 169
    .local v4, vcard:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    .line 172
    iget-boolean v5, p0, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->mCareHandlerErrors:Z

    if-eqz v5, :cond_3

    .line 173
    new-instance v1, Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->mHandlerList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v1, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 175
    .local v1, finishedList:Ljava/util/List;,"Ljava/util/List<Landroid/pim/vcard/VCardComposer$OneEntryHandler;>;"
    iget-object v5, p0, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->mHandlerList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/pim/vcard/VCardComposer$OneEntryHandler;

    .line 176
    .local v2, handler:Landroid/pim/vcard/VCardComposer$OneEntryHandler;
    invoke-interface {v2, v4}, Landroid/pim/vcard/VCardComposer$OneEntryHandler;->onEntryCreated(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    move v5, v6

    .line 177
    goto :goto_0

    .line 164
    .end local v1           #finishedList:Ljava/util/List;,"Ljava/util/List<Landroid/pim/vcard/VCardComposer$OneEntryHandler;>;"
    .end local v2           #handler:Landroid/pim/vcard/VCardComposer$OneEntryHandler;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #vcard:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 165
    .local v0, error:Ljava/lang/OutOfMemoryError;
    :try_start_1
    const-string v5, "CallLogComposer"

    const-string v6, "OutOfMemoryError occured. Ignore the entry"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 169
    iget-object v5, p0, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move v5, v7

    .line 167
    goto :goto_0

    .line 169
    .end local v0           #error:Ljava/lang/OutOfMemoryError;
    :catchall_0
    move-exception v5

    iget-object v6, p0, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    throw v5

    .line 181
    .restart local v4       #vcard:Ljava/lang/String;
    :cond_3
    iget-object v5, p0, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->mHandlerList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3       #i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/pim/vcard/VCardComposer$OneEntryHandler;

    .line 182
    .restart local v2       #handler:Landroid/pim/vcard/VCardComposer$OneEntryHandler;
    invoke-interface {v2, v4}, Landroid/pim/vcard/VCardComposer$OneEntryHandler;->onEntryCreated(Ljava/lang/String;)Z

    goto :goto_1

    .end local v2           #handler:Landroid/pim/vcard/VCardComposer$OneEntryHandler;
    :cond_4
    move v5, v7

    .line 186
    goto :goto_0
.end method

.method public finalize()V
    .locals 1

    .prologue
    .line 312
    iget-boolean v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->mTerminateIsCalled:Z

    if-nez v0, :cond_0

    .line 313
    invoke-virtual {p0}, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->terminate()V

    .line 315
    :cond_0
    return-void
.end method

.method public getErrorReason()Ljava/lang/String;
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->mErrorReason:Ljava/lang/String;

    return-object v0
.end method

.method public init(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z
    .locals 11
    .parameter "contentUri"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 101
    sget-object v0, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    sget-object v2, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->sCallLogProjection:[Ljava/lang/String;

    .line 108
    .local v2, projection:[Ljava/lang/String;
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->mContentResolver:Landroid/content/ContentResolver;

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->mCursor:Landroid/database/Cursor;

    .line 111
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_1

    .line 112
    const-string v0, "Failed to get database information"

    iput-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->mErrorReason:Ljava/lang/String;

    .line 113
    const/4 v0, 0x0

    .line 146
    .end local v2           #projection:[Ljava/lang/String;
    :goto_0
    return v0

    .line 104
    :cond_0
    const-string v0, "The Uri vCard composer received is not supported by the composer."

    iput-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->mErrorReason:Ljava/lang/String;

    .line 105
    const/4 v0, 0x0

    goto :goto_0

    .line 116
    .restart local v2       #projection:[Ljava/lang/String;
    :cond_1
    iget-boolean v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->mCareHandlerErrors:Z

    if-eqz v0, :cond_4

    .line 117
    new-instance v8, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->mHandlerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v8, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 119
    .local v8, finishedList:Ljava/util/List;,"Ljava/util/List<Landroid/pim/vcard/VCardComposer$OneEntryHandler;>;"
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->mHandlerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/pim/vcard/VCardComposer$OneEntryHandler;

    .line 120
    .local v9, handler:Landroid/pim/vcard/VCardComposer$OneEntryHandler;
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->mContext:Landroid/content/Context;

    invoke-interface {v9, v0}, Landroid/pim/vcard/VCardComposer$OneEntryHandler;->onInit(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 121
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/pim/vcard/VCardComposer$OneEntryHandler;

    .line 122
    .local v7, finished:Landroid/pim/vcard/VCardComposer$OneEntryHandler;
    invoke-interface {v7}, Landroid/pim/vcard/VCardComposer$OneEntryHandler;->onTerminate()V

    goto :goto_1

    .line 124
    .end local v7           #finished:Landroid/pim/vcard/VCardComposer$OneEntryHandler;
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 129
    .end local v8           #finishedList:Ljava/util/List;,"Ljava/util/List<Landroid/pim/vcard/VCardComposer$OneEntryHandler;>;"
    .end local v9           #handler:Landroid/pim/vcard/VCardComposer$OneEntryHandler;
    .end local v10           #i$:Ljava/util/Iterator;
    :cond_4
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->mHandlerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .restart local v10       #i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/pim/vcard/VCardComposer$OneEntryHandler;

    .line 130
    .restart local v9       #handler:Landroid/pim/vcard/VCardComposer$OneEntryHandler;
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->mContext:Landroid/content/Context;

    invoke-interface {v9, v0}, Landroid/pim/vcard/VCardComposer$OneEntryHandler;->onInit(Landroid/content/Context;)Z

    goto :goto_2

    .line 134
    .end local v9           #handler:Landroid/pim/vcard/VCardComposer$OneEntryHandler;
    :cond_5
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_7

    .line 136
    :cond_6
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    const-string v0, "There\'s no exportable in the database"

    iput-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->mErrorReason:Ljava/lang/String;

    .line 141
    .end local v2           #projection:[Ljava/lang/String;
    :goto_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->mCursor:Landroid/database/Cursor;

    .line 143
    const/4 v0, 0x0

    goto :goto_0

    .line 137
    .restart local v2       #projection:[Ljava/lang/String;
    :catch_0
    move-exception v0

    move-object v6, v0

    .line 138
    .local v6, e:Landroid/database/sqlite/SQLiteException;
    :try_start_1
    const-string v0, "CallLogComposer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SQLiteException on Cursor#close(): "

    .end local v2           #projection:[Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 140
    const-string v0, "There\'s no exportable in the database"

    iput-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->mErrorReason:Ljava/lang/String;

    goto :goto_3

    .end local v6           #e:Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v0

    const-string v1, "There\'s no exportable in the database"

    iput-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->mErrorReason:Ljava/lang/String;

    .line 141
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->mCursor:Landroid/database/Cursor;

    .line 140
    throw v0

    .line 146
    .restart local v2       #projection:[Ljava/lang/String;
    :cond_7
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method public isAfterLast()Z
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_0

    .line 326
    const/4 v0, 0x0

    .line 328
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    goto :goto_0
.end method

.method public terminate()V
    .locals 6

    .prologue
    .line 294
    iget-object v3, p0, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->mHandlerList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/pim/vcard/VCardComposer$OneEntryHandler;

    .line 295
    .local v1, handler:Landroid/pim/vcard/VCardComposer$OneEntryHandler;
    invoke-interface {v1}, Landroid/pim/vcard/VCardComposer$OneEntryHandler;->onTerminate()V

    goto :goto_0

    .line 298
    .end local v1           #handler:Landroid/pim/vcard/VCardComposer$OneEntryHandler;
    :cond_0
    iget-object v3, p0, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->mCursor:Landroid/database/Cursor;

    if-eqz v3, :cond_1

    .line 300
    :try_start_0
    iget-object v3, p0, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 304
    :goto_1
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->mCursor:Landroid/database/Cursor;

    .line 307
    :cond_1
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->mTerminateIsCalled:Z

    .line 308
    return-void

    .line 301
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 302
    .local v0, e:Landroid/database/sqlite/SQLiteException;
    const-string v3, "CallLogComposer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SQLiteException on Cursor#close(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
