.class Lcom/android/gallery/ui/FolderViewActivity$1;
.super Ljava/lang/Object;
.source "FolderViewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery/ui/FolderViewActivity;->onClick(Landroid/view/View;)V
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
    .line 272
    iput-object p1, p0, Lcom/android/gallery/ui/FolderViewActivity$1;->this$0:Lcom/android/gallery/ui/FolderViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 274
    iget-object v0, p0, Lcom/android/gallery/ui/FolderViewActivity$1;->this$0:Lcom/android/gallery/ui/FolderViewActivity;

    const/4 v1, 0x0

    #calls: Lcom/android/gallery/ui/FolderViewActivity;->setEditMode(Z)V
    invoke-static {v0, v1}, Lcom/android/gallery/ui/FolderViewActivity;->access$100(Lcom/android/gallery/ui/FolderViewActivity;Z)V

    .line 275
    iget-object v0, p0, Lcom/android/gallery/ui/FolderViewActivity$1;->this$0:Lcom/android/gallery/ui/FolderViewActivity;

    #getter for: Lcom/android/gallery/ui/FolderViewActivity;->mAdapter:Lcom/android/gallery/ui/FolderViewActivity$MediaListAdapter;
    invoke-static {v0}, Lcom/android/gallery/ui/FolderViewActivity;->access$200(Lcom/android/gallery/ui/FolderViewActivity;)Lcom/android/gallery/ui/FolderViewActivity$MediaListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery/ui/FolderViewActivity$MediaListAdapter;->notifyDataSetChanged()V

    .line 276
    iget-object v0, p0, Lcom/android/gallery/ui/FolderViewActivity$1;->this$0:Lcom/android/gallery/ui/FolderViewActivity;

    #calls: Lcom/android/gallery/ui/FolderViewActivity;->refreshUI()V
    invoke-static {v0}, Lcom/android/gallery/ui/FolderViewActivity;->access$300(Lcom/android/gallery/ui/FolderViewActivity;)V

    .line 277
    return-void
.end method
