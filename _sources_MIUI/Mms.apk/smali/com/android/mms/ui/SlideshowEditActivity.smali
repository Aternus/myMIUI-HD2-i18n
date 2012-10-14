.class public Lcom/android/mms/ui/SlideshowEditActivity;
.super Landroid/app/ListActivity;
.source "SlideshowEditActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/SlideshowEditActivity$SlideListAdapter;
    }
.end annotation


# instance fields
.field private mAddSlideItem:Landroid/view/View;

.field private mDirty:Z

.field private mList:Landroid/widget/ListView;

.field private final mModelChangedObserver:Lcom/android/mms/model/IModelChangedObserver;

.field private mResultIntent:Landroid/content/Intent;

.field private mSlideListAdapter:Lcom/android/mms/ui/SlideshowEditActivity$SlideListAdapter;

.field private mSlideshowEditor:Lcom/android/mms/ui/SlideshowEditor;

.field private mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

.field private mState:Landroid/os/Bundle;

.field private mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 51
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 73
    iput-object v0, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    .line 74
    iput-object v0, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mSlideshowEditor:Lcom/android/mms/ui/SlideshowEditor;

    .line 395
    new-instance v0, Lcom/android/mms/ui/SlideshowEditActivity$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SlideshowEditActivity$1;-><init>(Lcom/android/mms/ui/SlideshowEditActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mModelChangedObserver:Lcom/android/mms/model/IModelChangedObserver;

    return-void
.end method

.method static synthetic access$002(Lcom/android/mms/ui/SlideshowEditActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput-boolean p1, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mDirty:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/mms/ui/SlideshowEditActivity;)Landroid/content/Intent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mResultIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/mms/ui/SlideshowEditActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/mms/ui/SlideshowEditActivity;->adjustAddSlideVisibility()V

    return-void
.end method

.method private addNewSlide()V
    .locals 3

    .prologue
    .line 306
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mSlideshowEditor:Lcom/android/mms/ui/SlideshowEditor;

    invoke-virtual {v0}, Lcom/android/mms/ui/SlideshowEditor;->addNewSlide()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 308
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mSlideListAdapter:Lcom/android/mms/ui/SlideshowEditActivity$SlideListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/SlideshowEditActivity$SlideListAdapter;->notifyDataSetChanged()V

    .line 311
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->requestFocus()Z

    .line 312
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v1}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 317
    :goto_0
    return-void

    .line 314
    :cond_0
    const v0, 0x7f090050

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private adjustAddSlideVisibility()V
    .locals 2

    .prologue
    .line 298
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    .line 299
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mAddSlideItem:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 303
    :goto_0
    return-void

    .line 301
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mAddSlideItem:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private cleanupSlideshowModel()V
    .locals 2

    .prologue
    .line 204
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    iget-object v1, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mModelChangedObserver:Lcom/android/mms/model/IModelChangedObserver;

    invoke-virtual {v0, v1}, Lcom/android/mms/model/SlideshowModel;->unregisterModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    .line 207
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    .line 209
    :cond_0
    return-void
.end method

.method private createAddSlideItem()Landroid/view/View;
    .locals 5

    .prologue
    .line 122
    const-string v3, "layout_inflater"

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/SlideshowEditActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/view/LayoutInflater;

    const v3, 0x7f030052

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 126
    .local v2, v:Landroid/view/View;
    const v3, 0x7f0d00e3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 127
    .local v1, text:Landroid/widget/TextView;
    const v3, 0x7f090024

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 129
    const v3, 0x7f0d00e4

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1           #text:Landroid/widget/TextView;
    check-cast v1, Landroid/widget/TextView;

    .line 130
    .restart local v1       #text:Landroid/widget/TextView;
    const v3, 0x7f090025

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 131
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 133
    const v3, 0x7f0d00e2

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 134
    .local v0, image:Landroid/widget/ImageView;
    const v3, 0x7f02005c

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 136
    return-object v2
.end method

