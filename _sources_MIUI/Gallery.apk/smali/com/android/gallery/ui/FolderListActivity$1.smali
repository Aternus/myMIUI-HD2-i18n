.class Lcom/android/gallery/ui/FolderListActivity$1;
.super Ljava/lang/Object;
.source "FolderListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery/ui/FolderListActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery/ui/FolderListActivity;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/android/gallery/ui/FolderListActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 206
    iput-object p1, p0, Lcom/android/gallery/ui/FolderListActivity$1;->this$0:Lcom/android/gallery/ui/FolderListActivity;

    iput p2, p0, Lcom/android/gallery/ui/FolderListActivity$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 208
    iget-object v0, p0, Lcom/android/gallery/ui/FolderListActivity$1;->this$0:Lcom/android/gallery/ui/FolderListActivity;

    iget-object v0, v0, Lcom/android/gallery/ui/FolderListActivity;->mAdapter:Lcom/android/gallery/ui/FolderListAdapter;

    iget v1, p0, Lcom/android/gallery/ui/FolderListActivity$1;->val$position:I

    invoke-virtual {v0, v1}, Lcom/android/gallery/ui/FolderListAdapter;->removeItem(I)V

    .line 209
    return-void
.end method
