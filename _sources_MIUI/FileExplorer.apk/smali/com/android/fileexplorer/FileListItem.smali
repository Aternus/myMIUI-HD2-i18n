.class public Lcom/android/fileexplorer/FileListItem;
.super Landroid/widget/LinearLayout;
.source "FileListItem.java"


# instance fields
.field private checkClick:Landroid/view/View$OnClickListener;

.field private mContext:Landroid/content/Context;

.field mFileViewInteractionHub:Lcom/android/fileexplorer/FileViewInteractionHub;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 18
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 66
    new-instance v0, Lcom/android/fileexplorer/FileListItem$1;

    invoke-direct {v0, p0}, Lcom/android/fileexplorer/FileListItem$1;-><init>(Lcom/android/fileexplorer/FileListItem;)V

    iput-object v0, p0, Lcom/android/fileexplorer/FileListItem;->checkClick:Landroid/view/View$OnClickListener;

    .line 19
    iput-object p1, p0, Lcom/android/fileexplorer/FileListItem;->mContext:Landroid/content/Context;

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 66
    new-instance v0, Lcom/android/fileexplorer/FileListItem$1;

    invoke-direct {v0, p0}, Lcom/android/fileexplorer/FileListItem$1;-><init>(Lcom/android/fileexplorer/FileListItem;)V

    iput-object v0, p0, Lcom/android/fileexplorer/FileListItem;->checkClick:Landroid/view/View$OnClickListener;

    .line 24
    iput-object p1, p0, Lcom/android/fileexplorer/FileListItem;->mContext:Landroid/content/Context;

    .line 25
    return-void
.end method