.method private initSlideList()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 212
    invoke-direct {p0}, Lcom/android/mms/ui/SlideshowEditActivity;->cleanupSlideshowModel()V

    .line 213
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mUri:Landroid/net/Uri;

    invoke-static {p0, v0}, Lcom/android/mms/model/SlideshowModel;->createFromMessageUri(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    .line 214
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    iget-object v1, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mModelChangedObserver:Lcom/android/mms/model/IModelChangedObserver;

    invoke-virtual {v0, v1}, Lcom/android/mms/model/SlideshowModel;->registerModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    .line 215
    new-instance v0, Lcom/android/mms/ui/SlideshowEditor;

    iget-object v1, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    invoke-direct {v0, p0, v1}, Lcom/android/mms/ui/SlideshowEditor;-><init>(Landroid/content/Context;Lcom/android/mms/model/SlideshowModel;)V

    iput-object v0, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mSlideshowEditor:Lcom/android/mms/ui/SlideshowEditor;

    .line 216
    new-instance v0, Lcom/android/mms/ui/SlideshowEditActivity$SlideListAdapter;

    const v1, 0x7f030052

    iget-object v2, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/mms/ui/SlideshowEditActivity$SlideListAdapter;-><init>(Landroid/content/Context;ILcom/android/mms/model/SlideshowModel;)V

    iput-object v0, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mSlideListAdapter:Lcom/android/mms/ui/SlideshowEditActivity$SlideListAdapter;

    .line 218
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mSlideListAdapter:Lcom/android/mms/ui/SlideshowEditActivity$SlideListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 219
    return-void
.end method

.method private openSlide(I)V
    .locals 2
    .parameter

    .prologue
    .line 291
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/mms/ui/SlideEditorActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 292
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 293
    const-string v1, "slide_index"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 294
    const/4 v1, 0x6

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/ui/SlideshowEditActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 295
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v2, -0x1

    .line 322
    if-eq p2, v2, :cond_0

    .line 347
    :goto_0
    return-void

    .line 326
    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 328
    :pswitch_0
    monitor-enter p0

    .line 329
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mDirty:Z

    .line 330
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 331
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mResultIntent:Landroid/content/Intent;

    invoke-virtual {p0, v2, v1}, Lcom/android/mms/ui/SlideshowEditActivity;->setResult(ILandroid/content/Intent;)V

    .line 333
    if-eqz p3, :cond_1

    const-string v1, "done"

    const/4 v2, 0x0

    invoke-virtual {p3, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 334
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideshowEditActivity;->finish()V

    goto :goto_0

    .line 330
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 339
    :cond_1
    :try_start_2
    invoke-direct {p0}, Lcom/android/mms/ui/SlideshowEditActivity;->initSlideList()V
    :try_end_2
    .catch Lcom/google/android/mms/MmsException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 340
    :catch_0
    move-exception v0

    .line 341
    .local v0, e:Lcom/google/android/mms/MmsException;
    const-string v1, "SlideshowEditActivity"

    const-string v2, "Failed to initialize the slide-list."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 342
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideshowEditActivity;->finish()V

    goto :goto_0

    .line 326
    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "icicle"

    .prologue
    const-string v3, "SlideshowEditActivity"

    .line 84
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 86
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideshowEditActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mList:Landroid/widget/ListView;

    .line 87
    invoke-direct {p0}, Lcom/android/mms/ui/SlideshowEditActivity;->createAddSlideItem()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mAddSlideItem:Landroid/view/View;

    .line 88
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mList:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mAddSlideItem:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 89
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mAddSlideItem:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 91
    if-eqz p1, :cond_0

    .line 93
    const-string v1, "state"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mState:Landroid/os/Bundle;

    .line 96
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mState:Landroid/os/Bundle;

    if-eqz v1, :cond_1

    .line 97
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mState:Landroid/os/Bundle;

    const-string v2, "message_uri"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mUri:Landroid/net/Uri;

    .line 102
    :goto_0
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mUri:Landroid/net/Uri;

    if-nez v1, :cond_2

    .line 103
    const-string v1, "SlideshowEditActivity"

    const-string v1, "Cannot startup activity, null Uri."

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideshowEditActivity;->finish()V

    .line 119
    :goto_1
    return-void

    .line 99
    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideshowEditActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mUri:Landroid/net/Uri;

    goto :goto_0

    .line 109
    :cond_2
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iput-object v1, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mResultIntent:Landroid/content/Intent;

    .line 110
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mResultIntent:Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 113
    :try_start_0
    invoke-direct {p0}, Lcom/android/mms/ui/SlideshowEditActivity;->initSlideList()V

    .line 114
    invoke-direct {p0}, Lcom/android/mms/ui/SlideshowEditActivity;->adjustAddSlideVisibility()V
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 115
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 116
    .local v0, e:Lcom/google/android/mms/MmsException;
    const-string v1, "SlideshowEditActivity"

    const-string v1, "Failed to initialize the slide-list."

    invoke-static {v3, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 117
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideshowEditActivity;->finish()V

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 199
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 200
    invoke-direct {p0}, Lcom/android/mms/ui/SlideshowEditActivity;->cleanupSlideshowModel()V

    .line 201
    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 2
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 141
    invoke-virtual {p1}, Landroid/widget/ListView;->getCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-ne p3, v0, :cond_0

    .line 142
    invoke-direct {p0}, Lcom/android/mms/ui/SlideshowEditActivity;->addNewSlide()V

    .line 146
    :goto_0
    return-void

    .line 144
    :cond_0
    invoke-direct {p0, p3}, Lcom/android/mms/ui/SlideshowEditActivity;->openSlide(I)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    const/4 v3, 0x1

    .line 253
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mList:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getSelectedItemPosition()I

    move-result v0

    .line 255
    .local v0, position:I
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 287
    :cond_0
    :goto_0
    return v3

    .line 257
    :pswitch_0
    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v1}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 258
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mSlideshowEditor:Lcom/android/mms/ui/SlideshowEditor;

    invoke-virtual {v1, v0}, Lcom/android/mms/ui/SlideshowEditor;->moveSlideUp(I)V

    .line 259
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mSlideListAdapter:Lcom/android/mms/ui/SlideshowEditActivity$SlideListAdapter;

    invoke-virtual {v1}, Lcom/android/mms/ui/SlideshowEditActivity$SlideListAdapter;->notifyDataSetChanged()V

    .line 260
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mList:Landroid/widget/ListView;

    sub-int v2, v0, v3

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_0

    .line 264
    :pswitch_1
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v1}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v1

    sub-int/2addr v1, v3

    if-ge v0, v1, :cond_0

    .line 265
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mSlideshowEditor:Lcom/android/mms/ui/SlideshowEditor;

    invoke-virtual {v1, v0}, Lcom/android/mms/ui/SlideshowEditor;->moveSlideDown(I)V

    .line 266
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mSlideListAdapter:Lcom/android/mms/ui/SlideshowEditActivity$SlideListAdapter;

    invoke-virtual {v1}, Lcom/android/mms/ui/SlideshowEditActivity$SlideListAdapter;->notifyDataSetChanged()V

    .line 267
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mList:Landroid/widget/ListView;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_0

    .line 271
    :pswitch_2
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v1}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 272
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mSlideshowEditor:Lcom/android/mms/ui/SlideshowEditor;

    invoke-virtual {v1, v0}, Lcom/android/mms/ui/SlideshowEditor;->removeSlide(I)V

    .line 273
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mSlideListAdapter:Lcom/android/mms/ui/SlideshowEditActivity$SlideListAdapter;

    invoke-virtual {v1}, Lcom/android/mms/ui/SlideshowEditActivity$SlideListAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 277
    :pswitch_3
    invoke-direct {p0}, Lcom/android/mms/ui/SlideshowEditActivity;->addNewSlide()V

    goto :goto_0

    .line 281
    :pswitch_4
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mSlideshowEditor:Lcom/android/mms/ui/SlideshowEditor;

    invoke-virtual {v1}, Lcom/android/mms/ui/SlideshowEditor;->removeAllSlides()V

    .line 282
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mSlideListAdapter:Lcom/android/mms/ui/SlideshowEditActivity$SlideListAdapter;

    invoke-virtual {v1}, Lcom/android/mms/ui/SlideshowEditActivity$SlideListAdapter;->notifyDataSetChanged()V

    .line 283
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideshowEditActivity;->finish()V

    goto :goto_0

    .line 255
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected onPause()V
    .locals 5

    .prologue
    .line 182
    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    .line 184
    monitor-enter p0

    .line 185
    :try_start_0
    iget-boolean v2, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mDirty:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 187
    :try_start_1
    iget-object v2, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v2}, Lcom/android/mms/model/SlideshowModel;->toPduBody()Lcom/google/android/mms/pdu/PduBody;

    move-result-object v1

    .line 188
    .local v1, pb:Lcom/google/android/mms/pdu/PduBody;
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mUri:Landroid/net/Uri;

    invoke-virtual {v2, v3, v1}, Lcom/google/android/mms/pdu/PduPersister;->updateParts(Landroid/net/Uri;Lcom/google/android/mms/pdu/PduBody;)V

    .line 189
    iget-object v2, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v2, v1}, Lcom/android/mms/model/SlideshowModel;->sync(Lcom/google/android/mms/pdu/PduBody;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_1 .. :try_end_1} :catch_0

    .line 194
    .end local v1           #pb:Lcom/google/android/mms/pdu/PduBody;
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit p0

    .line 195
    return-void

    .line 190
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 191
    .local v0, e:Lcom/google/android/mms/MmsException;
    const-string v2, "SlideshowEditActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot update the message: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 194
    .end local v0           #e:Lcom/google/android/mms/MmsException;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 8
    .parameter "menu"

    .prologue
    const v7, 0x7f090024

    const v6, 0x7f020062

    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 223
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 225
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mList:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getSelectedItemPosition()I

    move-result v0

    .line 226
    .local v0, position:I
    if-ltz v0, :cond_2

    iget-object v1, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mList:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getCount()I

    move-result v1

    sub-int/2addr v1, v4

    if-eq v0, v1, :cond_2

    .line 228
    if-lez v0, :cond_0

    .line 229
    const v1, 0x7f090021

    invoke-interface {p1, v3, v3, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f02006e

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 232
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mSlideListAdapter:Lcom/android/mms/ui/SlideshowEditActivity$SlideListAdapter;

    invoke-virtual {v1}, Lcom/android/mms/ui/SlideshowEditActivity$SlideListAdapter;->getCount()I

    move-result v1

    sub-int/2addr v1, v4

    if-ge v0, v1, :cond_1

    .line 233
    const v1, 0x7f090022

    invoke-interface {p1, v3, v4, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f02006d

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 237
    :cond_1
    invoke-interface {p1, v3, v5, v3, v7}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 239
    const/4 v1, 0x2

    const v2, 0x7f090023

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x108003c

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 245
    :goto_0
    const/4 v1, 0x4

    const v2, 0x7f090026

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f020067

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 248
    return v4

    .line 242
    :cond_2
    invoke-interface {p1, v3, v5, v3, v7}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 150
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 152
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mState:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mState:Landroid/os/Bundle;

    const-string v2, "slide_index"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 155
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "outState"

    .prologue
    .line 163
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 165
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mState:Landroid/os/Bundle;

    .line 166
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getSelectedItemPosition()I

    move-result v0

    if-ltz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mState:Landroid/os/Bundle;

    const-string v1, "slide_index"

    iget-object v2, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mList:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getSelectedItemPosition()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mUri:Landroid/net/Uri;

    if-eqz v0, :cond_1

    .line 171
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mState:Landroid/os/Bundle;

    const-string v1, "message_uri"

    iget-object v2, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    :cond_1
    const-string v0, "state"

    iget-object v1, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mState:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 178
    return-void
.end method
