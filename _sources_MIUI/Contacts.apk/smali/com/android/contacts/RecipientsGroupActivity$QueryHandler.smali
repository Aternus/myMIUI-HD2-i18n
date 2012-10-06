.class Lcom/android/contacts/RecipientsGroupActivity$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "RecipientsGroupActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/RecipientsGroupActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "QueryHandler"
.end annotation


# instance fields
.field protected final mActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/contacts/RecipientsGroupActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 214
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 215
    new-instance v0, Ljava/lang/ref/WeakReference;

    check-cast p1, Lcom/android/contacts/RecipientsGroupActivity;

    .end local p1
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/contacts/RecipientsGroupActivity$QueryHandler;->mActivity:Ljava/lang/ref/WeakReference;

    .line 216
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 1
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 220
    if-eqz p3, :cond_0

    .line 221
    iget-object v0, p0, Lcom/android/contacts/RecipientsGroupActivity$QueryHandler;->mActivity:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/RecipientsGroupActivity$QueryHandler;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/android/contacts/RecipientsGroupActivity$QueryHandler;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/RecipientsGroupActivity;

    invoke-virtual {v0, p3}, Lcom/android/contacts/RecipientsGroupActivity;->startManagingCursor(Landroid/database/Cursor;)V

    .line 223
    iget-object v0, p0, Lcom/android/contacts/RecipientsGroupActivity$QueryHandler;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/contacts/RecipientsGroupActivity;

    #calls: Lcom/android/contacts/RecipientsGroupActivity;->changeCursor(Landroid/database/Cursor;)V
    invoke-static {p0, p3}, Lcom/android/contacts/RecipientsGroupActivity;->access$400(Lcom/android/contacts/RecipientsGroupActivity;Landroid/database/Cursor;)V

    .line 226
    :cond_0
    return-void
.end method
