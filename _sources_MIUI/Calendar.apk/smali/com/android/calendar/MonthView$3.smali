.class Lcom/android/calendar/MonthView$3;
.super Ljava/lang/Object;
.source "MonthView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/MonthView;->reloadEvents()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/MonthView;

.field final synthetic val$events:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/calendar/MonthView;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 507
    iput-object p1, p0, Lcom/android/calendar/MonthView$3;->this$0:Lcom/android/calendar/MonthView;

    iput-object p2, p0, Lcom/android/calendar/MonthView$3;->val$events:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/16 v8, 0x1f

    .line 509
    iget-object v6, p0, Lcom/android/calendar/MonthView$3;->this$0:Lcom/android/calendar/MonthView;

    iget-object v7, p0, Lcom/android/calendar/MonthView$3;->val$events:Ljava/util/ArrayList;

    #setter for: Lcom/android/calendar/MonthView;->mEvents:Ljava/util/ArrayList;
    invoke-static {v6, v7}, Lcom/android/calendar/MonthView;->access$2102(Lcom/android/calendar/MonthView;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 510
    iget-object v6, p0, Lcom/android/calendar/MonthView$3;->this$0:Lcom/android/calendar/MonthView;

    #setter for: Lcom/android/calendar/MonthView;->mRedrawScreen:Z
    invoke-static {v6, v9}, Lcom/android/calendar/MonthView;->access$1802(Lcom/android/calendar/MonthView;Z)Z

    .line 511
    iget-object v6, p0, Lcom/android/calendar/MonthView$3;->this$0:Lcom/android/calendar/MonthView;

    #getter for: Lcom/android/calendar/MonthView;->mParentActivity:Lcom/android/calendar/MonthActivity;
    invoke-static {v6}, Lcom/android/calendar/MonthView;->access$1000(Lcom/android/calendar/MonthView;)Lcom/android/calendar/MonthActivity;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/calendar/MonthActivity;->stopProgressSpinner()V

    .line 512
    iget-object v6, p0, Lcom/android/calendar/MonthView$3;->this$0:Lcom/android/calendar/MonthView;

    invoke-virtual {v6}, Lcom/android/calendar/MonthView;->invalidate()V

    .line 513
    iget-object v6, p0, Lcom/android/calendar/MonthView$3;->val$events:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 516
    .local v4, numEvents:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-static {}, Lcom/android/calendar/MonthView;->access$2200()I

    move-result v6

    if-ge v2, v6, :cond_0

    .line 517
    iget-object v6, p0, Lcom/android/calendar/MonthView$3;->this$0:Lcom/android/calendar/MonthView;

    #getter for: Lcom/android/calendar/MonthView;->eventDay:[Z
    invoke-static {v6}, Lcom/android/calendar/MonthView;->access$2300(Lcom/android/calendar/MonthView;)[Z

    move-result-object v6

    const/4 v7, 0x0

    aput-boolean v7, v6, v2

    .line 516
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 521
    :cond_0
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v4, :cond_7

    .line 522
    iget-object v6, p0, Lcom/android/calendar/MonthView$3;->val$events:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/calendar/Event;

    .line 523
    .local v1, event:Lcom/android/calendar/Event;
    iget v6, v1, Lcom/android/calendar/Event;->startDay:I

    iget-object v7, p0, Lcom/android/calendar/MonthView$3;->this$0:Lcom/android/calendar/MonthView;

    #getter for: Lcom/android/calendar/MonthView;->mFirstJulianDay:I
    invoke-static {v7}, Lcom/android/calendar/MonthView;->access$2400(Lcom/android/calendar/MonthView;)I

    move-result v7

    sub-int v5, v6, v7

    .line 524
    .local v5, startDay:I
    iget v6, v1, Lcom/android/calendar/Event;->endDay:I

    iget-object v7, p0, Lcom/android/calendar/MonthView$3;->this$0:Lcom/android/calendar/MonthView;

    #getter for: Lcom/android/calendar/MonthView;->mFirstJulianDay:I
    invoke-static {v7}, Lcom/android/calendar/MonthView;->access$2400(Lcom/android/calendar/MonthView;)I

    move-result v7

    sub-int/2addr v6, v7

    add-int/lit8 v0, v6, 0x1

    .line 525
    .local v0, endDay:I
    if-lt v5, v8, :cond_1

    if-ltz v0, :cond_6

    .line 526
    :cond_1
    if-gez v5, :cond_2

    .line 527
    const/4 v5, 0x0

    .line 529
    :cond_2
    if-le v5, v8, :cond_3

    .line 530
    const/16 v5, 0x1f

    .line 532
    :cond_3
    if-gez v0, :cond_4

    .line 533
    const/4 v0, 0x0

    .line 535
    :cond_4
    if-le v0, v8, :cond_5

    .line 536
    const/16 v0, 0x1f

    .line 538
    :cond_5
    move v3, v5

    .local v3, j:I
    :goto_2
    if-ge v3, v0, :cond_6

    .line 539
    iget-object v6, p0, Lcom/android/calendar/MonthView$3;->this$0:Lcom/android/calendar/MonthView;

    #getter for: Lcom/android/calendar/MonthView;->eventDay:[Z
    invoke-static {v6}, Lcom/android/calendar/MonthView;->access$2300(Lcom/android/calendar/MonthView;)[Z

    move-result-object v6

    aput-boolean v9, v6, v3

    .line 538
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 521
    .end local v3           #j:I
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 543
    .end local v0           #endDay:I
    .end local v1           #event:Lcom/android/calendar/Event;
    .end local v5           #startDay:I
    :cond_7
    return-void
.end method
