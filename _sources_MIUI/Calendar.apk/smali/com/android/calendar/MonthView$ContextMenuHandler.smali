.class Lcom/android/calendar/MonthView$ContextMenuHandler;
.super Ljava/lang/Object;
.source "MonthView.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/MonthView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContextMenuHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/MonthView;


# direct methods
.method private constructor <init>(Lcom/android/calendar/MonthView;)V
    .locals 0
    .parameter

    .prologue
    .line 454
    iput-object p1, p0, Lcom/android/calendar/MonthView$ContextMenuHandler;->this$0:Lcom/android/calendar/MonthView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/calendar/MonthView;Lcom/android/calendar/MonthView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 454
    invoke-direct {p0, p1}, Lcom/android/calendar/MonthView$ContextMenuHandler;-><init>(Lcom/android/calendar/MonthView;)V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 7
    .parameter "item"

    .prologue
    .line 456
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 478
    :pswitch_0
    const/4 v5, 0x0

    .line 481
    :goto_0
    return v5

    .line 458
    :pswitch_1
    iget-object v5, p0, Lcom/android/calendar/MonthView$ContextMenuHandler;->this$0:Lcom/android/calendar/MonthView;

    invoke-virtual {v5}, Lcom/android/calendar/MonthView;->getSelectedTimeInMillis()J

    move-result-wide v3

    .line 459
    .local v3, startMillis:J
    iget-object v5, p0, Lcom/android/calendar/MonthView$ContextMenuHandler;->this$0:Lcom/android/calendar/MonthView;

    #getter for: Lcom/android/calendar/MonthView;->mParentActivity:Lcom/android/calendar/MonthActivity;
    invoke-static {v5}, Lcom/android/calendar/MonthView;->access$1000(Lcom/android/calendar/MonthView;)Lcom/android/calendar/MonthActivity;

    move-result-object v5

    const-class v6, Lcom/android/calendar/DayActivity;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v3, v4}, Lcom/android/calendar/Utils;->startActivity(Landroid/content/Context;Ljava/lang/String;J)V

    .line 481
    :goto_1
    const/4 v5, 0x1

    goto :goto_0

    .line 463
    .end local v3           #startMillis:J
    :pswitch_2
    iget-object v5, p0, Lcom/android/calendar/MonthView$ContextMenuHandler;->this$0:Lcom/android/calendar/MonthView;

    invoke-virtual {v5}, Lcom/android/calendar/MonthView;->getSelectedTimeInMillis()J

    move-result-wide v3

    .line 464
    .restart local v3       #startMillis:J
    iget-object v5, p0, Lcom/android/calendar/MonthView$ContextMenuHandler;->this$0:Lcom/android/calendar/MonthView;

    #getter for: Lcom/android/calendar/MonthView;->mParentActivity:Lcom/android/calendar/MonthActivity;
    invoke-static {v5}, Lcom/android/calendar/MonthView;->access$1000(Lcom/android/calendar/MonthView;)Lcom/android/calendar/MonthActivity;

    move-result-object v5

    const-class v6, Lcom/android/calendar/AgendaActivity;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v3, v4}, Lcom/android/calendar/Utils;->startActivity(Landroid/content/Context;Ljava/lang/String;J)V

    goto :goto_1

    .line 468
    .end local v3           #startMillis:J
    :pswitch_3
    iget-object v5, p0, Lcom/android/calendar/MonthView$ContextMenuHandler;->this$0:Lcom/android/calendar/MonthView;

    invoke-virtual {v5}, Lcom/android/calendar/MonthView;->getSelectedTimeInMillis()J

    move-result-wide v3

    .line 469
    .restart local v3       #startMillis:J
    const-wide/32 v5, 0x36ee80

    add-long v0, v3, v5

    .line 470
    .local v0, endMillis:J
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 471
    .local v2, intent:Landroid/content/Intent;
    iget-object v5, p0, Lcom/android/calendar/MonthView$ContextMenuHandler;->this$0:Lcom/android/calendar/MonthView;

    #getter for: Lcom/android/calendar/MonthView;->mParentActivity:Lcom/android/calendar/MonthActivity;
    invoke-static {v5}, Lcom/android/calendar/MonthView;->access$1000(Lcom/android/calendar/MonthView;)Lcom/android/calendar/MonthActivity;

    move-result-object v5

    const-class v6, Lcom/android/calendar/EditEvent;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 472
    const-string v5, "beginTime"

    invoke-virtual {v2, v5, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 473
    const-string v5, "endTime"

    invoke-virtual {v2, v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 474
    iget-object v5, p0, Lcom/android/calendar/MonthView$ContextMenuHandler;->this$0:Lcom/android/calendar/MonthView;

    #getter for: Lcom/android/calendar/MonthView;->mParentActivity:Lcom/android/calendar/MonthActivity;
    invoke-static {v5}, Lcom/android/calendar/MonthView;->access$1000(Lcom/android/calendar/MonthView;)Lcom/android/calendar/MonthActivity;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/android/calendar/MonthActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 456
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
