.class Lcom/android/browser/ui/BookmarkCenterHistoryActivity$2;
.super Ljava/lang/Object;
.source "BookmarkCenterHistoryActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/ui/BookmarkCenterHistoryActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/ui/BookmarkCenterHistoryActivity;


# direct methods
.method constructor <init>(Lcom/android/browser/ui/BookmarkCenterHistoryActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 80
    iput-object p1, p0, Lcom/android/browser/ui/BookmarkCenterHistoryActivity$2;->this$0:Lcom/android/browser/ui/BookmarkCenterHistoryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/browser/ui/BookmarkCenterHistoryActivity$2;->this$0:Lcom/android/browser/ui/BookmarkCenterHistoryActivity;

    iget-object v1, p0, Lcom/android/browser/ui/BookmarkCenterHistoryActivity$2;->this$0:Lcom/android/browser/ui/BookmarkCenterHistoryActivity;

    invoke-virtual {v1}, Lcom/android/browser/ui/BookmarkCenterHistoryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/browser/controller/BookmarkHistory;->clearHistory(Landroid/content/Context;Landroid/content/ContentResolver;)V

    .line 85
    invoke-static {}, Lcom/android/browser/controller/TabController;->getInstance()Lcom/android/browser/controller/TabController;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/browser/controller/TabController;->setForceInitHistoryAdapter(Z)V

    .line 86
    return-void
.end method
