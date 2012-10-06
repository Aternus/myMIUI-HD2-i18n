.class public Lcom/android/calendar/AgendaByDayAdapter;
.super Landroid/widget/BaseAdapter;
.source "AgendaByDayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/AgendaByDayAdapter$MultipleDayInfo;,
        Lcom/android/calendar/AgendaByDayAdapter$RowInfo;,
        Lcom/android/calendar/AgendaByDayAdapter$ViewHolder;
    }
.end annotation


# static fields
.field private static final TYPE_DAY:I = 0x0

.field static final TYPE_LAST:I = 0x2

.field private static final TYPE_MEETING:I = 0x1


# instance fields
.field private final mAgendaAdapter:Lcom/android/calendar/AgendaAdapter;

.field private final mContext:Landroid/content/Context;

.field private final mInflater:Landroid/view/LayoutInflater;

.field private mRowInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/AgendaByDayAdapter$RowInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mTodayJulianDay:I

.field private mUpdateTZ:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 53
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/calendar/AgendaByDayAdapter;->mUpdateTZ:Ljava/lang/Runnable;

    .line 54
    iput-object p1, p0, Lcom/android/calendar/AgendaByDayAdapter;->mContext:Landroid/content/Context;

    .line 55
    new-instance v0, Lcom/android/calendar/AgendaAdapter;

    const v1, 0x7f030003

    invoke-direct {v0, p1, v1}, Lcom/android/calendar/AgendaAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/calendar/AgendaByDayAdapter;->mAgendaAdapter:Lcom/android/calendar/AgendaAdapter;

    .line 56
    iget-object v0, p0, Lcom/android/calendar/AgendaByDayAdapter;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/calendar/AgendaByDayAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 57
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 385
    const/4 v0, 0x0

    return v0
.end method

