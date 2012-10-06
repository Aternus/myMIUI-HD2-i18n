.class public Lcom/android/calendar/DayView;
.super Lcom/android/calendar/CalendarView;
.source "DayView.java"


# static fields
.field private static final CELL_MARGIN:I = 0xa


# direct methods
.method public constructor <init>(Lcom/android/calendar/CalendarActivity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/android/calendar/CalendarView;-><init>(Lcom/android/calendar/CalendarActivity;)V

    .line 25
    invoke-direct {p0}, Lcom/android/calendar/DayView;->init()V

    .line 26
    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 29
    iput-boolean v0, p0, Lcom/android/calendar/CalendarView;->mDrawTextInEventRect:Z

    .line 30
    iput v0, p0, Lcom/android/calendar/CalendarView;->mNumDays:I

    .line 31
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mEventGeometry:Lcom/android/calendar/EventGeometry;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/android/calendar/EventGeometry;->setCellMargin(I)V

    .line 32
    return-void
.end method
