.class public Lcom/android/providers/calendar/CalendarAppWidgetService;
.super Landroid/app/Service;
.source "CalendarAppWidgetService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/calendar/CalendarAppWidgetService$1;,
        Lcom/android/providers/calendar/CalendarAppWidgetService$MarkedEvents;
    }
.end annotation


# static fields
.field static final EVENT_PROJECTION:[Ljava/lang/String;

.field private static mF:Ljava/util/Formatter;

.field private static mSB:Ljava/lang/StringBuilder;


# instance fields
.field mTimeZone:Ljava/util/TimeZone;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 55
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "allDay"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "begin"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "end"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "color"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "rrule"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "hasAlarm"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "eventLocation"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "calendar_id"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "event_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/providers/calendar/CalendarAppWidgetService;->EVENT_PROJECTION:[Ljava/lang/String;

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    sput-object v0, Lcom/android/providers/calendar/CalendarAppWidgetService;->mSB:Ljava/lang/StringBuilder;

    .line 89
    new-instance v0, Ljava/util/Formatter;

    sget-object v1, Lcom/android/providers/calendar/CalendarAppWidgetService;->mSB:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    sput-object v0, Lcom/android/providers/calendar/CalendarAppWidgetService;->mF:Ljava/util/Formatter;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 518
    return-void
.end method

.method private buildMarkedEvents(Landroid/database/Cursor;Ljava/util/Set;J)Lcom/android/providers/calendar/CalendarAppWidgetService$MarkedEvents;
    .locals 18
    .parameter "cursor"
    .parameter
    .parameter "now"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;J)",
            "Lcom/android/providers/calendar/CalendarAppWidgetService$MarkedEvents;"
        }
    .end annotation

    .prologue
    .line 541
    .local p2, watchEventIds:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    new-instance v15, Lcom/android/providers/calendar/CalendarAppWidgetService$MarkedEvents;

    const/4 v4, 0x0

    move-object v0, v15

    move-object/from16 v1, p0

    move-object v2, v4

    invoke-direct {v0, v1, v2}, Lcom/android/providers/calendar/CalendarAppWidgetService$MarkedEvents;-><init>(Lcom/android/providers/calendar/CalendarAppWidgetService;Lcom/android/providers/calendar/CalendarAppWidgetService$1;)V

    .line 542
    .local v15, events:Lcom/android/providers/calendar/CalendarAppWidgetService$MarkedEvents;
    new-instance v16, Landroid/text/format/Time;

    invoke-direct/range {v16 .. v16}, Landroid/text/format/Time;-><init>()V

    .line 544
    .local v16, recycle:Landroid/text/format/Time;
    const/4 v4, -0x1

    move-object/from16 v0, p1

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 545
    :cond_0
    :goto_0
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 546
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getPosition()I

    move-result v17

    .line 547
    .local v17, row:I
    const/16 v4, 0x9

    move-object/from16 v0, p1

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 548
    .local v13, eventId:J
    const/4 v4, 0x1

    move-object/from16 v0, p1

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 549
    .local v6, start:J
    const/4 v4, 0x2

    move-object/from16 v0, p1

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 550
    .local v8, end:J
    const/4 v4, 0x0

    move-object/from16 v0, p1

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, 0x1

    move v10, v4

    .line 553
    .local v10, allDay:Z
    :goto_1
    if-eqz v10, :cond_1

    .line 554
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-wide v2, v6

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/calendar/CalendarAppWidgetService;->convertUtcToLocal(Landroid/text/format/Time;J)J

    move-result-wide v6

    .line 555
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-wide v2, v8

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/calendar/CalendarAppWidgetService;->convertUtcToLocal(Landroid/text/format/Time;J)J

    move-result-wide v8

    :cond_1
    move-object/from16 v4, p0

    move-object/from16 v5, p1

    .line 559
    invoke-direct/range {v4 .. v10}, Lcom/android/providers/calendar/CalendarAppWidgetService;->getEventFlip(Landroid/database/Cursor;JJZ)J

    move-result-wide v11

    .line 561
    .local v11, eventFlip:J
    cmp-long v4, v11, p3

    if-ltz v4, :cond_0

    .line 566
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 567
    const/4 v4, 0x1

    iput-boolean v4, v15, Lcom/android/providers/calendar/CalendarAppWidgetService$MarkedEvents;->watchFound:Z

    .line 570
    :cond_2
    iget v4, v15, Lcom/android/providers/calendar/CalendarAppWidgetService$MarkedEvents;->primaryRow:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_4

    .line 572
    move/from16 v0, v17

    move-object v1, v15

    iput v0, v1, Lcom/android/providers/calendar/CalendarAppWidgetService$MarkedEvents;->primaryRow:I

    .line 573
    iput-wide v6, v15, Lcom/android/providers/calendar/CalendarAppWidgetService$MarkedEvents;->primaryTime:J

    .line 574
    const/4 v4, 0x1

    iput v4, v15, Lcom/android/providers/calendar/CalendarAppWidgetService$MarkedEvents;->primaryCount:I

    goto :goto_0

    .line 550
    .end local v10           #allDay:Z
    .end local v11           #eventFlip:J
    :cond_3
    const/4 v4, 0x0

    move v10, v4

    goto :goto_1

    .line 575
    .restart local v10       #allDay:Z
    .restart local v11       #eventFlip:J
    :cond_4
    iget-wide v4, v15, Lcom/android/providers/calendar/CalendarAppWidgetService$MarkedEvents;->primaryTime:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_6

    .line 577
    iget v4, v15, Lcom/android/providers/calendar/CalendarAppWidgetService$MarkedEvents;->primaryConflictRow:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_5

    .line 578
    move/from16 v0, v17

    move-object v1, v15

    iput v0, v1, Lcom/android/providers/calendar/CalendarAppWidgetService$MarkedEvents;->primaryConflictRow:I

    .line 580
    :cond_5
    iget v4, v15, Lcom/android/providers/calendar/CalendarAppWidgetService$MarkedEvents;->primaryCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v15, Lcom/android/providers/calendar/CalendarAppWidgetService$MarkedEvents;->primaryCount:I

    goto/16 :goto_0

    .line 581
    :cond_6
    iget v4, v15, Lcom/android/providers/calendar/CalendarAppWidgetService$MarkedEvents;->secondaryRow:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_7

    .line 583
    move/from16 v0, v17

    move-object v1, v15

    iput v0, v1, Lcom/android/providers/calendar/CalendarAppWidgetService$MarkedEvents;->secondaryRow:I

    .line 584
    iput-wide v6, v15, Lcom/android/providers/calendar/CalendarAppWidgetService$MarkedEvents;->secondaryTime:J

    .line 585
    const/4 v4, 0x1

    iput v4, v15, Lcom/android/providers/calendar/CalendarAppWidgetService$MarkedEvents;->secondaryCount:I

    goto/16 :goto_0

    .line 586
    :cond_7
    iget-wide v4, v15, Lcom/android/providers/calendar/CalendarAppWidgetService$MarkedEvents;->secondaryTime:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_8

    .line 588
    iget v4, v15, Lcom/android/providers/calendar/CalendarAppWidgetService$MarkedEvents;->secondaryCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v15, Lcom/android/providers/calendar/CalendarAppWidgetService$MarkedEvents;->secondaryCount:I

    goto/16 :goto_0

    .line 594
    .end local v6           #start:J
    .end local v8           #end:J
    .end local v10           #allDay:Z
    .end local v11           #eventFlip:J
    .end local v13           #eventId:J
    .end local v17           #row:I
    :cond_8
    return-object v15
