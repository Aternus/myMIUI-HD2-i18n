.class Lcom/android/calendar/EditEvent$TimeListener;
.super Ljava/lang/Object;
.source "EditEvent.java"

# interfaces
.implements Landroid/app/TimePickerDialog$OnTimeSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/EditEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TimeListener"
.end annotation


# instance fields
.field private mView:Landroid/view/View;

.field final synthetic this$0:Lcom/android/calendar/EditEvent;


# direct methods
.method public constructor <init>(Lcom/android/calendar/EditEvent;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter "view"

    .prologue
    .line 288
    iput-object p1, p0, Lcom/android/calendar/EditEvent$TimeListener;->this$0:Lcom/android/calendar/EditEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 289
    iput-object p2, p0, Lcom/android/calendar/EditEvent$TimeListener;->mView:Landroid/view/View;

    .line 290
    return-void
.end method


# virtual methods
.method public onTimeSet(Landroid/widget/TimePicker;II)V
    .locals 11
    .parameter "view"
    .parameter "hourOfDay"
    .parameter "minute"

    .prologue
    const/4 v10, 0x1

    .line 294
    iget-object v8, p0, Lcom/android/calendar/EditEvent$TimeListener;->this$0:Lcom/android/calendar/EditEvent;

    #getter for: Lcom/android/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;
    invoke-static {v8}, Lcom/android/calendar/EditEvent;->access$000(Lcom/android/calendar/EditEvent;)Landroid/text/format/Time;

    move-result-object v7

    .line 295
    .local v7, startTime:Landroid/text/format/Time;
    iget-object v8, p0, Lcom/android/calendar/EditEvent$TimeListener;->this$0:Lcom/android/calendar/EditEvent;

    #getter for: Lcom/android/calendar/EditEvent;->mEndTime:Landroid/text/format/Time;
    invoke-static {v8}, Lcom/android/calendar/EditEvent;->access$100(Lcom/android/calendar/EditEvent;)Landroid/text/format/Time;

    move-result-object v2

    .line 302
    .local v2, endTime:Landroid/text/format/Time;
    iget-object v8, p0, Lcom/android/calendar/EditEvent$TimeListener;->mView:Landroid/view/View;

    iget-object v9, p0, Lcom/android/calendar/EditEvent$TimeListener;->this$0:Lcom/android/calendar/EditEvent;

    #getter for: Lcom/android/calendar/EditEvent;->mStartTimeButton:Landroid/widget/Button;
    invoke-static {v9}, Lcom/android/calendar/EditEvent;->access$200(Lcom/android/calendar/EditEvent;)Landroid/widget/Button;

    move-result-object v9

    if-ne v8, v9, :cond_1

    .line 304
    iget v8, v2, Landroid/text/format/Time;->hour:I

    iget v9, v7, Landroid/text/format/Time;->hour:I

    sub-int v3, v8, v9

    .line 305
    .local v3, hourDuration:I
    iget v8, v2, Landroid/text/format/Time;->minute:I

    iget v9, v7, Landroid/text/format/Time;->minute:I

    sub-int v4, v8, v9

    .line 307
    .local v4, minuteDuration:I
    iput p2, v7, Landroid/text/format/Time;->hour:I

    .line 308
    iput p3, v7, Landroid/text/format/Time;->minute:I

    .line 309
    invoke-virtual {v7, v10}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v5

    .line 312
    .local v5, startMillis:J
    add-int v8, p2, v3

    iput v8, v2, Landroid/text/format/Time;->hour:I

    .line 313
    add-int v8, p3, v4

    iput v8, v2, Landroid/text/format/Time;->minute:I

    .line 326
    .end local v3           #hourDuration:I
    .end local v4           #minuteDuration:I
    :cond_0
    :goto_0
    invoke-virtual {v2, v10}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    .line 328
    .local v0, endMillis:J
    iget-object v8, p0, Lcom/android/calendar/EditEvent$TimeListener;->this$0:Lcom/android/calendar/EditEvent;

    iget-object v9, p0, Lcom/android/calendar/EditEvent$TimeListener;->this$0:Lcom/android/calendar/EditEvent;

    #getter for: Lcom/android/calendar/EditEvent;->mEndDateButton:Landroid/widget/Button;
    invoke-static {v9}, Lcom/android/calendar/EditEvent;->access$300(Lcom/android/calendar/EditEvent;)Landroid/widget/Button;

    move-result-object v9

    #calls: Lcom/android/calendar/EditEvent;->setDate(Landroid/widget/TextView;J)V
    invoke-static {v8, v9, v0, v1}, Lcom/android/calendar/EditEvent;->access$400(Lcom/android/calendar/EditEvent;Landroid/widget/TextView;J)V

    .line 329
    iget-object v8, p0, Lcom/android/calendar/EditEvent$TimeListener;->this$0:Lcom/android/calendar/EditEvent;

    iget-object v9, p0, Lcom/android/calendar/EditEvent$TimeListener;->this$0:Lcom/android/calendar/EditEvent;

    #getter for: Lcom/android/calendar/EditEvent;->mStartTimeButton:Landroid/widget/Button;
    invoke-static {v9}, Lcom/android/calendar/EditEvent;->access$200(Lcom/android/calendar/EditEvent;)Landroid/widget/Button;

    move-result-object v9

    #calls: Lcom/android/calendar/EditEvent;->setTime(Landroid/widget/TextView;J)V
    invoke-static {v8, v9, v5, v6}, Lcom/android/calendar/EditEvent;->access$500(Lcom/android/calendar/EditEvent;Landroid/widget/TextView;J)V

    .line 330
    iget-object v8, p0, Lcom/android/calendar/EditEvent$TimeListener;->this$0:Lcom/android/calendar/EditEvent;

    iget-object v9, p0, Lcom/android/calendar/EditEvent$TimeListener;->this$0:Lcom/android/calendar/EditEvent;

    #getter for: Lcom/android/calendar/EditEvent;->mEndTimeButton:Landroid/widget/Button;
    invoke-static {v9}, Lcom/android/calendar/EditEvent;->access$600(Lcom/android/calendar/EditEvent;)Landroid/widget/Button;

    move-result-object v9

    #calls: Lcom/android/calendar/EditEvent;->setTime(Landroid/widget/TextView;J)V
    invoke-static {v8, v9, v0, v1}, Lcom/android/calendar/EditEvent;->access$500(Lcom/android/calendar/EditEvent;Landroid/widget/TextView;J)V

    .line 331
    iget-object v8, p0, Lcom/android/calendar/EditEvent$TimeListener;->this$0:Lcom/android/calendar/EditEvent;

    #calls: Lcom/android/calendar/EditEvent;->updateHomeTime()V
    invoke-static {v8}, Lcom/android/calendar/EditEvent;->access$700(Lcom/android/calendar/EditEvent;)V

    .line 332
    return-void

    .line 316
    .end local v0           #endMillis:J
    .end local v5           #startMillis:J
    :cond_1
    invoke-virtual {v7, v10}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v5

    .line 317
    .restart local v5       #startMillis:J
    iput p2, v2, Landroid/text/format/Time;->hour:I

    .line 318
    iput p3, v2, Landroid/text/format/Time;->minute:I

    .line 321
    invoke-virtual {v2, v7}, Landroid/text/format/Time;->before(Landroid/text/format/Time;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 322
    iget v8, v7, Landroid/text/format/Time;->monthDay:I

    add-int/lit8 v8, v8, 0x1

    iput v8, v2, Landroid/text/format/Time;->monthDay:I

    goto :goto_0
.end method
