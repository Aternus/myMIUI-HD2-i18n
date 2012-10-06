.class Lcom/android/phone/BluetoothAtPhonebook$3;
.super Landroid/bluetooth/AtCommandHandler;
.source "BluetoothAtPhonebook.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/BluetoothAtPhonebook;->register(Landroid/bluetooth/AtParser;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/BluetoothAtPhonebook;


# direct methods
.method constructor <init>(Lcom/android/phone/BluetoothAtPhonebook;)V
    .locals 0
    .parameter

    .prologue
    .line 190
    iput-object p1, p0, Lcom/android/phone/BluetoothAtPhonebook$3;->this$0:Lcom/android/phone/BluetoothAtPhonebook;

    invoke-direct {p0}, Landroid/bluetooth/AtCommandHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleSetCommand([Ljava/lang/Object;)Landroid/bluetooth/AtCommandResult;
    .locals 22
    .parameter "args"

    .prologue
    .line 199
    move-object/from16 v0, p1

    array-length v0, v0

    move v3, v0

    const/4 v4, 0x1

    if-lt v3, v4, :cond_0

    const/4 v3, 0x0

    aget-object v3, p1, v3

    instance-of v3, v3, Ljava/lang/Integer;

    if-nez v3, :cond_1

    .line 200
    :cond_0
    new-instance v3, Landroid/bluetooth/AtCommandResult;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 307
    .end local p1
    :goto_0
    return-object v3

    .line 202
    .restart local p1
    :cond_1
    const/4 v3, 0x0

    aget-object v3, p1, v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 205
    .local v13, index1:I
    move-object/from16 v0, p1

    array-length v0, v0

    move v3, v0

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 206
    move v14, v13

    .line 214
    .end local p1
    .local v14, index2:I
    :goto_1
    const-string v3, "SM"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothAtPhonebook$3;->this$0:Lcom/android/phone/BluetoothAtPhonebook;

    move-object v4, v0

    #getter for: Lcom/android/phone/BluetoothAtPhonebook;->mCurrentPhonebook:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/phone/BluetoothAtPhonebook;->access$300(Lcom/android/phone/BluetoothAtPhonebook;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 215
    new-instance v3, Landroid/bluetooth/AtCommandResult;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    goto :goto_0

    .line 207
    .end local v14           #index2:I
    .restart local p1
    :cond_2
    const/4 v3, 0x1

    aget-object v3, p1, v3

    instance-of v3, v3, Ljava/lang/Integer;

    if-nez v3, :cond_3

    .line 208
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothAtPhonebook$3;->this$0:Lcom/android/phone/BluetoothAtPhonebook;

    move-object v3, v0

    #getter for: Lcom/android/phone/BluetoothAtPhonebook;->mHandsfree:Lcom/android/phone/BluetoothHandsfree;
    invoke-static {v3}, Lcom/android/phone/BluetoothAtPhonebook;->access$200(Lcom/android/phone/BluetoothAtPhonebook;)Lcom/android/phone/BluetoothHandsfree;

    move-result-object v3

    const/16 v4, 0x19

    invoke-virtual {v3, v4}, Lcom/android/phone/BluetoothHandsfree;->reportCmeError(I)Landroid/bluetooth/AtCommandResult;

    move-result-object v3

    goto :goto_0

    .line 210
    :cond_3
    const/4 v3, 0x1

    aget-object p1, p1, v3

    .end local p1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .restart local v14       #index2:I
    goto :goto_1

    .line 219
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothAtPhonebook$3;->this$0:Lcom/android/phone/BluetoothAtPhonebook;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothAtPhonebook$3;->this$0:Lcom/android/phone/BluetoothAtPhonebook;

    move-object v4, v0

    #getter for: Lcom/android/phone/BluetoothAtPhonebook;->mCurrentPhonebook:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/phone/BluetoothAtPhonebook;->access$300(Lcom/android/phone/BluetoothAtPhonebook;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    #calls: Lcom/android/phone/BluetoothAtPhonebook;->getPhonebookResult(Ljava/lang/String;Z)Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;
    invoke-static {v3, v4, v5}, Lcom/android/phone/BluetoothAtPhonebook;->access$500(Lcom/android/phone/BluetoothAtPhonebook;Ljava/lang/String;Z)Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;

    move-result-object v18

    .line 220
    .local v18, pbr:Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;
    if-nez v18, :cond_5

    .line 221
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothAtPhonebook$3;->this$0:Lcom/android/phone/BluetoothAtPhonebook;

    move-object v3, v0

    #getter for: Lcom/android/phone/BluetoothAtPhonebook;->mHandsfree:Lcom/android/phone/BluetoothHandsfree;
    invoke-static {v3}, Lcom/android/phone/BluetoothAtPhonebook;->access$200(Lcom/android/phone/BluetoothAtPhonebook;)Lcom/android/phone/BluetoothHandsfree;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/android/phone/BluetoothHandsfree;->reportCmeError(I)Landroid/bluetooth/AtCommandResult;

    move-result-object v3

    goto :goto_0

    .line 228
    :cond_5
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    move-object v3, v0

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-eqz v3, :cond_6

    if-lez v13, :cond_6

    if-lt v14, v13, :cond_6

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    move-object v3, v0

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-gt v14, v3, :cond_6

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    move-object v3, v0

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-le v13, v3, :cond_7

    .line 230
    :cond_6
    new-instance v3, Landroid/bluetooth/AtCommandResult;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    goto/16 :goto_0

    .line 234
    :cond_7
    new-instance v20, Landroid/bluetooth/AtCommandResult;

    const/4 v3, 0x0

    move-object/from16 v0, v20

    move v1, v3

    invoke-direct {v0, v1}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 235
    .local v20, result:Landroid/bluetooth/AtCommandResult;
    const/4 v11, -0x1

    .line 236
    .local v11, errorDetected:I
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    move-object v3, v0

    const/4 v4, 0x1

    sub-int v4, v13, v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 237
    move v12, v13

    .local v12, index:I
    :goto_2
    if-gt v12, v14, :cond_11

    .line 238
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    move-object v3, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;->numberColumn:I

    move v4, v0

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 239
    .local v17, number:Ljava/lang/String;
    const/4 v15, 0x0

    .line 240
    .local v15, name:Ljava/lang/String;
    const/16 v21, -0x1

    .line 241
    .local v21, type:I
    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;->nameColumn:I

    move v3, v0

    const/4 v4, -0x1

    if-ne v3, v4, :cond_13

    .line 245
    const/4 v9, 0x0

    .line 247
    .local v9, c:Landroid/database/Cursor;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothAtPhonebook$3;->this$0:Lcom/android/phone/BluetoothAtPhonebook;

    move-object v3, v0

    #getter for: Lcom/android/phone/BluetoothAtPhonebook;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/phone/BluetoothAtPhonebook;->access$600(Lcom/android/phone/BluetoothAtPhonebook;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    move-object v0, v4

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "display_name"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "type"

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 251
    if-eqz v9, :cond_8

    .line 252
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 253
    const/4 v3, 0x0

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 254
    const/4 v3, 0x1

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v21

    .line 260
    :cond_8
    if-eqz v9, :cond_9

    .line 261
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 269
    .end local v9           #c:Landroid/database/Cursor;
    :cond_9
    :goto_3
    if-nez v15, :cond_a

    const-string v15, ""

    .line 270
    :cond_a
    invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    .line 271
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x1c

    if-le v3, v4, :cond_b

    const/4 v3, 0x0

    const/16 v4, 0x1c

    invoke-virtual {v15, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    .line 273
    :cond_b
    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;->typeColumn:I

    move v3, v0

    const/4 v4, -0x1

    if-eq v3, v4, :cond_c

    .line 274
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    move-object v3, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;->typeColumn:I

    move v4, v0

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    .line 275
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    #calls: Lcom/android/phone/BluetoothAtPhonebook;->getPhoneType(I)Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Lcom/android/phone/BluetoothAtPhonebook;->access$700(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 278
    :cond_c
    if-nez v17, :cond_d

    const-string v17, ""

    .line 279
    :cond_d
    invoke-static/range {v17 .. v17}, Landroid/telephony/PhoneNumberUtils;->toaFromString(Ljava/lang/String;)I

    move-result v19

    .line 281
    .local v19, regionType:I
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v17

    .line 282
    invoke-static/range {v17 .. v17}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 283
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x1e

    if-le v3, v4, :cond_e

    const/4 v3, 0x0

    const/16 v4, 0x1e

    move-object/from16 v0, v17

    move v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    .line 284
    :cond_e
    const-string v3, "-1"

    move-object/from16 v0, v17

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 286
    const-string v17, ""

    .line 287
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothAtPhonebook$3;->this$0:Lcom/android/phone/BluetoothAtPhonebook;

    move-object v3, v0

    #getter for: Lcom/android/phone/BluetoothAtPhonebook;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/phone/BluetoothAtPhonebook;->access$600(Lcom/android/phone/BluetoothAtPhonebook;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0c0006

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 292
    :cond_f
    const-string v3, ""

    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothAtPhonebook$3;->this$0:Lcom/android/phone/BluetoothAtPhonebook;

    move-object v3, v0

    #getter for: Lcom/android/phone/BluetoothAtPhonebook;->mCharacterSet:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/phone/BluetoothAtPhonebook;->access$100(Lcom/android/phone/BluetoothAtPhonebook;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "GSM"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 293
    invoke-static {v15}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm8BitPacked(Ljava/lang/String;)[B

    move-result-object v16

    .line 294
    .local v16, nameByte:[B
    if-nez v16, :cond_14

    .line 295
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothAtPhonebook$3;->this$0:Lcom/android/phone/BluetoothAtPhonebook;

    move-object v3, v0

    #getter for: Lcom/android/phone/BluetoothAtPhonebook;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/phone/BluetoothAtPhonebook;->access$600(Lcom/android/phone/BluetoothAtPhonebook;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0c0006

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 301
    .end local v16           #nameByte:[B
    :cond_10
    :goto_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "+CPBR: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v20

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    .line 303
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    move-object v3, v0

    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_15

    .end local v15           #name:Ljava/lang/String;
    .end local v17           #number:Ljava/lang/String;
    .end local v19           #regionType:I
    .end local v21           #type:I
    :cond_11
    move-object/from16 v3, v20

    .line 307
    goto/16 :goto_0

    .line 257
    .restart local v9       #c:Landroid/database/Cursor;
    .restart local v15       #name:Ljava/lang/String;
    .restart local v17       #number:Ljava/lang/String;
    .restart local v21       #type:I
    :catch_0
    move-exception v3

    move-object v10, v3

    .line 258
    .local v10, e:Ljava/lang/RuntimeException;
    :try_start_1
    const-string v3, "BtAtPhonebook"

    invoke-virtual {v10}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 260
    if-eqz v9, :cond_9

    .line 261
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto/16 :goto_3

    .line 260
    .end local v10           #e:Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v3

    if-eqz v9, :cond_12

    .line 261
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_12
    throw v3

    .line 267
    .end local v9           #c:Landroid/database/Cursor;
    :cond_13
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    move-object v3, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;->nameColumn:I

    move v4, v0

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_3

    .line 297
    .restart local v16       #nameByte:[B
    .restart local v19       #regionType:I
    :cond_14
    new-instance v15, Ljava/lang/String;

    .end local v15           #name:Ljava/lang/String;
    invoke-direct/range {v15 .. v16}, Ljava/lang/String;-><init>([B)V

    .restart local v15       #name:Ljava/lang/String;
    goto :goto_4

    .line 237
    .end local v16           #nameByte:[B
    :cond_15
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_2
.end method

.method public handleTestCommand()Landroid/bluetooth/AtCommandResult;
    .locals 5

    .prologue
    .line 317
    const-string v2, "SM"

    iget-object v3, p0, Lcom/android/phone/BluetoothAtPhonebook$3;->this$0:Lcom/android/phone/BluetoothAtPhonebook;

    #getter for: Lcom/android/phone/BluetoothAtPhonebook;->mCurrentPhonebook:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/phone/BluetoothAtPhonebook;->access$300(Lcom/android/phone/BluetoothAtPhonebook;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 318
    const/4 v1, 0x0

    .line 327
    .local v1, size:I
    :goto_0
    if-nez v1, :cond_0

    .line 330
    const/4 v1, 0x1

    .line 332
    :cond_0
    new-instance v2, Landroid/bluetooth/AtCommandResult;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "+CPBR: (1-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "),30,30"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/bluetooth/AtCommandResult;-><init>(Ljava/lang/String;)V

    .end local v1           #size:I
    :goto_1
    return-object v2

    .line 320
    :cond_1
    iget-object v2, p0, Lcom/android/phone/BluetoothAtPhonebook$3;->this$0:Lcom/android/phone/BluetoothAtPhonebook;

    iget-object v3, p0, Lcom/android/phone/BluetoothAtPhonebook$3;->this$0:Lcom/android/phone/BluetoothAtPhonebook;

    #getter for: Lcom/android/phone/BluetoothAtPhonebook;->mCurrentPhonebook:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/phone/BluetoothAtPhonebook;->access$300(Lcom/android/phone/BluetoothAtPhonebook;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    #calls: Lcom/android/phone/BluetoothAtPhonebook;->getPhonebookResult(Ljava/lang/String;Z)Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;
    invoke-static {v2, v3, v4}, Lcom/android/phone/BluetoothAtPhonebook;->access$500(Lcom/android/phone/BluetoothAtPhonebook;Ljava/lang/String;Z)Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;

    move-result-object v0

    .line 321
    .local v0, pbr:Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;
    if-nez v0, :cond_2

    .line 322
    iget-object v2, p0, Lcom/android/phone/BluetoothAtPhonebook$3;->this$0:Lcom/android/phone/BluetoothAtPhonebook;

    #getter for: Lcom/android/phone/BluetoothAtPhonebook;->mHandsfree:Lcom/android/phone/BluetoothHandsfree;
    invoke-static {v2}, Lcom/android/phone/BluetoothAtPhonebook;->access$200(Lcom/android/phone/BluetoothAtPhonebook;)Lcom/android/phone/BluetoothHandsfree;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/android/phone/BluetoothHandsfree;->reportCmeError(I)Landroid/bluetooth/AtCommandResult;

    move-result-object v2

    goto :goto_1

    .line 324
    :cond_2
    iget-object v2, v0, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .restart local v1       #size:I
    goto :goto_0
.end method
