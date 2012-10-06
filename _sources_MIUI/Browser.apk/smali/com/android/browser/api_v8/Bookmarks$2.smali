.class final Lcom/android/browser/api_v8/Bookmarks$2;
.super Landroid/os/AsyncTask;
.source "Bookmarks.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/api_v8/Bookmarks;->updateFolderIdById(Landroid/content/Context;JLandroid/content/ContentResolver;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
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
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$newItemId:I


# direct methods
.method constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 280
    iput-object p1, p0, Lcom/android/browser/api_v8/Bookmarks$2;->val$context:Landroid/content/Context;

    iput p2, p0, Lcom/android/browser/api_v8/Bookmarks$2;->val$newItemId:I

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 280
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/browser/api_v8/Bookmarks$2;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2
    .parameter "unused"

    .prologue
    .line 282
    iget-object v0, p0, Lcom/android/browser/api_v8/Bookmarks$2;->val$context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/android/browser/api_v8/Bookmarks$2;->val$newItemId:I

    invoke-static {v0, v1}, Lcom/android/browser/model/ThumbnailStorageManager;->refreshOneThumbnailFile(Landroid/content/Context;I)V

    .line 283
    const/4 v0, 0x0

    return-object v0
.end method
