.class Lcom/android/fileexplorer/FileViewInteractionHub$1;
.super Ljava/lang/Object;
.source "FileViewInteractionHub.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/FileViewInteractionHub;->onFinish()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/fileexplorer/FileViewInteractionHub;


# direct methods
.method constructor <init>(Lcom/android/fileexplorer/FileViewInteractionHub;)V
    .locals 0
    .parameter

    .prologue
    .line 130
    iput-object p1, p0, Lcom/android/fileexplorer/FileViewInteractionHub$1;->this$0:Lcom/android/fileexplorer/FileViewInteractionHub;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/fileexplorer/FileViewInteractionHub$1;->this$0:Lcom/android/fileexplorer/FileViewInteractionHub;

    #getter for: Lcom/android/fileexplorer/FileViewInteractionHub;->mOperationBar:Landroid/view/View;
    invoke-static {v0}, Lcom/android/fileexplorer/FileViewInteractionHub;->access$000(Lcom/android/fileexplorer/FileViewInteractionHub;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 134
    iget-object v0, p0, Lcom/android/fileexplorer/FileViewInteractionHub$1;->this$0:Lcom/android/fileexplorer/FileViewInteractionHub;

    const/4 v1, 0x0

    #calls: Lcom/android/fileexplorer/FileViewInteractionHub;->showConfirmOperationBar(Z)V
    invoke-static {v0, v1}, Lcom/android/fileexplorer/FileViewInteractionHub;->access$100(Lcom/android/fileexplorer/FileViewInteractionHub;Z)V

    .line 135
    iget-object v0, p0, Lcom/android/fileexplorer/FileViewInteractionHub$1;->this$0:Lcom/android/fileexplorer/FileViewInteractionHub;

    invoke-virtual {v0}, Lcom/android/fileexplorer/FileViewInteractionHub;->clearSelection()V

    .line 136
    iget-object v0, p0, Lcom/android/fileexplorer/FileViewInteractionHub$1;->this$0:Lcom/android/fileexplorer/FileViewInteractionHub;

    invoke-virtual {v0}, Lcom/android/fileexplorer/FileViewInteractionHub;->refreshFileList()V

    .line 137
    return-void
.end method
