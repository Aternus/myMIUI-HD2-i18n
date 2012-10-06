.class public Lcom/android/calendar/Event;
.super Ljava/lang/Object;
.source "Event.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/calendar/Event;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final PROFILE:Z = false

.field private static final PROJECTION:[Ljava/lang/String; = null

.field private static final PROJECTION_ALL_DAY_INDEX:I = 0x2

.field private static final PROJECTION_BEGIN_INDEX:I = 0x6

.field private static final PROJECTION_COLOR_INDEX:I = 0x3

.field private static final PROJECTION_END_DAY_INDEX:I = 0xa

.field private static final PROJECTION_END_INDEX:I = 0x7

.field private static final PROJECTION_END_MINUTE_INDEX:I = 0xc

.field private static final PROJECTION_EVENT_ID_INDEX:I = 0x5

.field private static final PROJECTION_GUESTS_CAN_INVITE_OTHERS_INDEX:I = 0x12

.field private static final PROJECTION_HAS_ALARM_INDEX:I = 0xd

.field private static final PROJECTION_LOCATION_INDEX:I = 0x1

.field private static final PROJECTION_ORGANIZER_INDEX:I = 0x11

.field private static final PROJECTION_RDATE_INDEX:I = 0xf

.field private static final PROJECTION_RRULE_INDEX:I = 0xe

.field private static final PROJECTION_SELF_ATTENDEE_STATUS_INDEX:I = 0x10

.field private static final PROJECTION_START_DAY_INDEX:I = 0x9

.field private static final PROJECTION_START_MINUTE_INDEX:I = 0xb

.field private static final PROJECTION_TIMEZONE_INDEX:I = 0x4

.field private static final PROJECTION_TITLE_INDEX:I


# instance fields
.field public allDay:Z

.field public bottom:F

.field public color:I

.field public endDay:I

.field public endMillis:J

.field public endTime:I

.field public guestsCanModify:Z

.field public hasAlarm:Z

.field public id:J

.field public isRepeating:Z

.field public left:F

.field public location:Ljava/lang/CharSequence;

.field private mColumn:I

.field private mMaxColumns:I

.field public nextDown:Lcom/android/calendar/Event;

.field public nextLeft:Lcom/android/calendar/Event;

.field public nextRight:Lcom/android/calendar/Event;

.field public nextUp:Lcom/android/calendar/Event;

.field public organizer:Ljava/lang/String;

.field public right:F

.field public selfAttendeeStatus:I

.field public startDay:I

.field public startMillis:J

.field public startTime:I

.field public title:Ljava/lang/CharSequence;

.field public top:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 42
    const/16 v0, 0x13

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "eventLocation"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "allDay"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "color"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "eventTimezone"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "event_id"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "begin"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "end"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "startDay"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "endDay"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "startMinute"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "endMinute"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "hasAlarm"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "rrule"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "rdate"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "selfAttendeeStatus"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "organizer"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "guestsCanModify"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/calendar/Event;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private compareStrings(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I
    .locals 3
    .parameter "a"
    .parameter "b"

    .prologue
    .line 242
    if-eqz p1, :cond_0

    .line 243
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 247
    .local v0, aStr:Ljava/lang/String;
    :goto_0
    if-eqz p2, :cond_1

    .line 248
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 252
    .local v1, bStr:Ljava/lang/String;
    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    return v2

    .line 245
    .end local v0           #aStr:Ljava/lang/String;
    .end local v1           #bStr:Ljava/lang/String;
    :cond_0
    const-string v0, ""

    .restart local v0       #aStr:Ljava/lang/String;
    goto :goto_0

    .line 250
    :cond_1
    const-string v1, ""

    .restart local v1       #bStr:Ljava/lang/String;
    goto :goto_1
.end method

.method private static computePositions(Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/Event;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 406
    .local p0, eventsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/calendar/Event;>;"
    if-nez p0, :cond_0

    .line 412
    :goto_0
    return-void

    .line 410
    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/calendar/Event;->doComputePositions(Ljava/util/ArrayList;Z)V

    .line 411
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/calendar/Event;->doComputePositions(Ljava/util/ArrayList;Z)V

    goto :goto_0
.end method

.method private static createTestEvent(Ljava/util/ArrayList;III)Lcom/android/calendar/Event;
    .locals 4
    .parameter
    .parameter "id"
    .parameter "startMinute"
    .parameter "endMinute"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/Event;",
            ">;III)",
            "Lcom/android/calendar/Event;"
        }
    .end annotation

    .prologue
    .local p0, evList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/calendar/Event;>;"
    const/4 v3, 0x1

    .line 541
    new-instance v0, Lcom/android/calendar/Event;

    invoke-direct {v0}, Lcom/android/calendar/Event;-><init>()V

    .line 542
    .local v0, ev:Lcom/android/calendar/Event;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ev"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/calendar/Event;->title:Ljava/lang/CharSequence;

    .line 543
    iput v3, v0, Lcom/android/calendar/Event;->startDay:I

    .line 544
    iput v3, v0, Lcom/android/calendar/Event;->endDay:I

    .line 545
    int-to-long v1, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/calendar/Event;->setStartMillis(J)V

    .line 546
    int-to-long v1, p3

    invoke-virtual {v0, v1, v2}, Lcom/android/calendar/Event;->setEndMillis(J)V

    .line 547
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 548
    return-object v0
.end method

.method private static createTestEventList()Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/Event;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v7, 0x14

    const/16 v6, 0x22

    const/16 v5, 0x20

    const/16 v4, 0xa

    const/4 v3, 0x5

    .line 507
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 508
    .local v0, evList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/calendar/Event;>;"
    const/4 v1, 0x1

    invoke-static {v0, v1, v3, v4}, Lcom/android/calendar/Event;->createTestEvent(Ljava/util/ArrayList;III)Lcom/android/calendar/Event;

    .line 509
    const/4 v1, 0x2

    invoke-static {v0, v1, v3, v4}, Lcom/android/calendar/Event;->createTestEvent(Ljava/util/ArrayList;III)Lcom/android/calendar/Event;

    .line 510
    const/4 v1, 0x3

    const/16 v2, 0xf

    invoke-static {v0, v1, v2, v7}, Lcom/android/calendar/Event;->createTestEvent(Ljava/util/ArrayList;III)Lcom/android/calendar/Event;

    .line 511
    const/4 v1, 0x4

    const/16 v2, 0x19

    invoke-static {v0, v1, v7, v2}, Lcom/android/calendar/Event;->createTestEvent(Ljava/util/ArrayList;III)Lcom/android/calendar/Event;

    .line 512
    const/16 v1, 0x1e

    const/16 v2, 0x46

    invoke-static {v0, v3, v1, v2}, Lcom/android/calendar/Event;->createTestEvent(Ljava/util/ArrayList;III)Lcom/android/calendar/Event;

    .line 513
    const/4 v1, 0x6

    const/16 v2, 0x28

    invoke-static {v0, v1, v5, v2}, Lcom/android/calendar/Event;->createTestEvent(Ljava/util/ArrayList;III)Lcom/android/calendar/Event;

    .line 514
    const/4 v1, 0x7

    const/16 v2, 0x28

    invoke-static {v0, v1, v5, v2}, Lcom/android/calendar/Event;->createTestEvent(Ljava/util/ArrayList;III)Lcom/android/calendar/Event;

    .line 515
    const/16 v1, 0x8

    const/16 v2, 0x26

    invoke-static {v0, v1, v6, v2}, Lcom/android/calendar/Event;->createTestEvent(Ljava/util/ArrayList;III)Lcom/android/calendar/Event;

    .line 516
    const/16 v1, 0x9

    const/16 v2, 0x26

    invoke-static {v0, v1, v6, v2}, Lcom/android/calendar/Event;->createTestEvent(Ljava/util/ArrayList;III)Lcom/android/calendar/Event;

    .line 517
    const/16 v1, 0x2a

    const/16 v2, 0x32

    invoke-static {v0, v4, v1, v2}, Lcom/android/calendar/Event;->createTestEvent(Ljava/util/ArrayList;III)Lcom/android/calendar/Event;

    .line 518
    const/16 v1, 0xb

    const/16 v2, 0x2d

    const/16 v3, 0x3c

    invoke-static {v0, v1, v2, v3}, Lcom/android/calendar/Event;->createTestEvent(Ljava/util/ArrayList;III)Lcom/android/calendar/Event;

    .line 519
    const/16 v1, 0xc

    const/16 v2, 0x37

    const/16 v3, 0x5a

    invoke-static {v0, v1, v2, v3}, Lcom/android/calendar/Event;->createTestEvent(Ljava/util/ArrayList;III)Lcom/android/calendar/Event;

    .line 520
    const/16 v1, 0xd

    const/16 v2, 0x41

    const/16 v3, 0x4b

    invoke-static {v0, v1, v2, v3}, Lcom/android/calendar/Event;->createTestEvent(Ljava/util/ArrayList;III)Lcom/android/calendar/Event;

    .line 522
    const/16 v1, 0x15

    const/16 v2, 0x69

    const/16 v3, 0x82

    invoke-static {v0, v1, v2, v3}, Lcom/android/calendar/Event;->createTestEvent(Ljava/util/ArrayList;III)Lcom/android/calendar/Event;

    .line 523
    const/16 v1, 0x16

    const/16 v2, 0x6e

    const/16 v3, 0x78

    invoke-static {v0, v1, v2, v3}, Lcom/android/calendar/Event;->createTestEvent(Ljava/util/ArrayList;III)Lcom/android/calendar/Event;

    .line 524
    const/16 v1, 0x17

    const/16 v2, 0x73

    const/16 v3, 0x82

    invoke-static {v0, v1, v2, v3}, Lcom/android/calendar/Event;->createTestEvent(Ljava/util/ArrayList;III)Lcom/android/calendar/Event;

    .line 525
    const/16 v1, 0x18

    const/16 v2, 0x7d

    const/16 v3, 0x8c

    invoke-static {v0, v1, v2, v3}, Lcom/android/calendar/Event;->createTestEvent(Ljava/util/ArrayList;III)Lcom/android/calendar/Event;

    .line 526
    const/16 v1, 0x19

    const/16 v2, 0x7f

    const/16 v3, 0x87

    invoke-static {v0, v1, v2, v3}, Lcom/android/calendar/Event;->createTestEvent(Ljava/util/ArrayList;III)Lcom/android/calendar/Event;

    .line 528
    const/16 v1, 0x1f

    const/16 v2, 0x96

    const/16 v3, 0xa0

    invoke-static {v0, v1, v2, v3}, Lcom/android/calendar/Event;->createTestEvent(Ljava/util/ArrayList;III)Lcom/android/calendar/Event;

    .line 529
    const/16 v1, 0x98

    const/16 v2, 0xa2

    invoke-static {v0, v5, v1, v2}, Lcom/android/calendar/Event;->createTestEvent(Ljava/util/ArrayList;III)Lcom/android/calendar/Event;

    .line 530
    const/16 v1, 0x21

    const/16 v2, 0x99

    const/16 v3, 0xa3

    invoke-static {v0, v1, v2, v3}, Lcom/android/calendar/Event;->createTestEvent(Ljava/util/ArrayList;III)Lcom/android/calendar/Event;

    .line 531
    const/16 v1, 0x9b

    const/16 v2, 0xaa

    invoke-static {v0, v6, v1, v2}, Lcom/android/calendar/Event;->createTestEvent(Ljava/util/ArrayList;III)Lcom/android/calendar/Event;

    .line 532
    const/16 v1, 0x23

    const/16 v2, 0x9e

    const/16 v3, 0xaf

    invoke-static {v0, v1, v2, v3}, Lcom/android/calendar/Event;->createTestEvent(Ljava/util/ArrayList;III)Lcom/android/calendar/Event;

    .line 533
    const/16 v1, 0x24

    const/16 v2, 0xa5

    const/16 v3, 0xb4

    invoke-static {v0, v1, v2, v3}, Lcom/android/calendar/Event;->createTestEvent(Ljava/util/ArrayList;III)Lcom/android/calendar/Event;

    .line 535
    return-object v0
.end method

.method private static doComputePositions(Ljava/util/ArrayList;Z)V
    .locals 14
    .parameter
    .parameter "doAllDayEvents"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/Event;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 416
    .local p0, eventsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/calendar/Event;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 417
    .local v0, activeList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/calendar/Event;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 419
    .local v6, groupList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/calendar/Event;>;"
    const-wide/16 v1, 0x0

    .line 420
    .local v1, colMask:J
    const/4 v3, 0x0

    .line 421
    .local v3, maxCols:I
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    move v9, v3

    .end local v3           #maxCols:I
    .end local v7           #i$:Ljava/util/Iterator;
    .end local p0           #eventsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/calendar/Event;>;"
    .local v9, maxCols:I
    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/calendar/Event;

    .line 423
    .local v5, event:Lcom/android/calendar/Event;
    iget-boolean p0, v5, Lcom/android/calendar/Event;->allDay:Z

    if-ne p0, p1, :cond_0

    .line 426
    invoke-virtual {v5}, Lcom/android/calendar/Event;->getStartMillis()J

    move-result-wide v10

    .line 439
    .local v10, start:J
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 440
    .local v8, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/calendar/Event;>;"
    :cond_1
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 441
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/calendar/Event;

    .line 442
    .local p0, active:Lcom/android/calendar/Event;
    invoke-virtual {p0}, Lcom/android/calendar/Event;->getEndMillis()J

    move-result-wide v3

    invoke-virtual {p0}, Lcom/android/calendar/Event;->getStartMillis()J

    move-result-wide v12

    sub-long/2addr v3, v12

    sget-wide v12, Lcom/android/calendar/CalendarView;->EVENT_OVERWRAP_MARGIN_TIME:J

    invoke-static {v3, v4, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    .line 444
    .local v3, duration:J
    invoke-virtual {p0}, Lcom/android/calendar/Event;->getStartMillis()J

    move-result-wide v12

    add-long/2addr v3, v12

    cmp-long v3, v3, v10

    if-gtz v3, :cond_1

    .line 452
    .end local v3           #duration:J
    const-wide/16 v3, 0x1

    invoke-virtual {p0}, Lcom/android/calendar/Event;->getColumn()I

    move-result p0

    .end local p0           #active:Lcom/android/calendar/Event;
    shl-long/2addr v3, p0

    const-wide/16 v12, -0x1

    xor-long/2addr v3, v12

    and-long/2addr v1, v3

    .line 453
    invoke-interface {v8}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 459
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_8

    .line 460
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/calendar/Event;

    .line 461
    .local p0, ev:Lcom/android/calendar/Event;
    invoke-virtual {p0, v9}, Lcom/android/calendar/Event;->setMaxColumns(I)V

    goto :goto_2

    .line 463
    .end local p0           #ev:Lcom/android/calendar/Event;
    :cond_3
    const/4 p0, 0x0

    .line 464
    .end local v9           #maxCols:I
    .local p0, maxCols:I
    const-wide/16 v1, 0x0

    .line 465
    .local v1, colMask:J
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    move v3, p0

    .line 470
    .end local p0           #maxCols:I
    .local v3, maxCols:I
    :goto_3
    invoke-static {v1, v2}, Lcom/android/calendar/Event;->findFirstZeroBit(J)I

    move-result p0

    .line 471
    .local p0, col:I
    const/16 v4, 0x40

    if-ne p0, v4, :cond_4

    .line 472
    const/16 p0, 0x3f

    .line 473
    :cond_4
    const-wide/16 v8, 0x1

    shl-long/2addr v8, p0

    or-long/2addr v1, v8

    .line 474
    invoke-virtual {v5, p0}, Lcom/android/calendar/Event;->setColumn(I)V

    .line 475
    .end local v8           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/calendar/Event;>;"
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 476
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 477
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    .line 478
    .local p0, len:I
    if-ge v3, p0, :cond_7

    .line 479
    move p0, p0

    .end local v3           #maxCols:I
    .local p0, maxCols:I
    :goto_4
    move v9, p0

    .line 480
    .end local p0           #maxCols:I
    .restart local v9       #maxCols:I
    goto/16 :goto_0

    .line 481
    .end local v5           #event:Lcom/android/calendar/Event;
    .end local v10           #start:J
    :cond_5
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .local p1, i$:Ljava/util/Iterator;
    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/calendar/Event;

    .line 482
    .local p0, ev:Lcom/android/calendar/Event;
    invoke-virtual {p0, v9}, Lcom/android/calendar/Event;->setMaxColumns(I)V

    goto :goto_5

    .line 484
    .end local p0           #ev:Lcom/android/calendar/Event;
    :cond_6
    return-void

    .end local v9           #maxCols:I
    .restart local v3       #maxCols:I
    .restart local v5       #event:Lcom/android/calendar/Event;
    .restart local v10       #start:J
    .local p0, len:I
    .local p1, doAllDayEvents:Z
    :cond_7
    move p0, v3

    .end local v3           #maxCols:I
    .local p0, maxCols:I
    goto :goto_4

    .end local p0           #maxCols:I
    .restart local v8       #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/calendar/Event;>;"
    .restart local v9       #maxCols:I
    :cond_8
    move v3, v9

    .end local v9           #maxCols:I
    .restart local v3       #maxCols:I
    goto :goto_3
.end method

.method public static findFirstZeroBit(J)I
    .locals 6
    .parameter "val"

    .prologue
    const/16 v5, 0x40

    .line 487
    const/4 v0, 0x0

    .local v0, ii:I
    :goto_0
    if-ge v0, v5, :cond_1

    .line 488
    const-wide/16 v1, 0x1

    shl-long/2addr v1, v0

    and-long/2addr v1, p0

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    move v1, v0

    .line 491
    :goto_1
    return v1

    .line 487
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v1, v5

    .line 491
    goto :goto_1
.end method

.method private static final getDarkerColor(I)I
    .locals 4
    .parameter "color"

    .prologue
    .line 500
    shr-int/lit8 v2, p0, 0x1

    const v3, 0x7f7f7f

    and-int v1, v2, v3

    .line 501
    .local v1, darker:I
    const/high16 v2, -0x100

    and-int v0, p0, v2

    .line 502
    .local v0, alpha:I
    or-int v2, v0, v1

    return v2
.end method

.method public static loadEvents(Landroid/content/Context;Ljava/util/ArrayList;JIILjava/util/concurrent/atomic/AtomicInteger;)V
    .locals 15
    .parameter "context"
    .parameter
    .parameter "start"
    .parameter "days"
    .parameter "requestId"
    .parameter "sequenceNumber"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/Event;",
            ">;JII",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            ")V"
        }
    .end annotation

    .prologue
    .line 265
    .local p1, events:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/calendar/Event;>;"
    const/4 v12, 0x0

    .line 267
    .local v12, c:Landroid/database/Cursor;
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->clear()V

    .line 269
    :try_start_0
    new-instance v4, Landroid/text/format/Time;

    invoke-direct {v4}, Landroid/text/format/Time;-><init>()V

    .line 272
    .local v4, local:Landroid/text/format/Time;
    move-object v0, v4

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 273
    iget-wide v5, v4, Landroid/text/format/Time;->gmtoff:J

    move-wide/from16 v0, p2

    move-wide v2, v5

    invoke-static {v0, v1, v2, v3}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v14

    .line 274
    .local v14, startDay:I
    add-int v13, v14, p4

    .line 276
    .local v13, endDay:I
    iget v5, v4, Landroid/text/format/Time;->monthDay:I

    add-int p4, p4, v5

    move/from16 v0, p4

    move-object v1, v4

    iput v0, v1, Landroid/text/format/Time;->monthDay:I

    .line 277
    .end local p4
    const/16 p4, 0x1

    move-object v0, v4

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v8

    .line 294
    .local v8, end:J
    const-string v11, "begin ASC, end DESC, title ASC"

    .line 297
    .local v11, orderBy:Ljava/lang/String;
    invoke-static {p0}, Lcom/android/calendar/CalendarPreferenceActivity;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p4

    .line 298
    .local p4, prefs:Landroid/content/SharedPreferences;
    const-string v4, "preferences_hide_declined"

    .end local v4           #local:Landroid/text/format/Time;
    const/4 v5, 0x0

    move-object/from16 v0, p4

    move-object v1, v4

    move v2, v5

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p4

    .line 301
    .local p4, hideDeclined:Z
    const/4 v10, 0x0

    .line 302
    .local v10, where:Ljava/lang/String;
    if-eqz p4, :cond_0

    .line 303
    const-string v10, "selfAttendeeStatus!=2"

    .line 306
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/android/calendar/Event;->PROJECTION:[Ljava/lang/String;

    const-wide/32 v6, 0x5265c00

    sub-long v6, p2, v6

    const-wide/32 p2, 0x5265c00

    add-long v8, v8, p2

    invoke-static/range {v4 .. v11}, Landroid/provider/Calendar$Instances;->query(Landroid/content/ContentResolver;[Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .end local v8           #end:J
    .end local p2
    move-result-object p2

    .line 309
    .end local v12           #c:Landroid/database/Cursor;
    .local p2, c:Landroid/database/Cursor;
    if-nez p2, :cond_2

    .line 310
    :try_start_1
    const-string p0, "Cal"

    .end local p0
    const-string p1, "loadEvents() returned null cursor!"

    .end local p1           #events:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/calendar/Event;>;"
    invoke-static/range {p0 .. p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 383
    if-eqz p2, :cond_1

    .line 384
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->close()V

    .line 390
    .end local p4           #hideDeclined:Z
    .end local p5
    .end local p6
    :cond_1
    :goto_0
    return-void

    .line 316
    .restart local p0
    .restart local p1       #events:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/calendar/Event;>;"
    .restart local p4       #hideDeclined:Z
    .restart local p5
    .restart local p6
    :cond_2
    :try_start_2
    invoke-virtual/range {p6 .. p6}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result p3

    move/from16 v0, p5

    move/from16 v1, p3

    if-eq v0, v1, :cond_3

    .line 383
    if-eqz p2, :cond_1

    .line 384
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 320
    :cond_3
    :try_start_3
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->getCount()I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result p3

    .line 322
    .local p3, count:I
    if-nez p3, :cond_4

    .line 383
    if-eqz p2, :cond_1

    .line 384
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 326
    :cond_4
    :try_start_4
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 327
    .end local p0
    .end local p3           #count:I
    .end local p4           #hideDeclined:Z
    .end local p5
    .end local p6
    .local v4, res:Landroid/content/res/Resources;
    :cond_5
    :goto_1
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result p0

    if-eqz p0, :cond_f

    .line 328
    new-instance p0, Lcom/android/calendar/Event;

    invoke-direct {p0}, Lcom/android/calendar/Event;-><init>()V

    .line 330
    .local p0, e:Lcom/android/calendar/Event;
    const/16 p3, 0x5

    invoke-interface/range {p2 .. p3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p3

    move-wide/from16 v0, p3

    move-object v2, p0

    iput-wide v0, v2, Lcom/android/calendar/Event;->id:J

    .line 331
    const/16 p3, 0x0

    invoke-interface/range {p2 .. p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p3

    move-object/from16 v0, p3

    move-object v1, p0

    iput-object v0, v1, Lcom/android/calendar/Event;->title:Ljava/lang/CharSequence;

    .line 332
    const/16 p3, 0x1

    invoke-interface/range {p2 .. p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p3

    move-object/from16 v0, p3

    move-object v1, p0

    iput-object v0, v1, Lcom/android/calendar/Event;->location:Ljava/lang/CharSequence;

    .line 333
    const/16 p3, 0x2

    invoke-interface/range {p2 .. p3}, Landroid/database/Cursor;->getInt(I)I

    move-result p3

    if-eqz p3, :cond_a

    const/16 p3, 0x1

    :goto_2
    move/from16 v0, p3

    move-object v1, p0

    iput-boolean v0, v1, Lcom/android/calendar/Event;->allDay:Z

    .line 334
    const/16 p3, 0x11

    invoke-interface/range {p2 .. p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p3

    move-object/from16 v0, p3

    move-object v1, p0

    iput-object v0, v1, Lcom/android/calendar/Event;->organizer:Ljava/lang/String;

    .line 335
    const/16 p3, 0x12

    invoke-interface/range {p2 .. p3}, Landroid/database/Cursor;->getInt(I)I

    move-result p3

    if-eqz p3, :cond_b

    const/16 p3, 0x1

    :goto_3
    move/from16 v0, p3

    move-object v1, p0

    iput-boolean v0, v1, Lcom/android/calendar/Event;->guestsCanModify:Z

    .line 337
    const/16 p3, 0x4

    invoke-interface/range {p2 .. p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 339
    .local p3, timezone:Ljava/lang/String;
    move-object v0, p0

    iget-object v0, v0, Lcom/android/calendar/Event;->title:Ljava/lang/CharSequence;

    move-object/from16 p3, v0

    .end local p3           #timezone:Ljava/lang/String;
    if-eqz p3, :cond_6

    move-object v0, p0

    iget-object v0, v0, Lcom/android/calendar/Event;->title:Ljava/lang/CharSequence;

    move-object/from16 p3, v0

    invoke-interface/range {p3 .. p3}, Ljava/lang/CharSequence;->length()I

    move-result p3

    if-nez p3, :cond_7

    .line 340
    :cond_6
    const p3, 0x7f080009

    move-object v0, v4

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    move-object/from16 v0, p3

    move-object v1, p0

    iput-object v0, v1, Lcom/android/calendar/Event;->title:Ljava/lang/CharSequence;

    .line 343
    :cond_7
    const/16 p3, 0x3

    invoke-interface/range {p2 .. p3}, Landroid/database/Cursor;->isNull(I)Z

    move-result p3

    if-nez p3, :cond_c

    .line 345
    const/16 p3, 0x3

    invoke-interface/range {p2 .. p3}, Landroid/database/Cursor;->getInt(I)I

    move-result p3

    move/from16 v0, p3

    move-object v1, p0

    iput v0, v1, Lcom/android/calendar/Event;->color:I

    .line 350
    :goto_4
    const/16 p3, 0x6

    invoke-interface/range {p2 .. p3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p5

    .line 351
    .local p5, eStart:J
    const/16 p3, 0x7

    invoke-interface/range {p2 .. p3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p3

    .line 353
    .local p3, eEnd:J
    move-wide/from16 v0, p5

    move-object v2, p0

    iput-wide v0, v2, Lcom/android/calendar/Event;->startMillis:J

    .line 354
    const/16 p5, 0xb

    move-object/from16 v0, p2

    move/from16 v1, p5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    .end local p5           #eStart:J
    move-result p5

    move/from16 v0, p5

    move-object v1, p0

    iput v0, v1, Lcom/android/calendar/Event;->startTime:I

    .line 355
    const/16 p5, 0x9

    move-object/from16 v0, p2

    move/from16 v1, p5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result p5

    move/from16 v0, p5

    move-object v1, p0

    iput v0, v1, Lcom/android/calendar/Event;->startDay:I

    .line 357
    move-wide/from16 v0, p3

    move-object v2, p0

    iput-wide v0, v2, Lcom/android/calendar/Event;->endMillis:J

    .line 358
    const/16 p3, 0xc

    invoke-interface/range {p2 .. p3}, Landroid/database/Cursor;->getInt(I)I

    .end local p3           #eEnd:J
    move-result p3

    move/from16 v0, p3

    move-object v1, p0

    iput v0, v1, Lcom/android/calendar/Event;->endTime:I

    .line 359
    const/16 p3, 0xa

    invoke-interface/range {p2 .. p3}, Landroid/database/Cursor;->getInt(I)I

    move-result p3

    move/from16 v0, p3

    move-object v1, p0

    iput v0, v1, Lcom/android/calendar/Event;->endDay:I

    .line 361
    move-object v0, p0

    iget v0, v0, Lcom/android/calendar/Event;->startDay:I

    move/from16 p3, v0

    move/from16 v0, p3

    move v1, v13

    if-gt v0, v1, :cond_5

    move-object v0, p0

    iget v0, v0, Lcom/android/calendar/Event;->endDay:I

    move/from16 p3, v0

    move/from16 v0, p3

    move v1, v14

    if-lt v0, v1, :cond_5

    .line 365
    const/16 p3, 0xd

    invoke-interface/range {p2 .. p3}, Landroid/database/Cursor;->getInt(I)I

    move-result p3

    if-eqz p3, :cond_d

    const/16 p3, 0x1

    :goto_5
    move/from16 v0, p3

    move-object v1, p0

    iput-boolean v0, v1, Lcom/android/calendar/Event;->hasAlarm:Z

    .line 368
    const/16 p3, 0xe

    invoke-interface/range {p2 .. p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p4

    .line 369
    .local p4, rrule:Ljava/lang/String;
    const/16 p3, 0xf

    invoke-interface/range {p2 .. p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 370
    .local p3, rdate:Ljava/lang/String;
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    .end local p4           #rrule:Ljava/lang/String;
    if-eqz p4, :cond_8

    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    .end local p3           #rdate:Ljava/lang/String;
    if-nez p3, :cond_e

    .line 371
    :cond_8
    const/16 p3, 0x1

    move/from16 v0, p3

    move-object v1, p0

    iput-boolean v0, v1, Lcom/android/calendar/Event;->isRepeating:Z

    .line 376
    :goto_6
    const/16 p3, 0x10

    invoke-interface/range {p2 .. p3}, Landroid/database/Cursor;->getInt(I)I

    move-result p3

    move/from16 v0, p3

    move-object v1, p0

    iput v0, v1, Lcom/android/calendar/Event;->selfAttendeeStatus:I

    .line 378
    move-object/from16 v0, p1

    move-object v1, p0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_1

    .line 383
    .end local v4           #res:Landroid/content/res/Resources;
    .end local p0           #e:Lcom/android/calendar/Event;
    .end local p1           #events:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/calendar/Event;>;"
    :catchall_0
    move-exception p0

    move-object/from16 p1, p0

    move-object/from16 p0, p2

    .end local v10           #where:Ljava/lang/String;
    .end local v11           #orderBy:Ljava/lang/String;
    .end local v13           #endDay:I
    .end local v14           #startDay:I
    .end local p2           #c:Landroid/database/Cursor;
    .local p0, c:Landroid/database/Cursor;
    :goto_7
    if-eqz p0, :cond_9

    .line 384
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_9
    throw p1

    .line 333
    .restart local v4       #res:Landroid/content/res/Resources;
    .restart local v10       #where:Ljava/lang/String;
    .restart local v11       #orderBy:Ljava/lang/String;
    .restart local v13       #endDay:I
    .restart local v14       #startDay:I
    .local p0, e:Lcom/android/calendar/Event;
    .restart local p1       #events:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/calendar/Event;>;"
    .restart local p2       #c:Landroid/database/Cursor;
    :cond_a
    const/16 p3, 0x0

    goto/16 :goto_2

    .line 335
    :cond_b
    const/16 p3, 0x0

    goto/16 :goto_3

    .line 347
    :cond_c
    const p3, 0x7f070022

    :try_start_5
    move-object v0, v4

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    move/from16 v0, p3

    move-object v1, p0

    iput v0, v1, Lcom/android/calendar/Event;->color:I

    goto/16 :goto_4

    .line 365
    :cond_d
    const/16 p3, 0x0

    goto :goto_5

    .line 373
    :cond_e
    const/16 p3, 0x0

    move/from16 v0, p3

    move-object v1, p0

    iput-boolean v0, v1, Lcom/android/calendar/Event;->isRepeating:Z

    goto :goto_6

    .line 381
    .end local p0           #e:Lcom/android/calendar/Event;
    :cond_f
    invoke-static/range {p1 .. p1}, Lcom/android/calendar/Event;->computePositions(Ljava/util/ArrayList;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 383
    if-eqz p2, :cond_1

    .line 384
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 383
    .end local v4           #res:Landroid/content/res/Resources;
    .end local v10           #where:Ljava/lang/String;
    .end local v11           #orderBy:Ljava/lang/String;
    .end local v13           #endDay:I
    .end local v14           #startDay:I
    .end local p2           #c:Landroid/database/Cursor;
    .restart local v12       #c:Landroid/database/Cursor;
    .local p0, context:Landroid/content/Context;
    .local p5, requestId:I
    .restart local p6
    :catchall_1
    move-exception p0

    move-object/from16 p1, p0

    move-object p0, v12

    .end local v12           #c:Landroid/database/Cursor;
    .local p0, c:Landroid/database/Cursor;
    goto :goto_7
.end method

.method public static final newInstance()Lcom/android/calendar/Event;
    .locals 5

    .prologue
    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 164
    new-instance v0, Lcom/android/calendar/Event;

    invoke-direct {v0}, Lcom/android/calendar/Event;-><init>()V

    .line 166
    .local v0, e:Lcom/android/calendar/Event;
    iput-wide v2, v0, Lcom/android/calendar/Event;->id:J

    .line 167
    iput-object v4, v0, Lcom/android/calendar/Event;->title:Ljava/lang/CharSequence;

    .line 168
    iput v1, v0, Lcom/android/calendar/Event;->color:I

    .line 169
    iput-object v4, v0, Lcom/android/calendar/Event;->location:Ljava/lang/CharSequence;

    .line 170
    iput-boolean v1, v0, Lcom/android/calendar/Event;->allDay:Z

    .line 171
    iput v1, v0, Lcom/android/calendar/Event;->startDay:I

    .line 172
    iput v1, v0, Lcom/android/calendar/Event;->endDay:I

    .line 173
    iput v1, v0, Lcom/android/calendar/Event;->startTime:I

    .line 174
    iput v1, v0, Lcom/android/calendar/Event;->endTime:I

    .line 175
    iput-wide v2, v0, Lcom/android/calendar/Event;->startMillis:J

    .line 176
    iput-wide v2, v0, Lcom/android/calendar/Event;->endMillis:J

    .line 177
    iput-boolean v1, v0, Lcom/android/calendar/Event;->hasAlarm:Z

    .line 178
    iput-boolean v1, v0, Lcom/android/calendar/Event;->isRepeating:Z

    .line 179
    iput v1, v0, Lcom/android/calendar/Event;->selfAttendeeStatus:I

    .line 181
    return-object v0
.end method


# virtual methods
.method public final clone()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 122
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 123
    new-instance v0, Lcom/android/calendar/Event;

    invoke-direct {v0}, Lcom/android/calendar/Event;-><init>()V

    .line 125
    .local v0, e:Lcom/android/calendar/Event;
    iget-object v1, p0, Lcom/android/calendar/Event;->title:Ljava/lang/CharSequence;

    iput-object v1, v0, Lcom/android/calendar/Event;->title:Ljava/lang/CharSequence;

    .line 126
    iget v1, p0, Lcom/android/calendar/Event;->color:I

    iput v1, v0, Lcom/android/calendar/Event;->color:I

    .line 127
    iget-object v1, p0, Lcom/android/calendar/Event;->location:Ljava/lang/CharSequence;

    iput-object v1, v0, Lcom/android/calendar/Event;->location:Ljava/lang/CharSequence;

    .line 128
    iget-boolean v1, p0, Lcom/android/calendar/Event;->allDay:Z

    iput-boolean v1, v0, Lcom/android/calendar/Event;->allDay:Z

    .line 129
    iget v1, p0, Lcom/android/calendar/Event;->startDay:I

    iput v1, v0, Lcom/android/calendar/Event;->startDay:I

    .line 130
    iget v1, p0, Lcom/android/calendar/Event;->endDay:I

    iput v1, v0, Lcom/android/calendar/Event;->endDay:I

    .line 131
    iget v1, p0, Lcom/android/calendar/Event;->startTime:I

    iput v1, v0, Lcom/android/calendar/Event;->startTime:I

    .line 132
    iget v1, p0, Lcom/android/calendar/Event;->endTime:I

    iput v1, v0, Lcom/android/calendar/Event;->endTime:I

    .line 133
    iget-wide v1, p0, Lcom/android/calendar/Event;->startMillis:J

    iput-wide v1, v0, Lcom/android/calendar/Event;->startMillis:J

    .line 134
    iget-wide v1, p0, Lcom/android/calendar/Event;->endMillis:J

    iput-wide v1, v0, Lcom/android/calendar/Event;->endMillis:J

    .line 135
    iget-boolean v1, p0, Lcom/android/calendar/Event;->hasAlarm:Z

    iput-boolean v1, v0, Lcom/android/calendar/Event;->hasAlarm:Z

    .line 136
    iget-boolean v1, p0, Lcom/android/calendar/Event;->isRepeating:Z

    iput-boolean v1, v0, Lcom/android/calendar/Event;->isRepeating:Z

    .line 137
    iget v1, p0, Lcom/android/calendar/Event;->selfAttendeeStatus:I

    iput v1, v0, Lcom/android/calendar/Event;->selfAttendeeStatus:I

    .line 138
    iget-object v1, p0, Lcom/android/calendar/Event;->organizer:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/calendar/Event;->organizer:Ljava/lang/String;

    .line 139
    iget-boolean v1, p0, Lcom/android/calendar/Event;->guestsCanModify:Z

    iput-boolean v1, v0, Lcom/android/calendar/Event;->guestsCanModify:Z

    .line 141
    return-object v0
.end method

.method public final compareTo(Lcom/android/calendar/Event;)I
    .locals 5
    .parameter "obj"

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    .line 190
    iget v1, p0, Lcom/android/calendar/Event;->startDay:I

    iget v2, p1, Lcom/android/calendar/Event;->startDay:I

    if-ge v1, v2, :cond_0

    move v1, v3

    .line 228
    :goto_0
    return v1

    .line 191
    :cond_0
    iget v1, p0, Lcom/android/calendar/Event;->startDay:I

    iget v2, p1, Lcom/android/calendar/Event;->startDay:I

    if-le v1, v2, :cond_1

    move v1, v4

    goto :goto_0

    .line 192
    :cond_1
    iget v1, p0, Lcom/android/calendar/Event;->startTime:I

    iget v2, p1, Lcom/android/calendar/Event;->startTime:I

    if-ge v1, v2, :cond_2

    move v1, v3

    goto :goto_0

    .line 193
    :cond_2
    iget v1, p0, Lcom/android/calendar/Event;->startTime:I

    iget v2, p1, Lcom/android/calendar/Event;->startTime:I

    if-le v1, v2, :cond_3

    move v1, v4

    goto :goto_0

    .line 197
    :cond_3
    iget v1, p0, Lcom/android/calendar/Event;->endDay:I

    iget v2, p1, Lcom/android/calendar/Event;->endDay:I

    if-ge v1, v2, :cond_4

    move v1, v4

    goto :goto_0

    .line 198
    :cond_4
    iget v1, p0, Lcom/android/calendar/Event;->endDay:I

    iget v2, p1, Lcom/android/calendar/Event;->endDay:I

    if-le v1, v2, :cond_5

    move v1, v3

    goto :goto_0

    .line 199
    :cond_5
    iget v1, p0, Lcom/android/calendar/Event;->endTime:I

    iget v2, p1, Lcom/android/calendar/Event;->endTime:I

    if-ge v1, v2, :cond_6

    move v1, v4

    goto :goto_0

    .line 200
    :cond_6
    iget v1, p0, Lcom/android/calendar/Event;->endTime:I

    iget v2, p1, Lcom/android/calendar/Event;->endTime:I

    if-le v1, v2, :cond_7

    move v1, v3

    goto :goto_0

    .line 203
    :cond_7
    iget-boolean v1, p0, Lcom/android/calendar/Event;->allDay:Z

    if-eqz v1, :cond_8

    iget-boolean v1, p1, Lcom/android/calendar/Event;->allDay:Z

    if-nez v1, :cond_8

    move v1, v3

    goto :goto_0

    .line 204
    :cond_8
    iget-boolean v1, p0, Lcom/android/calendar/Event;->allDay:Z

    if-nez v1, :cond_9

    iget-boolean v1, p1, Lcom/android/calendar/Event;->allDay:Z

    if-eqz v1, :cond_9

    move v1, v4

    goto :goto_0

    .line 206
    :cond_9
    iget-boolean v1, p0, Lcom/android/calendar/Event;->guestsCanModify:Z

    if-eqz v1, :cond_a

    iget-boolean v1, p1, Lcom/android/calendar/Event;->guestsCanModify:Z

    if-nez v1, :cond_a

    move v1, v3

    goto :goto_0

    .line 207
    :cond_a
    iget-boolean v1, p0, Lcom/android/calendar/Event;->guestsCanModify:Z

    if-nez v1, :cond_b

    iget-boolean v1, p1, Lcom/android/calendar/Event;->guestsCanModify:Z

    if-eqz v1, :cond_b

    move v1, v4

    goto :goto_0

    .line 211
    :cond_b
    iget-object v1, p0, Lcom/android/calendar/Event;->title:Ljava/lang/CharSequence;

    iget-object v2, p1, Lcom/android/calendar/Event;->title:Ljava/lang/CharSequence;

    invoke-direct {p0, v1, v2}, Lcom/android/calendar/Event;->compareStrings(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v0

    .line 212
    .local v0, cmp:I
    if-eqz v0, :cond_c

    move v1, v0

    .line 213
    goto :goto_0

    .line 219
    :cond_c
    iget-object v1, p0, Lcom/android/calendar/Event;->location:Ljava/lang/CharSequence;

    iget-object v2, p1, Lcom/android/calendar/Event;->location:Ljava/lang/CharSequence;

    invoke-direct {p0, v1, v2}, Lcom/android/calendar/Event;->compareStrings(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v0

    .line 220
    if-eqz v0, :cond_d

    move v1, v0

    .line 221
    goto :goto_0

    .line 224
    :cond_d
    iget-object v1, p0, Lcom/android/calendar/Event;->organizer:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/calendar/Event;->organizer:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/android/calendar/Event;->compareStrings(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v0

    .line 225
    if-eqz v0, :cond_e

    move v1, v0

    .line 226
    goto/16 :goto_0

    .line 228
    :cond_e
    const/4 v1, 0x0

    goto/16 :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    check-cast p1, Lcom/android/calendar/Event;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/calendar/Event;->compareTo(Lcom/android/calendar/Event;)I

    move-result v0

    return v0
.end method

.method public final copyTo(Lcom/android/calendar/Event;)V
    .locals 2
    .parameter "dest"

    .prologue
    .line 145
    iget-wide v0, p0, Lcom/android/calendar/Event;->id:J

    iput-wide v0, p1, Lcom/android/calendar/Event;->id:J

    .line 146
    iget-object v0, p0, Lcom/android/calendar/Event;->title:Ljava/lang/CharSequence;

    iput-object v0, p1, Lcom/android/calendar/Event;->title:Ljava/lang/CharSequence;

    .line 147
    iget v0, p0, Lcom/android/calendar/Event;->color:I

    iput v0, p1, Lcom/android/calendar/Event;->color:I

    .line 148
    iget-object v0, p0, Lcom/android/calendar/Event;->location:Ljava/lang/CharSequence;

    iput-object v0, p1, Lcom/android/calendar/Event;->location:Ljava/lang/CharSequence;

    .line 149
    iget-boolean v0, p0, Lcom/android/calendar/Event;->allDay:Z

    iput-boolean v0, p1, Lcom/android/calendar/Event;->allDay:Z

    .line 150
    iget v0, p0, Lcom/android/calendar/Event;->startDay:I

    iput v0, p1, Lcom/android/calendar/Event;->startDay:I

    .line 151
    iget v0, p0, Lcom/android/calendar/Event;->endDay:I

    iput v0, p1, Lcom/android/calendar/Event;->endDay:I

    .line 152
    iget v0, p0, Lcom/android/calendar/Event;->startTime:I

    iput v0, p1, Lcom/android/calendar/Event;->startTime:I

    .line 153
    iget v0, p0, Lcom/android/calendar/Event;->endTime:I

    iput v0, p1, Lcom/android/calendar/Event;->endTime:I

    .line 154
    iget-wide v0, p0, Lcom/android/calendar/Event;->startMillis:J

    iput-wide v0, p1, Lcom/android/calendar/Event;->startMillis:J

    .line 155
    iget-wide v0, p0, Lcom/android/calendar/Event;->endMillis:J

    iput-wide v0, p1, Lcom/android/calendar/Event;->endMillis:J

    .line 156
    iget-boolean v0, p0, Lcom/android/calendar/Event;->hasAlarm:Z

    iput-boolean v0, p1, Lcom/android/calendar/Event;->hasAlarm:Z

    .line 157
    iget-boolean v0, p0, Lcom/android/calendar/Event;->isRepeating:Z

    iput-boolean v0, p1, Lcom/android/calendar/Event;->isRepeating:Z

    .line 158
    iget v0, p0, Lcom/android/calendar/Event;->selfAttendeeStatus:I

    iput v0, p1, Lcom/android/calendar/Event;->selfAttendeeStatus:I

    .line 159
    iget-object v0, p0, Lcom/android/calendar/Event;->organizer:Ljava/lang/String;

    iput-object v0, p1, Lcom/android/calendar/Event;->organizer:Ljava/lang/String;

    .line 160
    iget-boolean v0, p0, Lcom/android/calendar/Event;->guestsCanModify:Z

    iput-boolean v0, p1, Lcom/android/calendar/Event;->guestsCanModify:Z

    .line 161
    return-void
.end method

.method public final dump()V
    .locals 4

    .prologue
    const-string v3, "Cal"

    .line 552
    const-string v0, "Cal"

    const-string v0, "+-----------------------------------------+"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    const-string v0, "Cal"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "+        id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/calendar/Event;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    const-string v0, "Cal"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "+     color = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/calendar/Event;->color:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    const-string v0, "Cal"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "+     title = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/Event;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    const-string v0, "Cal"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "+  location = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/Event;->location:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    const-string v0, "Cal"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "+    allDay = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/calendar/Event;->allDay:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    const-string v0, "Cal"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "+  startDay = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/calendar/Event;->startDay:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    const-string v0, "Cal"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "+    endDay = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/calendar/Event;->endDay:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    const-string v0, "Cal"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "+ startTime = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/calendar/Event;->startTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    const-string v0, "Cal"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "+   endTime = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/calendar/Event;->endTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    const-string v0, "Cal"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "+ organizer = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/Event;->organizer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    const-string v0, "Cal"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "+  guestwrt = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/calendar/Event;->guestsCanModify:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    return-void
.end method

.method public getColumn()I
    .locals 1

    .prologue
    .line 623
    iget v0, p0, Lcom/android/calendar/Event;->mColumn:I

    return v0
.end method

.method public getEndMillis()J
    .locals 2

    .prologue
    .line 647
    iget-wide v0, p0, Lcom/android/calendar/Event;->endMillis:J

    return-wide v0
.end method

.method public getMaxColumns()I
    .locals 1

    .prologue
    .line 631
    iget v0, p0, Lcom/android/calendar/Event;->mMaxColumns:I

    return v0
.end method

.method public getStartMillis()J
    .locals 2

    .prologue
    .line 639
    iget-wide v0, p0, Lcom/android/calendar/Event;->startMillis:J

    return-wide v0
.end method

.method public getTitleAndLocation()Ljava/lang/String;
    .locals 4

    .prologue
    .line 604
    iget-object v2, p0, Lcom/android/calendar/Event;->title:Ljava/lang/CharSequence;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 609
    .local v1, text:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/calendar/Event;->location:Ljava/lang/CharSequence;

    if-eqz v2, :cond_0

    .line 610
    iget-object v2, p0, Lcom/android/calendar/Event;->location:Ljava/lang/CharSequence;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 611
    .local v0, locationString:Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 612
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 615
    .end local v0           #locationString:Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method public final intersects(III)Z
    .locals 3
    .parameter "julianDay"
    .parameter "startMinute"
    .parameter "endMinute"

    .prologue
    const/4 v2, 0x0

    .line 568
    iget v0, p0, Lcom/android/calendar/Event;->endDay:I

    if-ge v0, p1, :cond_0

    move v0, v2

    .line 593
    :goto_0
    return v0

    .line 572
    :cond_0
    iget v0, p0, Lcom/android/calendar/Event;->startDay:I

    if-le v0, p1, :cond_1

    move v0, v2

    .line 573
    goto :goto_0

    .line 576
    :cond_1
    iget v0, p0, Lcom/android/calendar/Event;->endDay:I

    if-ne v0, p1, :cond_4

    .line 577
    iget v0, p0, Lcom/android/calendar/Event;->endTime:I

    if-ge v0, p2, :cond_2

    move v0, v2

    .line 578
    goto :goto_0

    .line 583
    :cond_2
    iget v0, p0, Lcom/android/calendar/Event;->endTime:I

    if-ne v0, p2, :cond_4

    iget v0, p0, Lcom/android/calendar/Event;->startTime:I

    iget v1, p0, Lcom/android/calendar/Event;->endTime:I

    if-ne v0, v1, :cond_3

    iget v0, p0, Lcom/android/calendar/Event;->startDay:I

    iget v1, p0, Lcom/android/calendar/Event;->endDay:I

    if-eq v0, v1, :cond_4

    :cond_3
    move v0, v2

    .line 585
    goto :goto_0

    .line 589
    :cond_4
    iget v0, p0, Lcom/android/calendar/Event;->startDay:I

    if-ne v0, p1, :cond_5

    iget v0, p0, Lcom/android/calendar/Event;->startTime:I

    if-le v0, p3, :cond_5

    move v0, v2

    .line 590
    goto :goto_0

    .line 593
    :cond_5
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setColumn(I)V
    .locals 0
    .parameter "column"

    .prologue
    .line 619
    iput p1, p0, Lcom/android/calendar/Event;->mColumn:I

    .line 620
    return-void
.end method

.method public setEndMillis(J)V
    .locals 0
    .parameter "endMillis"

    .prologue
    .line 643
    iput-wide p1, p0, Lcom/android/calendar/Event;->endMillis:J

    .line 644
    return-void
.end method

.method public setMaxColumns(I)V
    .locals 0
    .parameter "maxColumns"

    .prologue
    .line 627
    iput p1, p0, Lcom/android/calendar/Event;->mMaxColumns:I

    .line 628
    return-void
.end method

.method public setStartMillis(J)V
    .locals 0
    .parameter "startMillis"

    .prologue
    .line 635
    iput-wide p1, p0, Lcom/android/calendar/Event;->startMillis:J

    .line 636
    return-void
.end method
