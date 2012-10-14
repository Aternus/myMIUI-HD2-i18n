.class Lcom/android/calendar/AlertActivity$2;
.super Ljava/lang/Object;
.source "AlertActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/AlertActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/AlertActivity;


# direct methods
.method constructor <init>(Lcom/android/calendar/AlertActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 264
    iput-object p1, p0, Lcom/android/calendar/AlertActivity$2;->this$0:Lcom/android/calendar/AlertActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 18
    .parameter "v"

    .prologue
    .line 266
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    const-wide/32 v16, 0x493e0

    add-long v7, v14, v16

    .line 268
    .local v7, alarmTime:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AlertActivity$2;->this$0:Lcom/android/calendar/AlertActivity;

    move-object v9, v0

    const-string v10, "notification"

    invoke-virtual {v9, v10}, Lcom/android/calendar/AlertActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/NotificationManager;

    .line 270
    .local v10, nm:Landroid/app/NotificationManager;
    const/4 v9, 0x0

    invoke-virtual {v10, v9}, Landroid/app/NotificationManager;->cancel(I)V

    .line 272
    const-wide/16 v11, 0x0

    .line 273
    .local v11, scheduleAlarmTime:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AlertActivity$2;->this$0:Lcom/android/calendar/AlertActivity;

    move-object v9, v0

    #getter for: Lcom/android/calendar/AlertActivity;->mCursor:Landroid/database/Cursor;
    invoke-static {v9}, Lcom/android/calendar/AlertActivity;->access$000(Lcom/android/calendar/AlertActivity;)Landroid/database/Cursor;

    move-result-object v9

    const/4 v10, -0x1

    invoke-interface {v9, v10}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 274
    .end local v10           #nm:Landroid/app/NotificationManager;
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AlertActivity$2;->this$0:Lcom/android/calendar/AlertActivity;

    move-object v9, v0

    #getter for: Lcom/android/calendar/AlertActivity;->mCursor:Landroid/database/Cursor;
    invoke-static {v9}, Lcom/android/calendar/AlertActivity;->access$000(Lcom/android/calendar/AlertActivity;)Landroid/database/Cursor;

    move-result-object v9

    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 275
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AlertActivity$2;->this$0:Lcom/android/calendar/AlertActivity;

    move-object v9, v0

    #getter for: Lcom/android/calendar/AlertActivity;->mCursor:Landroid/database/Cursor;
    invoke-static {v9}, Lcom/android/calendar/AlertActivity;->access$000(Lcom/android/calendar/AlertActivity;)Landroid/database/Cursor;

    move-result-object v9

    const/4 v10, 0x6

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 276
    .local v1, eventId:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AlertActivity$2;->this$0:Lcom/android/calendar/AlertActivity;

    move-object v9, v0

    #getter for: Lcom/android/calendar/AlertActivity;->mCursor:Landroid/database/Cursor;
    invoke-static {v9}, Lcom/android/calendar/AlertActivity;->access$000(Lcom/android/calendar/AlertActivity;)Landroid/database/Cursor;

    move-result-object v9

    const/4 v10, 0x4

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 277
    .local v3, begin:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AlertActivity$2;->this$0:Lcom/android/calendar/AlertActivity;

    move-object v9, v0

    #getter for: Lcom/android/calendar/AlertActivity;->mCursor:Landroid/database/Cursor;
    invoke-static {v9}, Lcom/android/calendar/AlertActivity;->access$000(Lcom/android/calendar/AlertActivity;)Landroid/database/Cursor;

    move-result-object v9

    const/4 v10, 0x5

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 282
    .local v5, end:J
    const/4 v9, 0x0

    #calls: Lcom/android/calendar/AlertActivity;->makeContentValues(JJJJI)Landroid/content/ContentValues;
    invoke-static/range {v1 .. v9}, Lcom/android/calendar/AlertActivity;->access$500(JJJJI)Landroid/content/ContentValues;

    move-result-object v13

    .line 286
    .local v13, values:Landroid/content/ContentValues;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AlertActivity$2;->this$0:Lcom/android/calendar/AlertActivity;

    move-object v9, v0

    #getter for: Lcom/android/calendar/AlertActivity;->mCursor:Landroid/database/Cursor;
    invoke-static {v9}, Lcom/android/calendar/AlertActivity;->access$000(Lcom/android/calendar/AlertActivity;)Landroid/database/Cursor;

    move-result-object v9

    invoke-interface {v9}, Landroid/database/Cursor;->isLast()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 287
    move-wide v11, v7

    .line 289
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AlertActivity$2;->this$0:Lcom/android/calendar/AlertActivity;

    move-object v9, v0

    #getter for: Lcom/android/calendar/AlertActivity;->mQueryHandler:Lcom/android/calendar/AlertActivity$QueryHandler;
    invoke-static {v9}, Lcom/android/calendar/AlertActivity;->access$600(Lcom/android/calendar/AlertActivity;)Lcom/android/calendar/AlertActivity$QueryHandler;

    move-result-object v9

    const/4 v10, 0x0

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    sget-object v15, Landroid/provider/Calendar$CalendarAlerts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v9, v10, v14, v15, v13}, Lcom/android/calendar/AlertActivity$QueryHandler;->startInsert(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;)V

    goto :goto_0

    .line 292
    .end local v1           #eventId:J
    .end local v3           #begin:J
    .end local v5           #end:J
    .end local v13           #values:Landroid/content/ContentValues;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AlertActivity$2;->this$0:Lcom/android/calendar/AlertActivity;

    move-object v9, v0

    #calls: Lcom/android/calendar/AlertActivity;->dismissFiredAlarms()V
    invoke-static {v9}, Lcom/android/calendar/AlertActivity;->access$700(Lcom/android/calendar/AlertActivity;)V

    .line 294
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AlertActivity$2;->this$0:Lcom/android/calendar/AlertActivity;

    move-object v9, v0

    invoke-virtual {v9}, Lcom/android/calendar/AlertActivity;->finish()V

    .line 295
    return-void
.end method
