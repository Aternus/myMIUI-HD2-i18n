.class Lcom/android/calendar/CalendarView$ContextMenuHandler;
.super Ljava/lang/Object;
.source "CalendarView.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/CalendarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContextMenuHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/CalendarView;


# direct methods
.method private constructor <init>(Lcom/android/calendar/CalendarView;)V
    .locals 0
    .parameter

    .prologue
    .line 3003
    iput-object p1, p0, Lcom/android/calendar/CalendarView$ContextMenuHandler;->this$0:Lcom/android/calendar/CalendarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/calendar/CalendarView;Lcom/android/calendar/CalendarView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3003
    invoke-direct {p0, p1}, Lcom/android/calendar/CalendarView$ContextMenuHandler;-><init>(Lcom/android/calendar/CalendarView;)V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 21
    .parameter "item"

    .prologue
    .line 3005
    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 3064
    :pswitch_0
    const/4 v4, 0x0

    .line 3067
    :goto_0
    return v4

    .line 3007
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView$ContextMenuHandler;->this$0:Lcom/android/calendar/CalendarView;

    move-object v4, v0

    #getter for: Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;
    invoke-static {v4}, Lcom/android/calendar/CalendarView;->access$1300(Lcom/android/calendar/CalendarView;)Lcom/android/calendar/Event;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 3008
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView$ContextMenuHandler;->this$0:Lcom/android/calendar/CalendarView;

    move-object v4, v0

    #getter for: Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;
    invoke-static {v4}, Lcom/android/calendar/CalendarView;->access$1300(Lcom/android/calendar/CalendarView;)Lcom/android/calendar/Event;

    move-result-object v4

    iget-wide v9, v4, Lcom/android/calendar/Event;->id:J

    .line 3009
    .local v9, id:J
    sget-object v4, Landroid/provider/Calendar$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4, v9, v10}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v14

    .line 3010
    .local v14, eventUri:Landroid/net/Uri;
    new-instance v15, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v15, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3011
    .local v15, intent:Landroid/content/Intent;
    invoke-virtual {v15, v14}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 3012
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView$ContextMenuHandler;->this$0:Lcom/android/calendar/CalendarView;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/calendar/CalendarView;->mParentActivity:Lcom/android/calendar/CalendarActivity;

    const-class v5, Lcom/android/calendar/EventInfoActivity;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v15, v4, v5}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 3013
    const-string v4, "beginTime"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView$ContextMenuHandler;->this$0:Lcom/android/calendar/CalendarView;

    move-object v5, v0

    #getter for: Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;
    invoke-static {v5}, Lcom/android/calendar/CalendarView;->access$1300(Lcom/android/calendar/CalendarView;)Lcom/android/calendar/Event;

    move-result-object v5

    move-object v0, v5

    iget-wide v0, v0, Lcom/android/calendar/Event;->startMillis:J

    move-wide/from16 v19, v0

    move-object v0, v15

    move-object v1, v4

    move-wide/from16 v2, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 3014
    const-string v4, "endTime"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView$ContextMenuHandler;->this$0:Lcom/android/calendar/CalendarView;

    move-object v5, v0

    #getter for: Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;
    invoke-static {v5}, Lcom/android/calendar/CalendarView;->access$1300(Lcom/android/calendar/CalendarView;)Lcom/android/calendar/Event;

    move-result-object v5

    move-object v0, v5

    iget-wide v0, v0, Lcom/android/calendar/Event;->endMillis:J

    move-wide/from16 v19, v0

    move-object v0, v15

    move-object v1, v4

    move-wide/from16 v2, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 3015
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView$ContextMenuHandler;->this$0:Lcom/android/calendar/CalendarView;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/calendar/CalendarView;->mParentActivity:Lcom/android/calendar/CalendarActivity;

    invoke-virtual {v4, v15}, Lcom/android/calendar/CalendarActivity;->startActivity(Landroid/content/Intent;)V

    .line 3067
    .end local v9           #id:J
    .end local v14           #eventUri:Landroid/net/Uri;
    .end local v15           #intent:Landroid/content/Intent;
    :cond_0
    :goto_1
    const/4 v4, 0x1

    goto :goto_0

    .line 3020
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView$ContextMenuHandler;->this$0:Lcom/android/calendar/CalendarView;

    move-object v4, v0

    #getter for: Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;
    invoke-static {v4}, Lcom/android/calendar/CalendarView;->access$1300(Lcom/android/calendar/CalendarView;)Lcom/android/calendar/Event;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 3021
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView$ContextMenuHandler;->this$0:Lcom/android/calendar/CalendarView;

    move-object v4, v0

    #getter for: Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;
    invoke-static {v4}, Lcom/android/calendar/CalendarView;->access$1300(Lcom/android/calendar/CalendarView;)Lcom/android/calendar/Event;

    move-result-object v4

    iget-wide v9, v4, Lcom/android/calendar/Event;->id:J

    .line 3022
    .restart local v9       #id:J
    sget-object v4, Landroid/provider/Calendar$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4, v9, v10}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v14

    .line 3023
    .restart local v14       #eventUri:Landroid/net/Uri;
    new-instance v15, Landroid/content/Intent;

    const-string v4, "android.intent.action.EDIT"

    invoke-direct {v15, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3024
    .restart local v15       #intent:Landroid/content/Intent;
    invoke-virtual {v15, v14}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 3025
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView$ContextMenuHandler;->this$0:Lcom/android/calendar/CalendarView;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/calendar/CalendarView;->mParentActivity:Lcom/android/calendar/CalendarActivity;

    const-class v5, Lcom/android/calendar/EditEvent;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v15, v4, v5}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 3026
    const-string v4, "beginTime"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView$ContextMenuHandler;->this$0:Lcom/android/calendar/CalendarView;

    move-object v5, v0

    #getter for: Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;
    invoke-static {v5}, Lcom/android/calendar/CalendarView;->access$1300(Lcom/android/calendar/CalendarView;)Lcom/android/calendar/Event;

    move-result-object v5

    move-object v0, v5

    iget-wide v0, v0, Lcom/android/calendar/Event;->startMillis:J

    move-wide/from16 v19, v0

    move-object v0, v15

    move-object v1, v4

    move-wide/from16 v2, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 3027
    const-string v4, "endTime"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView$ContextMenuHandler;->this$0:Lcom/android/calendar/CalendarView;

    move-object v5, v0

    #getter for: Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;
    invoke-static {v5}, Lcom/android/calendar/CalendarView;->access$1300(Lcom/android/calendar/CalendarView;)Lcom/android/calendar/Event;

    move-result-object v5

    move-object v0, v5

    iget-wide v0, v0, Lcom/android/calendar/Event;->endMillis:J

    move-wide/from16 v19, v0

    move-object v0, v15

    move-object v1, v4

    move-wide/from16 v2, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 3028
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView$ContextMenuHandler;->this$0:Lcom/android/calendar/CalendarView;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/calendar/CalendarView;->mParentActivity:Lcom/android/calendar/CalendarActivity;

    invoke-virtual {v4, v15}, Lcom/android/calendar/CalendarActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 3033
    .end local v9           #id:J
    .end local v14           #eventUri:Landroid/net/Uri;
    .end local v15           #intent:Landroid/content/Intent;
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView$ContextMenuHandler;->this$0:Lcom/android/calendar/CalendarView;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/calendar/CalendarView;->getSelectedTimeInMillis()J

    move-result-wide v17

    .line 3034
    .local v17, startMillis:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView$ContextMenuHandler;->this$0:Lcom/android/calendar/CalendarView;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/calendar/CalendarView;->mParentActivity:Lcom/android/calendar/CalendarActivity;

    const-class v5, Lcom/android/calendar/DayActivity;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    move-object v0, v4

    move-object v1, v5

    move-wide/from16 v2, v17

    invoke-static {v0, v1, v2, v3}, Lcom/android/calendar/Utils;->startActivity(Landroid/content/Context;Ljava/lang/String;J)V

    goto/16 :goto_1

    .line 3038
    .end local v17           #startMillis:J
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView$ContextMenuHandler;->this$0:Lcom/android/calendar/CalendarView;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/calendar/CalendarView;->getSelectedTimeInMillis()J

    move-result-wide v17

    .line 3039
    .restart local v17       #startMillis:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView$ContextMenuHandler;->this$0:Lcom/android/calendar/CalendarView;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/calendar/CalendarView;->mParentActivity:Lcom/android/calendar/CalendarActivity;

    const-class v5, Lcom/android/calendar/AgendaActivity;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    move-object v0, v4

    move-object v1, v5

    move-wide/from16 v2, v17

    invoke-static {v0, v1, v2, v3}, Lcom/android/calendar/Utils;->startActivity(Landroid/content/Context;Ljava/lang/String;J)V

    goto/16 :goto_1

    .line 3043
    .end local v17           #startMillis:J
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView$ContextMenuHandler;->this$0:Lcom/android/calendar/CalendarView;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/calendar/CalendarView;->getSelectedTimeInMillis()J

    move-result-wide v17

    .line 3044
    .restart local v17       #startMillis:J
    const-wide/32 v19, 0x36ee80

    add-long v12, v17, v19

    .line 3045
    .local v12, endMillis:J
    new-instance v15, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v15, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3046
    .restart local v15       #intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView$ContextMenuHandler;->this$0:Lcom/android/calendar/CalendarView;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/calendar/CalendarView;->mParentActivity:Lcom/android/calendar/CalendarActivity;

    const-class v5, Lcom/android/calendar/EditEvent;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v15, v4, v5}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 3047
    const-string v4, "beginTime"

    move-object v0, v15

    move-object v1, v4

    move-wide/from16 v2, v17

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 3048
    const-string v4, "endTime"

    invoke-virtual {v15, v4, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 3049
    const-string v4, "allDay"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView$ContextMenuHandler;->this$0:Lcom/android/calendar/CalendarView;

    move-object v5, v0

    iget-boolean v5, v5, Lcom/android/calendar/CalendarView;->mSelectionAllDay:Z

    invoke-virtual {v15, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3050
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView$ContextMenuHandler;->this$0:Lcom/android/calendar/CalendarView;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/calendar/CalendarView;->mParentActivity:Lcom/android/calendar/CalendarActivity;

    invoke-virtual {v4, v15}, Lcom/android/calendar/CalendarActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 3054
    .end local v12           #endMillis:J
    .end local v15           #intent:Landroid/content/Intent;
    .end local v17           #startMillis:J
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView$ContextMenuHandler;->this$0:Lcom/android/calendar/CalendarView;

    move-object v4, v0

    #getter for: Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;
    invoke-static {v4}, Lcom/android/calendar/CalendarView;->access$1300(Lcom/android/calendar/CalendarView;)Lcom/android/calendar/Event;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 3055
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView$ContextMenuHandler;->this$0:Lcom/android/calendar/CalendarView;

    move-object v4, v0

    #getter for: Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;
    invoke-static {v4}, Lcom/android/calendar/CalendarView;->access$1300(Lcom/android/calendar/CalendarView;)Lcom/android/calendar/Event;

    move-result-object v16

    .line 3056
    .local v16, selectedEvent:Lcom/android/calendar/Event;
    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/android/calendar/Event;->startMillis:J

    move-wide v5, v0

    .line 3057
    .local v5, begin:J
    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/android/calendar/Event;->endMillis:J

    move-wide v7, v0

    .line 3058
    .local v7, end:J
    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/android/calendar/Event;->id:J

    move-wide v9, v0

    .line 3059
    .restart local v9       #id:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView$ContextMenuHandler;->this$0:Lcom/android/calendar/CalendarView;

    move-object v4, v0

    #getter for: Lcom/android/calendar/CalendarView;->mDeleteEventHelper:Lcom/android/calendar/DeleteEventHelper;
    invoke-static {v4}, Lcom/android/calendar/CalendarView;->access$1400(Lcom/android/calendar/CalendarView;)Lcom/android/calendar/DeleteEventHelper;

    move-result-object v4

    const/4 v11, -0x1

    invoke-virtual/range {v4 .. v11}, Lcom/android/calendar/DeleteEventHelper;->delete(JJJI)V

    goto/16 :goto_1

    .line 3005
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_5
        :pswitch_2
        :pswitch_6
    .end packed-switch
.end method
