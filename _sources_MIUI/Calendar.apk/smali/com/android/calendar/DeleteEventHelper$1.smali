.class Lcom/android/calendar/DeleteEventHelper$1;
.super Ljava/lang/Object;
.source "DeleteEventHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/DeleteEventHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/DeleteEventHelper;


# direct methods
.method constructor <init>(Lcom/android/calendar/DeleteEventHelper;)V
    .locals 0
    .parameter

    .prologue
    .line 108
    iput-object p1, p0, Lcom/android/calendar/DeleteEventHelper$1;->this$0:Lcom/android/calendar/DeleteEventHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "button"

    .prologue
    const/4 v5, 0x0

    .line 110
    iget-object v3, p0, Lcom/android/calendar/DeleteEventHelper$1;->this$0:Lcom/android/calendar/DeleteEventHelper;

    #getter for: Lcom/android/calendar/DeleteEventHelper;->mCursor:Landroid/database/Cursor;
    invoke-static {v3}, Lcom/android/calendar/DeleteEventHelper;->access$100(Lcom/android/calendar/DeleteEventHelper;)Landroid/database/Cursor;

    move-result-object v3

    iget-object v4, p0, Lcom/android/calendar/DeleteEventHelper$1;->this$0:Lcom/android/calendar/DeleteEventHelper;

    #getter for: Lcom/android/calendar/DeleteEventHelper;->mEventIndexId:I
    invoke-static {v4}, Lcom/android/calendar/DeleteEventHelper;->access$000(Lcom/android/calendar/DeleteEventHelper;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    int-to-long v0, v3

    .line 111
    .local v0, id:J
    sget-object v3, Landroid/provider/Calendar$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 112
    .local v2, uri:Landroid/net/Uri;
    iget-object v3, p0, Lcom/android/calendar/DeleteEventHelper$1;->this$0:Lcom/android/calendar/DeleteEventHelper;

    #getter for: Lcom/android/calendar/DeleteEventHelper;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v3}, Lcom/android/calendar/DeleteEventHelper;->access$200(Lcom/android/calendar/DeleteEventHelper;)Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v2, v5, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 113
    iget-object v3, p0, Lcom/android/calendar/DeleteEventHelper$1;->this$0:Lcom/android/calendar/DeleteEventHelper;

    #getter for: Lcom/android/calendar/DeleteEventHelper;->mExitWhenDone:Z
    invoke-static {v3}, Lcom/android/calendar/DeleteEventHelper;->access$300(Lcom/android/calendar/DeleteEventHelper;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 114
    iget-object v3, p0, Lcom/android/calendar/DeleteEventHelper$1;->this$0:Lcom/android/calendar/DeleteEventHelper;

    #getter for: Lcom/android/calendar/DeleteEventHelper;->mParent:Landroid/app/Activity;
    invoke-static {v3}, Lcom/android/calendar/DeleteEventHelper;->access$400(Lcom/android/calendar/DeleteEventHelper;)Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    .line 116
    :cond_0
    return-void
.end method