# virtual methods
.method public final bind(Lcom/android/fileexplorer/FileInfo;Lcom/android/fileexplorer/FileViewInteractionHub;Lcom/android/fileexplorer/FileIconHelper;)V
    .locals 11
    .parameter "file"
    .parameter "f"
    .parameter "mFileIcon"

    .prologue
    const/16 v9, 0x8

    const-string v10, ""

    .line 28
    iput-object p2, p0, Lcom/android/fileexplorer/FileListItem;->mFileViewInteractionHub:Lcom/android/fileexplorer/FileViewInteractionHub;

    .line 29
    move-object v4, p1

    .line 32
    .local v4, lFileInfo:Lcom/android/fileexplorer/FileInfo;
    iget-object v5, p0, Lcom/android/fileexplorer/FileListItem;->mFileViewInteractionHub:Lcom/android/fileexplorer/FileViewInteractionHub;

    invoke-virtual {v5}, Lcom/android/fileexplorer/FileViewInteractionHub;->isMoveState()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 33
    iget-object v5, p0, Lcom/android/fileexplorer/FileListItem;->mFileViewInteractionHub:Lcom/android/fileexplorer/FileViewInteractionHub;

    iget-object v6, v4, Lcom/android/fileexplorer/FileInfo;->filePath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/android/fileexplorer/FileViewInteractionHub;->isFileSelected(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, v4, Lcom/android/fileexplorer/FileInfo;->Selected:Z

    .line 36
    :cond_0
    const v5, 0x7f08000b

    invoke-virtual {p0, v5}, Lcom/android/fileexplorer/FileListItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 37
    .local v1, checkbox:Landroid/widget/ImageView;
    iget-object v5, p0, Lcom/android/fileexplorer/FileListItem;->mFileViewInteractionHub:Lcom/android/fileexplorer/FileViewInteractionHub;

    invoke-virtual {v5}, Lcom/android/fileexplorer/FileViewInteractionHub;->getMode()Lcom/android/fileexplorer/FileViewInteractionHub$Mode;

    move-result-object v5

    sget-object v6, Lcom/android/fileexplorer/FileViewInteractionHub$Mode;->Pick:Lcom/android/fileexplorer/FileViewInteractionHub$Mode;

    if-ne v5, v6, :cond_1

    .line 38
    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 49
    :goto_0
    const v5, 0x7f080006

    iget-object v6, v4, Lcom/android/fileexplorer/FileInfo;->fileName:Ljava/lang/String;

    invoke-static {p0, v5, v6}, Lcom/android/fileexplorer/Util;->setText(Landroid/view/View;ILjava/lang/String;)Z

    .line 50
    const v5, 0x7f080009

    iget-boolean v6, v4, Lcom/android/fileexplorer/FileInfo;->IsDir:Z

    if-eqz v6, :cond_4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v4, Lcom/android/fileexplorer/FileInfo;->Count:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_1
    invoke-static {p0, v5, v6}, Lcom/android/fileexplorer/Util;->setText(Landroid/view/View;ILjava/lang/String;)Z

    .line 51
    const v5, 0x7f080007

    iget-object v6, p0, Lcom/android/fileexplorer/FileListItem;->mContext:Landroid/content/Context;

    iget-wide v7, v4, Lcom/android/fileexplorer/FileInfo;->ModifiedDate:J

    invoke-static {v6, v7, v8}, Lcom/android/fileexplorer/Util;->formatDateString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v5, v6}, Lcom/android/fileexplorer/Util;->setText(Landroid/view/View;ILjava/lang/String;)Z

    .line 52
    const v5, 0x7f080008

    iget-boolean v6, v4, Lcom/android/fileexplorer/FileInfo;->IsDir:Z

    if-eqz v6, :cond_5

    const-string v6, ""

    move-object v6, v10

    :goto_2
    invoke-static {p0, v5, v6}, Lcom/android/fileexplorer/Util;->setText(Landroid/view/View;ILjava/lang/String;)Z

    .line 54
    const v5, 0x7f080004

    invoke-virtual {p0, v5}, Lcom/android/fileexplorer/FileListItem;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 55
    .local v2, lFileImage:Landroid/widget/ImageView;
    const v5, 0x7f080003

    invoke-virtual {p0, v5}, Lcom/android/fileexplorer/FileListItem;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 57
    .local v3, lFileImageFrame:Landroid/widget/ImageView;
    iget-boolean v5, v4, Lcom/android/fileexplorer/FileInfo;->IsDir:Z

    if-eqz v5, :cond_6

    .line 58
    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 59
    const v5, 0x7f02002f

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 64
    :goto_3
    return-void

    .line 40
    .end local v2           #lFileImage:Landroid/widget/ImageView;
    .end local v3           #lFileImageFrame:Landroid/widget/ImageView;
    :cond_1
    iget-object v5, p0, Lcom/android/fileexplorer/FileListItem;->mFileViewInteractionHub:Lcom/android/fileexplorer/FileViewInteractionHub;

    invoke-virtual {v5}, Lcom/android/fileexplorer/FileViewInteractionHub;->canShowCheckBox()Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x0

    :goto_4
    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 41
    iget-boolean v5, v4, Lcom/android/fileexplorer/FileInfo;->Selected:Z

    if-eqz v5, :cond_3

    const v5, 0x10800df

    :goto_5
    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 43
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 44
    const v5, 0x7f08000a

    invoke-virtual {p0, v5}, Lcom/android/fileexplorer/FileListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 45
    .local v0, checkArea:Landroid/view/View;
    iget-object v5, p0, Lcom/android/fileexplorer/FileListItem;->checkClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    iget-boolean v5, v4, Lcom/android/fileexplorer/FileInfo;->Selected:Z

    invoke-virtual {p0, v5}, Lcom/android/fileexplorer/FileListItem;->setSelected(Z)V

    goto/16 :goto_0

    .end local v0           #checkArea:Landroid/view/View;
    :cond_2
    move v5, v9

    .line 40
    goto :goto_4

    .line 41
    :cond_3
    const v5, 0x10800da

    goto :goto_5

    .line 50
    :cond_4
    const-string v6, ""

    move-object v6, v10

    goto :goto_1

    .line 52
    :cond_5
    iget-wide v6, v4, Lcom/android/fileexplorer/FileInfo;->fileSize:J

    invoke-static {v6, v7}, Lcom/android/fileexplorer/Util;->convertStorage(J)Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    .line 61
    .restart local v2       #lFileImage:Landroid/widget/ImageView;
    .restart local v3       #lFileImageFrame:Landroid/widget/ImageView;
    :cond_6
    invoke-virtual {p3, v4, v2, v3}, Lcom/android/fileexplorer/FileIconHelper;->setIcon(Lcom/android/fileexplorer/FileInfo;Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    goto :goto_3
.end method
