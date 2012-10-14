.class Lcom/android/calendar/MonthView$1;
.super Ljava/lang/Object;
.source "MonthView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/MonthView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/MonthView;


# direct methods
.method constructor <init>(Lcom/android/calendar/MonthView;)V
    .locals 0
    .parameter

    .prologue
    .line 193
    iput-object p1, p0, Lcom/android/calendar/MonthView$1;->this$0:Lcom/android/calendar/MonthView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 196
    iget-object v1, p0, Lcom/android/calendar/MonthView$1;->this$0:Lcom/android/calendar/MonthView;

    #getter for: Lcom/android/calendar/MonthView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/calendar/MonthView;->access$100(Lcom/android/calendar/MonthView;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v0

    .line 198
    .local v0, tz:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/calendar/MonthView$1;->this$0:Lcom/android/calendar/MonthView;

    #getter for: Lcom/android/calendar/MonthView;->mSavedTime:Landroid/text/format/Time;
    invoke-static {v1}, Lcom/android/calendar/MonthView;->access$200(Lcom/android/calendar/MonthView;)Landroid/text/format/Time;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/text/format/Time;->switchTimezone(Ljava/lang/String;)V

    .line 199
    iget-object v1, p0, Lcom/android/calendar/MonthView$1;->this$0:Lcom/android/calendar/MonthView;

    #getter for: Lcom/android/calendar/MonthView;->mToday:Landroid/text/format/Time;
    invoke-static {v1}, Lcom/android/calendar/MonthView;->access$300(Lcom/android/calendar/MonthView;)Landroid/text/format/Time;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/text/format/Time;->switchTimezone(Ljava/lang/String;)V

    .line 200
    iget-object v1, p0, Lcom/android/calendar/MonthView$1;->this$0:Lcom/android/calendar/MonthView;

    #getter for: Lcom/android/calendar/MonthView;->mTempTime:Landroid/text/format/Time;
    invoke-static {v1}, Lcom/android/calendar/MonthView;->access$400(Lcom/android/calendar/MonthView;)Landroid/text/format/Time;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/text/format/Time;->switchTimezone(Ljava/lang/String;)V

    .line 203
    iget-object v1, p0, Lcom/android/calendar/MonthView$1;->this$0:Lcom/android/calendar/MonthView;

    #getter for: Lcom/android/calendar/MonthView;->mViewCalendar:Landroid/text/format/Time;
    invoke-static {v1}, Lcom/android/calendar/MonthView;->access$500(Lcom/android/calendar/MonthView;)Landroid/text/format/Time;

    move-result-object v1

    iput-object v0, v1, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 204
    iget-object v1, p0, Lcom/android/calendar/MonthView$1;->this$0:Lcom/android/calendar/MonthView;

    #getter for: Lcom/android/calendar/MonthView;->mViewCalendar:Landroid/text/format/Time;
    invoke-static {v1}, Lcom/android/calendar/MonthView;->access$500(Lcom/android/calendar/MonthView;)Landroid/text/format/Time;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/text/format/Time;->normalize(Z)J

    .line 205
    iget-object v1, p0, Lcom/android/calendar/MonthView$1;->this$0:Lcom/android/calendar/MonthView;

    #getter for: Lcom/android/calendar/MonthView;->mOtherViewCalendar:Landroid/text/format/Time;
    invoke-static {v1}, Lcom/android/calendar/MonthView;->access$600(Lcom/android/calendar/MonthView;)Landroid/text/format/Time;

    move-result-object v1

    iput-object v0, v1, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 206
    iget-object v1, p0, Lcom/android/calendar/MonthView$1;->this$0:Lcom/android/calendar/MonthView;

    #getter for: Lcom/android/calendar/MonthView;->mOtherViewCalendar:Landroid/text/format/Time;
    invoke-static {v1}, Lcom/android/calendar/MonthView;->access$600(Lcom/android/calendar/MonthView;)Landroid/text/format/Time;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/text/format/Time;->normalize(Z)J

    .line 207
    return-void
.end method
