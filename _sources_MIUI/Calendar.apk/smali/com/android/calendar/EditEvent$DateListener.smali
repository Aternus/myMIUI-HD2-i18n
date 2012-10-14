.class Lcom/android/calendar/EditEvent$DateListener;
.super Ljava/lang/Object;
.source "EditEvent.java"

# interfaces
.implements Landroid/app/DatePickerDialog$OnDateSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/EditEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DateListener"
.end annotation


# instance fields
.field mView:Landroid/view/View;

.field final synthetic this$0:Lcom/android/calendar/EditEvent;


# direct methods
.method public constructor <init>(Lcom/android/calendar/EditEvent;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter "view"

    .prologue
    .line 352
    iput-object p1, p0, Lcom/android/calendar/EditEvent$DateListener;->this$0:Lcom/android/calendar/EditEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 353
    iput-object p2, p0, Lcom/android/calendar/EditEvent$DateListener;->mView:Landroid/view/View;

    .line 354
    return-void
.end method


# virtual methods
.method public onDateSet(Landroid/widget/DatePicker;III)V
    .locals 11
    .parameter "view"
    .parameter "year"
    .parameter "month"
    .parameter "monthDay"

    .prologue
    .line 358
    iget-object v9, p0, Lcom/android/calendar/EditEvent$DateListener;->this$0:Lcom/android/calendar/EditEvent;

    #getter for: Lcom/android/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;
    invoke-static {v9}, Lcom/android/calendar/EditEvent;->access$000(Lcom/android/calendar/EditEvent;)Landroid/text/format/Time;

    move-result-object v7

    .line 359
    .local v7, startTime:Landroid/text/format/Time;
    iget-object v9, p0, Lcom/android/calendar/EditEvent$DateListener;->this$0:Lcom/android/calendar/EditEvent;

    #getter for: Lcom/android/calendar/EditEvent;->mEndTime:Landroid/text/format/Time;
    invoke-static {v9}, Lcom/android/calendar/EditEvent;->access$100(Lcom/android/calendar/EditEvent;)Landroid/text/format/Time;

    move-result-object v2

    .line 366
    .local v2, endTime:Landroid/text/format/Time;
    iget-object v9, p0, Lcom/android/calendar/EditEvent$DateListener;->mView:Landroid/view/View;

    iget-object v10, p0, Lcom/android/calendar/EditEvent$DateListener;->this$0:Lcom/android/calendar/EditEvent;

    #getter for: Lcom/android/calendar/EditEvent;->mStartDateButton:Landroid/widget/Button;
    invoke-static {v10}, Lcom/android/calendar/EditEvent;->access$800(Lcom/android/calendar/EditEvent;)Landroid/widget/Button;

    move-result-object v10

    if-ne v9, v10, :cond_1

    .line 368
    iget v9, v2, Landroid/text/format/Time;->year:I

    iget v10, v7, Landroid/text/format/Time;->year:I

    sub-int v8, v9, v10

    .line 369
    .local v8, yearDuration:I
    iget v9, v2, Landroid/text/format/Time;->month:I

    iget v10, v7, Landroid/text/format/Time;->month:I

    sub-int v4, v9, v10

    .line 370
    .local v4, monthDuration:I
    iget v9, v2, Landroid/text/format/Time;->monthDay:I

    iget v10, v7, Landroid/text/format/Time;->monthDay:I

    sub-int v3, v9, v10

    .line 372
    .local v3, monthDayDuration:I
    iput p2, v7, Landroid/text/format/Time;->year:I

    .line 373
    iput p3, v7, Landroid/text/format/Time;->month:I

    .line 374
    iput p4, v7, Landroid/text/format/Time;->monthDay:I

    .line 375
    const/4 v9, 0x1

    invoke-virtual {v7, v9}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v5

    .line 378
    .local v5, startMillis:J
    add-int v9, p2, v8

    iput v9, v2, Landroid/text/format/Time;->year:I

    .line 379
    add-int v9, p3, v4

    iput v9, v2, Landroid/text/format/Time;->month:I

    .line 380
    add-int v9, p4, v3

    iput v9, v2, Landroid/text/format/Time;->monthDay:I

    .line 381
    const/4 v9, 0x1

    invoke-virtual {v2, v9}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    .line 384
    .local v0, endMillis:J
    iget-object v9, p0, Lcom/android/calendar/EditEvent$DateListener;->this$0:Lcom/android/calendar/EditEvent;

    #calls: Lcom/android/calendar/EditEvent;->populateRepeats()V
    invoke-static {v9}, Lcom/android/calendar/EditEvent;->access$900(Lcom/android/calendar/EditEvent;)V

    .line 400
    .end local v3           #monthDayDuration:I
    .end local v4           #monthDuration:I
    .end local v8           #yearDuration:I
    :cond_0
    :goto_0
    iget-object v9, p0, Lcom/android/calendar/EditEvent$DateListener;->this$0:Lcom/android/calendar/EditEvent;

    iget-object v10, p0, Lcom/android/calendar/EditEvent$DateListener;->this$0:Lcom/android/calendar/EditEvent;

    #getter for: Lcom/android/calendar/EditEvent;->mStartDateButton:Landroid/widget/Button;
    invoke-static {v10}, Lcom/android/calendar/EditEvent;->access$800(Lcom/android/calendar/EditEvent;)Landroid/widget/Button;

    move-result-object v10

    #calls: Lcom/android/calendar/EditEvent;->setDate(Landroid/widget/TextView;J)V
    invoke-static {v9, v10, v5, v6}, Lcom/android/calendar/EditEvent;->access$400(Lcom/android/calendar/EditEvent;Landroid/widget/TextView;J)V

    .line 401
    iget-object v9, p0, Lcom/android/calendar/EditEvent$DateListener;->this$0:Lcom/android/calendar/EditEvent;

    iget-object v10, p0, Lcom/android/calendar/EditEvent$DateListener;->this$0:Lcom/android/calendar/EditEvent;

    #getter for: Lcom/android/calendar/EditEvent;->mEndDateButton:Landroid/widget/Button;
    invoke-static {v10}, Lcom/android/calendar/EditEvent;->access$300(Lcom/android/calendar/EditEvent;)Landroid/widget/Button;

    move-result-object v10

    #calls: Lcom/android/calendar/EditEvent;->setDate(Landroid/widget/TextView;J)V
    invoke-static {v9, v10, v0, v1}, Lcom/android/calendar/EditEvent;->access$400(Lcom/android/calendar/EditEvent;Landroid/widget/TextView;J)V

    .line 402
    iget-object v9, p0, Lcom/android/calendar/EditEvent$DateListener;->this$0:Lcom/android/calendar/EditEvent;

    iget-object v10, p0, Lcom/android/calendar/EditEvent$DateListener;->this$0:Lcom/android/calendar/EditEvent;

    #getter for: Lcom/android/calendar/EditEvent;->mEndTimeButton:Landroid/widget/Button;
    invoke-static {v10}, Lcom/android/calendar/EditEvent;->access$600(Lcom/android/calendar/EditEvent;)Landroid/widget/Button;

    move-result-object v10

    #calls: Lcom/android/calendar/EditEvent;->setTime(Landroid/widget/TextView;J)V
    invoke-static {v9, v10, v0, v1}, Lcom/android/calendar/EditEvent;->access$500(Lcom/android/calendar/EditEvent;Landroid/widget/TextView;J)V

    .line 403
    iget-object v9, p0, Lcom/android/calendar/EditEvent$DateListener;->this$0:Lcom/android/calendar/EditEvent;

    #calls: Lcom/android/calendar/EditEvent;->updateHomeTime()V
    invoke-static {v9}, Lcom/android/calendar/EditEvent;->access$700(Lcom/android/calendar/EditEvent;)V

    .line 404
    return-void

    .line 387
    .end local v0           #endMillis:J
    .end local v5           #startMillis:J
    :cond_1
    const/4 v9, 0x1

    invoke-virtual {v7, v9}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v5

    .line 388
    .restart local v5       #startMillis:J
    iput p2, v2, Landroid/text/format/Time;->year:I

    .line 389
    iput p3, v2, Landroid/text/format/Time;->month:I

    .line 390
    iput p4, v2, Landroid/text/format/Time;->monthDay:I

    .line 391
    const/4 v9, 0x1

    invoke-virtual {v2, v9}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    .line 394
    .restart local v0       #endMillis:J
    invoke-virtual {v2, v7}, Landroid/text/format/Time;->before(Landroid/text/format/Time;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 395
    invoke-virtual {v2, v7}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 396
    move-wide v0, v5

    goto :goto_0
.end method
