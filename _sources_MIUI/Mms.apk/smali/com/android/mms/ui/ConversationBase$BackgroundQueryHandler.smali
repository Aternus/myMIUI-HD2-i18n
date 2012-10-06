.class public final Lcom/android/mms/ui/ConversationBase$BackgroundQueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "ConversationBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ConversationBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "BackgroundQueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ConversationBase;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/ConversationBase;Landroid/content/ContentResolver;)V
    .locals 0
    .parameter
    .parameter "contentResolver"

    .prologue
    .line 1390
    iput-object p1, p0, Lcom/android/mms/ui/ConversationBase$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ConversationBase;

    .line 1391
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 1392
    return-void
.end method


# virtual methods
.method protected onDeleteComplete(ILjava/lang/Object;I)V
    .locals 1
    .parameter "token"
    .parameter "cookie"
    .parameter "result"

    .prologue
    .line 1417
    iget-object v0, p0, Lcom/android/mms/ui/ConversationBase$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ConversationBase;

    invoke-static {v0}, Lcom/android/mms/ui/ConversationBase;->access$310(Lcom/android/mms/ui/ConversationBase;)I

    .line 1418
    iget-object v0, p0, Lcom/android/mms/ui/ConversationBase$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ConversationBase;

    #getter for: Lcom/android/mms/ui/ConversationBase;->mBatchDeleteTaskCount:I
    invoke-static {v0}, Lcom/android/mms/ui/ConversationBase;->access$300(Lcom/android/mms/ui/ConversationBase;)I

    move-result v0

    if-gtz v0, :cond_0

    .line 1419
    invoke-static {}, Lcom/android/mms/ui/ConversationBase;->access$400()Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1420
    invoke-static {}, Lcom/android/mms/ui/ConversationBase;->access$400()Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1421
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/mms/ui/ConversationBase;->access$402(Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 1424
    :cond_0
    return-void
.end method

.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 7
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1396
    if-nez p3, :cond_0

    .line 1413
    .end local p2
    :goto_0
    return-void

    .line 1398
    .restart local p2
    :cond_0
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 1404
    :sswitch_0
    check-cast p2, Ljava/lang/Long;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 1405
    .local v0, threadId:J
    new-instance v2, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;

    iget-object v3, p0, Lcom/android/mms/ui/ConversationBase$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ConversationBase;

    iget-object v3, v3, Lcom/android/mms/ui/ConversationBase;->mBackgroundQueryHandler:Lcom/android/mms/ui/ConversationBase$BackgroundQueryHandler;

    iget-object v4, p0, Lcom/android/mms/ui/ConversationBase$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ConversationBase;

    invoke-direct {v2, v0, v1, v3, v4}, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;-><init>(JLandroid/content/AsyncQueryHandler;Landroid/content/Context;)V

    const-wide/16 v3, -0x1

    cmp-long v3, v0, v3

    if-nez v3, :cond_1

    move v3, v6

    :goto_1
    if-eqz p3, :cond_2

    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_2

    move v4, v6

    :goto_2
    iget-object v5, p0, Lcom/android/mms/ui/ConversationBase$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ConversationBase;

    invoke-static {v2, v3, v4, v5}, Lcom/android/mms/ui/ConversationList;->confirmDeleteThreadDialog(Lcom/android/mms/ui/ConversationList$BaseDeleteThreadListener;ZZLandroid/content/Context;)V

    goto :goto_0

    .line 1400
    .end local v0           #threadId:J
    .restart local p2
    :sswitch_1
    iget-object v2, p0, Lcom/android/mms/ui/ConversationBase$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ConversationBase;

    #calls: Lcom/android/mms/ui/ConversationBase;->requestChangeCursor(Landroid/database/Cursor;)V
    invoke-static {v2, p3}, Lcom/android/mms/ui/ConversationBase;->access$2000(Lcom/android/mms/ui/ConversationBase;Landroid/database/Cursor;)V

    goto :goto_0

    .end local p2
    .restart local v0       #threadId:J
    :cond_1
    move v3, v5

    .line 1405
    goto :goto_1

    :cond_2
    move v4, v5

    goto :goto_2

    .line 1398
    :sswitch_data_0
    .sparse-switch
        0x70a -> :sswitch_0
        0x2537 -> :sswitch_1
    .end sparse-switch
.end method
