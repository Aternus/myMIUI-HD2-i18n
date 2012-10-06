.class Lcom/android/fileexplorer/FileViewActivity$3;
.super Ljava/lang/Object;
.source "FileViewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/FileViewActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/fileexplorer/FileViewActivity;


# direct methods
.method constructor <init>(Lcom/android/fileexplorer/FileViewActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 115
    iput-object p1, p0, Lcom/android/fileexplorer/FileViewActivity$3;->this$0:Lcom/android/fileexplorer/FileViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/fileexplorer/FileViewActivity$3;->this$0:Lcom/android/fileexplorer/FileViewActivity;

    invoke-virtual {v0}, Lcom/android/fileexplorer/FileViewActivity;->finish()V

    .line 118
    return-void
.end method
