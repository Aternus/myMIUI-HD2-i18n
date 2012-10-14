.class Lcom/android/calendar/EditEvent$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "EditEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/EditEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/EditEvent;


# direct methods
.method public constructor <init>(Lcom/android/calendar/EditEvent;Landroid/content/ContentResolver;)V
    .locals 0
    .parameter
    .parameter "cr"

    .prologue
    .line 522
    iput-object p1, p0, Lcom/android/calendar/EditEvent$QueryHandler;->this$0:Lcom/android/calendar/EditEvent;

    .line 523
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 524
    return-void
.end method

.method private findDefaultCalendarPosition(Landroid/database/Cursor;)I
    .locals 7
    .parameter "calendarsCursor"

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 593
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-gtz v2, :cond_0

    move v2, v5

    .line 613
    :goto_0
    return v2

    .line 597
    :cond_0
    iget-object v2, p0, Lcom/android/calendar/EditEvent$QueryHandler;->this$0:Lcom/android/calendar/EditEvent;

    const-string v3, "preference_defaultCalendar"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/android/calendar/Utils;->getSharedPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 600
    .local v0, defaultCalendar:Ljava/lang/String;
    if-nez v0, :cond_1

    move v2, v6

    .line 601
    goto :goto_0

    .line 604
    :cond_1
    const/4 v1, 0x0

    .line 605
    .local v1, position:I
    invoke-interface {p1, v5}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 606
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 607
    iget-object v2, p0, Lcom/android/calendar/EditEvent$QueryHandler;->this$0:Lcom/android/calendar/EditEvent;

    #getter for: Lcom/android/calendar/EditEvent;->mCalendarsCursor:Landroid/database/Cursor;
    invoke-static {v2}, Lcom/android/calendar/EditEvent;->access$1000(Lcom/android/calendar/EditEvent;)Landroid/database/Cursor;

    move-result-object v2

    const/4 v3, 0x2

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v1

    .line 609
    goto :goto_0

    .line 611
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    move v2, v6

    .line 613
    goto :goto_0
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 7
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 529
    if-nez p3, :cond_1

    .line 589
    :cond_0
    :goto_0
    return-void

    .line 535
    :cond_1
    iget-object v4, p0, Lcom/android/calendar/EditEvent$QueryHandler;->this$0:Lcom/android/calendar/EditEvent;

    invoke-virtual {v4}, Lcom/android/calendar/EditEvent;->isFinishing()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 536
    iget-object v4, p0, Lcom/android/calendar/EditEvent$QueryHandler;->this$0:Lcom/android/calendar/EditEvent;

    invoke-virtual {v4, p3}, Lcom/android/calendar/EditEvent;->stopManagingCursor(Landroid/database/Cursor;)V

    .line 537
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 539
    :cond_2
    iget-object v4, p0, Lcom/android/calendar/EditEvent$QueryHandler;->this$0:Lcom/android/calendar/EditEvent;

    #setter for: Lcom/android/calendar/EditEvent;->mCalendarsCursor:Landroid/database/Cursor;
    invoke-static {v4, p3}, Lcom/android/calendar/EditEvent;->access$1002(Lcom/android/calendar/EditEvent;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 540
    iget-object v4, p0, Lcom/android/calendar/EditEvent$QueryHandler;->this$0:Lcom/android/calendar/EditEvent;

    invoke-virtual {v4, p3}, Lcom/android/calendar/EditEvent;->startManagingCursor(Landroid/database/Cursor;)V

    .line 543
    iget-object v4, p0, Lcom/android/calendar/EditEvent$QueryHandler;->this$0:Lcom/android/calendar/EditEvent;

    invoke-virtual {v4}, Lcom/android/calendar/EditEvent;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/4 v5, 0x5

    const/4 v6, -0x2

    invoke-virtual {v4, v5, v6}, Landroid/view/Window;->setFeatureInt(II)V

    .line 548
    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-nez v4, :cond_4

    .line 550
    iget-object v4, p0, Lcom/android/calendar/EditEvent$QueryHandler;->this$0:Lcom/android/calendar/EditEvent;

    #getter for: Lcom/android/calendar/EditEvent;->mSaveAfterQueryComplete:Z
    invoke-static {v4}, Lcom/android/calendar/EditEvent;->access$1100(Lcom/android/calendar/EditEvent;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 551
    iget-object v4, p0, Lcom/android/calendar/EditEvent$QueryHandler;->this$0:Lcom/android/calendar/EditEvent;

    #getter for: Lcom/android/calendar/EditEvent;->mLoadingCalendarsDialog:Landroid/app/ProgressDialog;
    invoke-static {v4}, Lcom/android/calendar/EditEvent;->access$1200(Lcom/android/calendar/EditEvent;)Landroid/app/ProgressDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->cancel()V

    .line 556
    :cond_3
    iget-object v4, p0, Lcom/android/calendar/EditEvent$QueryHandler;->this$0:Lcom/android/calendar/EditEvent;

    invoke-static {v4}, Lcom/android/calendar/Utils;->suggestLogin(Landroid/content/Context;)V

    goto :goto_0

    .line 560
    :cond_4
    iget-object v4, p0, Lcom/android/calendar/EditEvent$QueryHandler;->this$0:Lcom/android/calendar/EditEvent;

    #getter for: Lcom/android/calendar/EditEvent;->mCalendarsCursor:Landroid/database/Cursor;
    invoke-static {v4}, Lcom/android/calendar/EditEvent;->access$1000(Lcom/android/calendar/EditEvent;)Landroid/database/Cursor;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/calendar/EditEvent$QueryHandler;->findDefaultCalendarPosition(Landroid/database/Cursor;)I

    move-result v1

    .line 563
    .local v1, defaultCalendarPosition:I
    new-instance v0, Lcom/android/calendar/EditEvent$CalendarsAdapter;

    iget-object v4, p0, Lcom/android/calendar/EditEvent$QueryHandler;->this$0:Lcom/android/calendar/EditEvent;

    iget-object v5, p0, Lcom/android/calendar/EditEvent$QueryHandler;->this$0:Lcom/android/calendar/EditEvent;

    #getter for: Lcom/android/calendar/EditEvent;->mCalendarsCursor:Landroid/database/Cursor;
    invoke-static {v5}, Lcom/android/calendar/EditEvent;->access$1000(Lcom/android/calendar/EditEvent;)Landroid/database/Cursor;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Lcom/android/calendar/EditEvent$CalendarsAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 564
    .local v0, adapter:Lcom/android/calendar/EditEvent$CalendarsAdapter;
    iget-object v4, p0, Lcom/android/calendar/EditEvent$QueryHandler;->this$0:Lcom/android/calendar/EditEvent;

    #getter for: Lcom/android/calendar/EditEvent;->mCalendarsSpinner:Landroid/widget/Spinner;
    invoke-static {v4}, Lcom/android/calendar/EditEvent;->access$1300(Lcom/android/calendar/EditEvent;)Landroid/widget/Spinner;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 565
    iget-object v4, p0, Lcom/android/calendar/EditEvent$QueryHandler;->this$0:Lcom/android/calendar/EditEvent;

    #getter for: Lcom/android/calendar/EditEvent;->mCalendarsSpinner:Landroid/widget/Spinner;
    invoke-static {v4}, Lcom/android/calendar/EditEvent;->access$1300(Lcom/android/calendar/EditEvent;)Landroid/widget/Spinner;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 566
    iget-object v4, p0, Lcom/android/calendar/EditEvent$QueryHandler;->this$0:Lcom/android/calendar/EditEvent;

    const/4 v5, 0x1

    #setter for: Lcom/android/calendar/EditEvent;->mCalendarsQueryComplete:Z
    invoke-static {v4, v5}, Lcom/android/calendar/EditEvent;->access$1402(Lcom/android/calendar/EditEvent;Z)Z

    .line 567
    iget-object v4, p0, Lcom/android/calendar/EditEvent$QueryHandler;->this$0:Lcom/android/calendar/EditEvent;

    #getter for: Lcom/android/calendar/EditEvent;->mSaveAfterQueryComplete:Z
    invoke-static {v4}, Lcom/android/calendar/EditEvent;->access$1100(Lcom/android/calendar/EditEvent;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 568
    iget-object v4, p0, Lcom/android/calendar/EditEvent$QueryHandler;->this$0:Lcom/android/calendar/EditEvent;

    #getter for: Lcom/android/calendar/EditEvent;->mLoadingCalendarsDialog:Landroid/app/ProgressDialog;
    invoke-static {v4}, Lcom/android/calendar/EditEvent;->access$1200(Lcom/android/calendar/EditEvent;)Landroid/app/ProgressDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->cancel()V

    .line 569
    iget-object v4, p0, Lcom/android/calendar/EditEvent$QueryHandler;->this$0:Lcom/android/calendar/EditEvent;

    #calls: Lcom/android/calendar/EditEvent;->save()Z
    invoke-static {v4}, Lcom/android/calendar/EditEvent;->access$1500(Lcom/android/calendar/EditEvent;)Z

    .line 570
    iget-object v4, p0, Lcom/android/calendar/EditEvent$QueryHandler;->this$0:Lcom/android/calendar/EditEvent;

    invoke-virtual {v4}, Lcom/android/calendar/EditEvent;->finish()V

    .line 578
    :cond_5
    iget-object v4, p0, Lcom/android/calendar/EditEvent$QueryHandler;->this$0:Lcom/android/calendar/EditEvent;

    #getter for: Lcom/android/calendar/EditEvent;->mHasAttendeeData:Z
    invoke-static {v4}, Lcom/android/calendar/EditEvent;->access$1600(Lcom/android/calendar/EditEvent;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {p3, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 579
    const/4 v4, 0x2

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 580
    .local v3, ownEmail:Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 581
    #calls: Lcom/android/calendar/EditEvent;->extractDomain(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v3}, Lcom/android/calendar/EditEvent;->access$1700(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 582
    .local v2, domain:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 583
    iget-object v4, p0, Lcom/android/calendar/EditEvent$QueryHandler;->this$0:Lcom/android/calendar/EditEvent;

    new-instance v5, Lcom/android/common/Rfc822Validator;

    invoke-direct {v5, v2}, Lcom/android/common/Rfc822Validator;-><init>(Ljava/lang/String;)V

    #setter for: Lcom/android/calendar/EditEvent;->mEmailValidator:Lcom/android/common/Rfc822Validator;
    invoke-static {v4, v5}, Lcom/android/calendar/EditEvent;->access$1802(Lcom/android/calendar/EditEvent;Lcom/android/common/Rfc822Validator;)Lcom/android/common/Rfc822Validator;

    .line 584
    iget-object v4, p0, Lcom/android/calendar/EditEvent$QueryHandler;->this$0:Lcom/android/calendar/EditEvent;

    #getter for: Lcom/android/calendar/EditEvent;->mAttendeesList:Landroid/widget/MultiAutoCompleteTextView;
    invoke-static {v4}, Lcom/android/calendar/EditEvent;->access$1900(Lcom/android/calendar/EditEvent;)Landroid/widget/MultiAutoCompleteTextView;

    move-result-object v4

    iget-object v5, p0, Lcom/android/calendar/EditEvent$QueryHandler;->this$0:Lcom/android/calendar/EditEvent;

    #getter for: Lcom/android/calendar/EditEvent;->mEmailValidator:Lcom/android/common/Rfc822Validator;
    invoke-static {v5}, Lcom/android/calendar/EditEvent;->access$1800(Lcom/android/calendar/EditEvent;)Lcom/android/common/Rfc822Validator;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/MultiAutoCompleteTextView;->setValidator(Landroid/widget/AutoCompleteTextView$Validator;)V

    goto/16 :goto_0
.end method
