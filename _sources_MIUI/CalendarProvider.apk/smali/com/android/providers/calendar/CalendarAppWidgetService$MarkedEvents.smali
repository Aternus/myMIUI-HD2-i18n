.class Lcom/android/providers/calendar/CalendarAppWidgetService$MarkedEvents;
.super Ljava/lang/Object;
.source "CalendarAppWidgetService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/calendar/CalendarAppWidgetService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MarkedEvents"
.end annotation


# instance fields
.field primaryConflictRow:I

.field primaryCount:I

.field primaryRow:I

.field primaryTime:J

.field secondaryCount:I

.field secondaryRow:I

.field secondaryTime:J

.field final synthetic this$0:Lcom/android/providers/calendar/CalendarAppWidgetService;

.field watchFound:Z


# direct methods
.method private constructor <init>(Lcom/android/providers/calendar/CalendarAppWidgetService;)V
    .locals 4
    .parameter

    .prologue
    const-wide/16 v2, -0x1

    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 518
    iput-object p1, p0, Lcom/android/providers/calendar/CalendarAppWidgetService$MarkedEvents;->this$0:Lcom/android/providers/calendar/CalendarAppWidgetService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 519
    iput-wide v2, p0, Lcom/android/providers/calendar/CalendarAppWidgetService$MarkedEvents;->primaryTime:J

    .line 520
    iput v0, p0, Lcom/android/providers/calendar/CalendarAppWidgetService$MarkedEvents;->primaryRow:I

    .line 521
    iput v0, p0, Lcom/android/providers/calendar/CalendarAppWidgetService$MarkedEvents;->primaryConflictRow:I

    .line 522
    iput v1, p0, Lcom/android/providers/calendar/CalendarAppWidgetService$MarkedEvents;->primaryCount:I

    .line 523
    iput-wide v2, p0, Lcom/android/providers/calendar/CalendarAppWidgetService$MarkedEvents;->secondaryTime:J

    .line 524
    iput v0, p0, Lcom/android/providers/calendar/CalendarAppWidgetService$MarkedEvents;->secondaryRow:I

    .line 525
    iput v1, p0, Lcom/android/providers/calendar/CalendarAppWidgetService$MarkedEvents;->secondaryCount:I

    .line 526
    iput-boolean v1, p0, Lcom/android/providers/calendar/CalendarAppWidgetService$MarkedEvents;->watchFound:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/providers/calendar/CalendarAppWidgetService;Lcom/android/providers/calendar/CalendarAppWidgetService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 518
    invoke-direct {p0, p1}, Lcom/android/providers/calendar/CalendarAppWidgetService$MarkedEvents;-><init>(Lcom/android/providers/calendar/CalendarAppWidgetService;)V

    return-void
.end method
