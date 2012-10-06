.class public Lcom/android/browser/ui/MiRenViewFlipperWrapper;
.super Landroid/widget/FrameLayout;
.source "MiRenViewFlipperWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/ui/MiRenViewFlipperWrapper$SwitchAnimation;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "com.android.browser.ui.MiRenViewFlipperWrapper"

.field private static final MSG_REMOVE_CHILD:I


# instance fields
.field private mCurrentChild:I

.field private mDetachedViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mSwitchFinished:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 24
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/browser/ui/MiRenViewFlipperWrapper;->mSwitchFinished:Z

    .line 294
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/browser/ui/MiRenViewFlipperWrapper;->mCurrentChild:I

    .line 295
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/browser/ui/MiRenViewFlipperWrapper;->mDetachedViews:Ljava/util/List;

    .line 34
    invoke-direct {p0}, Lcom/android/browser/ui/MiRenViewFlipperWrapper;->initHandler()V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/browser/ui/MiRenViewFlipperWrapper;->mSwitchFinished:Z

    .line 294
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/browser/ui/MiRenViewFlipperWrapper;->mCurrentChild:I

    .line 295
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/browser/ui/MiRenViewFlipperWrapper;->mDetachedViews:Ljava/util/List;

    .line 39
    invoke-direct {p0}, Lcom/android/browser/ui/MiRenViewFlipperWrapper;->initHandler()V

    .line 40
    return-void
.end method

