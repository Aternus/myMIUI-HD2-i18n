.class Lcom/android/fileexplorer/FileViewInteractionHub$11;
.super Ljava/lang/Object;
.source "FileViewInteractionHub.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/FileViewInteractionHub;->onCheckItem(Lcom/android/fileexplorer/FileInfo;Landroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/fileexplorer/FileViewInteractionHub;

.field final synthetic val$adjustedPosition:I


# direct methods
.method constructor <init>(Lcom/android/fileexplorer/FileViewInteractionHub;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 984
    iput-object p1, p0, Lcom/android/fileexplorer/FileViewInteractionHub$11;->this$0:Lcom/android/fileexplorer/FileViewInteractionHub;

    iput p2, p0, Lcom/android/fileexplorer/FileViewInteractionHub$11;->val$adjustedPosition:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 987
    iget-object v0, p0, Lcom/android/fileexplorer/FileViewInteractionHub$11;->this$0:Lcom/android/fileexplorer/FileViewInteractionHub;

    #getter for: Lcom/android/fileexplorer/FileViewInteractionHub;->mFileListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/android/fileexplorer/FileViewInteractionHub;->access$1900(Lcom/android/fileexplorer/FileViewInteractionHub;)Landroid/widget/ListView;

    move-result-object v0

    iget v1, p0, Lcom/android/fileexplorer/FileViewInteractionHub$11;->val$adjustedPosition:I

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 988
    return-void
.end method