.end method

.method private calculateUpdateTime(Landroid/database/Cursor;Lcom/android/providers/calendar/CalendarAppWidgetService$MarkedEvents;)J
    .locals 12
    .parameter "cursor"
    .parameter "events"

    .prologue
    .line 290
    const-wide/16 v10, -0x1

    .line 291
    .local v10, result:J
    iget v0, p2, Lcom/android/providers/calendar/CalendarAppWidgetService$MarkedEvents;->primaryRow:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 292
    iget v0, p2, Lcom/android/providers/calendar/CalendarAppWidgetService$MarkedEvents;->primaryRow:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 293
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 294
    .local v2, start:J
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 295
    .local v4, end:J
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    move v6, v0

    .line 298
    .local v6, allDay:Z
    :goto_0
    if-eqz v6, :cond_0

    .line 300
    new-instance v9, Landroid/text/format/Time;

    invoke-direct {v9}, Landroid/text/format/Time;-><init>()V

    .line 301
    .local v9, recycle:Landroid/text/format/Time;
    invoke-direct {p0, v9, v2, v3}, Lcom/android/providers/calendar/CalendarAppWidgetService;->convertUtcToLocal(Landroid/text/format/Time;J)J

    move-result-wide v2

    .line 302
    invoke-direct {p0, v9, v4, v5}, Lcom/android/providers/calendar/CalendarAppWidgetService;->convertUtcToLocal(Landroid/text/format/Time;J)J

    move-result-wide v4

    .end local v9           #recycle:Landroid/text/format/Time;
    :cond_0
    move-object v0, p0

    move-object v1, p1

    .line 305
    invoke-direct/range {v0 .. v6}, Lcom/android/providers/calendar/CalendarAppWidgetService;->getEventFlip(Landroid/database/Cursor;JJZ)J

    move-result-wide v10

    .line 308
    invoke-direct {p0}, Lcom/android/providers/calendar/CalendarAppWidgetService;->getNextMidnightTimeMillis()J

    move-result-wide v7

    .line 309
    .local v7, midnight:J
    invoke-static {v7, v8, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    .line 311
    .end local v2           #start:J
    .end local v4           #end:J
    .end local v6           #allDay:Z
    .end local v7           #midnight:J
    :cond_1
    return-wide v10

    .line 295
    .restart local v2       #start:J
    .restart local v4       #end:J
    :cond_2
    const/4 v0, 0x0

    move v6, v0

    goto :goto_0
.end method

.method private convertUtcToLocal(Landroid/text/format/Time;J)J
    .locals 2
    .parameter "recycle"
    .parameter "utcTime"

    .prologue
    .line 273
    if-nez p1, :cond_0

    .line 274
    new-instance p1, Landroid/text/format/Time;

    .end local p1
    invoke-direct {p1}, Landroid/text/format/Time;-><init>()V

    .line 276
    .restart local p1
    :cond_0
    const-string v0, "UTC"

    iput-object v0, p1, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 277
    invoke-virtual {p1, p2, p3}, Landroid/text/format/Time;->set(J)V

    .line 278
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarAppWidgetService;->mTimeZone:Ljava/util/TimeZone;

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 279
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    return-wide v0
.end method

.method private getAppWidgetNoEvents(Landroid/content/Context;)Landroid/widget/RemoteViews;
    .locals 4
    .parameter "context"

    .prologue
    .line 485
    new-instance v1, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/high16 v3, 0x7f03

    invoke-direct {v1, v2, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 486
    .local v1, views:Landroid/widget/RemoteViews;
    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/providers/calendar/CalendarAppWidgetService;->setNoEventsVisible(Landroid/widget/RemoteViews;Z)V

    .line 489
    const-wide/16 v2, 0x0

    invoke-direct {p0, p1, v2, v3}, Lcom/android/providers/calendar/CalendarAppWidgetService;->getLaunchPendingIntent(Landroid/content/Context;J)Landroid/app/PendingIntent;

    move-result-object v0

    .line 490
    .local v0, pendingIntent:Landroid/app/PendingIntent;
    const/high16 v2, 0x7f09

    invoke-virtual {v1, v2, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 492
    return-object v1
.end method

.method private getAppWidgetUpdate(Landroid/content/Context;Landroid/database/Cursor;Lcom/android/providers/calendar/CalendarAppWidgetService$MarkedEvents;)Landroid/widget/RemoteViews;
    .locals 29
    .parameter "context"
    .parameter "cursor"
    .parameter "events"

    .prologue
    .line 376
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    .line 377
    .local v19, res:Landroid/content/res/Resources;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    .line 379
    .local v20, resolver:Landroid/content/ContentResolver;
    new-instance v25, Landroid/widget/RemoteViews;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/high16 v5, 0x7f03

    move-object/from16 v0, v25

    move-object v1, v4

    move v2, v5

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 380
    .local v25, views:Landroid/widget/RemoteViews;
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move v2, v4

    invoke-direct {v0, v1, v2}, Lcom/android/providers/calendar/CalendarAppWidgetService;->setNoEventsVisible(Landroid/widget/RemoteViews;Z)V

    .line 382
    new-instance v21, Landroid/text/format/Time;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/calendar/CalendarAppWidgetService;->mTimeZone:Ljava/util/TimeZone;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v21

    move-object v1, v4

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 383
    .local v21, time:Landroid/text/format/Time;
    invoke-virtual/range {v21 .. v21}, Landroid/text/format/Time;->setToNow()V

    .line 384
    move-object/from16 v0, v21

    iget v0, v0, Landroid/text/format/Time;->yearDay:I

    move/from16 v28, v0

    .line 385
    .local v28, yearDay:I
    move-object/from16 v0, v21

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    move v15, v0

    .line 388
    .local v15, dateNumber:I
    move-object/from16 v0, v21

    iget v0, v0, Landroid/text/format/Time;->weekDay:I

    move v4, v0

    add-int/lit8 v4, v4, 0x1

    const/16 v5, 0x14

    invoke-static {v4, v5}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v16

    .line 391
    .local v16, dayOfWeek:Ljava/lang/String;
    const v4, 0x7f090004

    move-object/from16 v0, v25

    move v1, v4

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 392
    const v4, 0x7f090003

    move-object/from16 v0, v21

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    move v5, v0

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v25

    move v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 395
    move-object/from16 v0, p3

    iget v0, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$MarkedEvents;->primaryRow:I

    move v4, v0

    move-object/from16 v0, p2

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 406
    const/4 v4, 0x1

    move-object/from16 v0, p2

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 407
    .local v6, start:J
    const/4 v4, 0x0

    move-object/from16 v0, p2

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-eqz v4, :cond_5

    const/4 v4, 0x1

    move v12, v4

    .line 412
    .local v12, allDay:Z
    :goto_0
    if-eqz v12, :cond_6

    .line 413
    const-string v11, "UTC"

    .line 414
    .local v11, tz:Ljava/lang/String;
    const v10, 0x80010

    .line 425
    .local v10, flags:I
    :cond_0
    :goto_1
    invoke-static/range {p1 .. p1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 426
    or-int/lit16 v10, v10, 0x80

    .line 428
    :cond_1
    sget-object v4, Lcom/android/providers/calendar/CalendarAppWidgetService;->mSB:Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 429
    sget-object v5, Lcom/android/providers/calendar/CalendarAppWidgetService;->mF:Ljava/util/Formatter;

    move-object/from16 v4, p1

    move-wide v8, v6

    invoke-static/range {v4 .. v11}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v26

    .line 431
    .local v26, whenString:Ljava/lang/String;
    if-nez v12, :cond_2

    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v4

    invoke-static {v11, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 432
    new-instance v22, Ljava/lang/StringBuilder;

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 433
    .local v22, title:Ljava/lang/StringBuilder;
    move-object/from16 v0, v21

    iget v0, v0, Landroid/text/format/Time;->isDst:I

    move v4, v0

    if-eqz v4, :cond_7

    const/4 v4, 0x1

    move/from16 v17, v4

    .line 434
    .local v17, isDST:Z
    :goto_2
    const-string v4, " ("

    move-object/from16 v0, v22

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/calendar/CalendarAppWidgetService;->mTimeZone:Ljava/util/TimeZone;

    move-object v5, v0

    const/4 v8, 0x0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v9

    move-object v0, v5

    move/from16 v1, v17

    move v2, v8

    move-object v3, v9

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/TimeZone;->getDisplayName(ZILjava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 436
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    .line 438
    .end local v17           #isDST:Z
    .end local v22           #title:Ljava/lang/StringBuilder;
    :cond_2
    const v4, 0x7f090005

    move-object/from16 v0, v25

    move v1, v4

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 441
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide v2, v6

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/calendar/CalendarAppWidgetService;->getLaunchPendingIntent(Landroid/content/Context;J)Landroid/app/PendingIntent;

    move-result-object v18

    .line 442
    .local v18, pendingIntent:Landroid/app/PendingIntent;
    const/high16 v4, 0x7f09

    move-object/from16 v0, v25

    move v1, v4

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 445
    const/4 v4, 0x4

    move-object/from16 v0, p2

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 446
    .local v24, titleString:Ljava/lang/String;
    if-eqz v24, :cond_3

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_4

    .line 447
    :cond_3
    const v4, 0x7f070002

    move-object/from16 v0, p1

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 449
    :cond_4
    const v4, 0x7f090008

    move-object/from16 v0, v25

    move v1, v4

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 452
    const/16 v23, 0x4

    .line 453
    .local v23, titleLines:I
    move-object/from16 v0, p3

    iget v0, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$MarkedEvents;->primaryCount:I

    move v4, v0

    const/4 v5, 0x1

    if-le v4, v5, :cond_8

    .line 454
    move-object/from16 v0, p3

    iget v0, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$MarkedEvents;->primaryCount:I

    move v4, v0

    const/4 v5, 0x1

    sub-int v14, v4, v5

    .line 455
    .local v14, count:I
    const/high16 v4, 0x7f08

    move-object/from16 v0, v19

    move v1, v4

    move v2, v14

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .end local v6           #start:J
    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 457
    .local v13, conflictString:Ljava/lang/String;
    const v4, 0x7f090007

    move-object/from16 v0, v25

    move v1, v4

    move-object v2, v13

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 458
    const v4, 0x7f090007

    const/4 v5, 0x0

    move-object/from16 v0, v25

    move v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 459
    add-int/lit8 v23, v23, -0x1

    .line 465
    .end local v13           #conflictString:Ljava/lang/String;
    .end local v14           #count:I
    :goto_3
    const/4 v4, 0x7

    move-object/from16 v0, p2

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v27

    .line 466
    .local v27, whereString:Ljava/lang/String;
    if-eqz v27, :cond_9

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_9

    .line 467
    const v4, 0x7f090006

    const/4 v5, 0x0

    move-object/from16 v0, v25

    move v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 468
    const v4, 0x7f090006

    move-object/from16 v0, v25

    move v1, v4

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 469
    add-int/lit8 v23, v23, -0x1

    .line 476
    :goto_4
    const v4, 0x7f090008

    const-string v5, "setMaxLines"

    move-object/from16 v0, v25

    move v1, v4

    move-object v2, v5

    move/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 478
    return-object v25

    .line 407
    .end local v10           #flags:I
    .end local v11           #tz:Ljava/lang/String;
    .end local v12           #allDay:Z
    .end local v18           #pendingIntent:Landroid/app/PendingIntent;
    .end local v23           #titleLines:I
    .end local v24           #titleString:Ljava/lang/String;
    .end local v26           #whenString:Ljava/lang/String;
    .end local v27           #whereString:Ljava/lang/String;
    .restart local v6       #start:J
    :cond_5
    const/4 v4, 0x0

    move v12, v4

    goto/16 :goto_0

    .line 416
    .restart local v12       #allDay:Z
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/calendar/CalendarAppWidgetService;->mTimeZone:Ljava/util/TimeZone;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v11

    .line 417
    .restart local v11       #tz:Ljava/lang/String;
    const v10, 0x80001

    .line 420
    .restart local v10       #flags:I
    move-object/from16 v0, v21

    move-wide v1, v6

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 421
    move-object/from16 v0, v21

    iget v0, v0, Landroid/text/format/Time;->yearDay:I

    move v4, v0

    move/from16 v0, v28

    move v1, v4

    if-eq v0, v1, :cond_0

    .line 422
    or-int/lit8 v10, v10, 0x10

    goto/16 :goto_1

    .line 433
    .restart local v22       #title:Ljava/lang/StringBuilder;
    .restart local v26       #whenString:Ljava/lang/String;
    :cond_7
    const/4 v4, 0x0

    move/from16 v17, v4

    goto/16 :goto_2

    .line 461
    .end local v22           #title:Ljava/lang/StringBuilder;
    .restart local v18       #pendingIntent:Landroid/app/PendingIntent;
    .restart local v23       #titleLines:I
    .restart local v24       #titleString:Ljava/lang/String;
    :cond_8
    const v4, 0x7f090007

    const/16 v5, 0x8

    move-object/from16 v0, v25

    move v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_3

    .line 471
    .end local v6           #start:J
    .restart local v27       #whereString:Ljava/lang/String;
    :cond_9
    const v4, 0x7f090006

    const/16 v5, 0x8

    move-object/from16 v0, v25

    move v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_4
.end method

.method private getEventFlip(Landroid/database/Cursor;JJZ)J
    .locals 6
    .parameter "cursor"
    .parameter "start"
    .parameter "end"
    .parameter "allDay"

    .prologue
    .line 336
    sub-long v0, p4, p2

    .line 337
    .local v0, duration:J
    if-nez p6, :cond_0

    const-wide/32 v2, 0x5265c00

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    :cond_0
    move-wide v2, p2

    .line 340
    :goto_0
    return-wide v2

    :cond_1
    add-long v2, p2, p4

    const-wide/16 v4, 0x2

    div-long/2addr v2, v4

    goto :goto_0
.end method

.method private getLaunchPendingIntent(Landroid/content/Context;J)Landroid/app/PendingIntent;
    .locals 5
    .parameter "context"
    .parameter "goToTime"

    .prologue
    .line 502
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 503
    .local v2, launchIntent:Landroid/content/Intent;
    const-string v1, "content://com.android.calendar/time"

    .line 504
    .local v1, dataString:Ljava/lang/String;
    const-string v3, "android.intent.action.VIEW"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 505
    const/high16 v3, 0x1420

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 508
    const-wide/16 v3, 0x0

    cmp-long v3, p2, v3

    if-eqz v3, :cond_0

    .line 509
    const-string v3, "DETAIL_VIEW"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 510
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 512
    :cond_0
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 513
    .local v0, data:Landroid/net/Uri;
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 514
    const/4 v3, 0x0

    const/high16 v4, 0x800

    invoke-static {p1, v3, v2, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    return-object v3
.end method

.method private getNextMidnightTimeMillis()J
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 315
    new-instance v2, Landroid/text/format/Time;

    iget-object v3, p0, Lcom/android/providers/calendar/CalendarAppWidgetService;->mTimeZone:Ljava/util/TimeZone;

    invoke-virtual {v3}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 316
    .local v2, time:Landroid/text/format/Time;
    invoke-virtual {v2}, Landroid/text/format/Time;->setToNow()V

    .line 317
    iget v3, v2, Landroid/text/format/Time;->monthDay:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Landroid/text/format/Time;->monthDay:I

    .line 318
    iput v4, v2, Landroid/text/format/Time;->hour:I

    .line 319
    iput v4, v2, Landroid/text/format/Time;->minute:I

    .line 320
    iput v4, v2, Landroid/text/format/Time;->second:I

    .line 321
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    .line 322
    .local v0, midnight:J
    return-wide v0
.end method

.method private getUpcomingInstancesCursor(Landroid/content/ContentResolver;JJ)Landroid/database/Cursor;
    .locals 8
    .parameter "resolver"
    .parameter "searchDuration"
    .parameter "now"

    .prologue
    .line 611
    add-long v6, p4, p2

    .line 613
    .local v6, end:J
    sget-object v0, Landroid/provider/Calendar$Instances;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "%d/%d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 616
    .local v1, uri:Landroid/net/Uri;
    const-string v0, "%s=1 AND %s!=%d"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "selected"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "selfAttendeeStatus"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 620
    .local v3, selection:Ljava/lang/String;
    sget-object v2, Lcom/android/providers/calendar/CalendarAppWidgetService;->EVENT_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "startDay ASC, allDay DESC, begin ASC"

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private performUpdate(Landroid/content/Context;[ILjava/util/Set;J)V
    .locals 26
    .parameter "context"
    .parameter "appWidgetIds"
    .parameter
    .parameter "now"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "[I",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 157
    .local p3, changedEventIds:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 159
    .local v5, resolver:Landroid/content/ContentResolver;
    const/4 v13, 0x0

    .line 160
    .local v13, cursor:Landroid/database/Cursor;
    const/16 v23, 0x0

    .line 161
    .local v23, tzCursor:Landroid/database/Cursor;
    const/16 v25, 0x0

    .line 162
    .local v25, views:Landroid/widget/RemoteViews;
    const-wide/16 v20, -0x1

    .line 165
    .local v20, triggerTime:J
    :try_start_0
    sget-object v6, Landroid/provider/Calendar$CalendarCache;->URI:Landroid/net/Uri;

    sget-object v7, Landroid/provider/Calendar$CalendarCache;->POJECTION:[Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v23

    .line 167
    const/16 v22, 0x0

    .line 168
    .local v22, tz:Ljava/lang/String;
    if-eqz v23, :cond_1

    .line 169
    const-string v6, "key"

    move-object/from16 v0, v23

    move-object v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    .line 170
    .local v16, keyColumn:I
    const-string v6, "value"

    move-object/from16 v0, v23

    move-object v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v24

    .line 171
    .local v24, valueColumn:I
    :cond_0
    :goto_0
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 172
    move-object/from16 v0, v23

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "timezoneInstances"

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 174
    invoke-interface/range {v23 .. v24}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    goto :goto_0

    .line 178
    .end local v16           #keyColumn:I
    .end local v24           #valueColumn:I
    :cond_1
    if-nez v22, :cond_2

    .line 179
    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v22

    .line 181
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/calendar/CalendarAppWidgetService;->mTimeZone:Ljava/util/TimeZone;

    move-object v6, v0

    if-eqz v6, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/calendar/CalendarAppWidgetService;->mTimeZone:Ljava/util/TimeZone;

    move-object v6, v0

    invoke-virtual {v6}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v22

    move-object v1, v6

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 182
    :cond_3
    invoke-static/range {v22 .. v22}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/providers/calendar/CalendarAppWidgetService;->mTimeZone:Ljava/util/TimeZone;

    .line 184
    :cond_4
    const-wide/32 v8, 0x240c8400

    move-object/from16 v6, p0

    move-object v7, v5

    move-wide/from16 v10, p4

    invoke-direct/range {v6 .. v11}, Lcom/android/providers/calendar/CalendarAppWidgetService;->getUpcomingInstancesCursor(Landroid/content/ContentResolver;JJ)Landroid/database/Cursor;

    move-result-object v13

    .line 185
    if-eqz v13, :cond_a

    .line 186
    move-object/from16 v0, p0

    move-object v1, v13

    move-object/from16 v2, p3

    move-wide/from16 v3, p4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/providers/calendar/CalendarAppWidgetService;->buildMarkedEvents(Landroid/database/Cursor;Ljava/util/Set;J)Lcom/android/providers/calendar/CalendarAppWidgetService$MarkedEvents;

    move-result-object v14

    .line 188
    .local v14, events:Lcom/android/providers/calendar/CalendarAppWidgetService$MarkedEvents;
    const/16 v18, 0x1

    .line 189
    .local v18, shouldUpdate:Z
    invoke-interface/range {p3 .. p3}, Ljava/util/Set;->size()I

    move-result v6

    if-lez v6, :cond_5

    .line 190
    move-object v0, v14

    iget-boolean v0, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$MarkedEvents;->watchFound:Z

    move/from16 v18, v0

    .line 193
    :cond_5
    iget v6, v14, Lcom/android/providers/calendar/CalendarAppWidgetService$MarkedEvents;->primaryCount:I

    if-nez v6, :cond_9

    .line 194
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/calendar/CalendarAppWidgetService;->getAppWidgetNoEvents(Landroid/content/Context;)Landroid/widget/RemoteViews;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v25

    .line 203
    .end local v14           #events:Lcom/android/providers/calendar/CalendarAppWidgetService$MarkedEvents;
    .end local v18           #shouldUpdate:Z
    :cond_6
    :goto_1
    if-eqz v13, :cond_7

    .line 204
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 206
    :cond_7
    if-eqz v23, :cond_8

    .line 207
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->close()V

    .line 212
    :cond_8
    if-nez v25, :cond_d

    .line 243
    :goto_2
    return-void

    .line 195
    .restart local v14       #events:Lcom/android/providers/calendar/CalendarAppWidgetService$MarkedEvents;
    .restart local v18       #shouldUpdate:Z
    :cond_9
    if-eqz v18, :cond_6

    .line 196
    :try_start_1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v13

    move-object v3, v14

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/calendar/CalendarAppWidgetService;->getAppWidgetUpdate(Landroid/content/Context;Landroid/database/Cursor;Lcom/android/providers/calendar/CalendarAppWidgetService$MarkedEvents;)Landroid/widget/RemoteViews;

    move-result-object v25

    .line 197
    move-object/from16 v0, p0

    move-object v1, v13

    move-object v2, v14

    invoke-direct {v0, v1, v2}, Lcom/android/providers/calendar/CalendarAppWidgetService;->calculateUpdateTime(Landroid/database/Cursor;Lcom/android/providers/calendar/CalendarAppWidgetService$MarkedEvents;)J

    move-result-wide v20

    goto :goto_1

    .line 200
    .end local v14           #events:Lcom/android/providers/calendar/CalendarAppWidgetService$MarkedEvents;
    .end local v18           #shouldUpdate:Z
    :cond_a
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/calendar/CalendarAppWidgetService;->getAppWidgetNoEvents(Landroid/content/Context;)Landroid/widget/RemoteViews;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v25

    goto :goto_1

    .line 203
    .end local v22           #tz:Ljava/lang/String;
    :catchall_0
    move-exception v6

    if-eqz v13, :cond_b

    .line 204
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 206
    :cond_b
    if-eqz v23, :cond_c

    .line 207
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->close()V

    :cond_c
    throw v6

    .line 218
    .restart local v22       #tz:Ljava/lang/String;
    :cond_d
    invoke-static/range {p1 .. p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v15

    .line 219
    .local v15, gm:Landroid/appwidget/AppWidgetManager;
    if-eqz p2, :cond_10

    move-object/from16 v0, p2

    array-length v0, v0

    move v6, v0

    if-lez v6, :cond_10

    .line 220
    move-object v0, v15

    move-object/from16 v1, p2

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/appwidget/AppWidgetManager;->updateAppWidget([ILandroid/widget/RemoteViews;)V

    .line 231
    :goto_3
    const-wide/16 v6, -0x1

    cmp-long v6, v20, v6

    if-eqz v6, :cond_e

    cmp-long v6, v20, p4

    if-gez v6, :cond_f

    .line 233
    :cond_e
    const-wide/32 v6, 0x1499700

    add-long v20, p4, v6

    .line 236
    :cond_f
    const-string v6, "alarm"

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/app/AlarmManager;

    .line 237
    .local v12, am:Landroid/app/AlarmManager;
    invoke-static/range {p1 .. p1}, Lcom/android/providers/calendar/CalendarAppWidgetProvider;->getUpdateIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v17

    .line 239
    .local v17, pendingUpdate:Landroid/app/PendingIntent;
    move-object v0, v12

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 240
    const/4 v6, 0x1

    move-object v0, v12

    move v1, v6

    move-wide/from16 v2, v20

    move-object/from16 v4, v17

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_2

    .line 222
    .end local v12           #am:Landroid/app/AlarmManager;
    .end local v17           #pendingUpdate:Landroid/app/PendingIntent;
    :cond_10
    invoke-static/range {p1 .. p1}, Lcom/android/providers/calendar/CalendarAppWidgetProvider;->getComponentName(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v19

    .line 223
    .local v19, thisWidget:Landroid/content/ComponentName;
    move-object v0, v15

    move-object/from16 v1, v19

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    goto :goto_3
.end method

.method private setNoEventsVisible(Landroid/widget/RemoteViews;Z)V
    .locals 5
    .parameter "views"
    .parameter "noEvents"

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 352
    const v1, 0x7f090002

    if-eqz p2, :cond_1

    move v2, v3

    :goto_0
    invoke-virtual {p1, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 354
    if-eqz p2, :cond_2

    move v0, v4

    .line 355
    .local v0, otherViews:I
    :goto_1
    const v1, 0x7f090003

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 356
    const v1, 0x7f090004

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 357
    const v1, 0x7f090001

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 358
    const v1, 0x7f090005

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 359
    const v1, 0x7f090008

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 362
    if-eqz p2, :cond_0

    .line 363
    const v1, 0x7f090007

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 364
    const v1, 0x7f090006

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 366
    :cond_0
    return-void

    .end local v0           #otherViews:I
    :cond_1
    move v2, v4

    .line 352
    goto :goto_0

    :cond_2
    move v0, v3

    .line 354
    goto :goto_1
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 109
    const/4 v0, 0x0

    return-object v0
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 2
    .parameter "intent"
    .parameter "startId"

    .prologue
    .line 95
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 98
    sget-object v0, Lcom/android/providers/calendar/AppWidgetShared;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 99
    :try_start_0
    sget-boolean v1, Lcom/android/providers/calendar/AppWidgetShared;->sUpdateRunning:Z

    if-nez v1, :cond_0

    .line 101
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/providers/calendar/AppWidgetShared;->sUpdateRunning:Z

    .line 102
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 104
    :cond_0
    monitor-exit v0

    .line 105
    return-void

    .line 104
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public run()V
    .locals 6

    .prologue
    .line 118
    :goto_0
    const-wide/16 v4, -0x1

    .line 122
    .local v4, now:J
    sget-object v0, Lcom/android/providers/calendar/AppWidgetShared;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 124
    :try_start_0
    sget-boolean v1, Lcom/android/providers/calendar/AppWidgetShared;->sUpdateRequested:Z

    if-nez v1, :cond_0

    .line 127
    invoke-static {}, Lcom/android/providers/calendar/AppWidgetShared;->clearLocked()V

    .line 128
    invoke-virtual {p0}, Lcom/android/providers/calendar/CalendarAppWidgetService;->stopSelf()V

    .line 129
    monitor-exit v0

    return-void

    .line 133
    :cond_0
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/providers/calendar/AppWidgetShared;->sUpdateRequested:Z

    .line 135
    sget-wide v4, Lcom/android/providers/calendar/AppWidgetShared;->sLastRequest:J

    .line 136
    invoke-static {}, Lcom/android/providers/calendar/AppWidgetShared;->collectAppWidgetIdsLocked()[I

    move-result-object v2

    .line 137
    .local v2, appWidgetIds:[I
    invoke-static {}, Lcom/android/providers/calendar/AppWidgetShared;->collectChangedEventIdsLocked()Ljava/util/Set;

    move-result-object v3

    .line 138
    .local v3, changedEventIds:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, p0

    move-object v1, p0

    .line 142
    invoke-direct/range {v0 .. v5}, Lcom/android/providers/calendar/CalendarAppWidgetService;->performUpdate(Landroid/content/Context;[ILjava/util/Set;J)V

    goto :goto_0

    .line 138
    .end local v2           #appWidgetIds:[I
    .end local v3           #changedEventIds:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
