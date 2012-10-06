.class Lcom/android/browser/ui/BookmarkCenterFavoriteActivity$4;
.super Landroid/os/AsyncTask;
.source "BookmarkCenterFavoriteActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;->onDestroy()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;


# direct methods
.method constructor <init>(Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 490
    iput-object p1, p0, Lcom/android/browser/ui/BookmarkCenterFavoriteActivity$4;->this$0:Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 490
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/browser/ui/BookmarkCenterFavoriteActivity$4;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2
    .parameter "unused"

    .prologue
    .line 492
    iget-object v0, p0, Lcom/android/browser/ui/BookmarkCenterFavoriteActivity$4;->this$0:Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;

    invoke-virtual {v0}, Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/browser/model/ThumbnailStorageManager;->syncThumbnailStorage(Landroid/content/Context;Z)V

    .line 493
    const/4 v0, 0x0

    return-object v0
.end method
