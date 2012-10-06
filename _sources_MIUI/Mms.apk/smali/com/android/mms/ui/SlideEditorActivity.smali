.class public Lcom/android/mms/ui/SlideEditorActivity;
.super Landroid/app/Activity;
.source "SlideEditorActivity.java"


# instance fields
.field private mDirty:Z

.field private mDone:Landroid/widget/Button;

.field private final mDoneClickListener:Landroid/view/View$OnClickListener;

.field private final mModelChangedObserver:Lcom/android/mms/model/IModelChangedObserver;

.field private mNextSlide:Landroid/widget/ImageButton;

.field private final mOnNavigateBackward:Landroid/view/View$OnClickListener;

.field private final mOnNavigateForward:Landroid/view/View$OnClickListener;

.field private final mOnPreview:Landroid/view/View$OnClickListener;

.field private final mOnRemoveSlide:Landroid/view/View$OnClickListener;

.field private final mOnReplaceImage:Landroid/view/View$OnClickListener;

.field private final mOnTextChangedListener:Lcom/android/mms/ui/BasicSlideEditorView$OnTextChangedListener;

.field private mPosition:I

.field private mPreSlide:Landroid/widget/ImageButton;

.field private mPresenter:Lcom/android/mms/ui/SlideshowPresenter;

.field private mPreview:Landroid/widget/Button;

.field private mRemoveSlide:Landroid/widget/Button;

.field private mReplaceImage:Landroid/widget/Button;

.field private final mResizeImageCallback:Lcom/android/mms/ui/MessageUtils$ResizeImageResultCallback;

.field private mSlideView:Lcom/android/mms/ui/BasicSlideEditorView;

.field private mSlideshowEditor:Lcom/android/mms/ui/SlideshowEditor;

.field private mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

