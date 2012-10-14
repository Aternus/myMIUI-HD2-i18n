.class public Lcom/miui/player/provider/PlayerProviderUtils;
.super Ljava/lang/Object;
.source "PlayerProviderUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearNowplayingList(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 524
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 525
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v1, Lcom/miui/player/provider/PlayerStore$MiuiNowPlayingAudio;->EXTERNAL_URI:Landroid/net/Uri;

    .line 526
    .local v1, uri:Landroid/net/Uri;
    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 527
    return-void
.end method

.method public static codeEqualizerConfig([I)Ljava/lang/String;
    .locals 3
    .parameter "src"

    .prologue
    .line 713
    if-nez p0, :cond_0

    .line 714
    const/4 v2, 0x0

    .line 722
    :goto_0
    return-object v2

    .line 717
    :cond_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 718
    .local v0, arr:Lorg/json/JSONArray;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 719
    aget v2, p0, v1

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 718
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 722
    :cond_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static concatIdsAsSet(Landroid/database/Cursor;I)Ljava/lang/String;
    .locals 6
    .parameter "cursor"
    .parameter "column"

    .prologue
    .line 182
    const-string v0, "()"

    .line 184
    .local v0, EMPTY_SET:Ljava/lang/String;
    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-nez v4, :cond_1

    .line 185
    :cond_0
    const-string v4, "()"

    .line 204
    :goto_0
    return-object v4

    .line 188
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "("

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 189
    .local v2, idSet:Ljava/lang/StringBuilder;
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_1
    invoke-interface {p0}, Landroid/database/Cursor;->isLast()Z

    move-result v4

    if-nez v4, :cond_3

    .line 190
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 191
    .local v1, id:Ljava/lang/Long;
    if-eqz v1, :cond_2

    .line 192
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 193
    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    :cond_2
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1

    .line 197
    .end local v1           #id:Ljava/lang/Long;
    :cond_3
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 198
    .local v3, lastId:Ljava/lang/Long;
    if-eqz v3, :cond_4

    .line 199
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 202
    :cond_4
    const-string v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method public static concatIdsAsSet(Ljava/util/Collection;)Ljava/lang/String;
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 154
    .local p0, idList:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Long;>;"
    const-string v0, "()"

    .line 156
    .local v0, EMPTY_SET:Ljava/lang/String;
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 157
    :cond_0
    const-string v7, "()"

    .line 178
    :goto_0
    return-object v7

    .line 160
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v7, "("

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 161
    .local v3, idSet:Ljava/lang/StringBuilder;
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 162
    .local v4, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Long;>;"
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v7

    const/4 v8, 0x1

    sub-int v5, v7, v8

    .line 163
    .local v5, last:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v5, :cond_3

    .line 164
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 165
    .local v2, id:Ljava/lang/Long;
    if-eqz v2, :cond_2

    .line 166
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 167
    const-string v7, ","

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 171
    .end local v2           #id:Ljava/lang/Long;
    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    .line 172
    .local v6, lastId:Ljava/lang/Long;
    if-eqz v6, :cond_4

    .line 173
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 176
    :cond_4
    const-string v7, ")"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_0
.end method

.method public static concatIdsAsSet([J)Ljava/lang/String;
    .locals 8
    .parameter "idList"

    .prologue
    const/4 v7, 0x1

    .line 128
    const-string v0, "()"

    .line 130
    .local v0, EMPTY_SET:Ljava/lang/String;
    if-eqz p0, :cond_0

    array-length v5, p0

    if-nez v5, :cond_1

    .line 131
    :cond_0
    const-string v5, "()"

    .line 150
    :goto_0
    return-object v5

    .line 134
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "("

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 135
    .local v3, idSet:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v5, p0

    sub-int/2addr v5, v7

    if-ge v1, v5, :cond_3

    .line 136
    aget-wide v5, p0, v1

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 137
    .local v2, id:Ljava/lang/Long;
    if-eqz v2, :cond_2

    .line 138
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 139
    const-string v5, ","

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 143
    .end local v2           #id:Ljava/lang/Long;
    :cond_3
    array-length v5, p0

    sub-int/2addr v5, v7

    aget-wide v5, p0, v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 144
    .local v4, lastId:Ljava/lang/Long;
    if-eqz v4, :cond_4

    .line 145
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 148
    :cond_4
    const-string v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method public static createMemberInfoById(Landroid/content/Context;[JI)Ljava/util/ArrayList;
    .locals 10
    .parameter "context"
    .parameter "ids"
    .parameter "orderBase"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "[JI)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    .prologue
    .line 266
    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    .line 267
    :cond_0
    const/4 p0, 0x0

    .line 320
    .end local p0
    .end local p1
    :goto_0
    return-object p0

    .line 269
    .restart local p0
    .restart local p1
    :cond_1
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 271
    .local v7, ret:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 272
    .local v4, localAudioIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 273
    .local v5, onlineAudioIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    move-object v0, p1

    .local v0, arr$:[J
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v3, :cond_3

    aget-wide v8, v0, v1

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 274
    .local v2, id:Ljava/lang/Long;
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/miui/player/provider/PlayerProvider;->isOnlineAudio(J)Z

    move-result v6

    if-nez v6, :cond_2

    .line 275
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 273
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 277
    :cond_2
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 281
    .end local v2           #id:Ljava/lang/Long;
    :cond_3
    const/4 v0, 0x0

    .line 282
    .local v0, local:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Landroid/content/ContentValues;>;"
    const/4 v1, 0x0

    .line 284
    .local v1, online:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Landroid/content/ContentValues;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_e

    .line 285
    invoke-static {p0, v4}, Lcom/miui/player/provider/PlayerProviderUtils;->createMemberInfoFromLocalLib(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/util/HashMap;

    move-result-object v0

    move-object v4, v0

    .line 288
    .end local v0           #local:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Landroid/content/ContentValues;>;"
    .local v4, local:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Landroid/content/ContentValues;>;"
    :goto_3
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_d

    .line 289
    invoke-static {p0, v5}, Lcom/miui/player/provider/PlayerProviderUtils;->createMemberInfoFromPlaylist(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/util/HashMap;

    move-result-object p0

    .end local v1           #online:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Landroid/content/ContentValues;>;"
    .local p0, online:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Landroid/content/ContentValues;>;"
    move-object v5, p0

    .line 292
    .end local p0           #online:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Landroid/content/ContentValues;>;"
    .local v5, online:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Landroid/content/ContentValues;>;"
    :goto_4
    const/4 p0, 0x0

    .line 293
    .local p0, temp:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Landroid/content/ContentValues;>;"
    if-eqz v4, :cond_4

    if-nez v5, :cond_4

    .line 294
    move-object p0, v4

    move-object v3, p0

    .line 299
    .end local p0           #temp:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Landroid/content/ContentValues;>;"
    .local v3, temp:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Landroid/content/ContentValues;>;"
    :goto_5
    if-eqz v3, :cond_7

    .line 300
    move-object p0, p1

    .local p0, arr$:[J
    array-length v1, p0

    .local v1, len$:I
    const/4 p1, 0x0

    .local p1, i$:I
    move v0, p1

    .end local p1           #i$:I
    .local v0, i$:I
    move v2, p2

    .end local v4           #local:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Landroid/content/ContentValues;>;"
    .end local p2
    .local v2, orderBase:I
    :goto_6
    if-ge v0, v1, :cond_5

    aget-wide p1, p0, v0

    .line 301
    .local p1, id:J
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .end local p1           #id:J
    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ContentValues;

    .line 302
    .local p1, cv:Landroid/content/ContentValues;
    if-eqz p1, :cond_b

    .line 303
    const-string v4, "play_order"

    add-int/lit8 p2, v2, 0x1

    .end local v2           #orderBase:I
    .restart local p2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 304
    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 300
    :goto_7
    add-int/lit8 p1, v0, 0x1

    .end local v0           #i$:I
    .local p1, i$:I
    move v0, p1

    .end local p1           #i$:I
    .restart local v0       #i$:I
    move v2, p2

    .end local p2
    .restart local v2       #orderBase:I
    goto :goto_6

    .line 295
    .end local v0           #i$:I
    .end local v1           #len$:I
    .end local v2           #orderBase:I
    .local v3, len$:I
    .restart local v4       #local:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Landroid/content/ContentValues;>;"
    .local p0, temp:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Landroid/content/ContentValues;>;"
    .local p1, ids:[J
    .restart local p2
    :cond_4
    if-nez v4, :cond_c

    if-eqz v5, :cond_c

    .line 296
    move-object p0, v5

    move-object v3, p0

    .end local p0           #temp:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Landroid/content/ContentValues;>;"
    .local v3, temp:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Landroid/content/ContentValues;>;"
    goto :goto_5

    .end local v4           #local:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Landroid/content/ContentValues;>;"
    .end local p1           #ids:[J
    .end local p2
    .restart local v0       #i$:I
    .restart local v1       #len$:I
    .restart local v2       #orderBase:I
    .local p0, arr$:[J
    :cond_5
    move p2, v2

    .end local v0           #i$:I
    .end local v1           #len$:I
    .end local v2           #orderBase:I
    .end local v3           #temp:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Landroid/content/ContentValues;>;"
    .end local p0           #arr$:[J
    .restart local p2
    :cond_6
    :goto_8
    move-object p0, v7

    .line 320
    goto/16 :goto_0

    .line 307
    .restart local v3       #temp:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Landroid/content/ContentValues;>;"
    .restart local v4       #local:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Landroid/content/ContentValues;>;"
    .restart local p1       #ids:[J
    :cond_7
    if-eqz v4, :cond_6

    if-eqz v5, :cond_6

    .line 308
    move-object p0, p1

    .restart local p0       #arr$:[J
    array-length v3, p0

    .local v3, len$:I
    const/4 p1, 0x0

    .local p1, i$:I
    move v0, p1

    .end local p1           #i$:I
    .restart local v0       #i$:I
    move v6, p2

    .end local p2
    .local v6, orderBase:I
    :goto_9
    if-ge v0, v3, :cond_a

    aget-wide v1, p0, v0

    .line 309
    .local v1, id:J
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ContentValues;

    .line 310
    .local p1, cv:Landroid/content/ContentValues;
    if-nez p1, :cond_8

    .line 311
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .end local p1           #cv:Landroid/content/ContentValues;
    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ContentValues;

    .line 314
    .restart local p1       #cv:Landroid/content/ContentValues;
    :cond_8
    if-eqz p1, :cond_9

    .line 315
    const-string v1, "play_order"

    .end local v1           #id:J
    add-int/lit8 p2, v6, 0x1

    .end local v6           #orderBase:I
    .restart local p2
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 316
    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 308
    :goto_a
    add-int/lit8 p1, v0, 0x1

    .end local v0           #i$:I
    .local p1, i$:I
    move v0, p1

    .end local p1           #i$:I
    .restart local v0       #i$:I
    move v6, p2

    .end local p2
    .restart local v6       #orderBase:I
    goto :goto_9

    .restart local v1       #id:J
    .local p1, cv:Landroid/content/ContentValues;
    :cond_9
    move p2, v6

    .end local v6           #orderBase:I
    .restart local p2
    goto :goto_a

    .end local v1           #id:J
    .end local p1           #cv:Landroid/content/ContentValues;
    .end local p2
    .restart local v6       #orderBase:I
    :cond_a
    move p2, v6

    .end local v6           #orderBase:I
    .restart local p2
    goto :goto_8

    .end local v4           #local:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Landroid/content/ContentValues;>;"
    .end local p2
    .local v1, len$:I
    .restart local v2       #orderBase:I
    .local v3, temp:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Landroid/content/ContentValues;>;"
    .restart local p1       #cv:Landroid/content/ContentValues;
    :cond_b
    move p2, v2

    .end local v2           #orderBase:I
    .restart local p2
    goto :goto_7

    .end local v0           #i$:I
    .end local v1           #len$:I
    .local v3, len$:I
    .restart local v4       #local:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Landroid/content/ContentValues;>;"
    .local p0, temp:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Landroid/content/ContentValues;>;"
    .local p1, ids:[J
    :cond_c
    move-object v3, p0

    .end local p0           #temp:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Landroid/content/ContentValues;>;"
    .local v3, temp:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Landroid/content/ContentValues;>;"
    goto :goto_5

    .local v1, online:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Landroid/content/ContentValues;>;"
    .local v3, len$:I
    .local v5, onlineAudioIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .local p0, context:Landroid/content/Context;
    :cond_d
    move-object v5, v1

    .end local v1           #online:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Landroid/content/ContentValues;>;"
    .local v5, online:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Landroid/content/ContentValues;>;"
    goto :goto_4

    .local v0, local:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Landroid/content/ContentValues;>;"
    .restart local v1       #online:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Landroid/content/ContentValues;>;"
    .local v4, localAudioIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .local v5, onlineAudioIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :cond_e
    move-object v4, v0

    .end local v0           #local:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Landroid/content/ContentValues;>;"
    .local v4, local:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Landroid/content/ContentValues;>;"
    goto/16 :goto_3
.end method

.method public static createMemberInfoByProviderId(Landroid/content/Context;[Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;I)Ljava/util/ArrayList;
    .locals 12
    .parameter "context"
    .parameter "songItems"
    .parameter "playOrder"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "[",
            "Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    .prologue
    .line 466
    if-eqz p1, :cond_0

    array-length v10, p1

    if-nez v10, :cond_1

    .line 467
    :cond_0
    const/4 v10, 0x0

    .line 493
    :goto_0
    return-object v10

    .line 470
    :cond_1
    new-instance v8, Ljava/util/ArrayList;

    array-length v10, p1

    invoke-direct {v8, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 471
    .local v8, ret:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    move-object v1, p1

    .local v1, arr$:[Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;
    array-length v5, v1

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    move v7, p2

    .end local p2
    .local v7, playOrder:I
    :goto_1
    if-ge v4, v5, :cond_2

    aget-object v9, v1, v4

    .line 472
    .local v9, songItem:Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;
    if-eqz v9, :cond_3

    .line 473
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 477
    .local v3, cv:Landroid/content/ContentValues;
    const-string v10, "_data"

    const-string v11, ""

    invoke-virtual {v3, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    const-string v10, "online_id"

    iget-object v11, v9, Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;->Id:Ljava/lang/String;

    invoke-virtual {v3, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    iget-object v10, v9, Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;->Name:Ljava/lang/String;

    invoke-static {v10}, Lcom/miui/player/provider/PlayerProviderUtils;->noNullValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 480
    .local v6, name:Ljava/lang/String;
    iget-object v10, v9, Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;->Album:Ljava/lang/String;

    invoke-static {v10}, Lcom/miui/player/provider/PlayerProviderUtils;->noNullValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 481
    .local v0, album:Ljava/lang/String;
    iget-object v10, v9, Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;->Artist:Ljava/lang/String;

    invoke-static {v10}, Lcom/miui/player/provider/PlayerProviderUtils;->noNullValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 482
    .local v2, artist:Ljava/lang/String;
    const-string v10, "title"

    invoke-virtual {v3, v10, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    const-string v10, "album"

    invoke-virtual {v3, v10, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    const-string v10, "artist"

    invoke-virtual {v3, v10, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    const-string v10, "duration"

    iget v11, v9, Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;->DurationInSecond:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v3, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 488
    const-string v10, "play_order"

    add-int/lit8 p2, v7, 0x1

    .end local v7           #playOrder:I
    .restart local p2
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v3, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 489
    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 471
    .end local v0           #album:Ljava/lang/String;
    .end local v2           #artist:Ljava/lang/String;
    .end local v3           #cv:Landroid/content/ContentValues;
    .end local v6           #name:Ljava/lang/String;
    :goto_2
    add-int/lit8 v4, v4, 0x1

    move v7, p2

    .end local p2
    .restart local v7       #playOrder:I
    goto :goto_1

    .end local v9           #songItem:Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;
    :cond_2
    move p2, v7

    .end local v7           #playOrder:I
    .restart local p2
    move-object v10, v8

    .line 493
    goto :goto_0

    .end local p2
    .restart local v7       #playOrder:I
    .restart local v9       #songItem:Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;
    :cond_3
    move p2, v7

    .end local v7           #playOrder:I
    .restart local p2
    goto :goto_2
.end method

.method private static createMemberInfoFromLocalLib(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/util/HashMap;
    .locals 11
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    .prologue
    .line 404
    .local p1, ids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/4 v0, 0x6

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "_data"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const-string v1, "album"

    aput-object v1, v2, v0

    const/4 v0, 0x3

    const-string v1, "artist"

    aput-object v1, v2, v0

    const/4 v0, 0x4

    const-string v1, "duration"

    aput-object v1, v2, v0

    const/4 v0, 0x5

    const-string v1, "title"

    aput-object v1, v2, v0

    .line 410
    .local v2, MEMBER_COLS:[Ljava/lang/String;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 411
    :cond_0
    const/4 p0, 0x0

    .line 452
    .end local v2           #MEMBER_COLS:[Ljava/lang/String;
    .end local p0
    .end local p1           #ids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :goto_0
    return-object p0

    .line 414
    .restart local v2       #MEMBER_COLS:[Ljava/lang/String;
    .restart local p0
    .restart local p1       #ids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :cond_1
    invoke-static {p1}, Lcom/miui/player/provider/PlayerProviderUtils;->concatIdsAsSet(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object p1

    .line 415
    .local p1, idSet:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id IN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .end local p1           #idSet:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 416
    .local p1, where:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, p1}, Lcom/miui/player/MusicUtils;->wrapWithBlacklist(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 418
    .local v0, c:Landroid/database/Cursor;
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 421
    .local v7, res:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Landroid/content/ContentValues;>;"
    if-nez v0, :cond_2

    .line 422
    const/4 p0, 0x0

    .line 449
    .end local p0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 425
    .restart local p0
    :cond_2
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result p0

    .end local p0
    if-gtz p0, :cond_3

    .line 426
    const/4 p0, 0x0

    .line 449
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 429
    :cond_3
    :try_start_1
    const-string p0, "_id"

    invoke-interface {v0, p0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 430
    .local v4, idIdx:I
    const-string p0, "_data"

    invoke-interface {v0, p0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 431
    .local v2, dataIdx:I
    const-string p0, "title"

    invoke-interface {v0, p0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 432
    .local v8, titleIdx:I
    const-string p0, "album"

    invoke-interface {v0, p0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    .line 433
    .local p0, albumIdx:I
    const-string p1, "artist"

    .end local p1           #where:Ljava/lang/String;
    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    .line 434
    .local p1, artistIdx:I
    const-string v1, "duration"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 436
    .local v3, durationIdx:I
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_4

    .line 437
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 438
    .local v1, cv:Landroid/content/ContentValues;
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 439
    .local v5, key:J
    const-string v9, "audio_id"

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 440
    const-string v9, "_data"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    const-string v9, "title"

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    const-string v9, "album"

    invoke-interface {v0, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    const-string v9, "artist"

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    const-string v9, "duration"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 446
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .end local v5           #key:J
    invoke-virtual {v7, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 436
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 449
    .end local v1           #cv:Landroid/content/ContentValues;
    .end local v2           #dataIdx:I
    .end local v3           #durationIdx:I
    .end local v4           #idIdx:I
    .end local v8           #titleIdx:I
    .end local p0           #albumIdx:I
    .end local p1           #artistIdx:I
    :catchall_0
    move-exception p0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw p0

    .restart local v2       #dataIdx:I
    .restart local v3       #durationIdx:I
    .restart local v4       #idIdx:I
    .restart local v8       #titleIdx:I
    .restart local p0       #albumIdx:I
    .restart local p1       #artistIdx:I
    :cond_4
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move-object p0, v7

    .line 452
    goto/16 :goto_0
.end method

.method private static createMemberInfoFromPlaylist(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/util/HashMap;
    .locals 12
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    .prologue
    .line 332
    .local p1, ids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/4 v0, 0x7

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "audio_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "album"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const-string v1, "artist"

    aput-object v1, v2, v0

    const/4 v0, 0x3

    const-string v1, "_data"

    aput-object v1, v2, v0

    const/4 v0, 0x4

    const-string v1, "duration"

    aput-object v1, v2, v0

    const/4 v0, 0x5

    const-string v1, "online_id"

    aput-object v1, v2, v0

    const/4 v0, 0x6

    const-string v1, "title"

    aput-object v1, v2, v0

    .line 342
    .local v2, MEMBER_COLS:[Ljava/lang/String;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 343
    :cond_0
    const/4 p0, 0x0

    .line 392
    .end local v2           #MEMBER_COLS:[Ljava/lang/String;
    .end local p0
    .end local p1           #ids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :goto_0
    return-object p0

    .line 346
    .restart local v2       #MEMBER_COLS:[Ljava/lang/String;
    .restart local p0
    .restart local p1       #ids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :cond_1
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 348
    .local v9, res:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Landroid/content/ContentValues;>;"
    invoke-static {p1}, Lcom/miui/player/provider/PlayerProviderUtils;->concatIdsAsSet(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object p1

    .line 349
    .local p1, idSet:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "audio_id IN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .end local p1           #idSet:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 351
    .local v3, where:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/miui/player/provider/PlayerStore$MiuiPlaylistsAudioMap;->EXTERNAL_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 355
    .local v0, c:Landroid/database/Cursor;
    if-nez v0, :cond_2

    .line 356
    const/4 p0, 0x0

    .line 389
    .end local p0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 359
    .restart local p0
    :cond_2
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result p0

    .end local p0
    if-gtz p0, :cond_3

    .line 360
    const/4 p0, 0x0

    .line 389
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 363
    :cond_3
    :try_start_1
    const-string p0, "audio_id"

    invoke-interface {v0, p0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    .line 364
    .local v4, idIdx:I
    const-string p0, "_data"

    invoke-interface {v0, p0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 365
    .local v2, dataIdx:I
    const-string p0, "title"

    invoke-interface {v0, p0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    .line 366
    .local v10, titleIdx:I
    const-string p0, "album"

    invoke-interface {v0, p0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p0

    .line 367
    .local p0, albumIdx:I
    const-string p1, "artist"

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    .line 369
    .local p1, artistIdx:I
    const-string v1, "duration"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 371
    .local v3, durationIdx:I
    const-string v1, "online_id"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 374
    .local v8, providerIdx:I
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_4

    .line 375
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 376
    .local v1, cv:Landroid/content/ContentValues;
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 377
    .local v5, key:J
    const-string v7, "_data"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v7, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    const-string v7, "title"

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v7, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    const-string v7, "album"

    invoke-interface {v0, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v7, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    const-string v7, "artist"

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v7, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    const-string v7, "duration"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v1, v7, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 383
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 384
    .local v7, provider:Ljava/lang/String;
    const-string v11, "online_id"

    invoke-virtual {v1, v11, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .end local v5           #key:J
    invoke-virtual {v9, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 389
    .end local v1           #cv:Landroid/content/ContentValues;
    .end local v2           #dataIdx:I
    .end local v3           #durationIdx:I
    .end local v4           #idIdx:I
    .end local v7           #provider:Ljava/lang/String;
    .end local v8           #providerIdx:I
    .end local v10           #titleIdx:I
    .end local p0           #albumIdx:I
    .end local p1           #artistIdx:I
    :catchall_0
    move-exception p0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw p0

    .restart local v2       #dataIdx:I
    .restart local v3       #durationIdx:I
    .restart local v4       #idIdx:I
    .restart local v8       #providerIdx:I
    .restart local v10       #titleIdx:I
    .restart local p0       #albumIdx:I
    .restart local p1       #artistIdx:I
    :cond_4
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move-object p0, v9

    .line 392
    goto/16 :goto_0
.end method

.method public static decodeEqualizerConfig(Ljava/lang/String;)[I
    .locals 5
    .parameter "str"

    .prologue
    const/4 v4, 0x0

    .line 695
    if-nez p0, :cond_0

    move-object v3, v4

    .line 709
    :goto_0
    return-object v3

    .line 700
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 701
    .local v0, arr:Lorg/json/JSONArray;
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    new-array v2, v3, [I

    .line 702
    .local v2, ret:[I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 703
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getInt(I)I

    move-result v3

    aput v3, v2, v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 702
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    move-object v3, v2

    .line 705
    goto :goto_0

    .line 706
    .end local v0           #arr:Lorg/json/JSONArray;
    .end local v1           #i:I
    .end local v2           #ret:[I
    :catch_0
    move-exception v3

    move-object v3, v4

    .line 709
    goto :goto_0
.end method

.method public static doSynchronize(Landroid/content/Context;)V
    .locals 13
    .parameter "context"

    .prologue
    .line 35
    const/4 v0, 0x3

    new-array v9, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v9, v0

    const/4 v0, 0x1

    const-string v1, "title"

    aput-object v1, v9, v0

    const/4 v0, 0x2

    const-string v1, "_data"

    aput-object v1, v9, v0

    .line 40
    .local v9, PROJECT_ANDROID:[Ljava/lang/String;
    const/4 v0, 0x4

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "audio_id"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const-string v1, "title"

    aput-object v1, v2, v0

    const/4 v0, 0x3

    const-string v1, "_data"

    aput-object v1, v2, v0

    .line 47
    .local v2, PROJECT_MIUI:[Ljava/lang/String;
    const/4 v10, 0x0

    .line 48
    .local v10, androidCursor:Landroid/database/Cursor;
    const/4 v6, 0x0

    .line 51
    .local v6, miuiCursor:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 53
    .local v0, res:Landroid/content/ContentResolver;
    sget-object v1, Lcom/miui/player/provider/PlayerStore$MiuiPlaylistsAudioMap;->EXTERNAL_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v11

    .line 56
    .end local v6           #miuiCursor:Landroid/database/Cursor;
    .local v11, miuiCursor:Landroid/database/Cursor;
    if-eqz v11, :cond_0

    :try_start_1
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result v1

    if-nez v1, :cond_3

    .line 109
    :cond_0
    if-eqz v10, :cond_1

    .line 110
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 113
    :cond_1
    if-eqz v11, :cond_2

    .line 114
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object p0, v10

    .line 116
    .end local v2           #PROJECT_MIUI:[Ljava/lang/String;
    .end local v9           #PROJECT_ANDROID:[Ljava/lang/String;
    .end local v10           #androidCursor:Landroid/database/Cursor;
    .local p0, androidCursor:Landroid/database/Cursor;
    :goto_0
    return-void

    .line 60
    .restart local v2       #PROJECT_MIUI:[Ljava/lang/String;
    .restart local v9       #PROJECT_ANDROID:[Ljava/lang/String;
    .restart local v10       #androidCursor:Landroid/database/Cursor;
    .local p0, context:Landroid/content/Context;
    :cond_3
    :try_start_2
    sget-object v4, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0}, Lcom/miui/player/MusicUtils;->wrapWithBlacklist(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, v0

    move-object v5, v9

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v1

    .line 63
    .end local v10           #androidCursor:Landroid/database/Cursor;
    .local v1, androidCursor:Landroid/database/Cursor;
    if-nez v1, :cond_7

    .line 64
    :try_start_3
    sget-object p0, Lcom/miui/player/provider/PlayerStore$MiuiPlaylistsAudioMap;->EXTERNAL_URI:Landroid/net/Uri;

    .end local p0           #context:Landroid/content/Context;
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, p0, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 109
    .end local v2           #PROJECT_MIUI:[Ljava/lang/String;
    .end local v9           #PROJECT_ANDROID:[Ljava/lang/String;
    :cond_4
    :goto_1
    if-eqz v1, :cond_5

    .line 110
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 113
    :cond_5
    if-eqz v11, :cond_6

    .line 114
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_6
    move-object p0, v1

    .line 116
    .end local v1           #androidCursor:Landroid/database/Cursor;
    .local p0, androidCursor:Landroid/database/Cursor;
    goto :goto_0

    .line 66
    .restart local v1       #androidCursor:Landroid/database/Cursor;
    .restart local v2       #PROJECT_MIUI:[Ljava/lang/String;
    .restart local v9       #PROJECT_ANDROID:[Ljava/lang/String;
    .local p0, context:Landroid/content/Context;
    :cond_7
    :try_start_4
    new-instance v2, Ljava/util/HashMap;

    .end local v2           #PROJECT_MIUI:[Ljava/lang/String;
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 67
    .local v2, androidMedia:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/String;>;"
    new-instance p0, Ljava/util/HashMap;

    .end local p0           #context:Landroid/content/Context;
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 69
    .local p0, androidData:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/String;>;"
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_2
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-nez v3, :cond_a

    .line 71
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 72
    .local v3, id:J
    const/4 v5, 0x1

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 73
    .local v6, title:Ljava/lang/String;
    const/4 v5, 0x2

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 74
    .local v5, path:Ljava/lang/String;
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v2, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .end local v3           #id:J
    invoke-virtual {p0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 109
    .end local v2           #androidMedia:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/String;>;"
    .end local v5           #path:Ljava/lang/String;
    .end local v6           #title:Ljava/lang/String;
    .end local v9           #PROJECT_ANDROID:[Ljava/lang/String;
    .end local p0           #androidData:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/String;>;"
    :catchall_0
    move-exception p0

    move-object v0, v11

    .end local v11           #miuiCursor:Landroid/database/Cursor;
    .local v0, miuiCursor:Landroid/database/Cursor;
    move-object v12, p0

    move-object p0, v1

    .end local v1           #androidCursor:Landroid/database/Cursor;
    .local p0, androidCursor:Landroid/database/Cursor;
    move-object v1, v12

    :goto_3
    if-eqz p0, :cond_8

    .line 110
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 113
    :cond_8
    if-eqz v0, :cond_9

    .line 114
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_9
    throw v1

    .line 78
    .local v0, res:Landroid/content/ContentResolver;
    .restart local v1       #androidCursor:Landroid/database/Cursor;
    .restart local v2       #androidMedia:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/String;>;"
    .restart local v9       #PROJECT_ANDROID:[Ljava/lang/String;
    .restart local v11       #miuiCursor:Landroid/database/Cursor;
    .local p0, androidData:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/String;>;"
    :cond_a
    :try_start_5
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 79
    .local v7, deleteIdList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    .end local v9           #PROJECT_ANDROID:[Ljava/lang/String;
    :goto_4
    invoke-interface {v11}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-nez v3, :cond_f

    .line 80
    const/4 v3, 0x0

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 81
    .local v8, memberId:J
    const/4 v3, 0x1

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 82
    .local v5, audioId:J
    invoke-static {v5, v6}, Lcom/miui/player/provider/PlayerProvider;->isOnlineAudio(J)Z

    move-result v3

    if-nez v3, :cond_c

    .line 83
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 84
    .local v4, androidTitle:Ljava/lang/String;
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 85
    .local v3, androidPath:Ljava/lang/String;
    if-eqz v4, :cond_b

    if-nez v3, :cond_d

    .line 86
    :cond_b
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .end local v3           #androidPath:Ljava/lang/String;
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    .end local v4           #androidTitle:Ljava/lang/String;
    .end local v5           #audioId:J
    :cond_c
    :goto_5
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_4

    .line 88
    .restart local v3       #androidPath:Ljava/lang/String;
    .restart local v4       #androidTitle:Ljava/lang/String;
    .restart local v5       #audioId:J
    :cond_d
    const/4 v5, 0x2

    invoke-interface {v11, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .end local v5           #audioId:J
    move-result-object v6

    .line 89
    .local v6, miuiTitle:Ljava/lang/String;
    const/4 v5, 0x3

    invoke-interface {v11, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 90
    .local v5, miuiPath:Ljava/lang/String;
    if-eqz v6, :cond_e

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .end local v4           #androidTitle:Ljava/lang/String;
    if-eqz v4, :cond_e

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .end local v3           #androidPath:Ljava/lang/String;
    if-nez v3, :cond_c

    .line 92
    :cond_e
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 98
    .end local v5           #miuiPath:Ljava/lang/String;
    .end local v6           #miuiTitle:Ljava/lang/String;
    .end local v8           #memberId:J
    :cond_f
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    .end local p0           #androidData:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/String;>;"
    if-nez p0, :cond_4

    .line 99
    invoke-static {v7}, Lcom/miui/player/provider/PlayerProviderUtils;->concatIdsAsSet(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object p0

    .line 100
    .local p0, idSet:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    .end local v2           #androidMedia:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/String;>;"
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id IN "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .end local p0           #idSet:Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 103
    .local p0, WHERE:Ljava/lang/String;
    sget-object v2, Lcom/miui/player/provider/PlayerStore$MiuiPlaylistsAudioMap;->EXTERNAL_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p0, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_1

    .line 109
    .end local v0           #res:Landroid/content/ContentResolver;
    .end local v1           #androidCursor:Landroid/database/Cursor;
    .end local v7           #deleteIdList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v11           #miuiCursor:Landroid/database/Cursor;
    .local v2, PROJECT_MIUI:[Ljava/lang/String;
    .local v6, miuiCursor:Landroid/database/Cursor;
    .restart local v9       #PROJECT_ANDROID:[Ljava/lang/String;
    .restart local v10       #androidCursor:Landroid/database/Cursor;
    .local p0, context:Landroid/content/Context;
    :catchall_1
    move-exception p0

    move-object v1, p0

    move-object v0, v6

    .end local v6           #miuiCursor:Landroid/database/Cursor;
    .local v0, miuiCursor:Landroid/database/Cursor;
    move-object p0, v10

    .end local v10           #androidCursor:Landroid/database/Cursor;
    .local p0, androidCursor:Landroid/database/Cursor;
    goto/16 :goto_3

    .local v0, res:Landroid/content/ContentResolver;
    .restart local v10       #androidCursor:Landroid/database/Cursor;
    .restart local v11       #miuiCursor:Landroid/database/Cursor;
    .local p0, context:Landroid/content/Context;
    :catchall_2
    move-exception p0

    move-object v1, p0

    move-object v0, v11

    .end local v11           #miuiCursor:Landroid/database/Cursor;
    .local v0, miuiCursor:Landroid/database/Cursor;
    move-object p0, v10

    .end local v10           #androidCursor:Landroid/database/Cursor;
    .local p0, androidCursor:Landroid/database/Cursor;
    goto/16 :goto_3
.end method

.method public static filterNowPlaying(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 7
    .parameter "where"
    .parameter "isFirst"

    .prologue
    const/4 v6, 0x0

    .line 208
    const-string v1, "%s %s %s != \'%s\'"

    .line 209
    .local v1, PATTERN:Ljava/lang/String;
    if-eqz p1, :cond_0

    const-string v2, ""

    move-object v0, v2

    .line 211
    .local v0, AND:Ljava/lang/String;
    :goto_0
    const-string v2, "%s %s %s != \'%s\'"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v6

    const/4 v4, 0x1

    aput-object v0, v3, v4

    const/4 v4, 0x2

    const-string v5, "_id"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 209
    .end local v0           #AND:Ljava/lang/String;
    :cond_0
    const-string v2, " AND "

    move-object v0, v2

    goto :goto_0
.end method

.method public static getDownloadedAudioId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)J
    .locals 6
    .parameter "context"
    .parameter "tr"
    .parameter "ar"
    .parameter "audioId"

    .prologue
    .line 655
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-lez v0, :cond_0

    invoke-static {p3, p4}, Lcom/miui/player/provider/PlayerProvider;->isOnlineAudio(J)Z

    move-result v0

    if-nez v0, :cond_0

    move-wide p0, p3

    .line 683
    .end local p0
    .end local p1
    .end local p2
    .end local p3
    :goto_0
    return-wide p0

    .line 659
    .restart local p0
    .restart local p1
    .restart local p2
    .restart local p3
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    .end local p3
    if-eqz p3, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 660
    const-wide/16 p0, 0x0

    goto :goto_0

    .line 662
    :cond_1
    const-wide/16 p3, 0x0

    .line 663
    .local p3, ret:J
    invoke-static {p1, p2}, Lcom/miui/player/helper/MusicMetaManager;->getMP3AppointName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 664
    .local p1, appointName:Ljava/lang/String;
    const-string p2, "music/mp3"

    .end local p2
    invoke-static {p1, p2}, Lcom/miui/player/helper/MusicMetaManager;->getFileName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 666
    .local p1, path:Ljava/lang/String;
    if-eqz p1, :cond_3

    .line 667
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 p0, 0x1

    new-array v2, p0, [Ljava/lang/String;

    .end local p0
    const/4 p0, 0x0

    const-string p2, "_id"

    aput-object p2, v2, p0

    const-string v3, "_data=?"

    const/4 p0, 0x1

    new-array v4, p0, [Ljava/lang/String;

    const/4 p0, 0x0

    aput-object p1, v4, p0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    .line 674
    .local p0, c:Landroid/database/Cursor;
    if-eqz p0, :cond_3

    .line 675
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    .end local p1           #path:Ljava/lang/String;
    if-eqz p1, :cond_2

    .line 676
    const/4 p1, 0x0

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p1

    .line 679
    .end local p3           #ret:J
    .local p1, ret:J
    :goto_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    move-wide p0, p1

    .end local p1           #ret:J
    .local p0, ret:J
    goto :goto_0

    .local p0, c:Landroid/database/Cursor;
    .restart local p3       #ret:J
    :cond_2
    move-wide p1, p3

    .end local p3           #ret:J
    .restart local p1       #ret:J
    goto :goto_1

    .end local p0           #c:Landroid/database/Cursor;
    .local p1, path:Ljava/lang/String;
    .restart local p3       #ret:J
    :cond_3
    move-wide p0, p3

    .end local p1           #path:Ljava/lang/String;
    .end local p3           #ret:J
    .local p0, ret:J
    goto :goto_0
.end method

.method public static getEqualizerConfigData(Landroid/content/Context;I)[I
    .locals 1
    .parameter "context"
    .parameter "id"

    .prologue
    .line 735
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/miui/player/provider/PlayerProviderUtils;->getEqualizerConfigData(Landroid/content/Context;IZ)[I

    move-result-object v0

    return-object v0
.end method

.method public static getEqualizerConfigData(Landroid/content/Context;IZ)[I
    .locals 9
    .parameter "context"
    .parameter "id"
    .parameter "allowNull"

    .prologue
    const/4 v8, 0x0

    const/4 v3, 0x0

    .line 739
    const/4 v7, 0x0

    .line 740
    .local v7, levels:[I
    const/4 v0, -0x1

    if-eq p1, v0, :cond_2

    .line 741
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/miui/player/provider/PlayerStore$MiuiEqualizer;->EXTERNAL_URI:Landroid/net/Uri;

    int-to-long v4, p1

    invoke-static {v1, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "_data"

    aput-object v4, v2, v8

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 744
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 745
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 746
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/player/provider/PlayerProviderUtils;->decodeEqualizerConfig(Ljava/lang/String;)[I

    move-result-object v7

    .line 748
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 751
    :cond_1
    if-eqz v7, :cond_2

    array-length v0, v7

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    .line 752
    const/4 v7, 0x0

    .line 756
    .end local v6           #c:Landroid/database/Cursor;
    :cond_2
    if-nez v7, :cond_3

    if-nez p2, :cond_3

    .line 757
    invoke-static {}, Lcom/miui/player/provider/PlayerProviderUtils;->getEuqalizerDefaultData()[I

    move-result-object v7

    .line 760
    :cond_3
    return-object v7
.end method

.method public static getEqualizerIdByName(Landroid/content/Context;Ljava/lang/String;)I
    .locals 9
    .parameter "context"
    .parameter "defaultName"

    .prologue
    const/4 v4, 0x1

    const/4 v8, 0x0

    .line 764
    const/4 v7, -0x1

    .line 765
    .local v7, ret:I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 766
    .local v0, res:Landroid/content/ContentResolver;
    new-array v2, v4, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v2, v8

    .line 767
    .local v2, projs:[Ljava/lang/String;
    sget-object v1, Lcom/miui/player/provider/PlayerStore$MiuiEqualizer;->EXTERNAL_URI:Landroid/net/Uri;

    const-string v3, "name=?"

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v8

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 772
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 773
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 774
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 776
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 779
    :cond_1
    return v7
.end method

.method public static getEuqalizerDefaultData()[I
    .locals 4

    .prologue
    const/4 v3, 0x5

    .line 726
    new-array v1, v3, [I

    .line 727
    .local v1, levels:[I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 728
    const/4 v2, 0x0

    aput v2, v1, v0

    .line 727
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 731
    :cond_0
    return-object v1
.end method

.method public static getProviderId(Landroid/content/Context;JLjava/lang/Long;)Ljava/lang/String;
    .locals 4
    .parameter "context"
    .parameter "id"
    .parameter "playlistId"

    .prologue
    const/4 v3, 0x1

    .line 253
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 254
    .local v0, ids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 255
    invoke-static {p0, v0, p3}, Lcom/miui/player/provider/PlayerProviderUtils;->getProviderIds(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/Long;)[Ljava/lang/String;

    move-result-object v1

    .line 256
    .local v1, providerIds:[Ljava/lang/String;
    if-eqz v1, :cond_0

    array-length v2, v1

    if-ge v2, v3, :cond_1

    .line 257
    :cond_0
    const/4 v2, 0x0

    .line 260
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    aget-object v2, v1, v2

    goto :goto_0
.end method

.method public static getProviderIds(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/Long;)[Ljava/lang/String;
    .locals 13
    .parameter "context"
    .parameter
    .parameter "playlistId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/Long;",
            ")[",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p1, ids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/4 v5, 0x1

    const/4 v12, 0x0

    const/4 v4, 0x0

    .line 216
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v0, v5, :cond_1

    :cond_0
    move-object v0, v4

    .line 248
    :goto_0
    return-object v0

    .line 220
    :cond_1
    invoke-static {p1}, Lcom/miui/player/provider/PlayerProviderUtils;->concatIdsAsSet(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v8

    .line 221
    .local v8, idSet:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "audio_id IN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 222
    .local v3, WHERE:Ljava/lang/String;
    new-array v2, v5, [Ljava/lang/String;

    const-string v0, "online_id"

    aput-object v0, v2, v12

    .line 226
    .local v2, PROVIDER_KEY:[Ljava/lang/String;
    new-array v9, v12, [Ljava/lang/String;

    .line 228
    .local v9, ret:[Ljava/lang/String;
    const/4 v6, 0x0

    .line 230
    .local v6, c:Landroid/database/Cursor;
    if-eqz p2, :cond_2

    .line 231
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-static {v10, v11}, Lcom/miui/player/provider/PlayerStore$MiuiPlaylists$Members;->getMembersUri(J)Landroid/net/Uri;

    move-result-object v1

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 239
    :goto_1
    if-eqz v6, :cond_4

    .line 240
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    new-array v9, v0, [Ljava/lang/String;

    .line 241
    const/4 v7, 0x0

    .line 242
    .local v7, i:I
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_2
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_3

    .line 243
    invoke-interface {v6, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v9, v7

    .line 242
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_2

    .line 235
    .end local v7           #i:I
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/miui/player/provider/PlayerStore$MiuiPlaylistsAudioMap;->EXTERNAL_URI:Landroid/net/Uri;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    goto :goto_1

    .line 245
    .restart local v7       #i:I
    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .end local v7           #i:I
    :cond_4
    move-object v0, v9

    .line 248
    goto :goto_0
.end method

.method public static getRecordCount(Landroid/content/Context;Landroid/net/Uri;)I
    .locals 9
    .parameter "context"
    .parameter "uri"

    .prologue
    const/4 v8, 0x0

    const/4 v3, 0x0

    .line 501
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "count(*)"

    aput-object v0, v2, v8

    .line 505
    .local v2, cols:[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 506
    .local v7, cur:Landroid/database/Cursor;
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 507
    invoke-interface {v7, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 508
    .local v6, count:I
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 510
    return v6
.end method

.method public static noNullValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "str"

    .prologue
    .line 497
    if-nez p0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    move-object v0, p0

    goto :goto_0
.end method

.method private static queryAudioIdForNowPlaying(Landroid/content/Context;I)Landroid/database/Cursor;
    .locals 7
    .parameter "context"
    .parameter "minOrder"

    .prologue
    .line 641
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    .line 645
    .local v2, AUDIO_COLUMN:[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "play_order >= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 647
    .local v3, WHERE:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/miui/player/provider/PlayerStore$MiuiNowPlayingAudio;->EXTERNAL_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const-string v5, "play_order"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 650
    .local v6, c:Landroid/database/Cursor;
    return-object v6
.end method

.method public static queryNormalEqualizer(Landroid/content/Context;)Landroid/database/Cursor;
    .locals 6
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 687
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/miui/player/provider/PlayerStore$MiuiEqualizer;->EXTERNAL_URI:Landroid/net/Uri;

    const-string v3, "_id != 0"

    const-string v5, "_id"

    move-object v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static removeFromPlaylist(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 8
    .parameter "context"
    .parameter "playlistId"
    .parameter "memberId"

    .prologue
    const-wide/16 v6, 0x0

    const/4 v5, 0x0

    .line 514
    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 515
    .local v0, plid:J
    cmp-long v3, v0, v6

    if-ltz v3, :cond_0

    cmp-long v3, p2, v6

    if-gez v3, :cond_1

    .line 521
    :cond_0
    :goto_0
    return-void

    .line 518
    :cond_1
    invoke-static {v0, v1}, Lcom/miui/player/provider/PlayerStore$MiuiPlaylists$Members;->getMembersUri(J)Landroid/net/Uri;

    move-result-object v2

    .line 519
    .local v2, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v2, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4, v5, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static synchronizeMiuiPlaylist(Landroid/content/Context;[J)V
    .locals 5
    .parameter "context"
    .parameter "audioIds"

    .prologue
    .line 119
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 120
    .local v1, res:Landroid/content/ContentResolver;
    invoke-static {p1}, Lcom/miui/player/provider/PlayerProviderUtils;->concatIdsAsSet([J)Ljava/lang/String;

    move-result-object v0

    .line 122
    .local v0, idSet:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "audio_id IN "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 124
    .local v2, whereDelFromPlaylist:Ljava/lang/String;
    sget-object v3, Lcom/miui/player/provider/PlayerStore$MiuiPlaylistsAudioMap;->EXTERNAL_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v2, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 125
    return-void
.end method

.method public static updateEqualizerConfig(Landroid/content/Context;I[I)I
    .locals 6
    .parameter "context"
    .parameter "id"
    .parameter "src"

    .prologue
    const/4 v5, 0x0

    .line 783
    sget-object v2, Lcom/miui/player/provider/PlayerStore$MiuiEqualizer;->EXTERNAL_URI:Landroid/net/Uri;

    int-to-long v3, p1

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 784
    .local v1, uri:Landroid/net/Uri;
    new-instance v0, Landroid/content/ContentValues;

    const/4 v2, 0x2

    invoke-direct {v0, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 785
    .local v0, cv:Landroid/content/ContentValues;
    const-string v2, "_data"

    invoke-static {p2}, Lcom/miui/player/provider/PlayerProviderUtils;->codeEqualizerConfig([I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 786
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v1, v0, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method public static updateNowplayingList(Landroid/content/Context;[JZ)[J
    .locals 11
    .parameter "context"
    .parameter "ids"
    .parameter "append"

    .prologue
    .line 568
    const/4 v0, 0x0

    .line 570
    .local v0, base:I
    if-nez p2, :cond_0

    .line 571
    invoke-static {p0}, Lcom/miui/player/provider/PlayerProviderUtils;->clearNowplayingList(Landroid/content/Context;)V

    .line 574
    :cond_0
    if-nez p1, :cond_1

    .line 575
    const/4 p0, 0x0

    move-object p1, p0

    move p0, v0

    .line 636
    .end local v0           #base:I
    .end local p1
    .end local p2
    .local p0, base:I
    :goto_0
    return-object p1

    .line 578
    .restart local v0       #base:I
    .local p0, context:Landroid/content/Context;
    .restart local p1
    .restart local p2
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 579
    .local v6, resolver:Landroid/content/ContentResolver;
    sget-object v8, Lcom/miui/player/provider/PlayerStore$MiuiNowPlayingAudio;->EXTERNAL_URI:Landroid/net/Uri;

    .line 580
    .local v8, uri:Landroid/net/Uri;
    if-eqz p2, :cond_a

    .line 581
    invoke-static {p0, v8}, Lcom/miui/player/provider/PlayerProviderUtils;->getRecordCount(Landroid/content/Context;Landroid/net/Uri;)I

    move-result p2

    .line 584
    .end local v0           #base:I
    .local p2, base:I
    :goto_1
    array-length v0, p1

    new-array v7, v0, [J

    .line 585
    .local v7, ret:[J
    const/4 v0, 0x0

    const/4 v1, 0x0

    array-length v2, p1

    invoke-static {p1, v0, v7, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 587
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 588
    .local v0, idList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 589
    .local v5, indexList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 p1, 0x0

    .local p1, i:I
    :goto_2
    array-length v1, v7

    if-ge p1, v1, :cond_3

    .line 590
    aget-wide v1, v7, p1

    invoke-static {v1, v2}, Lcom/miui/player/provider/PlayerProvider;->isOnlineAudio(J)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 591
    aget-wide v1, v7, p1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 592
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 589
    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    .line 596
    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    .end local p1           #i:I
    if-nez p1, :cond_4

    move p0, p2

    .end local p2           #base:I
    .local p0, base:I
    move-object p1, v7

    .line 597
    goto :goto_0

    .line 600
    .local p0, context:Landroid/content/Context;
    .restart local p2       #base:I
    :cond_4
    invoke-static {p0, v0}, Lcom/miui/player/provider/PlayerProviderUtils;->createMemberInfoFromPlaylist(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/util/HashMap;

    move-result-object v10

    .line 601
    .local v10, valueMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Landroid/content/ContentValues;>;"
    if-eqz v10, :cond_8

    .line 602
    invoke-virtual {v10}, Ljava/util/HashMap;->size()I

    move-result p1

    new-array v9, p1, [Landroid/content/ContentValues;

    .line 603
    .local v9, valueArr:[Landroid/content/ContentValues;
    move v1, p2

    .line 605
    .local v1, playerOrder:I
    const/4 p1, 0x0

    .line 607
    .restart local p1       #i:I
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    move v0, p1

    .end local p1           #i:I
    .local v0, i:I
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 608
    .local v3, id:J
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v10, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ContentValues;

    .line 609
    .local p1, cv:Landroid/content/ContentValues;
    if-eqz p1, :cond_9

    .line 610
    const-string v4, "play_order"

    add-int/lit8 v3, v1, 0x1

    .end local v1           #playerOrder:I
    .local v3, playerOrder:I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 611
    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .local v1, i:I
    aput-object p1, v9, v0

    move p1, v1

    .end local v1           #i:I
    .local p1, i:I
    move v0, v3

    .end local v3           #playerOrder:I
    .local v0, playerOrder:I
    :goto_4
    move v1, v0

    .end local v0           #playerOrder:I
    .local v1, playerOrder:I
    move v0, p1

    .line 613
    .end local p1           #i:I
    .local v0, i:I
    goto :goto_3

    .line 615
    :cond_5
    invoke-virtual {v6, v8, v9}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    .line 617
    invoke-static {p0, p2}, Lcom/miui/player/provider/PlayerProviderUtils;->queryAudioIdForNowPlaying(Landroid/content/Context;I)Landroid/database/Cursor;

    move-result-object v0

    .line 619
    .local v0, c:Landroid/database/Cursor;
    const/4 p0, 0x0

    .line 620
    .local p0, assignedIndexCount:I
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 622
    .local v1, indexSize:I
    if-eqz v0, :cond_7

    .line 623
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .end local v2           #i$:Ljava/util/Iterator;
    :goto_5
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result p1

    if-nez p1, :cond_6

    if-ge p0, v1, :cond_6

    .line 625
    add-int/lit8 p1, p0, 0x1

    .end local p0           #assignedIndexCount:I
    .local p1, assignedIndexCount:I
    invoke-virtual {v5, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    aput-wide v2, v7, p0

    .line 623
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move p0, p1

    .end local p1           #assignedIndexCount:I
    .restart local p0       #assignedIndexCount:I
    goto :goto_5

    .line 628
    :cond_6
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 631
    :cond_7
    :goto_6
    if-ge p0, v1, :cond_8

    .line 632
    invoke-virtual {v5, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const-wide/16 v2, 0x0

    aput-wide v2, v7, p1

    .line 631
    add-int/lit8 p0, p0, 0x1

    goto :goto_6

    .end local v0           #c:Landroid/database/Cursor;
    .end local v1           #indexSize:I
    .end local v9           #valueArr:[Landroid/content/ContentValues;
    .end local p0           #assignedIndexCount:I
    :cond_8
    move p0, p2

    .end local p2           #base:I
    .local p0, base:I
    move-object p1, v7

    .line 636
    goto/16 :goto_0

    .local v0, i:I
    .local v1, playerOrder:I
    .restart local v2       #i$:Ljava/util/Iterator;
    .local v3, id:J
    .restart local v9       #valueArr:[Landroid/content/ContentValues;
    .local p0, context:Landroid/content/Context;
    .local p1, cv:Landroid/content/ContentValues;
    .restart local p2       #base:I
    :cond_9
    move p1, v0

    .end local v0           #i:I
    .local p1, i:I
    move v0, v1

    .end local v1           #playerOrder:I
    .local v0, playerOrder:I
    goto :goto_4

    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #id:J
    .end local v5           #indexList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v7           #ret:[J
    .end local v9           #valueArr:[Landroid/content/ContentValues;
    .end local v10           #valueMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Landroid/content/ContentValues;>;"
    .local v0, base:I
    .local p1, ids:[J
    .local p2, append:Z
    :cond_a
    move p2, v0

    .end local v0           #base:I
    .local p2, base:I
    goto/16 :goto_1
.end method

.method public static updateNowplayingList(Landroid/content/Context;[Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;Z)[J
    .locals 11
    .parameter "context"
    .parameter "songItems"
    .parameter "append"

    .prologue
    .line 530
    const/4 v0, 0x0

    .line 532
    .local v0, base:I
    if-eqz p1, :cond_0

    array-length v9, p1

    if-nez v9, :cond_1

    .line 533
    :cond_0
    const/4 v9, 0x0

    .line 564
    :goto_0
    return-object v9

    .line 536
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 537
    .local v4, resolver:Landroid/content/ContentResolver;
    sget-object v6, Lcom/miui/player/provider/PlayerStore$MiuiNowPlayingAudio;->EXTERNAL_URI:Landroid/net/Uri;

    .line 538
    .local v6, uri:Landroid/net/Uri;
    if-nez p2, :cond_2

    .line 539
    invoke-static {p0}, Lcom/miui/player/provider/PlayerProviderUtils;->clearNowplayingList(Landroid/content/Context;)V

    .line 544
    :goto_1
    const/4 v5, 0x0

    .line 545
    .local v5, ret:[J
    invoke-static {p0, p1, v0}, Lcom/miui/player/provider/PlayerProviderUtils;->createMemberInfoByProviderId(Landroid/content/Context;[Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;I)Ljava/util/ArrayList;

    move-result-object v8

    .line 546
    .local v8, valueList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    if-eqz v8, :cond_4

    .line 548
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    new-array v7, v9, [Landroid/content/ContentValues;

    .line 549
    .local v7, valueArr:[Landroid/content/ContentValues;
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 550
    invoke-virtual {v4, v6, v7}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    .line 552
    invoke-static {p0, v0}, Lcom/miui/player/provider/PlayerProviderUtils;->queryAudioIdForNowPlaying(Landroid/content/Context;I)Landroid/database/Cursor;

    move-result-object v1

    .line 553
    .local v1, c:Landroid/database/Cursor;
    if-eqz v1, :cond_4

    .line 554
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v9

    new-array v5, v9, [J

    .line 555
    const/4 v2, 0x0

    .line 556
    .local v2, i:I
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_2
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v9

    if-nez v9, :cond_3

    .line 557
    add-int/lit8 v3, v2, 0x1

    .end local v2           #i:I
    .local v3, i:I
    const/4 v9, 0x0

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    aput-wide v9, v5, v2

    .line 556
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move v2, v3

    .end local v3           #i:I
    .restart local v2       #i:I
    goto :goto_2

    .line 541
    .end local v1           #c:Landroid/database/Cursor;
    .end local v2           #i:I
    .end local v5           #ret:[J
    .end local v7           #valueArr:[Landroid/content/ContentValues;
    .end local v8           #valueList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    :cond_2
    invoke-static {p0, v6}, Lcom/miui/player/provider/PlayerProviderUtils;->getRecordCount(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v0

    goto :goto_1

    .line 560
    .restart local v1       #c:Landroid/database/Cursor;
    .restart local v2       #i:I
    .restart local v5       #ret:[J
    .restart local v7       #valueArr:[Landroid/content/ContentValues;
    .restart local v8       #valueList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    :cond_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .end local v1           #c:Landroid/database/Cursor;
    .end local v2           #i:I
    .end local v7           #valueArr:[Landroid/content/ContentValues;
    :cond_4
    move-object v9, v5

    .line 564
    goto :goto_0
.end method