.method public calculateDays(Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;)V
    .locals 21
    .parameter "dayAdapterInfo"

    .prologue
    .line 176
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->cursor:Landroid/database/Cursor;

    move-object v5, v0

    .line 177
    .local v5, cursor:Landroid/database/Cursor;
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 178
    .local v15, rowInfo:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/calendar/AgendaByDayAdapter$RowInfo;>;"
    const/4 v14, -0x1

    .line 179
    .local v14, prevStartDay:I
    new-instance v17, Landroid/text/format/Time;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaByDayAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaByDayAdapter;->mUpdateTZ:Ljava/lang/Runnable;

    move-object/from16 v19, v0

    invoke-static/range {v18 .. v19}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 180
    .local v17, time:Landroid/text/format/Time;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 181
    .local v11, now:J
    move-object/from16 v0, v17

    move-wide v1, v11

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 182
    move-object/from16 v0, v17

    iget-wide v0, v0, Landroid/text/format/Time;->gmtoff:J

    move-wide/from16 v18, v0

    move-wide v0, v11

    move-wide/from16 v2, v18

    invoke-static {v0, v1, v2, v3}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/calendar/AgendaByDayAdapter;->mTodayJulianDay:I

    .line 183
    new-instance v10, Ljava/util/LinkedList;

    invoke-direct {v10}, Ljava/util/LinkedList;-><init>()V

    .line 184
    .local v10, multipleDayList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/android/calendar/AgendaByDayAdapter$MultipleDayInfo;>;"
    const/4 v13, 0x0

    .local v13, position:I
    :goto_0
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v18

    if-eqz v18, :cond_8

    .line 185
    const/16 v18, 0xa

    move-object v0, v5

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 188
    .local v16, startDay:I
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->start:I

    move/from16 v18, v0

    move/from16 v0, v16

    move/from16 v1, v18

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v16

    .line 190
    move/from16 v0, v16

    move v1, v14

    if-eq v0, v1, :cond_1

    .line 192
    const/16 v18, -0x1

    move v0, v14

    move/from16 v1, v18

    if-ne v0, v1, :cond_3

    .line 193
    new-instance v18, Lcom/android/calendar/AgendaByDayAdapter$RowInfo;

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/android/calendar/AgendaByDayAdapter$RowInfo;-><init>(II)V

    move-object v0, v15

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 227
    :cond_0
    :goto_1
    move/from16 v14, v16

    .line 231
    :cond_1
    new-instance v18, Lcom/android/calendar/AgendaByDayAdapter$RowInfo;

    const/16 v19, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    move v2, v13

    invoke-direct {v0, v1, v2}, Lcom/android/calendar/AgendaByDayAdapter$RowInfo;-><init>(II)V

    move-object v0, v15

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 235
    const/16 v18, 0xb

    move-object v0, v5

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 238
    .local v7, endDay:I
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->end:I

    move/from16 v18, v0

    move v0, v7

    move/from16 v1, v18

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 239
    move v0, v7

    move/from16 v1, v16

    if-le v0, v1, :cond_2

    .line 240
    new-instance v18, Lcom/android/calendar/AgendaByDayAdapter$MultipleDayInfo;

    move-object/from16 v0, v18

    move v1, v13

    move v2, v7

    invoke-direct {v0, v1, v2}, Lcom/android/calendar/AgendaByDayAdapter$MultipleDayInfo;-><init>(II)V

    move-object v0, v10

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 184
    :cond_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 198
    .end local v7           #endDay:I
    :cond_3
    const/4 v6, 0x0

    .line 199
    .local v6, dayHeaderAdded:Z
    add-int/lit8 v4, v14, 0x1

    .local v4, currentDay:I
    :goto_2
    move v0, v4

    move/from16 v1, v16

    if-gt v0, v1, :cond_7

    .line 200
    const/4 v6, 0x0

    .line 201
    invoke-virtual {v10}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 202
    .local v9, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/calendar/AgendaByDayAdapter$MultipleDayInfo;>;"
    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_6

    .line 203
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/calendar/AgendaByDayAdapter$MultipleDayInfo;

    .line 206
    .local v8, info:Lcom/android/calendar/AgendaByDayAdapter$MultipleDayInfo;
    move-object v0, v8

    iget v0, v0, Lcom/android/calendar/AgendaByDayAdapter$MultipleDayInfo;->mEndDay:I

    move/from16 v18, v0

    move/from16 v0, v18

    move v1, v4

    if-ge v0, v1, :cond_4

    .line 207
    invoke-interface {v9}, Ljava/util/Iterator;->remove()V

    goto :goto_3

    .line 213
    :cond_4
    if-nez v6, :cond_5

    .line 214
    new-instance v18, Lcom/android/calendar/AgendaByDayAdapter$RowInfo;

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    move v2, v4

    invoke-direct {v0, v1, v2}, Lcom/android/calendar/AgendaByDayAdapter$RowInfo;-><init>(II)V

    move-object v0, v15

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 215
    const/4 v6, 0x1

    .line 217
    :cond_5
    new-instance v18, Lcom/android/calendar/AgendaByDayAdapter$RowInfo;

    const/16 v19, 0x1

    move-object v0, v8

    iget v0, v0, Lcom/android/calendar/AgendaByDayAdapter$MultipleDayInfo;->mPosition:I

    move/from16 v20, v0

    invoke-direct/range {v18 .. v20}, Lcom/android/calendar/AgendaByDayAdapter$RowInfo;-><init>(II)V

    move-object v0, v15

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 199
    .end local v8           #info:Lcom/android/calendar/AgendaByDayAdapter$MultipleDayInfo;
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 223
    .end local v9           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/calendar/AgendaByDayAdapter$MultipleDayInfo;>;"
    :cond_7
    if-nez v6, :cond_0

    .line 224
    new-instance v18, Lcom/android/calendar/AgendaByDayAdapter$RowInfo;

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/android/calendar/AgendaByDayAdapter$RowInfo;-><init>(II)V

    move-object v0, v15

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 246
    .end local v4           #currentDay:I
    .end local v6           #dayHeaderAdded:Z
    .end local v16           #startDay:I
    :cond_8
    if-lez v14, :cond_c

    .line 247
    add-int/lit8 v4, v14, 0x1

    .restart local v4       #currentDay:I
    :goto_4
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->end:I

    move/from16 v18, v0

    move v0, v4

    move/from16 v1, v18

    if-gt v0, v1, :cond_c

    .line 249
    const/4 v6, 0x0

    .line 250
    .restart local v6       #dayHeaderAdded:Z
    invoke-virtual {v10}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 251
    .restart local v9       #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/calendar/AgendaByDayAdapter$MultipleDayInfo;>;"
    :goto_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_b

    .line 252
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/calendar/AgendaByDayAdapter$MultipleDayInfo;

    .line 255
    .restart local v8       #info:Lcom/android/calendar/AgendaByDayAdapter$MultipleDayInfo;
    move-object v0, v8

    iget v0, v0, Lcom/android/calendar/AgendaByDayAdapter$MultipleDayInfo;->mEndDay:I

    move/from16 v18, v0

    move/from16 v0, v18

    move v1, v4

    if-ge v0, v1, :cond_9

    .line 256
    invoke-interface {v9}, Ljava/util/Iterator;->remove()V

    goto :goto_5

    .line 262
    :cond_9
    if-nez v6, :cond_a

    .line 263
    new-instance v18, Lcom/android/calendar/AgendaByDayAdapter$RowInfo;

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    move v2, v4

    invoke-direct {v0, v1, v2}, Lcom/android/calendar/AgendaByDayAdapter$RowInfo;-><init>(II)V

    move-object v0, v15

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 264
    const/4 v6, 0x1

    .line 266
    :cond_a
    new-instance v18, Lcom/android/calendar/AgendaByDayAdapter$RowInfo;

    const/16 v19, 0x1

    move-object v0, v8

    iget v0, v0, Lcom/android/calendar/AgendaByDayAdapter$MultipleDayInfo;->mPosition:I

    move/from16 v20, v0

    invoke-direct/range {v18 .. v20}, Lcom/android/calendar/AgendaByDayAdapter$RowInfo;-><init>(II)V

    move-object v0, v15

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 248
    .end local v8           #info:Lcom/android/calendar/AgendaByDayAdapter$MultipleDayInfo;
    :cond_b
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 270
    .end local v4           #currentDay:I
    .end local v6           #dayHeaderAdded:Z
    .end local v9           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/calendar/AgendaByDayAdapter$MultipleDayInfo;>;"
    :cond_c
    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/calendar/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    .line 271
    return-void