.method static synthetic access$002(Lcom/android/browser/ui/MiRenViewFlipperWrapper;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    iput-boolean p1, p0, Lcom/android/browser/ui/MiRenViewFlipperWrapper;->mSwitchFinished:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/browser/ui/MiRenViewFlipperWrapper;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/browser/ui/MiRenViewFlipperWrapper;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V
    .locals 2
    .parameter "child"
    .parameter "index"
    .parameter "params"
    .parameter "blockExternalCaller"

    .prologue
    .line 235
    if-eqz p4, :cond_0

    .line 236
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "please report a bug"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 238
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 239
    return-void
.end method

.method private initHandler()V
    .locals 1

    .prologue
    .line 42
    new-instance v0, Lcom/android/browser/ui/MiRenViewFlipperWrapper$1;

    invoke-direct {v0, p0}, Lcom/android/browser/ui/MiRenViewFlipperWrapper$1;-><init>(Lcom/android/browser/ui/MiRenViewFlipperWrapper;)V

    iput-object v0, p0, Lcom/android/browser/ui/MiRenViewFlipperWrapper;->mHandler:Landroid/os/Handler;

    .line 57
    return-void
.end method


# virtual methods
.method public addDetachedView(Landroid/view/View;)V
    .locals 1
    .parameter "child"

    .prologue
    .line 156
    invoke-virtual {p0}, Lcom/android/browser/ui/MiRenViewFlipperWrapper;->getChildCount()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/browser/ui/MiRenViewFlipperWrapper;->addDetachedView(Landroid/view/View;I)V

    .line 157
    return-void
.end method

.method public addDetachedView(Landroid/view/View;I)V
    .locals 2
    .parameter "child"
    .parameter "index"

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/browser/ui/MiRenViewFlipperWrapper;->mDetachedViews:Ljava/util/List;

    invoke-interface {v0, p2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 162
    iget v0, p0, Lcom/android/browser/ui/MiRenViewFlipperWrapper;->mCurrentChild:I

    if-gt p2, v0, :cond_0

    .line 163
    iget v0, p0, Lcom/android/browser/ui/MiRenViewFlipperWrapper;->mCurrentChild:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/browser/ui/MiRenViewFlipperWrapper;->mCurrentChild:I

    .line 165
    :cond_0
    invoke-virtual {p0}, Lcom/android/browser/ui/MiRenViewFlipperWrapper;->getDetachedViewCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 166
    const/4 v0, 0x0

    sget-object v1, Lcom/android/browser/ui/MiRenViewFlipperWrapper$SwitchAnimation;->SWITCH_ANIMATION_NONE:Lcom/android/browser/ui/MiRenViewFlipperWrapper$SwitchAnimation;

    invoke-virtual {p0, v0, v1}, Lcom/android/browser/ui/MiRenViewFlipperWrapper;->setDisplayedDetachedView(ILcom/android/browser/ui/MiRenViewFlipperWrapper$SwitchAnimation;)V

    .line 170
    :goto_0
    return-void

    .line 168
    :cond_1
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .parameter "child"
    .parameter "index"
    .parameter "params"

    .prologue
    .line 228
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/browser/ui/MiRenViewFlipperWrapper;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    .line 229
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .parameter "canvas"

    .prologue
    const-string v5, "&"

    .line 278
    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 293
    :goto_0
    return-void

    .line 279
    :catch_0
    move-exception v0

    .line 280
    .local v0, e:Ljava/lang/NullPointerException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 281
    .local v2, stringBuilder:Ljava/lang/StringBuilder;
    const-string v3, "childNum="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/browser/ui/MiRenViewFlipperWrapper;->getChildCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-virtual {p0}, Lcom/android/browser/ui/MiRenViewFlipperWrapper;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 285
    const-string v3, "view"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v1}, Lcom/android/browser/ui/MiRenViewFlipperWrapper;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 291
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/browser/LogSettings;->reportExceptionAsync(Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getCurrentDetachedView()Landroid/view/View;
    .locals 1

    .prologue
    .line 145
    iget v0, p0, Lcom/android/browser/ui/MiRenViewFlipperWrapper;->mCurrentChild:I

    invoke-virtual {p0, v0}, Lcom/android/browser/ui/MiRenViewFlipperWrapper;->getDetachedViewAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentDetachedViewIndex()I
    .locals 1

    .prologue
    .line 152
    iget v0, p0, Lcom/android/browser/ui/MiRenViewFlipperWrapper;->mCurrentChild:I

    return v0
.end method

.method public getDetachedViewAt(I)Landroid/view/View;
    .locals 1
    .parameter "index"

    .prologue
    .line 213
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/android/browser/ui/MiRenViewFlipperWrapper;->mDetachedViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 214
    :cond_0
    const/4 v0, 0x0

    .line 216
    .end local p0
    :goto_0
    return-object v0

    .restart local p0
    :cond_1
    iget-object v0, p0, Lcom/android/browser/ui/MiRenViewFlipperWrapper;->mDetachedViews:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/view/View;

    move-object v0, p0

    goto :goto_0
.end method

.method public getDetachedViewCount()I
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/android/browser/ui/MiRenViewFlipperWrapper;->mDetachedViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public indexOfDetachedView(Landroid/view/View;)I
    .locals 1
    .parameter "view"

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/browser/ui/MiRenViewFlipperWrapper;->mDetachedViews:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isInSwitching()Z
    .locals 1

    .prologue
    .line 141
    iget-boolean v0, p0, Lcom/android/browser/ui/MiRenViewFlipperWrapper;->mSwitchFinished:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeDetachedView(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 173
    invoke-virtual {p0, p1}, Lcom/android/browser/ui/MiRenViewFlipperWrapper;->indexOfDetachedView(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/browser/ui/MiRenViewFlipperWrapper;->removeDetachedViewAt(I)V

    .line 174
    return-void
.end method

.method public removeDetachedViewAt(I)V
    .locals 8
    .parameter "index"

    .prologue
    const/4 v7, 0x1

    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 177
    invoke-virtual {p0, p1}, Lcom/android/browser/ui/MiRenViewFlipperWrapper;->getDetachedViewAt(I)Landroid/view/View;

    move-result-object v2

    .line 178
    .local v2, removedView:Landroid/view/View;
    if-nez v2, :cond_1

    .line 206
    :cond_0
    :goto_0
    return-void

    .line 182
    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/browser/ui/MiRenViewFlipperWrapper;->indexOfChild(Landroid/view/View;)I

    move-result v4

    if-ltz v4, :cond_2

    .line 183
    invoke-virtual {p0, v2, v5}, Lcom/android/browser/ui/MiRenViewFlipperWrapper;->removeView(Landroid/view/View;Z)V

    .line 184
    :cond_2
    iget-object v4, p0, Lcom/android/browser/ui/MiRenViewFlipperWrapper;->mDetachedViews:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 187
    invoke-virtual {p0}, Lcom/android/browser/ui/MiRenViewFlipperWrapper;->getDetachedViewCount()I

    move-result v0

    .line 188
    .local v0, childCount:I
    const/4 v3, 0x0

    .line 189
    .local v3, tabChanged:Z
    if-gtz v0, :cond_4

    .line 190
    iput v6, p0, Lcom/android/browser/ui/MiRenViewFlipperWrapper;->mCurrentChild:I

    .line 199
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/android/browser/ui/MiRenViewFlipperWrapper;->getCurrentDetachedView()Landroid/view/View;

    move-result-object v1

    .line 200
    .local v1, newView:Landroid/view/View;
    if-eqz v3, :cond_0

    if-eqz v1, :cond_0

    .line 201
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 202
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-direct {p0, v1, v5, v4, v5}, Lcom/android/browser/ui/MiRenViewFlipperWrapper;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    .line 203
    invoke-virtual {p0}, Lcom/android/browser/ui/MiRenViewFlipperWrapper;->requestLayout()V

    .line 204
    const/4 v4, 0x2

    invoke-virtual {p0, v4}, Lcom/android/browser/ui/MiRenViewFlipperWrapper;->requestFocus(I)Z

    goto :goto_0

    .line 191
    .end local v1           #newView:Landroid/view/View;
    :cond_4
    iget v4, p0, Lcom/android/browser/ui/MiRenViewFlipperWrapper;->mCurrentChild:I

    if-ne v4, p1, :cond_5

    .line 192
    const/4 v3, 0x1

    .line 193
    iget v4, p0, Lcom/android/browser/ui/MiRenViewFlipperWrapper;->mCurrentChild:I

    if-lt v4, v0, :cond_3

    .line 194
    sub-int v4, v0, v7

    iput v4, p0, Lcom/android/browser/ui/MiRenViewFlipperWrapper;->mCurrentChild:I

    goto :goto_1

    .line 195
    :cond_5
    iget v4, p0, Lcom/android/browser/ui/MiRenViewFlipperWrapper;->mCurrentChild:I

    if-le v4, p1, :cond_3

    .line 196
    iget v4, p0, Lcom/android/browser/ui/MiRenViewFlipperWrapper;->mCurrentChild:I

    sub-int/2addr v4, v7

    iput v4, p0, Lcom/android/browser/ui/MiRenViewFlipperWrapper;->mCurrentChild:I

    goto :goto_1
.end method

.method public removeView(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 245
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/browser/ui/MiRenViewFlipperWrapper;->removeView(Landroid/view/View;Z)V

    .line 247
    return-void
.end method

.method public removeView(Landroid/view/View;Z)V
    .locals 2
    .parameter "view"
    .parameter "blockExternalCaller"

    .prologue
    .line 253
    if-eqz p2, :cond_0

    .line 254
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "please report a bug"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 256
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 257
    return-void
.end method

.method public removeViewAt(I)V
    .locals 2
    .parameter "index"

    .prologue
    .line 264
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "please report a bug"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeViewInLayout(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 272
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "please report a bug"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setDisplayedDetachedView(I)V
    .locals 1
    .parameter "whichChild"

    .prologue
    .line 60
    sget-object v0, Lcom/android/browser/ui/MiRenViewFlipperWrapper$SwitchAnimation;->SWITCH_ANIMATION_NONE:Lcom/android/browser/ui/MiRenViewFlipperWrapper$SwitchAnimation;

    invoke-virtual {p0, p1, v0}, Lcom/android/browser/ui/MiRenViewFlipperWrapper;->setDisplayedDetachedView(ILcom/android/browser/ui/MiRenViewFlipperWrapper$SwitchAnimation;)V

    .line 61
    return-void
.end method

.method public setDisplayedDetachedView(ILcom/android/browser/ui/MiRenViewFlipperWrapper$SwitchAnimation;)V
    .locals 9
    .parameter "whichChild"
    .parameter "animation"

    .prologue
    const/4 v8, 0x2

    const/4 v7, -0x1

    const/4 v6, 0x0

    .line 68
    invoke-virtual {p0}, Lcom/android/browser/ui/MiRenViewFlipperWrapper;->getCurrentDetachedView()Landroid/view/View;

    move-result-object v2

    .line 69
    .local v2, oldView:Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/browser/ui/MiRenViewFlipperWrapper;->getDetachedViewCount()I

    move-result v4

    if-lt p1, v4, :cond_1

    .line 70
    iput v6, p0, Lcom/android/browser/ui/MiRenViewFlipperWrapper;->mCurrentChild:I

    .line 77
    :goto_0
    invoke-virtual {p0}, Lcom/android/browser/ui/MiRenViewFlipperWrapper;->getCurrentDetachedView()Landroid/view/View;

    move-result-object v1

    .line 78
    .local v1, newView:Landroid/view/View;
    if-ne v2, v1, :cond_3

    .line 137
    :cond_0
    :goto_1
    return-void

    .line 71
    .end local v1           #newView:Landroid/view/View;
    :cond_1
    if-gez p1, :cond_2

    .line 72
    invoke-virtual {p0}, Lcom/android/browser/ui/MiRenViewFlipperWrapper;->getChildCount()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/android/browser/ui/MiRenViewFlipperWrapper;->mCurrentChild:I

    goto :goto_0

    .line 74
    :cond_2
    iput p1, p0, Lcom/android/browser/ui/MiRenViewFlipperWrapper;->mCurrentChild:I

    goto :goto_0

    .line 81
    .restart local v1       #newView:Landroid/view/View;
    :cond_3
    sget-object v4, Lcom/android/browser/ui/MiRenViewFlipperWrapper$SwitchAnimation;->SWITCH_ANIMATION_NONE:Lcom/android/browser/ui/MiRenViewFlipperWrapper$SwitchAnimation;

    if-ne p2, v4, :cond_5

    .line 82
    if-eqz v2, :cond_4

    .line 83
    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 84
    invoke-virtual {p0, v2, v6}, Lcom/android/browser/ui/MiRenViewFlipperWrapper;->removeView(Landroid/view/View;Z)V

    .line 86
    :cond_4
    if-eqz v1, :cond_0

    .line 87
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 88
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-direct {p0, v1, v6, v4, v6}, Lcom/android/browser/ui/MiRenViewFlipperWrapper;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    .line 89
    invoke-virtual {p0}, Lcom/android/browser/ui/MiRenViewFlipperWrapper;->requestLayout()V

    .line 90
    invoke-virtual {p0, v8}, Lcom/android/browser/ui/MiRenViewFlipperWrapper;->requestFocus(I)Z

    goto :goto_1

    .line 93
    :cond_5
    if-eqz v2, :cond_6

    .line 95
    invoke-virtual {v2}, Landroid/view/View;->clearAnimation()V

    .line 96
    sget-object v4, Lcom/android/browser/ui/MiRenViewFlipperWrapper$SwitchAnimation;->SWITCH_ANIMATION_LEFT_IN:Lcom/android/browser/ui/MiRenViewFlipperWrapper$SwitchAnimation;

    if-ne p2, v4, :cond_7

    .line 97
    invoke-virtual {p0}, Lcom/android/browser/ui/MiRenViewFlipperWrapper;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f040005

    invoke-static {v4, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    .line 102
    .local v3, outAni:Landroid/view/animation/Animation;
    :goto_2
    new-instance v4, Lcom/android/browser/ui/MiRenViewFlipperWrapper$2;

    invoke-direct {v4, p0, v2}, Lcom/android/browser/ui/MiRenViewFlipperWrapper$2;-><init>(Lcom/android/browser/ui/MiRenViewFlipperWrapper;Landroid/view/View;)V

    invoke-virtual {v3, v4}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 118
    invoke-virtual {v2, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 119
    iput-boolean v6, p0, Lcom/android/browser/ui/MiRenViewFlipperWrapper;->mSwitchFinished:Z

    .line 121
    .end local v3           #outAni:Landroid/view/animation/Animation;
    :cond_6
    if-eqz v1, :cond_0

    .line 122
    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    .line 124
    sget-object v4, Lcom/android/browser/ui/MiRenViewFlipperWrapper$SwitchAnimation;->SWITCH_ANIMATION_LEFT_IN:Lcom/android/browser/ui/MiRenViewFlipperWrapper$SwitchAnimation;

    if-ne p2, v4, :cond_8

    .line 125
    invoke-virtual {p0}, Lcom/android/browser/ui/MiRenViewFlipperWrapper;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f040002

    invoke-static {v4, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 130
    .local v0, inAni:Landroid/view/animation/Animation;
    :goto_3
    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 131
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 132
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-direct {p0, v1, v6, v4, v6}, Lcom/android/browser/ui/MiRenViewFlipperWrapper;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    .line 133
    invoke-virtual {p0}, Lcom/android/browser/ui/MiRenViewFlipperWrapper;->requestLayout()V

    .line 134
    invoke-virtual {p0, v8}, Lcom/android/browser/ui/MiRenViewFlipperWrapper;->requestFocus(I)Z

    goto :goto_1

    .line 100
    .end local v0           #inAni:Landroid/view/animation/Animation;
    :cond_7
    invoke-virtual {p0}, Lcom/android/browser/ui/MiRenViewFlipperWrapper;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f040003

    invoke-static {v4, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    .restart local v3       #outAni:Landroid/view/animation/Animation;
    goto :goto_2

    .line 128
    .end local v3           #outAni:Landroid/view/animation/Animation;
    :cond_8
    invoke-virtual {p0}, Lcom/android/browser/ui/MiRenViewFlipperWrapper;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f040004

    invoke-static {v4, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .restart local v0       #inAni:Landroid/view/animation/Animation;
    goto :goto_3
.end method
