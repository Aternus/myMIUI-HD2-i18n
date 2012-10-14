.class Lcom/android/phone/EditFdnContactScreen$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "EditFdnContactScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/EditFdnContactScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/EditFdnContactScreen;


# direct methods
.method public constructor <init>(Lcom/android/phone/EditFdnContactScreen;Landroid/content/ContentResolver;)V
    .locals 1
    .parameter
    .parameter "cr"

    .prologue
    .line 361
    iput-object p1, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/EditFdnContactScreen;

    .line 362
    const/4 v0, 0x1

    invoke-direct {p0, p2, v0}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;Z)V

    .line 363
    return-void
.end method


# virtual methods
.method protected onDeleteComplete(ILjava/lang/Object;I)V
    .locals 4
    .parameter "token"
    .parameter "cookie"
    .parameter "result"

    .prologue
    const/4 v3, 0x0

    .line 387
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/EditFdnContactScreen;

    #calls: Lcom/android/phone/EditFdnContactScreen;->dismissProgress()V
    invoke-static {v0}, Lcom/android/phone/EditFdnContactScreen;->access$700(Lcom/android/phone/EditFdnContactScreen;)V

    .line 388
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/EditFdnContactScreen;

    sget-object v1, Lcom/android/phone/EditFdnContactScreen$Actions;->Delete:Lcom/android/phone/EditFdnContactScreen$Actions;

    if-lez p3, :cond_0

    const/4 v2, 0x1

    :goto_0
    #calls: Lcom/android/phone/EditFdnContactScreen;->handleResult(Lcom/android/phone/EditFdnContactScreen$Actions;ZZ)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/phone/EditFdnContactScreen;->access$800(Lcom/android/phone/EditFdnContactScreen;Lcom/android/phone/EditFdnContactScreen$Actions;ZZ)V

    .line 389
    return-void

    :cond_0
    move v2, v3

    .line 388
    goto :goto_0
.end method

.method protected onInsertComplete(ILjava/lang/Object;Landroid/net/Uri;)V
    .locals 4
    .parameter "token"
    .parameter "cookie"
    .parameter "uri"

    .prologue
    const/4 v3, 0x0

    .line 373
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/EditFdnContactScreen;

    #calls: Lcom/android/phone/EditFdnContactScreen;->dismissProgress()V
    invoke-static {v0}, Lcom/android/phone/EditFdnContactScreen;->access$700(Lcom/android/phone/EditFdnContactScreen;)V

    .line 374
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/EditFdnContactScreen;

    sget-object v1, Lcom/android/phone/EditFdnContactScreen$Actions;->Insert:Lcom/android/phone/EditFdnContactScreen$Actions;

    if-eqz p3, :cond_0

    const/4 v2, 0x1

    :goto_0
    #calls: Lcom/android/phone/EditFdnContactScreen;->handleResult(Lcom/android/phone/EditFdnContactScreen$Actions;ZZ)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/phone/EditFdnContactScreen;->access$800(Lcom/android/phone/EditFdnContactScreen;Lcom/android/phone/EditFdnContactScreen$Actions;ZZ)V

    .line 375
    return-void

    :cond_0
    move v2, v3

    .line 374
    goto :goto_0
.end method

.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 0
    .parameter "token"
    .parameter "cookie"
    .parameter "c"

    .prologue
    .line 367
    return-void
.end method

.method protected onUpdateComplete(ILjava/lang/Object;I)V
    .locals 4
    .parameter "token"
    .parameter "cookie"
    .parameter "result"

    .prologue
    const/4 v3, 0x0

    .line 380
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/EditFdnContactScreen;

    #calls: Lcom/android/phone/EditFdnContactScreen;->dismissProgress()V
    invoke-static {v0}, Lcom/android/phone/EditFdnContactScreen;->access$700(Lcom/android/phone/EditFdnContactScreen;)V

    .line 381
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/EditFdnContactScreen;

    sget-object v1, Lcom/android/phone/EditFdnContactScreen$Actions;->Update:Lcom/android/phone/EditFdnContactScreen$Actions;

    if-lez p3, :cond_0

    const/4 v2, 0x1

    :goto_0
    #calls: Lcom/android/phone/EditFdnContactScreen;->handleResult(Lcom/android/phone/EditFdnContactScreen$Actions;ZZ)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/phone/EditFdnContactScreen;->access$800(Lcom/android/phone/EditFdnContactScreen;Lcom/android/phone/EditFdnContactScreen$Actions;ZZ)V

    .line 382
    return-void

    :cond_0
    move v2, v3

    .line 381
    goto :goto_0
.end method
