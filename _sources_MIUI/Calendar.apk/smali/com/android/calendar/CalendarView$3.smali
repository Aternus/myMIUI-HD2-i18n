.class Lcom/android/calendar/CalendarView$3;
.super Ljava/lang/Object;
.source "CalendarView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/CalendarView;->reloadEvents()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/CalendarView;

.field final synthetic val$events:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/calendar/CalendarView;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1310
    iput-object p1, p0, Lcom/android/calendar/CalendarView$3;->this$0:Lcom/android/calendar/CalendarView;

    iput-object p2, p0, Lcom/android/calendar/CalendarView$3;->val$events:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1312
    iget-object v0, p0, Lcom/android/calendar/CalendarView$3;->this$0:Lcom/android/calendar/CalendarView;

    iget-object v1, p0, Lcom/android/calendar/CalendarView$3;->val$events:Ljava/util/ArrayList;

    #setter for: Lcom/android/calendar/CalendarView;->mEvents:Ljava/util/ArrayList;
    invoke-static {v0, v1}, Lcom/android/calendar/CalendarView;->access$802(Lcom/android/calendar/CalendarView;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 1313
    iget-object v0, p0, Lcom/android/calendar/CalendarView$3;->this$0:Lcom/android/calendar/CalendarView;

    #setter for: Lcom/android/calendar/CalendarView;->mRemeasure:Z
    invoke-static {v0, v2}, Lcom/android/calendar/CalendarView;->access$902(Lcom/android/calendar/CalendarView;Z)Z

    .line 1314
    iget-object v0, p0, Lcom/android/calendar/CalendarView$3;->this$0:Lcom/android/calendar/CalendarView;

    #setter for: Lcom/android/calendar/CalendarView;->mRedrawScreen:Z
    invoke-static {v0, v2}, Lcom/android/calendar/CalendarView;->access$1002(Lcom/android/calendar/CalendarView;Z)Z

    .line 1315
    iget-object v0, p0, Lcom/android/calendar/CalendarView$3;->this$0:Lcom/android/calendar/CalendarView;

    #setter for: Lcom/android/calendar/CalendarView;->mComputeSelectedEvents:Z
    invoke-static {v0, v2}, Lcom/android/calendar/CalendarView;->access$1102(Lcom/android/calendar/CalendarView;Z)Z

    .line 1316
    iget-object v0, p0, Lcom/android/calendar/CalendarView$3;->this$0:Lcom/android/calendar/CalendarView;

    #calls: Lcom/android/calendar/CalendarView;->recalc()V
    invoke-static {v0}, Lcom/android/calendar/CalendarView;->access$300(Lcom/android/calendar/CalendarView;)V

    .line 1317
    iget-object v0, p0, Lcom/android/calendar/CalendarView$3;->this$0:Lcom/android/calendar/CalendarView;

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mParentActivity:Lcom/android/calendar/CalendarActivity;

    invoke-virtual {v0}, Lcom/android/calendar/CalendarActivity;->stopProgressSpinner()V

    .line 1318
    iget-object v0, p0, Lcom/android/calendar/CalendarView$3;->this$0:Lcom/android/calendar/CalendarView;

    invoke-virtual {v0}, Lcom/android/calendar/CalendarView;->invalidate()V

    .line 1319
    return-void
.end method
