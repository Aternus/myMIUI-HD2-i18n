.class final Lcom/android/contacts/TwelveKeyDialer$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "TwelveKeyDialer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/TwelveKeyDialer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "QueryHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/TwelveKeyDialer$QueryHandler$CatchingWorkerHandler;
    }
.end annotation


# instance fields
.field private final mActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/contacts/TwelveKeyDialer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 444
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 445
    new-instance v0, Ljava/lang/ref/WeakReference;

    check-cast p1, Lcom/android/contacts/TwelveKeyDialer;

    .end local p1
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/contacts/TwelveKeyDialer$QueryHandler;->mActivity:Ljava/lang/ref/WeakReference;

    .line 446
    return-void
.end method


# virtual methods
.method protected createHandler(Landroid/os/Looper;)Landroid/os/Handler;
    .locals 1
    .parameter "looper"

    .prologue
    .line 440
    new-instance v0, Lcom/android/contacts/TwelveKeyDialer$QueryHandler$CatchingWorkerHandler;

    invoke-direct {v0, p0, p1}, Lcom/android/contacts/TwelveKeyDialer$QueryHandler$CatchingWorkerHandler;-><init>(Lcom/android/contacts/TwelveKeyDialer$QueryHandler;Landroid/os/Looper;)V

    return-object v0
.end method

.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 6
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 450
    iget-object v4, p0, Lcom/android/contacts/TwelveKeyDialer$QueryHandler;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/TwelveKeyDialer;

    .line 452
    .local v0, activity:Lcom/android/contacts/TwelveKeyDialer;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/contacts/TwelveKeyDialer;->isFinishing()Z

    move-result v4

    if-nez v4, :cond_0

    .line 453
    #calls: Lcom/android/contacts/TwelveKeyDialer;->isDigitsEmpty()Z
    invoke-static {v0}, Lcom/android/contacts/TwelveKeyDialer;->access$000(Lcom/android/contacts/TwelveKeyDialer;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 454
    #getter for: Lcom/android/contacts/TwelveKeyDialer;->mEmptyText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/contacts/TwelveKeyDialer;->access$100(Lcom/android/contacts/TwelveKeyDialer;)Landroid/widget/TextView;

    move-result-object v4

    const v5, 0x7f0b01a8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 460
    :cond_0
    :goto_0
    if-nez p3, :cond_2

    .line 487
    :goto_1
    return-void

    .line 456
    :cond_1
    #getter for: Lcom/android/contacts/TwelveKeyDialer;->mEmptyText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/contacts/TwelveKeyDialer;->access$100(Lcom/android/contacts/TwelveKeyDialer;)Landroid/widget/TextView;

    move-result-object v4

    const v5, 0x7f0b01a9

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 464
    :cond_2
    const/16 v4, 0x35

    if-ne p1, v4, :cond_5

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/android/contacts/TwelveKeyDialer;->isFinishing()Z

    move-result v4

    if-nez v4, :cond_5

    .line 465
    #calls: Lcom/android/contacts/TwelveKeyDialer;->isDigitsEmpty()Z
    invoke-static {v0}, Lcom/android/contacts/TwelveKeyDialer;->access$000(Lcom/android/contacts/TwelveKeyDialer;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_4

    .line 467
    const-string v2, ""

    .line 469
    .local v2, number:Ljava/lang/String;
    :try_start_0
    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 470
    const/4 v4, 0x3

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 471
    invoke-static {v2}, Lcom/android/internal/telephony/CallerInfo;->getPresentation(Ljava/lang/String;)I

    move-result v3

    .line 472
    .local v3, presentation:I
    sget v4, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    if-eq v3, v4, :cond_3

    .line 474
    const-string v2, ""
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 479
    .end local v3           #presentation:I
    :cond_3
    :goto_2
    #setter for: Lcom/android/contacts/TwelveKeyDialer;->mDirectDialNumber:Ljava/lang/String;
    invoke-static {v0, v2}, Lcom/android/contacts/TwelveKeyDialer;->access$202(Lcom/android/contacts/TwelveKeyDialer;Ljava/lang/String;)Ljava/lang/String;

    .line 480
    #calls: Lcom/android/contacts/TwelveKeyDialer;->updateDialAndDeleteButtonEnabledState()V
    invoke-static {v0}, Lcom/android/contacts/TwelveKeyDialer;->access$300(Lcom/android/contacts/TwelveKeyDialer;)V

    .line 482
    .end local v2           #number:Ljava/lang/String;
    :cond_4
    #getter for: Lcom/android/contacts/TwelveKeyDialer;->mAdapter:Lcom/android/contacts/DialerListAdapter;
    invoke-static {v0}, Lcom/android/contacts/TwelveKeyDialer;->access$400(Lcom/android/contacts/TwelveKeyDialer;)Lcom/android/contacts/DialerListAdapter;

    move-result-object v4

    invoke-virtual {v4, p3}, Lcom/android/contacts/DialerListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 483
    #getter for: Lcom/android/contacts/TwelveKeyDialer;->mList:Landroid/widget/EditableListView;
    invoke-static {v0}, Lcom/android/contacts/TwelveKeyDialer;->access$500(Lcom/android/contacts/TwelveKeyDialer;)Landroid/widget/EditableListView;

    move-result-object v4

    #calls: Lcom/android/contacts/TwelveKeyDialer;->isDigitsEmpty()Z
    invoke-static {v0}, Lcom/android/contacts/TwelveKeyDialer;->access$000(Lcom/android/contacts/TwelveKeyDialer;)Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/EditableListView;->setEditable(Z)V

    goto :goto_1

    .line 476
    .restart local v2       #number:Ljava/lang/String;
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 477
    .local v1, e:Ljava/lang/RuntimeException;
    const-string v4, "TwelveKeyDialer"

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 485
    .end local v1           #e:Ljava/lang/RuntimeException;
    .end local v2           #number:Ljava/lang/String;
    :cond_5
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    goto :goto_1
.end method
