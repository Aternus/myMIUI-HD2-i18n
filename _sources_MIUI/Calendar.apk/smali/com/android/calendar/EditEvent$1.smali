.class Lcom/android/calendar/EditEvent$1;
.super Ljava/lang/Object;
.source "EditEvent.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/EditEvent;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/EditEvent;


# direct methods
.method constructor <init>(Lcom/android/calendar/EditEvent;)V
    .locals 0
    .parameter

    .prologue
    .line 766
    iput-object p1, p0, Lcom/android/calendar/EditEvent$1;->this$0:Lcom/android/calendar/EditEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 7
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 768
    if-eqz p2, :cond_2

    .line 769
    iget-object v2, p0, Lcom/android/calendar/EditEvent$1;->this$0:Lcom/android/calendar/EditEvent;

    #getter for: Lcom/android/calendar/EditEvent;->mEndTime:Landroid/text/format/Time;
    invoke-static {v2}, Lcom/android/calendar/EditEvent;->access$100(Lcom/android/calendar/EditEvent;)Landroid/text/format/Time;

    move-result-object v2

    iget v2, v2, Landroid/text/format/Time;->hour:I

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/calendar/EditEvent$1;->this$0:Lcom/android/calendar/EditEvent;

    #getter for: Lcom/android/calendar/EditEvent;->mEndTime:Landroid/text/format/Time;
    invoke-static {v2}, Lcom/android/calendar/EditEvent;->access$100(Lcom/android/calendar/EditEvent;)Landroid/text/format/Time;

    move-result-object v2

    iget v2, v2, Landroid/text/format/Time;->minute:I

    if-nez v2, :cond_1

    .line 770
    iget-object v2, p0, Lcom/android/calendar/EditEvent$1;->this$0:Lcom/android/calendar/EditEvent;

    #getter for: Lcom/android/calendar/EditEvent;->mEndTime:Landroid/text/format/Time;
    invoke-static {v2}, Lcom/android/calendar/EditEvent;->access$100(Lcom/android/calendar/EditEvent;)Landroid/text/format/Time;

    move-result-object v2

    iget v3, v2, Landroid/text/format/Time;->monthDay:I

    sub-int/2addr v3, v5

    iput v3, v2, Landroid/text/format/Time;->monthDay:I

    .line 771
    iget-object v2, p0, Lcom/android/calendar/EditEvent$1;->this$0:Lcom/android/calendar/EditEvent;

    #getter for: Lcom/android/calendar/EditEvent;->mEndTime:Landroid/text/format/Time;
    invoke-static {v2}, Lcom/android/calendar/EditEvent;->access$100(Lcom/android/calendar/EditEvent;)Landroid/text/format/Time;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    .line 774
    .local v0, endMillis:J
    iget-object v2, p0, Lcom/android/calendar/EditEvent$1;->this$0:Lcom/android/calendar/EditEvent;

    #getter for: Lcom/android/calendar/EditEvent;->mEndTime:Landroid/text/format/Time;
    invoke-static {v2}, Lcom/android/calendar/EditEvent;->access$100(Lcom/android/calendar/EditEvent;)Landroid/text/format/Time;

    move-result-object v2

    iget-object v3, p0, Lcom/android/calendar/EditEvent$1;->this$0:Lcom/android/calendar/EditEvent;

    #getter for: Lcom/android/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;
    invoke-static {v3}, Lcom/android/calendar/EditEvent;->access$000(Lcom/android/calendar/EditEvent;)Landroid/text/format/Time;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/text/format/Time;->before(Landroid/text/format/Time;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 775
    iget-object v2, p0, Lcom/android/calendar/EditEvent$1;->this$0:Lcom/android/calendar/EditEvent;

    #getter for: Lcom/android/calendar/EditEvent;->mEndTime:Landroid/text/format/Time;
    invoke-static {v2}, Lcom/android/calendar/EditEvent;->access$100(Lcom/android/calendar/EditEvent;)Landroid/text/format/Time;

    move-result-object v2

    iget-object v3, p0, Lcom/android/calendar/EditEvent$1;->this$0:Lcom/android/calendar/EditEvent;

    #getter for: Lcom/android/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;
    invoke-static {v3}, Lcom/android/calendar/EditEvent;->access$000(Lcom/android/calendar/EditEvent;)Landroid/text/format/Time;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 776
    iget-object v2, p0, Lcom/android/calendar/EditEvent$1;->this$0:Lcom/android/calendar/EditEvent;

    #getter for: Lcom/android/calendar/EditEvent;->mEndTime:Landroid/text/format/Time;
    invoke-static {v2}, Lcom/android/calendar/EditEvent;->access$100(Lcom/android/calendar/EditEvent;)Landroid/text/format/Time;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    .line 778
    :cond_0
    iget-object v2, p0, Lcom/android/calendar/EditEvent$1;->this$0:Lcom/android/calendar/EditEvent;

    iget-object v3, p0, Lcom/android/calendar/EditEvent$1;->this$0:Lcom/android/calendar/EditEvent;

    #getter for: Lcom/android/calendar/EditEvent;->mEndDateButton:Landroid/widget/Button;
    invoke-static {v3}, Lcom/android/calendar/EditEvent;->access$300(Lcom/android/calendar/EditEvent;)Landroid/widget/Button;

    move-result-object v3

    #calls: Lcom/android/calendar/EditEvent;->setDate(Landroid/widget/TextView;J)V
    invoke-static {v2, v3, v0, v1}, Lcom/android/calendar/EditEvent;->access$400(Lcom/android/calendar/EditEvent;Landroid/widget/TextView;J)V

    .line 779
    iget-object v2, p0, Lcom/android/calendar/EditEvent$1;->this$0:Lcom/android/calendar/EditEvent;

    iget-object v3, p0, Lcom/android/calendar/EditEvent$1;->this$0:Lcom/android/calendar/EditEvent;

    #getter for: Lcom/android/calendar/EditEvent;->mEndTimeButton:Landroid/widget/Button;
    invoke-static {v3}, Lcom/android/calendar/EditEvent;->access$600(Lcom/android/calendar/EditEvent;)Landroid/widget/Button;

    move-result-object v3

    #calls: Lcom/android/calendar/EditEvent;->setTime(Landroid/widget/TextView;J)V
    invoke-static {v2, v3, v0, v1}, Lcom/android/calendar/EditEvent;->access$500(Lcom/android/calendar/EditEvent;Landroid/widget/TextView;J)V

    .line 782
    .end local v0           #endMillis:J
    :cond_1
    iget-object v2, p0, Lcom/android/calendar/EditEvent$1;->this$0:Lcom/android/calendar/EditEvent;

    #getter for: Lcom/android/calendar/EditEvent;->mStartTimeButton:Landroid/widget/Button;
    invoke-static {v2}, Lcom/android/calendar/EditEvent;->access$200(Lcom/android/calendar/EditEvent;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 783
    iget-object v2, p0, Lcom/android/calendar/EditEvent$1;->this$0:Lcom/android/calendar/EditEvent;

    #getter for: Lcom/android/calendar/EditEvent;->mEndTimeButton:Landroid/widget/Button;
    invoke-static {v2}, Lcom/android/calendar/EditEvent;->access$600(Lcom/android/calendar/EditEvent;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 784
    iget-object v2, p0, Lcom/android/calendar/EditEvent$1;->this$0:Lcom/android/calendar/EditEvent;

    #getter for: Lcom/android/calendar/EditEvent;->mTimezoneButton:Landroid/widget/Button;
    invoke-static {v2}, Lcom/android/calendar/EditEvent;->access$2000(Lcom/android/calendar/EditEvent;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 785
    iget-object v2, p0, Lcom/android/calendar/EditEvent$1;->this$0:Lcom/android/calendar/EditEvent;

    #getter for: Lcom/android/calendar/EditEvent;->mTimezoneTextView:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/android/calendar/EditEvent;->access$2100(Lcom/android/calendar/EditEvent;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 799
    :goto_0
    iget-object v2, p0, Lcom/android/calendar/EditEvent$1;->this$0:Lcom/android/calendar/EditEvent;

    #calls: Lcom/android/calendar/EditEvent;->updateHomeTime()V
    invoke-static {v2}, Lcom/android/calendar/EditEvent;->access$700(Lcom/android/calendar/EditEvent;)V

    .line 800
    return-void

    .line 787
    :cond_2
    iget-object v2, p0, Lcom/android/calendar/EditEvent$1;->this$0:Lcom/android/calendar/EditEvent;

    #getter for: Lcom/android/calendar/EditEvent;->mEndTime:Landroid/text/format/Time;
    invoke-static {v2}, Lcom/android/calendar/EditEvent;->access$100(Lcom/android/calendar/EditEvent;)Landroid/text/format/Time;

    move-result-object v2

    iget v2, v2, Landroid/text/format/Time;->hour:I

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/calendar/EditEvent$1;->this$0:Lcom/android/calendar/EditEvent;

    #getter for: Lcom/android/calendar/EditEvent;->mEndTime:Landroid/text/format/Time;
    invoke-static {v2}, Lcom/android/calendar/EditEvent;->access$100(Lcom/android/calendar/EditEvent;)Landroid/text/format/Time;

    move-result-object v2

    iget v2, v2, Landroid/text/format/Time;->minute:I

    if-nez v2, :cond_3

    .line 788
    iget-object v2, p0, Lcom/android/calendar/EditEvent$1;->this$0:Lcom/android/calendar/EditEvent;

    #getter for: Lcom/android/calendar/EditEvent;->mEndTime:Landroid/text/format/Time;
    invoke-static {v2}, Lcom/android/calendar/EditEvent;->access$100(Lcom/android/calendar/EditEvent;)Landroid/text/format/Time;

    move-result-object v2

    iget v3, v2, Landroid/text/format/Time;->monthDay:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Landroid/text/format/Time;->monthDay:I

    .line 789
    iget-object v2, p0, Lcom/android/calendar/EditEvent$1;->this$0:Lcom/android/calendar/EditEvent;

    #getter for: Lcom/android/calendar/EditEvent;->mEndTime:Landroid/text/format/Time;
    invoke-static {v2}, Lcom/android/calendar/EditEvent;->access$100(Lcom/android/calendar/EditEvent;)Landroid/text/format/Time;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    .line 790
    .restart local v0       #endMillis:J
    iget-object v2, p0, Lcom/android/calendar/EditEvent$1;->this$0:Lcom/android/calendar/EditEvent;

    iget-object v3, p0, Lcom/android/calendar/EditEvent$1;->this$0:Lcom/android/calendar/EditEvent;

    #getter for: Lcom/android/calendar/EditEvent;->mEndDateButton:Landroid/widget/Button;
    invoke-static {v3}, Lcom/android/calendar/EditEvent;->access$300(Lcom/android/calendar/EditEvent;)Landroid/widget/Button;

    move-result-object v3

    #calls: Lcom/android/calendar/EditEvent;->setDate(Landroid/widget/TextView;J)V
    invoke-static {v2, v3, v0, v1}, Lcom/android/calendar/EditEvent;->access$400(Lcom/android/calendar/EditEvent;Landroid/widget/TextView;J)V

    .line 791
    iget-object v2, p0, Lcom/android/calendar/EditEvent$1;->this$0:Lcom/android/calendar/EditEvent;

    iget-object v3, p0, Lcom/android/calendar/EditEvent$1;->this$0:Lcom/android/calendar/EditEvent;

    #getter for: Lcom/android/calendar/EditEvent;->mEndTimeButton:Landroid/widget/Button;
    invoke-static {v3}, Lcom/android/calendar/EditEvent;->access$600(Lcom/android/calendar/EditEvent;)Landroid/widget/Button;

    move-result-object v3

    #calls: Lcom/android/calendar/EditEvent;->setTime(Landroid/widget/TextView;J)V
    invoke-static {v2, v3, v0, v1}, Lcom/android/calendar/EditEvent;->access$500(Lcom/android/calendar/EditEvent;Landroid/widget/TextView;J)V

    .line 794
    .end local v0           #endMillis:J
    :cond_3
    iget-object v2, p0, Lcom/android/calendar/EditEvent$1;->this$0:Lcom/android/calendar/EditEvent;

    #getter for: Lcom/android/calendar/EditEvent;->mStartTimeButton:Landroid/widget/Button;
    invoke-static {v2}, Lcom/android/calendar/EditEvent;->access$200(Lcom/android/calendar/EditEvent;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 795
    iget-object v2, p0, Lcom/android/calendar/EditEvent$1;->this$0:Lcom/android/calendar/EditEvent;

    #getter for: Lcom/android/calendar/EditEvent;->mEndTimeButton:Landroid/widget/Button;
    invoke-static {v2}, Lcom/android/calendar/EditEvent;->access$600(Lcom/android/calendar/EditEvent;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 796
    iget-object v2, p0, Lcom/android/calendar/EditEvent$1;->this$0:Lcom/android/calendar/EditEvent;

    #getter for: Lcom/android/calendar/EditEvent;->mTimezoneButton:Landroid/widget/Button;
    invoke-static {v2}, Lcom/android/calendar/EditEvent;->access$2000(Lcom/android/calendar/EditEvent;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 797
    iget-object v2, p0, Lcom/android/calendar/EditEvent$1;->this$0:Lcom/android/calendar/EditEvent;

    #getter for: Lcom/android/calendar/EditEvent;->mTimezoneTextView:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/android/calendar/EditEvent;->access$2100(Lcom/android/calendar/EditEvent;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
