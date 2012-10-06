.class Lcom/android/browser/controller/BookmarkFolderAdapter$MyContentObserver;
.super Landroid/database/ContentObserver;
.source "BookmarkFolderAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/controller/BookmarkFolderAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyContentObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/controller/BookmarkFolderAdapter;


# direct methods
.method public constructor <init>(Lcom/android/browser/controller/BookmarkFolderAdapter;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "handler"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/android/browser/controller/BookmarkFolderAdapter$MyContentObserver;->this$0:Lcom/android/browser/controller/BookmarkFolderAdapter;

    .line 51
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 52
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 56
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 57
    iget-object v0, p0, Lcom/android/browser/controller/BookmarkFolderAdapter$MyContentObserver;->this$0:Lcom/android/browser/controller/BookmarkFolderAdapter;

    #calls: Lcom/android/browser/controller/BookmarkFolderAdapter;->initializeListFavoriteItems()V
    invoke-static {v0}, Lcom/android/browser/controller/BookmarkFolderAdapter;->access$000(Lcom/android/browser/controller/BookmarkFolderAdapter;)V

    .line 58
    iget-object v0, p0, Lcom/android/browser/controller/BookmarkFolderAdapter$MyContentObserver;->this$0:Lcom/android/browser/controller/BookmarkFolderAdapter;

    invoke-virtual {v0}, Lcom/android/browser/controller/BookmarkFolderAdapter;->notifyDataSetChanged()V

    .line 59
    return-void
.end method
