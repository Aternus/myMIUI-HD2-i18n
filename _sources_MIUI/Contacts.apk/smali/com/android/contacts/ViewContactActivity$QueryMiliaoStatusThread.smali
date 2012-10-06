.class Lcom/android/contacts/ViewContactActivity$QueryMiliaoStatusThread;
.super Ljava/lang/Thread;
.source "ViewContactActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/ViewContactActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryMiliaoStatusThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/ViewContactActivity;


# direct methods
.method private constructor <init>(Lcom/android/contacts/ViewContactActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 619
    iput-object p1, p0, Lcom/android/contacts/ViewContactActivity$QueryMiliaoStatusThread;->this$0:Lcom/android/contacts/ViewContactActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/ViewContactActivity;Lcom/android/contacts/ViewContactActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 619
    invoke-direct {p0, p1}, Lcom/android/contacts/ViewContactActivity$QueryMiliaoStatusThread;-><init>(Lcom/android/contacts/ViewContactActivity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 623
    :try_start_0
    iget-object v1, p0, Lcom/android/contacts/ViewContactActivity$QueryMiliaoStatusThread;->this$0:Lcom/android/contacts/ViewContactActivity;

    invoke-virtual {v1}, Lcom/android/contacts/ViewContactActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 626
    .local v0, resolver:Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/android/contacts/ViewContactActivity$QueryMiliaoStatusThread;->this$0:Lcom/android/contacts/ViewContactActivity;

    #getter for: Lcom/android/contacts/ViewContactActivity;->miliaoEntries:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/contacts/ViewContactActivity;->access$400(Lcom/android/contacts/ViewContactActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/contacts/ViewContactActivity$MiLiaoEntry;

    .line 627
    .local v8, entry:Lcom/android/contacts/ViewContactActivity$MiLiaoEntry;
    sget-object v1, Lcom/android/contacts/ViewContactActivity;->MILIAO_STATUS_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    iget-object v3, v8, Lcom/android/contacts/ViewContactActivity$MiLiaoEntry;->account:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 630
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 632
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 633
    const-string v1, "isOnLine"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v8, Lcom/android/contacts/ViewContactActivity$MiLiaoEntry;->isOnline:Z

    .line 635
    const-string v1, "onLineStatus"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v8, Lcom/android/contacts/ViewContactActivity$MiLiaoEntry;->onlineStatus:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 639
    :cond_1
    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 643
    :cond_2
    sget-object v1, Lcom/android/contacts/ViewContactActivity;->MILIAO_SIGNATURE_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    iget-object v3, p0, Lcom/android/contacts/ViewContactActivity$QueryMiliaoStatusThread;->this$0:Lcom/android/contacts/ViewContactActivity;

    #getter for: Lcom/android/contacts/ViewContactActivity;->miliaoEntries:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/contacts/ViewContactActivity;->access$400(Lcom/android/contacts/ViewContactActivity;)Ljava/util/ArrayList;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/ViewContactActivity$MiLiaoEntry;

    iget-object v3, v3, Lcom/android/contacts/ViewContactActivity$MiLiaoEntry;->account:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v6

    .line 646
    if-eqz v6, :cond_0

    .line 648
    :try_start_3
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 649
    const-string v1, "signature"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v8, Lcom/android/contacts/ViewContactActivity$MiLiaoEntry;->signature:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 652
    :cond_3
    :try_start_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .line 687
    .end local v0           #resolver:Landroid/content/ContentResolver;
    .end local v6           #c:Landroid/database/Cursor;
    .end local v8           #entry:Lcom/android/contacts/ViewContactActivity$MiLiaoEntry;
    .end local v9           #i$:Ljava/util/Iterator;
    :catch_0
    move-exception v1

    move-object v7, v1

    .line 688
    .local v7, e:Ljava/lang/Exception;
    const-string v1, "ViewContact"

    const-string v2, "query miliao info error"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    .end local v7           #e:Ljava/lang/Exception;
    :goto_1
    return-void

    .line 639
    .restart local v0       #resolver:Landroid/content/ContentResolver;
    .restart local v6       #c:Landroid/database/Cursor;
    .restart local v8       #entry:Lcom/android/contacts/ViewContactActivity$MiLiaoEntry;
    .restart local v9       #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v1

    :try_start_5
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v1

    .line 652
    :catchall_1
    move-exception v1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v1

    .line 657
    .end local v6           #c:Landroid/database/Cursor;
    .end local v8           #entry:Lcom/android/contacts/ViewContactActivity$MiLiaoEntry;
    :cond_4
    iget-object v1, p0, Lcom/android/contacts/ViewContactActivity$QueryMiliaoStatusThread;->this$0:Lcom/android/contacts/ViewContactActivity;

    new-instance v2, Lcom/android/contacts/ViewContactActivity$QueryMiliaoStatusThread$1;

    invoke-direct {v2, p0}, Lcom/android/contacts/ViewContactActivity$QueryMiliaoStatusThread$1;-><init>(Lcom/android/contacts/ViewContactActivity$QueryMiliaoStatusThread;)V

    invoke-virtual {v1, v2}, Lcom/android/contacts/ViewContactActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_1
.end method
