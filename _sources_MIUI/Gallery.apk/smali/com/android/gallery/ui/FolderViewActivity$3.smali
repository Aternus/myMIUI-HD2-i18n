.class Lcom/android/gallery/ui/FolderViewActivity$3;
.super Ljava/lang/Object;
.source "FolderViewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery/ui/FolderViewActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery/ui/FolderViewActivity;


# direct methods
.method constructor <init>(Lcom/android/gallery/ui/FolderViewActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 402
    iput-object p1, p0, Lcom/android/gallery/ui/FolderViewActivity$3;->this$0:Lcom/android/gallery/ui/FolderViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 404
    iget-object v0, p0, Lcom/android/gallery/ui/FolderViewActivity$3;->this$0:Lcom/android/gallery/ui/FolderViewActivity;

    #getter for: Lcom/android/gallery/ui/FolderViewActivity;->mAdapter:Lcom/android/gallery/ui/FolderViewActivity$MediaListAdapter;
    invoke-static {v0}, Lcom/android/gallery/ui/FolderViewActivity;->access$200(Lcom/android/gallery/ui/FolderViewActivity;)Lcom/android/gallery/ui/FolderViewActivity$MediaListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery/ui/FolderViewActivity$MediaListAdapter;->notifyDataSetChanged()V

    .line 405
    iget-object v0, p0, Lcom/android/gallery/ui/FolderViewActivity$3;->this$0:Lcom/android/gallery/ui/FolderViewActivity;

    #calls: Lcom/android/gallery/ui/FolderViewActivity;->refreshUI()V
    invoke-static {v0}, Lcom/android/gallery/ui/FolderViewActivity;->access$300(Lcom/android/gallery/ui/FolderViewActivity;)V

    .line 406
    return-void
.end method
