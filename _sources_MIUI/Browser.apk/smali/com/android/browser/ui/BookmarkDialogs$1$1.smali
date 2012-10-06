.class Lcom/android/browser/ui/BookmarkDialogs$1$1;
.super Landroid/os/Handler;
.source "BookmarkDialogs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/ui/BookmarkDialogs$1;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/ui/BookmarkDialogs$1;


# direct methods
.method constructor <init>(Lcom/android/browser/ui/BookmarkDialogs$1;)V
    .locals 0
    .parameter

    .prologue
    .line 240
    iput-object p1, p0, Lcom/android/browser/ui/BookmarkDialogs$1$1;->this$0:Lcom/android/browser/ui/BookmarkDialogs$1;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 243
    iget-object v0, p0, Lcom/android/browser/ui/BookmarkDialogs$1$1;->this$0:Lcom/android/browser/ui/BookmarkDialogs$1;

    iget-object v0, v0, Lcom/android/browser/ui/BookmarkDialogs$1;->val$context:Landroid/content/Context;

    const/4 v1, 0x1

    iget v2, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v2, :cond_0

    const/4 v1, 0x7

    :goto_0
    #calls: Lcom/android/browser/ui/BookmarkDialogs;->showToast(Landroid/content/Context;I)V
    invoke-static {v0, v1}, Lcom/android/browser/ui/BookmarkDialogs;->access$000(Landroid/content/Context;I)V

    .line 246
    return-void

    .line 243
    :cond_0
    const/16 v1, 0x8

    goto :goto_0
.end method
