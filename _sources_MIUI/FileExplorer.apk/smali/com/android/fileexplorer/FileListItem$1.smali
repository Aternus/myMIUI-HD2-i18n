.class Lcom/android/fileexplorer/FileListItem$1;
.super Ljava/lang/Object;
.source "FileListItem.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/FileListItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lcom/android/fileexplorer/FileListItem;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 66
    const-class v0, Lcom/android/fileexplorer/FileListItem;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/fileexplorer/FileListItem$1;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lcom/android/fileexplorer/FileListItem;)V
    .locals 0
    .parameter

    .prologue
    .line 66
    iput-object p1, p0, Lcom/android/fileexplorer/FileListItem$1;->this$0:Lcom/android/fileexplorer/FileListItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 70
    const v2, 0x7f08000b

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 71
    .local v0, img:Landroid/widget/ImageView;
    sget-boolean v2, Lcom/android/fileexplorer/FileListItem$1;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 73
    :cond_1
    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/fileexplorer/FileInfo;

    .line 74
    .local v1, tag:Lcom/android/fileexplorer/FileInfo;
    iget-boolean v2, v1, Lcom/android/fileexplorer/FileInfo;->Selected:Z

    if-nez v2, :cond_2

    move v2, v4

    :goto_0
    iput-boolean v2, v1, Lcom/android/fileexplorer/FileInfo;->Selected:Z

    .line 75
    iget-object v2, p0, Lcom/android/fileexplorer/FileListItem$1;->this$0:Lcom/android/fileexplorer/FileListItem;

    iget-object v2, v2, Lcom/android/fileexplorer/FileListItem;->mFileViewInteractionHub:Lcom/android/fileexplorer/FileViewInteractionHub;

    invoke-virtual {v2, v1, p1}, Lcom/android/fileexplorer/FileViewInteractionHub;->onCheckItem(Lcom/android/fileexplorer/FileInfo;Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 76
    iget-boolean v2, v1, Lcom/android/fileexplorer/FileInfo;->Selected:Z

    if-eqz v2, :cond_3

    const v2, 0x10800df

    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 81
    :goto_2
    return-void

    :cond_2
    move v2, v3

    .line 74
    goto :goto_0

    .line 76
    :cond_3
    const v2, 0x10800da

    goto :goto_1

    .line 79
    :cond_4
    iget-boolean v2, v1, Lcom/android/fileexplorer/FileInfo;->Selected:Z

    if-nez v2, :cond_5

    move v2, v4

    :goto_3
    iput-boolean v2, v1, Lcom/android/fileexplorer/FileInfo;->Selected:Z

    goto :goto_2

    :cond_5
    move v2, v3

    goto :goto_3
.end method