.field private mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 218
    new-instance v0, Lcom/android/mms/ui/SlideEditorActivity$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SlideEditorActivity$1;-><init>(Lcom/android/mms/ui/SlideEditorActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mModelChangedObserver:Lcom/android/mms/model/IModelChangedObserver;

    .line 228
    new-instance v0, Lcom/android/mms/ui/SlideEditorActivity$2;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SlideEditorActivity$2;-><init>(Lcom/android/mms/ui/SlideEditorActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mOnRemoveSlide:Landroid/view/View$OnClickListener;

    .line 247
    new-instance v0, Lcom/android/mms/ui/SlideEditorActivity$3;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SlideEditorActivity$3;-><init>(Lcom/android/mms/ui/SlideEditorActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mOnTextChangedListener:Lcom/android/mms/ui/BasicSlideEditorView$OnTextChangedListener;

    .line 255
    new-instance v0, Lcom/android/mms/ui/SlideEditorActivity$4;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SlideEditorActivity$4;-><init>(Lcom/android/mms/ui/SlideEditorActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mOnPreview:Landroid/view/View$OnClickListener;

    .line 261
    new-instance v0, Lcom/android/mms/ui/SlideEditorActivity$5;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SlideEditorActivity$5;-><init>(Lcom/android/mms/ui/SlideEditorActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mOnReplaceImage:Landroid/view/View$OnClickListener;

    .line 275
    new-instance v0, Lcom/android/mms/ui/SlideEditorActivity$6;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SlideEditorActivity$6;-><init>(Lcom/android/mms/ui/SlideEditorActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mOnNavigateBackward:Landroid/view/View$OnClickListener;

    .line 284
    new-instance v0, Lcom/android/mms/ui/SlideEditorActivity$7;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SlideEditorActivity$7;-><init>(Lcom/android/mms/ui/SlideEditorActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mOnNavigateForward:Landroid/view/View$OnClickListener;

    .line 293
    new-instance v0, Lcom/android/mms/ui/SlideEditorActivity$8;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SlideEditorActivity$8;-><init>(Lcom/android/mms/ui/SlideEditorActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mDoneClickListener:Landroid/view/View$OnClickListener;

    .line 653
    new-instance v0, Lcom/android/mms/ui/SlideEditorActivity$11;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SlideEditorActivity$11;-><init>(Lcom/android/mms/ui/SlideEditorActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mResizeImageCallback:Lcom/android/mms/ui/MessageUtils$ResizeImageResultCallback;

    return-void
.end method

.method static synthetic access$002(Lcom/android/mms/ui/SlideEditorActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mDirty:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/mms/ui/SlideEditorActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/mms/ui/SlideEditorActivity;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/android/mms/ui/SlideEditorActivity;->notifyUser(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$108(Lcom/android/mms/ui/SlideEditorActivity;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 67
    iget v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    return v0
.end method

.method static synthetic access$110(Lcom/android/mms/ui/SlideEditorActivity;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 67
    iget v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    const/4 v1, 0x1

    sub-int v1, v0, v1

    iput v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    return v0
.end method

.method static synthetic access$1100(Lcom/android/mms/ui/SlideEditorActivity;I)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/mms/ui/SlideEditorActivity;)Lcom/android/mms/model/SlideshowModel;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/mms/ui/SlideEditorActivity;)Lcom/android/mms/ui/SlideshowEditor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowEditor:Lcom/android/mms/ui/SlideshowEditor;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/mms/ui/SlideEditorActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/mms/ui/SlideEditorActivity;->showCurrentSlide()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/mms/ui/SlideEditorActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/mms/ui/SlideEditorActivity;->previewSlideshow()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/mms/ui/SlideEditorActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/mms/ui/SlideEditorActivity;->getPictureString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/mms/ui/SlideEditorActivity;ILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/mms/ui/SlideEditorActivity;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/mms/ui/SlideEditorActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/android/mms/ui/SlideEditorActivity;->setReplaceButtonText(I)V

    return-void
.end method

.method private getAudioString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 702
    const v0, 0x7f0900d1

    invoke-direct {p0, v0}, Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getPictureString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 706
    const v0, 0x7f0900d2

    invoke-direct {p0, v0}, Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getResourcesString(I)Ljava/lang/String;
    .locals 2
    .parameter "id"

    .prologue
    .line 697
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideEditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 698
    .local v0, r:Landroid/content/res/Resources;
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getResourcesString(ILjava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "id"
    .parameter "mediaName"

    .prologue
    .line 692
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideEditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 693
    .local v0, r:Landroid/content/res/Resources;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getVideoString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 710
    const v0, 0x7f0900d3

    invoke-direct {p0, v0}, Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private initActivityState(Landroid/os/Bundle;Landroid/content/Intent;)V
    .locals 3
    .parameter "savedInstanceState"
    .parameter "intent"

    .prologue
    const/4 v1, 0x0

    const-string v2, "slide_index"

    .line 174
    if-eqz p1, :cond_0

    .line 175
    const-string v0, "message_uri"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mUri:Landroid/net/Uri;

    .line 176
    const-string v0, "slide_index"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    .line 181
    :goto_0
    return-void

    .line 178
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mUri:Landroid/net/Uri;

    .line 179
    const-string v0, "slide_index"

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    goto :goto_0
.end method

.method private notifyUser(Ljava/lang/String;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 717
    return-void
.end method

.method private previewSlideshow()V
    .locals 2

    .prologue
    .line 303
    iget-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mUri:Landroid/net/Uri;

    iget-object v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    invoke-static {p0, v0, v1}, Lcom/android/mms/ui/MessageUtils;->viewMmsMessageAttachment(Landroid/content/Context;Landroid/net/Uri;Lcom/android/mms/model/SlideshowModel;)V

    .line 304
    return-void
.end method

.method private setReplaceButtonText(I)V
    .locals 1
    .parameter "text"

    .prologue
    .line 469
    iget-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mReplaceImage:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(I)V

    .line 470
    return-void
.end method

.method private showCurrentSlide()V
    .locals 2

    .prologue
    .line 720
    iget-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPresenter:Lcom/android/mms/ui/SlideshowPresenter;

    iget v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/SlideshowPresenter;->setLocation(I)V

    .line 721
    iget-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPresenter:Lcom/android/mms/ui/SlideshowPresenter;

    invoke-virtual {v0}, Lcom/android/mms/ui/SlideshowPresenter;->present()V

    .line 722
    invoke-direct {p0}, Lcom/android/mms/ui/SlideEditorActivity;->updateTitle()V

    .line 724
    iget-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    iget v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    invoke-virtual {v0, v1}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 725
    const v0, 0x7f09005b

    invoke-direct {p0, v0}, Lcom/android/mms/ui/SlideEditorActivity;->setReplaceButtonText(I)V

    .line 729
    :goto_0
    return-void

    .line 727
    :cond_0
    const v0, 0x7f090029

    invoke-direct {p0, v0}, Lcom/android/mms/ui/SlideEditorActivity;->setReplaceButtonText(I)V

    goto :goto_0
.end method

.method private showDurationDialog()V
    .locals 4

    .prologue
    .line 473
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 474
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f020078

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 475
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideEditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09005d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 476
    .local v1, title:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v3}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 478
    const v2, 0x7f070007

    new-instance v3, Lcom/android/mms/ui/SlideEditorActivity$9;

    invoke-direct {v3, p0}, Lcom/android/mms/ui/SlideEditorActivity$9;-><init>(Lcom/android/mms/ui/SlideEditorActivity;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 498
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 499
    return-void
.end method

.method private showLayoutSelectorDialog()V
    .locals 5

    .prologue
    .line 502
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 503
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    const v3, 0x7f020079

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 505
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideEditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09005e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 506
    .local v2, title:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v4}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 508
    new-instance v0, Lcom/android/mms/ui/LayoutSelectorAdapter;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/LayoutSelectorAdapter;-><init>(Landroid/content/Context;)V

    .line 509
    .local v0, adapter:Lcom/android/mms/ui/LayoutSelectorAdapter;
    new-instance v3, Lcom/android/mms/ui/SlideEditorActivity$10;

    invoke-direct {v3, p0}, Lcom/android/mms/ui/SlideEditorActivity$10;-><init>(Lcom/android/mms/ui/SlideEditorActivity;)V

    invoke-virtual {v1, v0, v3}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 523
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 524
    return-void
.end method

.method private updateTitle()V
    .locals 4

    .prologue
    .line 307
    const v0, 0x7f090027

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v3}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/ui/SlideEditorActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SlideEditorActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 308
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 11
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const v9, 0x7f09003e

    const v8, 0x7f09003d

    const v7, 0x7f090042

    const/4 v6, 0x0

    const-string v10, "SlideEditorActivity"

    .line 528
    const/4 v3, -0x1

    if-eq p2, v3, :cond_1

    .line 651
    :cond_0
    :goto_0
    return-void

    .line 532
    :cond_1
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 536
    :pswitch_0
    iget-object v3, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowEditor:Lcom/android/mms/ui/SlideshowEditor;

    iget v4, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/mms/ui/SlideshowEditor;->changeText(ILjava/lang/String;)V

    goto :goto_0

    .line 540
    :pswitch_1
    const-string v3, "data"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 541
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-nez v0, :cond_2

    .line 542
    invoke-direct {p0}, Lcom/android/mms/ui/SlideEditorActivity;->getPictureString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v7, v3}, Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 549
    :cond_2
    :try_start_0
    iget-object v3, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowEditor:Lcom/android/mms/ui/SlideshowEditor;

    iget v4, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    iget-object v5, p0, Lcom/android/mms/ui/SlideEditorActivity;->mUri:Landroid/net/Uri;

    invoke-static {p0, v5, v0}, Lcom/android/mms/ui/MessageUtils;->saveBitmapAsPart(Landroid/content/Context;Landroid/net/Uri;Landroid/graphics/Bitmap;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/mms/ui/SlideshowEditor;->changeImage(ILandroid/net/Uri;)V

    .line 552
    const v3, 0x7f09005b

    invoke-direct {p0, v3}, Lcom/android/mms/ui/SlideEditorActivity;->setReplaceButtonText(I)V
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/mms/UnsupportContentTypeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/android/mms/ResolutionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_0

    .line 553
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 554
    .local v1, e:Lcom/google/android/mms/MmsException;
    const-string v3, "SlideEditorActivity"

    const-string v3, "add image failed"

    invoke-static {v10, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 555
    const-string v3, "add picture failed"

    invoke-direct {p0, v3}, Lcom/android/mms/ui/SlideEditorActivity;->notifyUser(Ljava/lang/String;)V

    .line 556
    invoke-direct {p0}, Lcom/android/mms/ui/SlideEditorActivity;->getPictureString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v7, v3}, Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 559
    .end local v1           #e:Lcom/google/android/mms/MmsException;
    :catch_1
    move-exception v3

    move-object v1, v3

    .line 560
    .local v1, e:Lcom/android/mms/UnsupportContentTypeException;
    invoke-direct {p0}, Lcom/android/mms/ui/SlideEditorActivity;->getPictureString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v8, v3}, Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0}, Lcom/android/mms/ui/SlideEditorActivity;->getPictureString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v9, v4}, Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v3, v4}, Lcom/android/mms/ui/MessageUtils;->showErrorDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 563
    .end local v1           #e:Lcom/android/mms/UnsupportContentTypeException;
    :catch_2
    move-exception v3

    move-object v1, v3

    .line 564
    .local v1, e:Lcom/android/mms/ResolutionException;
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    iget-object v5, p0, Lcom/android/mms/ui/SlideEditorActivity;->mResizeImageCallback:Lcom/android/mms/ui/MessageUtils$ResizeImageResultCallback;

    invoke-static {p0, v3, v4, v5, v6}, Lcom/android/mms/ui/MessageUtils;->resizeImageAsync(Landroid/content/Context;Landroid/net/Uri;Landroid/os/Handler;Lcom/android/mms/ui/MessageUtils$ResizeImageResultCallback;Z)V

    goto/16 :goto_0

    .line 566
    .end local v1           #e:Lcom/android/mms/ResolutionException;
    :catch_3
    move-exception v3

    move-object v1, v3

    .line 567
    .local v1, e:Lcom/android/mms/ExceedMessageSizeException;
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    iget-object v5, p0, Lcom/android/mms/ui/SlideEditorActivity;->mResizeImageCallback:Lcom/android/mms/ui/MessageUtils$ResizeImageResultCallback;

    invoke-static {p0, v3, v4, v5, v6}, Lcom/android/mms/ui/MessageUtils;->resizeImageAsync(Landroid/content/Context;Landroid/net/Uri;Landroid/os/Handler;Lcom/android/mms/ui/MessageUtils$ResizeImageResultCallback;Z)V

    goto/16 :goto_0

    .line 574
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v1           #e:Lcom/android/mms/ExceedMessageSizeException;
    :pswitch_2
    :try_start_1
    iget-object v3, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowEditor:Lcom/android/mms/ui/SlideshowEditor;

    iget v4, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/mms/ui/SlideshowEditor;->changeImage(ILandroid/net/Uri;)V

    .line 575
    const v3, 0x7f09005b

    invoke-direct {p0, v3}, Lcom/android/mms/ui/SlideEditorActivity;->setReplaceButtonText(I)V
    :try_end_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Lcom/android/mms/UnsupportContentTypeException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Lcom/android/mms/ResolutionException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_1 .. :try_end_1} :catch_7

    goto/16 :goto_0

    .line 576
    :catch_4
    move-exception v3

    move-object v1, v3

    .line 577
    .local v1, e:Lcom/google/android/mms/MmsException;
    const-string v3, "SlideEditorActivity"

    const-string v3, "add image failed"

    invoke-static {v10, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 578
    const-string v3, "add picture failed"

    invoke-direct {p0, v3}, Lcom/android/mms/ui/SlideEditorActivity;->notifyUser(Ljava/lang/String;)V

    .line 579
    invoke-direct {p0}, Lcom/android/mms/ui/SlideEditorActivity;->getPictureString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v7, v3}, Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 582
    .end local v1           #e:Lcom/google/android/mms/MmsException;
    :catch_5
    move-exception v3

    move-object v1, v3

    .line 583
    .local v1, e:Lcom/android/mms/UnsupportContentTypeException;
    invoke-direct {p0}, Lcom/android/mms/ui/SlideEditorActivity;->getPictureString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v8, v3}, Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0}, Lcom/android/mms/ui/SlideEditorActivity;->getPictureString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v9, v4}, Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v3, v4}, Lcom/android/mms/ui/MessageUtils;->showErrorDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 586
    .end local v1           #e:Lcom/android/mms/UnsupportContentTypeException;
    :catch_6
    move-exception v3

    move-object v1, v3

    .line 587
    .local v1, e:Lcom/android/mms/ResolutionException;
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    iget-object v5, p0, Lcom/android/mms/ui/SlideEditorActivity;->mResizeImageCallback:Lcom/android/mms/ui/MessageUtils$ResizeImageResultCallback;

    invoke-static {p0, v3, v4, v5, v6}, Lcom/android/mms/ui/MessageUtils;->resizeImageAsync(Landroid/content/Context;Landroid/net/Uri;Landroid/os/Handler;Lcom/android/mms/ui/MessageUtils$ResizeImageResultCallback;Z)V

    goto/16 :goto_0

    .line 589
    .end local v1           #e:Lcom/android/mms/ResolutionException;
    :catch_7
    move-exception v3

    move-object v1, v3

    .line 590
    .local v1, e:Lcom/android/mms/ExceedMessageSizeException;
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    iget-object v5, p0, Lcom/android/mms/ui/SlideEditorActivity;->mResizeImageCallback:Lcom/android/mms/ui/MessageUtils$ResizeImageResultCallback;

    invoke-static {p0, v3, v4, v5, v6}, Lcom/android/mms/ui/MessageUtils;->resizeImageAsync(Landroid/content/Context;Landroid/net/Uri;Landroid/os/Handler;Lcom/android/mms/ui/MessageUtils$ResizeImageResultCallback;Z)V

    goto/16 :goto_0

    .line 598
    .end local v1           #e:Lcom/android/mms/ExceedMessageSizeException;
    :pswitch_3
    const/4 v3, 0x3

    if-ne p1, v3, :cond_3

    .line 599
    const-string v3, "android.intent.extra.ringtone.PICKED_URI"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 600
    .local v2, uri:Landroid/net/Uri;
    sget-object v3, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    invoke-virtual {v3, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 608
    :goto_1
    :try_start_2
    iget-object v3, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowEditor:Lcom/android/mms/ui/SlideshowEditor;

    iget v4, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    invoke-virtual {v3, v4, v2}, Lcom/android/mms/ui/SlideshowEditor;->changeAudio(ILandroid/net/Uri;)V
    :try_end_2
    .catch Lcom/google/android/mms/MmsException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Lcom/android/mms/UnsupportContentTypeException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_2 .. :try_end_2} :catch_a

    goto/16 :goto_0

    .line 609
    :catch_8
    move-exception v3

    move-object v1, v3

    .line 610
    .local v1, e:Lcom/google/android/mms/MmsException;
    const-string v3, "SlideEditorActivity"

    const-string v3, "add audio failed"

    invoke-static {v10, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 611
    const-string v3, "add music failed"

    invoke-direct {p0, v3}, Lcom/android/mms/ui/SlideEditorActivity;->notifyUser(Ljava/lang/String;)V

    .line 612
    invoke-direct {p0}, Lcom/android/mms/ui/SlideEditorActivity;->getAudioString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v7, v3}, Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 604
    .end local v1           #e:Lcom/google/android/mms/MmsException;
    .end local v2           #uri:Landroid/net/Uri;
    :cond_3
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .restart local v2       #uri:Landroid/net/Uri;
    goto :goto_1

    .line 615
    :catch_9
    move-exception v3

    move-object v1, v3

    .line 616
    .local v1, e:Lcom/android/mms/UnsupportContentTypeException;
    invoke-direct {p0}, Lcom/android/mms/ui/SlideEditorActivity;->getAudioString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v8, v3}, Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0}, Lcom/android/mms/ui/SlideEditorActivity;->getAudioString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v9, v4}, Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v3, v4}, Lcom/android/mms/ui/MessageUtils;->showErrorDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 619
    .end local v1           #e:Lcom/android/mms/UnsupportContentTypeException;
    :catch_a
    move-exception v3

    move-object v1, v3

    .line 620
    .local v1, e:Lcom/android/mms/ExceedMessageSizeException;
    const v3, 0x7f09003f

    invoke-direct {p0, v3}, Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0}, Lcom/android/mms/ui/SlideEditorActivity;->getAudioString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v7, v4}, Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v3, v4}, Lcom/android/mms/ui/MessageUtils;->showErrorDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 628
    .end local v1           #e:Lcom/android/mms/ExceedMessageSizeException;
    .end local v2           #uri:Landroid/net/Uri;
    :pswitch_4
    :try_start_3
    iget-object v3, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowEditor:Lcom/android/mms/ui/SlideshowEditor;

    iget v4, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/mms/ui/SlideshowEditor;->changeVideo(ILandroid/net/Uri;)V
    :try_end_3
    .catch Lcom/google/android/mms/MmsException; {:try_start_3 .. :try_end_3} :catch_b
    .catch Lcom/android/mms/UnsupportContentTypeException; {:try_start_3 .. :try_end_3} :catch_c
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_3 .. :try_end_3} :catch_d

    goto/16 :goto_0

    .line 629
    :catch_b
    move-exception v3

    move-object v1, v3

    .line 630
    .local v1, e:Lcom/google/android/mms/MmsException;
    const-string v3, "SlideEditorActivity"

    const-string v3, "add video failed"

    invoke-static {v10, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 631
    const-string v3, "add video failed"

    invoke-direct {p0, v3}, Lcom/android/mms/ui/SlideEditorActivity;->notifyUser(Ljava/lang/String;)V

    .line 632
    invoke-direct {p0}, Lcom/android/mms/ui/SlideEditorActivity;->getVideoString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v7, v3}, Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 635
    .end local v1           #e:Lcom/google/android/mms/MmsException;
    :catch_c
    move-exception v3

    move-object v1, v3

    .line 636
    .local v1, e:Lcom/android/mms/UnsupportContentTypeException;
    invoke-direct {p0}, Lcom/android/mms/ui/SlideEditorActivity;->getVideoString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v8, v3}, Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0}, Lcom/android/mms/ui/SlideEditorActivity;->getVideoString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v9, v4}, Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v3, v4}, Lcom/android/mms/ui/MessageUtils;->showErrorDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 639
    .end local v1           #e:Lcom/android/mms/UnsupportContentTypeException;
    :catch_d
    move-exception v3

    move-object v1, v3

    .line 640
    .local v1, e:Lcom/android/mms/ExceedMessageSizeException;
    const v3, 0x7f09003f

    invoke-direct {p0, v3}, Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0}, Lcom/android/mms/ui/SlideEditorActivity;->getVideoString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v7, v4}, Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v3, v4}, Lcom/android/mms/ui/MessageUtils;->showErrorDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 647
    .end local v1           #e:Lcom/android/mms/ExceedMessageSizeException;
    :pswitch_5
    iget-object v3, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowEditor:Lcom/android/mms/ui/SlideshowEditor;

    iget v4, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    mul-int/lit16 v5, v5, 0x3e8

    invoke-virtual {v3, v4, v5}, Lcom/android/mms/ui/SlideshowEditor;->changeDuration(II)V

    goto/16 :goto_0

    .line 532
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 124
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 125
    const v1, 0x7f03000d

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/SlideEditorActivity;->setContentView(I)V

    .line 127
    const v1, 0x7f0d003b

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/SlideEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/mms/ui/BasicSlideEditorView;

    iput-object v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideView:Lcom/android/mms/ui/BasicSlideEditorView;

    .line 128
    iget-object v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideView:Lcom/android/mms/ui/BasicSlideEditorView;

    iget-object v2, p0, Lcom/android/mms/ui/SlideEditorActivity;->mOnTextChangedListener:Lcom/android/mms/ui/BasicSlideEditorView$OnTextChangedListener;

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/BasicSlideEditorView;->setOnTextChangedListener(Lcom/android/mms/ui/BasicSlideEditorView$OnTextChangedListener;)V

    .line 130
    const v1, 0x7f0d003f

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/SlideEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPreSlide:Landroid/widget/ImageButton;

    .line 131
    iget-object v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPreSlide:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/android/mms/ui/SlideEditorActivity;->mOnNavigateBackward:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    const v1, 0x7f0d0040

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/SlideEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mNextSlide:Landroid/widget/ImageButton;

    .line 134
    iget-object v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mNextSlide:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/android/mms/ui/SlideEditorActivity;->mOnNavigateForward:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    const v1, 0x7f0d0041

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/SlideEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPreview:Landroid/widget/Button;

    .line 137
    iget-object v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPreview:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/mms/ui/SlideEditorActivity;->mOnPreview:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    const v1, 0x7f0d0042

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/SlideEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mReplaceImage:Landroid/widget/Button;

    .line 140
    iget-object v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mReplaceImage:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/mms/ui/SlideEditorActivity;->mOnReplaceImage:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    const v1, 0x7f0d0043

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/SlideEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mRemoveSlide:Landroid/widget/Button;

    .line 143
    iget-object v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mRemoveSlide:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/mms/ui/SlideEditorActivity;->mOnRemoveSlide:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    const v1, 0x7f0d0045

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/SlideEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mDone:Landroid/widget/Button;

    .line 146
    iget-object v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mDone:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/mms/ui/SlideEditorActivity;->mDoneClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideEditorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/android/mms/ui/SlideEditorActivity;->initActivityState(Landroid/os/Bundle;Landroid/content/Intent;)V

    .line 151
    :try_start_0
    iget-object v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mUri:Landroid/net/Uri;

    invoke-static {p0, v1}, Lcom/android/mms/model/SlideshowModel;->createFromMessageUri(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/mms/model/SlideshowModel;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    .line 153
    iget-object v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    iget-object v2, p0, Lcom/android/mms/ui/SlideEditorActivity;->mModelChangedObserver:Lcom/android/mms/model/IModelChangedObserver;

    invoke-virtual {v1, v2}, Lcom/android/mms/model/SlideshowModel;->registerModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    .line 154
    new-instance v1, Lcom/android/mms/ui/SlideshowEditor;

    iget-object v2, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    invoke-direct {v1, p0, v2}, Lcom/android/mms/ui/SlideshowEditor;-><init>(Landroid/content/Context;Lcom/android/mms/model/SlideshowModel;)V

    iput-object v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowEditor:Lcom/android/mms/ui/SlideshowEditor;

    .line 155
    const-string v1, "SlideshowPresenter"

    iget-object v2, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideView:Lcom/android/mms/ui/BasicSlideEditorView;

    iget-object v3, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    invoke-static {v1, p0, v2, v3}, Lcom/android/mms/ui/PresenterFactory;->getPresenter(Ljava/lang/String;Landroid/content/Context;Lcom/android/mms/ui/ViewInterface;Lcom/android/mms/model/Model;)Lcom/android/mms/ui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/mms/ui/SlideshowPresenter;

    iput-object v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPresenter:Lcom/android/mms/ui/SlideshowPresenter;

    .line 159
    iget v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    iget-object v2, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v2}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v2

    if-lt v1, v2, :cond_1

    .line 160
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v2}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    .line 165
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/mms/ui/SlideEditorActivity;->showCurrentSlide()V

    .line 171
    :goto_1
    return-void

    .line 161
    :cond_1
    iget v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    if-gez v1, :cond_0

    .line 162
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 166
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 167
    .local v0, e:Lcom/google/android/mms/MmsException;
    const-string v1, "SlideEditorActivity"

    const-string v2, "Create SlideshowModel failed!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 168
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideEditorActivity;->finish()V

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 210
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 212
    iget-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    iget-object v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mModelChangedObserver:Lcom/android/mms/model/IModelChangedObserver;

    invoke-virtual {v0, v1}, Lcom/android/mms/model/SlideshowModel;->unregisterModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    .line 216
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .parameter "item"

    .prologue
    const/4 v5, 0x1

    const-string v3, "android.intent.action.GET_CONTENT"

    .line 393
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 465
    :cond_0
    :goto_0
    return v5

    .line 395
    :pswitch_0
    invoke-direct {p0}, Lcom/android/mms/ui/SlideEditorActivity;->previewSlideshow()V

    goto :goto_0

    .line 399
    :pswitch_1
    iget-object v2, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    iget v3, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    invoke-virtual {v2, v3}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v1

    .line 400
    .local v1, slide:Lcom/android/mms/model/SlideModel;
    if-eqz v1, :cond_0

    .line 401
    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->removeText()Z

    goto :goto_0

    .line 406
    .end local v1           #slide:Lcom/android/mms/model/SlideModel;
    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.GET_CONTENT"

    const/4 v2, 0x0

    invoke-direct {v0, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 407
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "image/*"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 408
    invoke-virtual {p0, v0, v5}, Lcom/android/mms/ui/SlideEditorActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 412
    .end local v0           #intent:Landroid/content/Intent;
    :pswitch_3
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 413
    .restart local v0       #intent:Landroid/content/Intent;
    const/4 v2, 0x2

    invoke-virtual {p0, v0, v2}, Lcom/android/mms/ui/SlideEditorActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 417
    .end local v0           #intent:Landroid/content/Intent;
    :pswitch_4
    iget-object v2, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowEditor:Lcom/android/mms/ui/SlideshowEditor;

    iget v3, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/SlideshowEditor;->removeImage(I)Z

    .line 418
    const v2, 0x7f090029

    invoke-direct {p0, v2}, Lcom/android/mms/ui/SlideEditorActivity;->setReplaceButtonText(I)V

    goto :goto_0

    .line 422
    :pswitch_5
    const/4 v2, 0x3

    invoke-static {p0, v2}, Lcom/android/mms/ui/MessageUtils;->selectAudio(Landroid/content/Context;I)V

    goto :goto_0

    .line 426
    :pswitch_6
    const/4 v2, 0x4

    const-wide/16 v3, -0x1

    invoke-static {p0, v2, v3, v4}, Lcom/android/mms/ui/MessageUtils;->recordSound(Landroid/content/Context;IJ)V

    goto :goto_0

    .line 430
    :pswitch_7
    iget-object v2, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowEditor:Lcom/android/mms/ui/SlideshowEditor;

    iget v3, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/SlideshowEditor;->removeAudio(I)Z

    goto :goto_0

    .line 434
    :pswitch_8
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 435
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v2, "video/*"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 436
    const/4 v2, 0x5

    invoke-virtual {p0, v0, v2}, Lcom/android/mms/ui/SlideEditorActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 440
    .end local v0           #intent:Landroid/content/Intent;
    :pswitch_9
    iget-object v2, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowEditor:Lcom/android/mms/ui/SlideshowEditor;

    iget v3, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/SlideshowEditor;->removeVideo(I)Z

    goto :goto_0

    .line 444
    :pswitch_a
    iget v2, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    .line 445
    iget-object v2, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowEditor:Lcom/android/mms/ui/SlideshowEditor;

    iget v3, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/SlideshowEditor;->addNewSlide(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 447
    invoke-direct {p0}, Lcom/android/mms/ui/SlideEditorActivity;->showCurrentSlide()V

    goto :goto_0

    .line 450
    :cond_1
    iget v2, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    sub-int/2addr v2, v5

    iput v2, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    .line 451
    const v2, 0x7f090050

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 457
    :pswitch_b
    invoke-direct {p0}, Lcom/android/mms/ui/SlideEditorActivity;->showLayoutSelectorDialog()V

    goto/16 :goto_0

    .line 461
    :pswitch_c
    invoke-direct {p0}, Lcom/android/mms/ui/SlideEditorActivity;->showDurationDialog()V

    goto/16 :goto_0

    .line 393
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_7
        :pswitch_8
        :pswitch_a
        :pswitch_9
        :pswitch_b
        :pswitch_c
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method protected onPause()V
    .locals 5

    .prologue
    .line 193
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 195
    monitor-enter p0

    .line 196
    :try_start_0
    iget-boolean v2, p0, Lcom/android/mms/ui/SlideEditorActivity;->mDirty:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 198
    :try_start_1
    iget-object v2, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v2}, Lcom/android/mms/model/SlideshowModel;->toPduBody()Lcom/google/android/mms/pdu/PduBody;

    move-result-object v1

    .line 199
    .local v1, pb:Lcom/google/android/mms/pdu/PduBody;
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/SlideEditorActivity;->mUri:Landroid/net/Uri;

    invoke-virtual {v2, v3, v1}, Lcom/google/android/mms/pdu/PduPersister;->updateParts(Landroid/net/Uri;Lcom/google/android/mms/pdu/PduBody;)V

    .line 200
    iget-object v2, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v2, v1}, Lcom/android/mms/model/SlideshowModel;->sync(Lcom/google/android/mms/pdu/PduBody;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_1 .. :try_end_1} :catch_0

    .line 205
    .end local v1           #pb:Lcom/google/android/mms/pdu/PduBody;
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit p0

    .line 206
    return-void

    .line 201
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 202
    .local v0, e:Lcom/google/android/mms/MmsException;
    const-string v2, "SlideEditorActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot update the message: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/SlideEditorActivity;->mUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 205
    .end local v0           #e:Lcom/google/android/mms/MmsException;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 11
    .parameter "menu"

    .prologue
    const v10, 0x7f020063

    const/16 v6, 0xc

    const v9, 0x7f020070

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 312
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideEditorActivity;->isFinishing()Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v7

    .line 388
    :goto_0
    return v4

    .line 315
    :cond_0
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 317
    iget-object v4, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    iget v5, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    invoke-virtual {v4, v5}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v2

    .line 319
    .local v2, slide:Lcom/android/mms/model/SlideModel;
    if-nez v2, :cond_1

    move v4, v7

    .line 320
    goto :goto_0

    .line 324
    :cond_1
    const/16 v4, 0xb

    const v5, 0x7f09005a

    invoke-interface {p1, v7, v4, v7, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    const v5, 0x1080413

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 328
    invoke-virtual {v2}, Lcom/android/mms/model/SlideModel;->hasText()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v2}, Lcom/android/mms/model/SlideModel;->getText()Lcom/android/mms/model/TextModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 330
    const v4, 0x7f090028

    invoke-interface {p1, v7, v7, v7, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    const v5, 0x7f020073

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 335
    :cond_2
    invoke-virtual {v2}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 336
    const/4 v4, 0x3

    const v5, 0x7f09002a

    invoke-interface {p1, v7, v4, v7, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    const v5, 0x7f020071

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 346
    :cond_3
    :goto_1
    invoke-virtual {v2}, Lcom/android/mms/model/SlideModel;->hasAudio()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 347
    const/4 v4, 0x5

    const v5, 0x7f09002c

    invoke-interface {p1, v7, v4, v7, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    const v5, 0x7f020072

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 362
    :cond_4
    :goto_2
    invoke-virtual {v2}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 363
    const/16 v4, 0x8

    const v5, 0x7f09002e

    invoke-interface {p1, v7, v4, v7, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    const v5, 0x7f020074

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 370
    :cond_5
    :goto_3
    const/4 v4, 0x7

    const v5, 0x7f090024

    invoke-interface {p1, v7, v4, v7, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    const v5, 0x7f020062

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 374
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideEditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f09005c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 375
    .local v0, duration:Ljava/lang/String;
    const/16 v4, 0xa

    const-string v5, "%s"

    invoke-virtual {v2}, Lcom/android/mms/model/SlideModel;->getDuration()I

    move-result v6

    div-int/lit16 v6, v6, 0x3e8

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v7, v4, v7, v5}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v4

    const v5, 0x7f020068

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 381
    iget-object v4, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v4}, Lcom/android/mms/model/SlideshowModel;->getLayout()Lcom/android/mms/model/LayoutModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/model/LayoutModel;->getLayoutType()I

    move-result v4

    if-ne v4, v8, :cond_a

    .line 382
    const v1, 0x7f09005f

    .line 387
    .local v1, resId:I
    :goto_4
    const/16 v4, 0x9

    invoke-interface {p1, v7, v4, v7, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v9}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move v4, v8

    .line 388
    goto/16 :goto_0

    .line 338
    .end local v0           #duration:Ljava/lang/String;
    .end local v1           #resId:I
    :cond_6
    invoke-virtual {v2}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v4

    if-nez v4, :cond_3

    .line 339
    const v4, 0x7f090029

    invoke-interface {p1, v7, v8, v7, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v9}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 341
    const/4 v4, 0x2

    const v5, 0x7f0900b5

    invoke-interface {p1, v7, v4, v7, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v9}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto/16 :goto_1

    .line 349
    :cond_7
    invoke-virtual {v2}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v4

    if-nez v4, :cond_4

    .line 350
    invoke-static {}, Lcom/android/mms/MmsConfig;->getAllowAttachAudio()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 351
    const/16 v4, 0xd

    const v5, 0x7f09002b

    invoke-interface {p1, v7, v4, v7, v5}, Landroid/view/Menu;->addSubMenu(IIII)Landroid/view/SubMenu;

    move-result-object v4

    invoke-interface {v4, v10}, Landroid/view/SubMenu;->setIcon(I)Landroid/view/SubMenu;

    move-result-object v3

    .line 353
    .local v3, subMenu:Landroid/view/SubMenu;
    const/4 v4, 0x4

    const v5, 0x7f0900b8

    invoke-interface {v3, v7, v4, v7, v5}, Landroid/view/SubMenu;->add(IIII)Landroid/view/MenuItem;

    .line 354
    const v4, 0x7f0900b9

    invoke-interface {v3, v7, v6, v7, v4}, Landroid/view/SubMenu;->add(IIII)Landroid/view/MenuItem;

    goto/16 :goto_2

    .line 356
    .end local v3           #subMenu:Landroid/view/SubMenu;
    :cond_8
    const v4, 0x7f0900b9

    invoke-interface {p1, v7, v6, v7, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v10}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto/16 :goto_2

    .line 365
    :cond_9
    invoke-virtual {v2}, Lcom/android/mms/model/SlideModel;->hasAudio()Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {v2}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v4

    if-nez v4, :cond_5

    .line 366
    const/4 v4, 0x6

    const v5, 0x7f09002d

    invoke-interface {p1, v7, v4, v7, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    const v5, 0x7f02006f

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto/16 :goto_3

    .line 384
    .restart local v0       #duration:Ljava/lang/String;
    :cond_a
    const v1, 0x7f090060

    .restart local v1       #resId:I
    goto :goto_4
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 185
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 187
    const-string v0, "slide_index"

    iget v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 188
    const-string v0, "message_uri"

    iget-object v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 189
    return-void
.end method