.end method

.method public changeCursor(Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;)V
    .locals 2
    .parameter "info"

    .prologue
    .line 171
    invoke-virtual {p0, p1}, Lcom/android/calendar/AgendaByDayAdapter;->calculateDays(Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;)V

    .line 172
    iget-object v0, p0, Lcom/android/calendar/AgendaByDayAdapter;->mAgendaAdapter:Lcom/android/calendar/AgendaAdapter;

    iget-object v1, p1, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->cursor:Landroid/database/Cursor;

    invoke-virtual {v0, v1}, Lcom/android/calendar/AgendaAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 173
    return-void
.end method

.method public clearDayHeaderInfo()V
    .locals 1

    .prologue
    .line 167
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/calendar/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    .line 168
    return-void
.end method

.method public findDayPositionNearestTime(Landroid/text/format/Time;)I
    .locals 11
    .parameter "time"

    .prologue
    const/4 v10, 0x0

    .line 308
    iget-object v9, p0, Lcom/android/calendar/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    if-nez v9, :cond_0

    move v9, v10

    .line 332
    :goto_0
    return v9

    .line 311
    :cond_0
    invoke-virtual {p1, v10}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v4

    .line 312
    .local v4, millis:J
    iget-wide v9, p1, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v4, v5, v9, v10}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v2

    .line 313
    .local v2, julianDay:I
    const/16 v6, 0x3e8

    .line 314
    .local v6, minDistance:I
    const/4 v7, 0x0

    .line 315
    .local v7, minIndex:I
    iget-object v9, p0, Lcom/android/calendar/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 316
    .local v3, len:I
    const/4 v1, 0x0

    .local v1, index:I
    :goto_1
    if-ge v1, v3, :cond_3

    .line 317
    iget-object v9, p0, Lcom/android/calendar/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/calendar/AgendaByDayAdapter$RowInfo;

    .line 318
    .local v8, row:Lcom/android/calendar/AgendaByDayAdapter$RowInfo;
    iget v9, v8, Lcom/android/calendar/AgendaByDayAdapter$RowInfo;->mType:I

    if-nez v9, :cond_2

    .line 319
    iget v9, v8, Lcom/android/calendar/AgendaByDayAdapter$RowInfo;->mData:I

    sub-int v9, v2, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 320
    .local v0, distance:I
    if-nez v0, :cond_1

    move v9, v1

    .line 321
    goto :goto_0

    .line 323
    :cond_1
    if-ge v0, v6, :cond_2

    .line 324
    move v6, v0

    .line 325
    move v7, v1

    .line 316
    .end local v0           #distance:I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v8           #row:Lcom/android/calendar/AgendaByDayAdapter$RowInfo;
    :cond_3
    move v9, v7

    .line 332
    goto :goto_0
