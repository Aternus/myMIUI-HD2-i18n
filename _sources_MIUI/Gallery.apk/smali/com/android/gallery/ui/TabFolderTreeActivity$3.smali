.class Lcom/android/gallery/ui/TabFolderTreeActivity$3;
.super Ljava/lang/Object;
.source "TabFolderTreeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery/ui/TabFolderTreeActivity;->onDelete(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery/ui/TabFolderTreeActivity;


# direct methods
.method constructor <init>(Lcom/android/gallery/ui/TabFolderTreeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 457
    iput-object p1, p0, Lcom/android/gallery/ui/TabFolderTreeActivity$3;->this$0:Lcom/android/gallery/ui/TabFolderTreeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 460
    iget-object v0, p0, Lcom/android/gallery/ui/TabFolderTreeActivity$3;->this$0:Lcom/android/gallery/ui/TabFolderTreeActivity;

    #getter for: Lcom/android/gallery/ui/TabFolderTreeActivity;->mAdapter:Lcom/android/gallery/ui/TabFolderTreeActivity$FileListAdapter;
    invoke-static {v0}, Lcom/android/gallery/ui/TabFolderTreeActivity;->access$300(Lcom/android/gallery/ui/TabFolderTreeActivity;)Lcom/android/gallery/ui/TabFolderTreeActivity$FileListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery/ui/TabFolderTreeActivity$FileListAdapter;->notifyDataSetChanged()V

    .line 461
    iget-object v0, p0, Lcom/android/gallery/ui/TabFolderTreeActivity$3;->this$0:Lcom/android/gallery/ui/TabFolderTreeActivity;

    #calls: Lcom/android/gallery/ui/TabFolderTreeActivity;->updateUI()V
    invoke-static {v0}, Lcom/android/gallery/ui/TabFolderTreeActivity;->access$000(Lcom/android/gallery/ui/TabFolderTreeActivity;)V

    .line 462
    return-void
.end method
