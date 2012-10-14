.class Lcom/android/contacts/ViewContactActivity$1;
.super Landroid/database/ContentObserver;
.source "ViewContactActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/ViewContactActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/ViewContactActivity;


# direct methods
.method constructor <init>(Lcom/android/contacts/ViewContactActivity;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 330
    iput-object p1, p0, Lcom/android/contacts/ViewContactActivity$1;->this$0:Lcom/android/contacts/ViewContactActivity;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .locals 1

    .prologue
    .line 333
    const/4 v0, 0x1

    return v0
.end method

.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 338
    iget-object v0, p0, Lcom/android/contacts/ViewContactActivity$1;->this$0:Lcom/android/contacts/ViewContactActivity;

    #getter for: Lcom/android/contacts/ViewContactActivity;->mCursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/android/contacts/ViewContactActivity;->access$000(Lcom/android/contacts/ViewContactActivity;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/ViewContactActivity$1;->this$0:Lcom/android/contacts/ViewContactActivity;

    #getter for: Lcom/android/contacts/ViewContactActivity;->mCursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/android/contacts/ViewContactActivity;->access$000(Lcom/android/contacts/ViewContactActivity;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 339
    iget-object v0, p0, Lcom/android/contacts/ViewContactActivity$1;->this$0:Lcom/android/contacts/ViewContactActivity;

    #calls: Lcom/android/contacts/ViewContactActivity;->startEntityQuery()V
    invoke-static {v0}, Lcom/android/contacts/ViewContactActivity;->access$100(Lcom/android/contacts/ViewContactActivity;)V

    .line 341
    :cond_0
    return-void
.end method