.end method

.method public findJulianDayFromPosition(I)I
    .locals 5
    .parameter "position"

    .prologue
    const/4 v4, 0x0

    .line 342
    iget-object v3, p0, Lcom/android/calendar/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    if-gez p1, :cond_1

    :cond_0
    move v3, v4

    .line 355
    :goto_0
    return v3

    .line 346
    :cond_1
    iget-object v3, p0, Lcom/android/calendar/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 347
    .local v1, len:I
    if-lt p1, v1, :cond_2

    move v3, v4

    goto :goto_0

    .line 349
    :cond_2
    move v0, p1

    .local v0, index:I
    :goto_1
    if-ltz v0, :cond_4

    .line 350
    iget-object v3, p0, Lcom/android/calendar/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/calendar/AgendaByDayAdapter$RowInfo;

    .line 351
    .local v2, row:Lcom/android/calendar/AgendaByDayAdapter$RowInfo;
    iget v3, v2, Lcom/android/calendar/AgendaByDayAdapter$RowInfo;->mType:I

    if-nez v3, :cond_3

    .line 352
    iget v3, v2, Lcom/android/calendar/AgendaByDayAdapter$RowInfo;->mData:I

    goto :goto_0

    .line 349
    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .end local v2           #row:Lcom/android/calendar/AgendaByDayAdapter$RowInfo;
    :cond_4
    move v3, v4

    .line 355
    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/calendar/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/android/calendar/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 63
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/calendar/AgendaByDayAdapter;->mAgendaAdapter:Lcom/android/calendar/AgendaAdapter;

    invoke-virtual {v0}, Lcom/android/calendar/AgendaAdapter;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method public getCursorPosition(I)I
    .locals 4
    .parameter "listPos"

    .prologue
    .line 366
    iget-object v2, p0, Lcom/android/calendar/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    if-ltz p1, :cond_1

    .line 367
    iget-object v2, p0, Lcom/android/calendar/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/calendar/AgendaByDayAdapter$RowInfo;

    .line 368
    .local v1, row:Lcom/android/calendar/AgendaByDayAdapter$RowInfo;
    iget v2, v1, Lcom/android/calendar/AgendaByDayAdapter$RowInfo;->mType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 369
    iget v2, v1, Lcom/android/calendar/AgendaByDayAdapter$RowInfo;->mData:I

    .line 380
    .end local v1           #row:Lcom/android/calendar/AgendaByDayAdapter$RowInfo;
    :goto_0
    return v2

    .line 371
    .restart local v1       #row:Lcom/android/calendar/AgendaByDayAdapter$RowInfo;
    :cond_0
    add-int/lit8 v0, p1, 0x1

    .line 372
    .local v0, nextPos:I
    iget-object v2, p0, Lcom/android/calendar/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 373
    invoke-virtual {p0, v0}, Lcom/android/calendar/AgendaByDayAdapter;->getCursorPosition(I)I

    move-result v0

    .line 374
    if-ltz v0, :cond_1

    .line 375
    neg-int v2, v0

    goto :goto_0

    .line 380
    .end local v0           #nextPos:I
    .end local v1           #row:Lcom/android/calendar/AgendaByDayAdapter$RowInfo;
    :cond_1
    const/high16 v2, -0x8000

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 3
    .parameter "position"

    .prologue
    .line 67
    iget-object v1, p0, Lcom/android/calendar/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .line 68
    iget-object v1, p0, Lcom/android/calendar/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/AgendaByDayAdapter$RowInfo;

    .line 69
    .local v0, row:Lcom/android/calendar/AgendaByDayAdapter$RowInfo;
    iget v1, v0, Lcom/android/calendar/AgendaByDayAdapter$RowInfo;->mType:I

    if-nez v1, :cond_0

    move-object v1, v0

    .line 75
    .end local v0           #row:Lcom/android/calendar/AgendaByDayAdapter$RowInfo;
    :goto_0
    return-object v1

    .line 72
    .restart local v0       #row:Lcom/android/calendar/AgendaByDayAdapter$RowInfo;
    :cond_0
    iget-object v1, p0, Lcom/android/calendar/AgendaByDayAdapter;->mAgendaAdapter:Lcom/android/calendar/AgendaAdapter;

    iget v2, v0, Lcom/android/calendar/AgendaByDayAdapter$RowInfo;->mData:I

    invoke-virtual {v1, v2}, Lcom/android/calendar/AgendaAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 75
    .end local v0           #row:Lcom/android/calendar/AgendaByDayAdapter$RowInfo;
    :cond_1
    iget-object v1, p0, Lcom/android/calendar/AgendaByDayAdapter;->mAgendaAdapter:Lcom/android/calendar/AgendaAdapter;

    invoke-virtual {v1, p1}, Lcom/android/calendar/AgendaAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 3
    .parameter "position"

    .prologue
    .line 79
    iget-object v1, p0, Lcom/android/calendar/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .line 80
    iget-object v1, p0, Lcom/android/calendar/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/AgendaByDayAdapter$RowInfo;

    .line 81
    .local v0, row:Lcom/android/calendar/AgendaByDayAdapter$RowInfo;
    iget v1, v0, Lcom/android/calendar/AgendaByDayAdapter$RowInfo;->mType:I

    if-nez v1, :cond_0

    .line 82
    neg-int v1, p1

    int-to-long v1, v1

    .line 87
    .end local v0           #row:Lcom/android/calendar/AgendaByDayAdapter$RowInfo;
    :goto_0
    return-wide v1

    .line 84
    .restart local v0       #row:Lcom/android/calendar/AgendaByDayAdapter$RowInfo;
    :cond_0
    iget-object v1, p0, Lcom/android/calendar/AgendaByDayAdapter;->mAgendaAdapter:Lcom/android/calendar/AgendaAdapter;

    iget v2, v0, Lcom/android/calendar/AgendaByDayAdapter$RowInfo;->mData:I

    invoke-virtual {v1, v2}, Lcom/android/calendar/AgendaAdapter;->getItemId(I)J

    move-result-wide v1

    goto :goto_0

    .line 87
    .end local v0           #row:Lcom/android/calendar/AgendaByDayAdapter$RowInfo;
    :cond_1
    iget-object v1, p0, Lcom/android/calendar/AgendaByDayAdapter;->mAgendaAdapter:Lcom/android/calendar/AgendaAdapter;

    invoke-virtual {v1, p1}, Lcom/android/calendar/AgendaAdapter;->getItemId(I)J

    move-result-wide v1

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/calendar/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/calendar/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/calendar/AgendaByDayAdapter$RowInfo;

    iget v0, p0, Lcom/android/calendar/AgendaByDayAdapter$RowInfo;->mType:I

    :goto_0
    return v0

    .restart local p0
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 18
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 102
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    move-object v4, v0

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, p1

    move v1, v4

    if-le v0, v1, :cond_1

    .line 104
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaByDayAdapter;->mAgendaAdapter:Lcom/android/calendar/AgendaAdapter;

    move-object v4, v0

    move-object v0, v4

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/calendar/AgendaAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 159
    .end local p0
    .end local p1
    :goto_0
    return-object v4

    .line 107
    .restart local p0
    .restart local p1
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    move-object v4, v0

    move-object v0, v4

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/calendar/AgendaByDayAdapter$RowInfo;

    .line 108
    .local v14, row:Lcom/android/calendar/AgendaByDayAdapter$RowInfo;
    iget v4, v14, Lcom/android/calendar/AgendaByDayAdapter$RowInfo;->mType:I

    if-nez v4, :cond_5

    .line 109
    const/4 v13, 0x0

    .line 110
    .local v13, holder:Lcom/android/calendar/AgendaByDayAdapter$ViewHolder;
    const/4 v10, 0x0

    .line 111
    .local v10, agendaDayView:Landroid/view/View;
    if-eqz p2, :cond_2

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 114
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v15

    .line 115
    .local v15, tag:Ljava/lang/Object;
    instance-of v4, v15, Lcom/android/calendar/AgendaByDayAdapter$ViewHolder;

    if-eqz v4, :cond_2

    .line 116
    move-object/from16 v10, p2

    .line 117
    move-object v0, v15

    check-cast v0, Lcom/android/calendar/AgendaByDayAdapter$ViewHolder;

    move-object v13, v0

    .line 121
    .end local v15           #tag:Ljava/lang/Object;
    :cond_2
    if-nez v13, :cond_3

    .line 124
    new-instance v13, Lcom/android/calendar/AgendaByDayAdapter$ViewHolder;

    .end local v13           #holder:Lcom/android/calendar/AgendaByDayAdapter$ViewHolder;
    invoke-direct {v13}, Lcom/android/calendar/AgendaByDayAdapter$ViewHolder;-><init>()V

    .line 125
    .restart local v13       #holder:Lcom/android/calendar/AgendaByDayAdapter$ViewHolder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaByDayAdapter;->mInflater:Landroid/view/LayoutInflater;

    move-object v4, v0

    const v5, 0x7f030001

    const/4 v6, 0x0

    move-object v0, v4

    move v1, v5

    move-object/from16 v2, p3

    move v3, v6

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v10

    .line 126
    const v4, 0x7f0c0002

    invoke-virtual {v10, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .end local p1
    check-cast p1, Landroid/widget/TextView;

    move-object/from16 v0, p1

    move-object v1, v13

    iput-object v0, v1, Lcom/android/calendar/AgendaByDayAdapter$ViewHolder;->dateView:Landroid/widget/TextView;

    .line 127
    invoke-virtual {v10, v13}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 130
    :cond_3
    new-instance v11, Landroid/text/format/Time;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaByDayAdapter;->mContext:Landroid/content/Context;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaByDayAdapter;->mUpdateTZ:Ljava/lang/Runnable;

    move-object v5, v0

    invoke-static {v4, v5}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v11, v4}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 131
    .local v11, date:Landroid/text/format/Time;
    iget v4, v14, Lcom/android/calendar/AgendaByDayAdapter$RowInfo;->mData:I

    invoke-virtual {v11, v4}, Landroid/text/format/Time;->setJulianDay(I)J

    move-result-wide v5

    .line 132
    .local v5, millis:J
    const/16 v9, 0x14

    .line 136
    .local v9, flags:I
    iget v4, v14, Lcom/android/calendar/AgendaByDayAdapter$RowInfo;->mData:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/AgendaByDayAdapter;->mTodayJulianDay:I

    move v7, v0

    if-ne v4, v7, :cond_4

    .line 137
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaByDayAdapter;->mContext:Landroid/content/Context;

    move-object v11, v0

    .end local v11           #date:Landroid/text/format/Time;
    const v12, 0x7f080044

    const/4 v4, 0x1

    new-array v14, v4, [Ljava/lang/Object;

    .end local v14           #row:Lcom/android/calendar/AgendaByDayAdapter$RowInfo;
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaByDayAdapter;->mContext:Landroid/content/Context;

    move-object v4, v0

    move-wide v7, v5

    invoke-static/range {v4 .. v9}, Lcom/android/calendar/Utils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v14, v15

    invoke-virtual {v11, v12, v14}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 148
    .local v12, dateViewText:Ljava/lang/String;
    :goto_1
    iget-object v4, v13, Lcom/android/calendar/AgendaByDayAdapter$ViewHolder;->dateView:Landroid/widget/TextView;

    invoke-virtual {v4, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v4, v10

    .line 150
    goto/16 :goto_0

    .line 140
    .end local v12           #dateViewText:Ljava/lang/String;
    .restart local v11       #date:Landroid/text/format/Time;
    .restart local v14       #row:Lcom/android/calendar/AgendaByDayAdapter$RowInfo;
    :cond_4
    or-int/lit8 v9, v9, 0x2

    .line 141
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaByDayAdapter;->mContext:Landroid/content/Context;

    move-object v4, v0

    move-wide v7, v5

    invoke-static/range {v4 .. v9}, Lcom/android/calendar/Utils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v12

    .restart local v12       #dateViewText:Ljava/lang/String;
    goto :goto_1

    .line 151
    .end local v5           #millis:J
    .end local v9           #flags:I
    .end local v10           #agendaDayView:Landroid/view/View;
    .end local v11           #date:Landroid/text/format/Time;
    .end local v12           #dateViewText:Ljava/lang/String;
    .end local v13           #holder:Lcom/android/calendar/AgendaByDayAdapter$ViewHolder;
    .restart local p1
    :cond_5
    iget v4, v14, Lcom/android/calendar/AgendaByDayAdapter$RowInfo;->mType:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_6

    .line 152
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaByDayAdapter;->mAgendaAdapter:Lcom/android/calendar/AgendaAdapter;

    move-object v4, v0

    iget v5, v14, Lcom/android/calendar/AgendaByDayAdapter$RowInfo;->mData:I

    move-object v0, v4

    move v1, v5

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/calendar/AgendaAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v16

    .line 153
    .local v16, x:Landroid/view/View;
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/calendar/AgendaAdapter$ViewHolder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaAdapter$ViewHolder;->title:Landroid/widget/TextView;

    move-object/from16 v17, v0

    .line 157
    .local v17, y:Landroid/widget/TextView;
    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    move-object/from16 v0, v17

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v4, v16

    .line 159
    goto/16 :goto_0

    .line 162
    .end local v16           #x:Landroid/view/View;
    .end local v17           #y:Landroid/widget/TextView;
    .restart local p0
    :cond_6
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown event type:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v14, Lcom/android/calendar/AgendaByDayAdapter$RowInfo;->mType:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x2

    return v0
.end method

.method public isEnabled(I)Z
    .locals 3
    .parameter "position"

    .prologue
    const/4 v2, 0x1

    .line 390
    iget-object v1, p0, Lcom/android/calendar/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/calendar/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_1

    .line 391
    iget-object v1, p0, Lcom/android/calendar/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/AgendaByDayAdapter$RowInfo;

    .line 392
    .local v0, row:Lcom/android/calendar/AgendaByDayAdapter$RowInfo;
    iget v1, v0, Lcom/android/calendar/AgendaByDayAdapter$RowInfo;->mType:I

    if-ne v1, v2, :cond_0

    move v1, v2

    .line 394
    .end local v0           #row:Lcom/android/calendar/AgendaByDayAdapter$RowInfo;
    :goto_0
    return v1

    .line 392
    .restart local v0       #row:Lcom/android/calendar/AgendaByDayAdapter$RowInfo;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .end local v0           #row:Lcom/android/calendar/AgendaByDayAdapter$RowInfo;
    :cond_1
    move v1, v2

    .line 394
    goto :goto_0
.end method
