.class Lcom/android/fileexplorer/FileViewInteractionHub$2;
.super Ljava/lang/Object;
.source "FileViewInteractionHub.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/FileViewInteractionHub;
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
    .line 200
    iput-object p1, p0, Lcom/android/fileexplorer/FileViewInteractionHub$2;->this$0:Lcom/android/fileexplorer/FileViewInteractionHub;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 203
    iget-object v0, p0, Lcom/android/fileexplorer/FileViewInteractionHub$2;->this$0:Lcom/android/fileexplorer/FileViewInteractionHub;

    #getter for: Lcom/android/fileexplorer/FileViewInteractionHub;->mFileViewListener:Lcom/android/fileexplorer/IFileInteractionListener;
    invoke-static {v0}, Lcom/android/fileexplorer/FileViewInteractionHub;->access$200(Lcom/android/fileexplorer/FileViewInteractionHub;)Lcom/android/fileexplorer/IFileInteractionListener;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/fileexplorer/IFileInteractionListener;->onOperation(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/android/fileexplorer/FileViewInteractionHub$2;->this$0:Lcom/android/fileexplorer/FileViewInteractionHub;

    #getter for: Lcom/android/fileexplorer/FileViewInteractionHub;->mOperationBar:Landroid/view/View;
    invoke-static {v0}, Lcom/android/fileexplorer/FileViewInteractionHub;->access$000(Lcom/android/fileexplorer/FileViewInteractionHub;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 237
    :goto_0
    return-void

    .line 208
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 225
    :sswitch_0
    iget-object v0, p0, Lcom/android/fileexplorer/FileViewInteractionHub$2;->this$0:Lcom/android/fileexplorer/FileViewInteractionHub;

    invoke-virtual {v0}, Lcom/android/fileexplorer/FileViewInteractionHub;->onNavigationBarClick()V

    goto :goto_0

    .line 210
    :sswitch_1
    iget-object v0, p0, Lcom/android/fileexplorer/FileViewInteractionHub$2;->this$0:Lcom/android/fileexplorer/FileViewInteractionHub;

    #calls: Lcom/android/fileexplorer/FileViewInteractionHub;->onOperationCopy()V
    invoke-static {v0}, Lcom/android/fileexplorer/FileViewInteractionHub;->access$300(Lcom/android/fileexplorer/FileViewInteractionHub;)V

    goto :goto_0

    .line 213
    :sswitch_2
    iget-object v0, p0, Lcom/android/fileexplorer/FileViewInteractionHub$2;->this$0:Lcom/android/fileexplorer/FileViewInteractionHub;

    #calls: Lcom/android/fileexplorer/FileViewInteractionHub;->onOperationMove()V
    invoke-static {v0}, Lcom/android/fileexplorer/FileViewInteractionHub;->access$400(Lcom/android/fileexplorer/FileViewInteractionHub;)V

    goto :goto_0

    .line 216
    :sswitch_3
    iget-object v0, p0, Lcom/android/fileexplorer/FileViewInteractionHub$2;->this$0:Lcom/android/fileexplorer/FileViewInteractionHub;

    invoke-virtual {v0}, Lcom/android/fileexplorer/FileViewInteractionHub;->onOperationSend()V

    goto :goto_0

    .line 219
    :sswitch_4
    iget-object v0, p0, Lcom/android/fileexplorer/FileViewInteractionHub$2;->this$0:Lcom/android/fileexplorer/FileViewInteractionHub;

    invoke-virtual {v0}, Lcom/android/fileexplorer/FileViewInteractionHub;->onOperationDelete()V

    goto :goto_0

    .line 222
    :sswitch_5
    iget-object v0, p0, Lcom/android/fileexplorer/FileViewInteractionHub$2;->this$0:Lcom/android/fileexplorer/FileViewInteractionHub;

    #calls: Lcom/android/fileexplorer/FileViewInteractionHub;->onOperationSelectAllOrCancel()V
    invoke-static {v0}, Lcom/android/fileexplorer/FileViewInteractionHub;->access$500(Lcom/android/fileexplorer/FileViewInteractionHub;)V

    goto :goto_0

    .line 228
    :sswitch_6
    iget-object v0, p0, Lcom/android/fileexplorer/FileViewInteractionHub$2;->this$0:Lcom/android/fileexplorer/FileViewInteractionHub;

    invoke-virtual {v0}, Lcom/android/fileexplorer/FileViewInteractionHub;->onOperationButtonConfirm()V

    goto :goto_0

    .line 231
    :sswitch_7
    iget-object v0, p0, Lcom/android/fileexplorer/FileViewInteractionHub$2;->this$0:Lcom/android/fileexplorer/FileViewInteractionHub;

    invoke-virtual {v0}, Lcom/android/fileexplorer/FileViewInteractionHub;->onOperationButtonCancel()V

    goto :goto_0

    .line 234
    :sswitch_8
    iget-object v0, p0, Lcom/android/fileexplorer/FileViewInteractionHub$2;->this$0:Lcom/android/fileexplorer/FileViewInteractionHub;

    invoke-virtual {v0}, Lcom/android/fileexplorer/FileViewInteractionHub;->onOperationUpLevel()Z

    goto :goto_0

    .line 208
    :sswitch_data_0
    .sparse-switch
        0x7f08000e -> :sswitch_0
        0x7f080012 -> :sswitch_8
        0x7f080037 -> :sswitch_6
        0x7f080038 -> :sswitch_7
        0x7f08003a -> :sswitch_4
        0x7f08003c -> :sswitch_1
        0x7f08003d -> :sswitch_2
        0x7f08003e -> :sswitch_3
        0x7f08003f -> :sswitch_5
    .end sparse-switch
.end method
