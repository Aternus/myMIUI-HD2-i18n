.class Lcom/android/calendar/CalendarView$1;
.super Ljava/lang/Object;
.source "CalendarView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/CalendarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/CalendarView;


# direct methods
.method constructor <init>(Lcom/android/calendar/CalendarView;)V
    .locals 0
    .parameter

    .prologue
    .line 100
    iput-object p1, p0, Lcom/android/calendar/CalendarView$1;->this$0:Lcom/android/calendar/CalendarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 103
    iget-object v1, p0, Lcom/android/calendar/CalendarView$1;->this$0:Lcom/android/calendar/CalendarView;

    #getter for: Lcom/android/calendar/CalendarView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/calendar/CalendarView;->access$000(Lcom/android/calendar/CalendarView;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v0

    .line 105
    .local v0, tz:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/calendar/CalendarView$1;->this$0:Lcom/android/calendar/CalendarView;

    iget-object v1, v1, Lcom/android/calendar/CalendarView;->mBaseDate:Landroid/text/format/Time;

    iput-object v0, v1, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 106
    iget-object v1, p0, Lcom/android/calendar/CalendarView$1;->this$0:Lcom/android/calendar/CalendarView;

    iget-object v1, v1, Lcom/android/calendar/CalendarView;->mBaseDate:Landroid/text/format/Time;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/text/format/Time;->normalize(Z)J

    .line 109
    iget-object v1, p0, Lcom/android/calendar/CalendarView$1;->this$0:Lcom/android/calendar/CalendarView;

    #getter for: Lcom/android/calendar/CalendarView;->mCurrentTime:Landroid/text/format/Time;
    invoke-static {v1}, Lcom/android/calendar/CalendarView;->access$100(Lcom/android/calendar/CalendarView;)Landroid/text/format/Time;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/text/format/Time;->switchTimezone(Ljava/lang/String;)V

    .line 110
    iget-object v1, p0, Lcom/android/calendar/CalendarView$1;->this$0:Lcom/android/calendar/CalendarView;

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    #setter for: Lcom/android/calendar/CalendarView;->mTimeZone:Ljava/util/TimeZone;
    invoke-static {v1, v2}, Lcom/android/calendar/CalendarView;->access$202(Lcom/android/calendar/CalendarView;Ljava/util/TimeZone;)Ljava/util/TimeZone;

    .line 111
    iget-object v1, p0, Lcom/android/calendar/CalendarView$1;->this$0:Lcom/android/calendar/CalendarView;

    #calls: Lcom/android/calendar/CalendarView;->recalc()V
    invoke-static {v1}, Lcom/android/calendar/CalendarView;->access$300(Lcom/android/calendar/CalendarView;)V

    .line 112
    iget-object v1, p0, Lcom/android/calendar/CalendarView$1;->this$0:Lcom/android/calendar/CalendarView;

    #getter for: Lcom/android/calendar/CalendarView;->mTitleTextView:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/calendar/CalendarView;->access$500(Lcom/android/calendar/CalendarView;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/calendar/CalendarView$1;->this$0:Lcom/android/calendar/CalendarView;

    #getter for: Lcom/android/calendar/CalendarView;->mDateRange:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/calendar/CalendarView;->access$400(Lcom/android/calendar/CalendarView;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    return-void
.end method
