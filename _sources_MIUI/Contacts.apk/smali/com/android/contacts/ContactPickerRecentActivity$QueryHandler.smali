.class Lcom/android/contacts/ContactPickerRecentActivity$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "ContactPickerRecentActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/ContactPickerRecentActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "QueryHandler"
.end annotation


# instance fields
.field private final mActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/contacts/ContactPickerRecentActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 64
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 65
    new-instance v0, Ljava/lang/ref/WeakReference;

    check-cast p1, Lcom/android/contacts/ContactPickerRecentActivity;

    .end local p1
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/contacts/ContactPickerRecentActivity$QueryHandler;->mActivity:Ljava/lang/ref/WeakReference;

    .line 67
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 2
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 71
    iget-object v1, p0, Lcom/android/contacts/ContactPickerRecentActivity$QueryHandler;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/ContactPickerRecentActivity;

    .line 72
    .local v0, activity:Lcom/android/contacts/ContactPickerRecentActivity;
    if-eqz p3, :cond_0

    .line 73
    if-eqz v0, :cond_1

    .line 74
    invoke-virtual {v0, p3}, Lcom/android/contacts/ContactPickerRecentActivity;->startManagingCursor(Landroid/database/Cursor;)V

    .line 75
    #getter for: Lcom/android/contacts/ContactPickerRecentActivity;->mAdapter:Lcom/android/contacts/ContactPickerRecentActivity$ListAdapter;
    invoke-static {v0}, Lcom/android/contacts/ContactPickerRecentActivity;->access$000(Lcom/android/contacts/ContactPickerRecentActivity;)Lcom/android/contacts/ContactPickerRecentActivity$ListAdapter;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/android/contacts/ContactPickerRecentActivity$ListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 80
    :cond_0
    :goto_0
    return-void

    .line 77
    :cond_1
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method
