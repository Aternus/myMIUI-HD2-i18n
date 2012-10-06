.class public Lcom/android/settings/ChooseLockPattern;
.super Landroid/app/Activity;
.source "ChooseLockPattern.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/ChooseLockPattern$3;,
        Lcom/android/settings/ChooseLockPattern$Stage;,
        Lcom/android/settings/ChooseLockPattern$RightButtonMode;,
        Lcom/android/settings/ChooseLockPattern$LeftButtonMode;
    }
.end annotation


# instance fields
.field private final mAnimatePattern:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;"
        }
    .end annotation
.end field

.field protected mChooseLockSettingsHelper:Landroid/security/ChooseLockSettingsHelper;

.field protected mChooseNewLockPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

.field protected mChosenPattern:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;"
        }
    .end annotation
.end field

.field private mClearPatternRunnable:Ljava/lang/Runnable;

.field private mFooterLeftButton:Landroid/widget/TextView;

.field private mFooterRightButton:Landroid/widget/TextView;

.field protected mFooterText:Landroid/widget/TextView;

.field protected mHeaderText:Landroid/widget/TextView;

.field protected mLockPatternView:Lcom/android/internal/widget/LockPatternView;

.field private mUiStage:Lcom/android/settings/ChooseLockPattern$Stage;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 47
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/ChooseLockPattern;->mChosenPattern:Ljava/util/List;

    .line 79
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/internal/widget/LockPatternView$Cell;

    invoke-static {v3, v3}, Lcom/android/internal/widget/LockPatternView$Cell;->of(II)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {v3, v2}, Lcom/android/internal/widget/LockPatternView$Cell;->of(II)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-static {v2, v2}, Lcom/android/internal/widget/LockPatternView$Cell;->of(II)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v1

    aput-object v1, v0, v4

    const/4 v1, 0x3

    invoke-static {v4, v2}, Lcom/android/internal/widget/LockPatternView$Cell;->of(II)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/ChooseLockPattern;->mAnimatePattern:Ljava/util/List;

    .line 106
    new-instance v0, Lcom/android/settings/ChooseLockPattern$1;

    invoke-direct {v0, p0}, Lcom/android/settings/ChooseLockPattern$1;-><init>(Lcom/android/settings/ChooseLockPattern;)V

    iput-object v0, p0, Lcom/android/settings/ChooseLockPattern;->mChooseNewLockPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    .line 255
    sget-object v0, Lcom/android/settings/ChooseLockPattern$Stage;->Introduction:Lcom/android/settings/ChooseLockPattern$Stage;

    iput-object v0, p0, Lcom/android/settings/ChooseLockPattern;->mUiStage:Lcom/android/settings/ChooseLockPattern$Stage;

    .line 257
    new-instance v0, Lcom/android/settings/ChooseLockPattern$2;

    invoke-direct {v0, p0}, Lcom/android/settings/ChooseLockPattern$2;-><init>(Lcom/android/settings/ChooseLockPattern;)V

    iput-object v0, p0, Lcom/android/settings/ChooseLockPattern;->mClearPatternRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/ChooseLockPattern;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern;->mClearPatternRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/ChooseLockPattern;)Lcom/android/settings/ChooseLockPattern$Stage;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern;->mUiStage:Lcom/android/settings/ChooseLockPattern$Stage;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/ChooseLockPattern;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern;->mFooterLeftButton:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/ChooseLockPattern;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern;->mFooterRightButton:Landroid/widget/TextView;

    return-object v0
.end method

.method private postClearPatternRunnable()V
    .locals 4

    .prologue
    .line 492
    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v1, p0, Lcom/android/settings/ChooseLockPattern;->mClearPatternRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 493
    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v1, p0, Lcom/android/settings/ChooseLockPattern;->mClearPatternRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/LockPatternView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 494
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 90
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 91
    packed-switch p1, :pswitch_data_0

    .line 100
    :goto_0
    return-void

    .line 93
    :pswitch_0
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 94
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/ChooseLockPattern;->setResult(I)V

    .line 95
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPattern;->finish()V

    .line 97
    :cond_0
    sget-object v0, Lcom/android/settings/ChooseLockPattern$Stage;->Introduction:Lcom/android/settings/ChooseLockPattern$Stage;

    invoke-virtual {p0, v0}, Lcom/android/settings/ChooseLockPattern;->updateStage(Lcom/android/settings/ChooseLockPattern$Stage;)V

    goto :goto_0

    .line 91
    nop

    :pswitch_data_0
    .packed-switch 0x37
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const-string v4, "expected ui stage "

    const-string v3, " when button is "

    .line 349
    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern;->mFooterLeftButton:Landroid/widget/TextView;

    if-ne p1, v0, :cond_3

    .line 350
    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern;->mUiStage:Lcom/android/settings/ChooseLockPattern$Stage;

    iget-object v0, v0, Lcom/android/settings/ChooseLockPattern$Stage;->leftMode:Lcom/android/settings/ChooseLockPattern$LeftButtonMode;

    sget-object v1, Lcom/android/settings/ChooseLockPattern$LeftButtonMode;->Retry:Lcom/android/settings/ChooseLockPattern$LeftButtonMode;

    if-ne v0, v1, :cond_1

    .line 351
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/ChooseLockPattern;->mChosenPattern:Ljava/util/List;

    .line 352
    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    .line 353
    sget-object v0, Lcom/android/settings/ChooseLockPattern$Stage;->Introduction:Lcom/android/settings/ChooseLockPattern$Stage;

    invoke-virtual {p0, v0}, Lcom/android/settings/ChooseLockPattern;->updateStage(Lcom/android/settings/ChooseLockPattern$Stage;)V

    .line 386
    :cond_0
    :goto_0
    return-void

    .line 354
    :cond_1
    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern;->mUiStage:Lcom/android/settings/ChooseLockPattern$Stage;

    iget-object v0, v0, Lcom/android/settings/ChooseLockPattern$Stage;->leftMode:Lcom/android/settings/ChooseLockPattern$LeftButtonMode;

    sget-object v1, Lcom/android/settings/ChooseLockPattern$LeftButtonMode;->Cancel:Lcom/android/settings/ChooseLockPattern$LeftButtonMode;

    if-ne v0, v1, :cond_2

    .line 356
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/ChooseLockPattern;->setResult(I)V

    .line 357
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPattern;->finish()V

    goto :goto_0

    .line 359
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "left footer button pressed, but stage of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/ChooseLockPattern;->mUiStage:Lcom/android/settings/ChooseLockPattern$Stage;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " doesn\'t make sense"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 362
    :cond_3
    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern;->mFooterRightButton:Landroid/widget/TextView;

    if-ne p1, v0, :cond_0

    .line 364
    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern;->mUiStage:Lcom/android/settings/ChooseLockPattern$Stage;

    iget-object v0, v0, Lcom/android/settings/ChooseLockPattern$Stage;->rightMode:Lcom/android/settings/ChooseLockPattern$RightButtonMode;

    sget-object v1, Lcom/android/settings/ChooseLockPattern$RightButtonMode;->Continue:Lcom/android/settings/ChooseLockPattern$RightButtonMode;

    if-ne v0, v1, :cond_5

    .line 365
    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern;->mUiStage:Lcom/android/settings/ChooseLockPattern$Stage;

    sget-object v1, Lcom/android/settings/ChooseLockPattern$Stage;->FirstChoiceValid:Lcom/android/settings/ChooseLockPattern$Stage;

    if-eq v0, v1, :cond_4

    .line 366
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expected ui stage "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/settings/ChooseLockPattern$Stage;->FirstChoiceValid:Lcom/android/settings/ChooseLockPattern$Stage;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " when button is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/settings/ChooseLockPattern$RightButtonMode;->Continue:Lcom/android/settings/ChooseLockPattern$RightButtonMode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 369
    :cond_4
    sget-object v0, Lcom/android/settings/ChooseLockPattern$Stage;->NeedToConfirm:Lcom/android/settings/ChooseLockPattern$Stage;

    invoke-virtual {p0, v0}, Lcom/android/settings/ChooseLockPattern;->updateStage(Lcom/android/settings/ChooseLockPattern$Stage;)V

    goto :goto_0

    .line 370
    :cond_5
    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern;->mUiStage:Lcom/android/settings/ChooseLockPattern$Stage;

    iget-object v0, v0, Lcom/android/settings/ChooseLockPattern$Stage;->rightMode:Lcom/android/settings/ChooseLockPattern$RightButtonMode;

    sget-object v1, Lcom/android/settings/ChooseLockPattern$RightButtonMode;->Confirm:Lcom/android/settings/ChooseLockPattern$RightButtonMode;

    if-ne v0, v1, :cond_7

    .line 371
    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern;->mUiStage:Lcom/android/settings/ChooseLockPattern$Stage;

    sget-object v1, Lcom/android/settings/ChooseLockPattern$Stage;->ChoiceConfirmed:Lcom/android/settings/ChooseLockPattern$Stage;

    if-eq v0, v1, :cond_6

    .line 372
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expected ui stage "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/settings/ChooseLockPattern$Stage;->ChoiceConfirmed:Lcom/android/settings/ChooseLockPattern$Stage;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " when button is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/settings/ChooseLockPattern$RightButtonMode;->Confirm:Lcom/android/settings/ChooseLockPattern$RightButtonMode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 375
    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPattern;->saveChosenPatternAndFinish()V

    goto/16 :goto_0

    .line 376
    :cond_7
    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern;->mUiStage:Lcom/android/settings/ChooseLockPattern$Stage;

    iget-object v0, v0, Lcom/android/settings/ChooseLockPattern$Stage;->rightMode:Lcom/android/settings/ChooseLockPattern$RightButtonMode;

    sget-object v1, Lcom/android/settings/ChooseLockPattern$RightButtonMode;->Ok:Lcom/android/settings/ChooseLockPattern$RightButtonMode;

    if-ne v0, v1, :cond_0

    .line 377
    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern;->mUiStage:Lcom/android/settings/ChooseLockPattern$Stage;

    sget-object v1, Lcom/android/settings/ChooseLockPattern$Stage;->HelpScreen:Lcom/android/settings/ChooseLockPattern$Stage;

    if-eq v0, v1, :cond_8

    .line 378
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Help screen is only mode with ok button, but stage is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/ChooseLockPattern;->mUiStage:Lcom/android/settings/ChooseLockPattern$Stage;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 381
    :cond_8
    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    .line 382
    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    sget-object v1, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Correct:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setDisplayMode(Lcom/android/internal/widget/LockPatternView$DisplayMode;)V

    .line 383
    sget-object v0, Lcom/android/settings/ChooseLockPattern$Stage;->Introduction:Lcom/android/settings/ChooseLockPattern$Stage;

    invoke-virtual {p0, v0}, Lcom/android/settings/ChooseLockPattern;->updateStage(Lcom/android/settings/ChooseLockPattern$Stage;)V

    goto/16 :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 270
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 271
    new-instance v2, Landroid/security/ChooseLockSettingsHelper;

    invoke-direct {v2, p0}, Landroid/security/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    iput-object v2, p0, Lcom/android/settings/ChooseLockPattern;->mChooseLockSettingsHelper:Landroid/security/ChooseLockSettingsHelper;

    .line 272
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/settings/ChooseLockPattern;->requestWindowFeature(I)Z

    .line 274
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPattern;->setupViews()V

    .line 278
    const v2, 0x7f0c0006

    invoke-virtual {p0, v2}, Lcom/android/settings/ChooseLockPattern;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;

    .line 281
    .local v1, topLayout:Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;
    iget-object v2, p0, Lcom/android/settings/ChooseLockPattern;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;->setDefaultTouchRecepient(Landroid/view/View;)V

    .line 285
    if-nez p1, :cond_0

    .line 286
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPattern;->onCreateNoSavedState()V

    .line 295
    :goto_0
    return-void

    .line 289
    :cond_0
    const-string v2, "chosenPattern"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 290
    .local v0, patternString:Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 291
    invoke-static {v0}, Lcom/android/internal/widget/LockPatternUtils;->stringToPattern(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/ChooseLockPattern;->mChosenPattern:Ljava/util/List;

    .line 293
    :cond_1
    invoke-static {}, Lcom/android/settings/ChooseLockPattern$Stage;->values()[Lcom/android/settings/ChooseLockPattern$Stage;

    move-result-object v2

    const-string v3, "uiStage"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {p0, v2}, Lcom/android/settings/ChooseLockPattern;->updateStage(Lcom/android/settings/ChooseLockPattern$Stage;)V

    goto :goto_0
.end method

.method protected onCreateNoSavedState()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 301
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPattern;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "confirm_credentials"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 302
    .local v0, confirmCredentials:Z
    if-eqz v0, :cond_1

    .line 305
    sget-object v2, Lcom/android/settings/ChooseLockPattern$Stage;->NeedToConfirm:Lcom/android/settings/ChooseLockPattern$Stage;

    invoke-virtual {p0, v2}, Lcom/android/settings/ChooseLockPattern;->updateStage(Lcom/android/settings/ChooseLockPattern$Stage;)V

    .line 306
    iget-object v2, p0, Lcom/android/settings/ChooseLockPattern;->mChooseLockSettingsHelper:Landroid/security/ChooseLockSettingsHelper;

    const/16 v3, 0x37

    invoke-virtual {v2, v3, v5, v5}, Landroid/security/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    .line 309
    .local v1, launchedConfirmationActivity:Z
    if-nez v1, :cond_0

    .line 310
    sget-object v2, Lcom/android/settings/ChooseLockPattern$Stage;->Introduction:Lcom/android/settings/ChooseLockPattern$Stage;

    invoke-virtual {p0, v2}, Lcom/android/settings/ChooseLockPattern;->updateStage(Lcom/android/settings/ChooseLockPattern$Stage;)V

    .line 315
    .end local v1           #launchedConfirmationActivity:Z
    :cond_0
    :goto_0
    return-void

    .line 313
    :cond_1
    sget-object v2, Lcom/android/settings/ChooseLockPattern$Stage;->Introduction:Lcom/android/settings/ChooseLockPattern$Stage;

    invoke-virtual {p0, v2}, Lcom/android/settings/ChooseLockPattern;->updateStage(Lcom/android/settings/ChooseLockPattern$Stage;)V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    .line 390
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 391
    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern;->mUiStage:Lcom/android/settings/ChooseLockPattern$Stage;

    sget-object v1, Lcom/android/settings/ChooseLockPattern$Stage;->HelpScreen:Lcom/android/settings/ChooseLockPattern$Stage;

    if-ne v0, v1, :cond_0

    .line 392
    sget-object v0, Lcom/android/settings/ChooseLockPattern$Stage;->Introduction:Lcom/android/settings/ChooseLockPattern$Stage;

    invoke-virtual {p0, v0}, Lcom/android/settings/ChooseLockPattern;->updateStage(Lcom/android/settings/ChooseLockPattern$Stage;)V

    move v0, v2

    .line 401
    :goto_0
    return v0

    .line 396
    :cond_0
    const/16 v0, 0x52

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern;->mUiStage:Lcom/android/settings/ChooseLockPattern$Stage;

    sget-object v1, Lcom/android/settings/ChooseLockPattern$Stage;->Introduction:Lcom/android/settings/ChooseLockPattern$Stage;

    if-ne v0, v1, :cond_1

    .line 397
    sget-object v0, Lcom/android/settings/ChooseLockPattern$Stage;->HelpScreen:Lcom/android/settings/ChooseLockPattern$Stage;

    invoke-virtual {p0, v0}, Lcom/android/settings/ChooseLockPattern;->updateStage(Lcom/android/settings/ChooseLockPattern$Stage;)V

    move v0, v2

    .line 398
    goto :goto_0

    .line 401
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 406
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 408
    const-string v0, "uiStage"

    iget-object v1, p0, Lcom/android/settings/ChooseLockPattern;->mUiStage:Lcom/android/settings/ChooseLockPattern$Stage;

    invoke-virtual {v1}, Lcom/android/settings/ChooseLockPattern$Stage;->ordinal()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 409
    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern;->mChosenPattern:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 410
    const-string v0, "chosenPattern"

    iget-object v1, p0, Lcom/android/settings/ChooseLockPattern;->mChosenPattern:Ljava/util/List;

    invoke-static {v1}, Lcom/android/internal/widget/LockPatternUtils;->patternToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    :cond_0
    return-void
.end method

.method protected preSetupViews()V
    .locals 2

    .prologue
    .line 321
    sget-object v0, Lcom/android/settings/ChooseLockPattern$Stage;->Introduction:Lcom/android/settings/ChooseLockPattern$Stage;

    const v1, 0x7f09024d

    iput v1, v0, Lcom/android/settings/ChooseLockPattern$Stage;->headerMessage:I

    .line 322
    return-void
.end method

.method protected saveChosenPatternAndFinish()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 497
    iget-object v2, p0, Lcom/android/settings/ChooseLockPattern;->mChooseLockSettingsHelper:Landroid/security/ChooseLockSettingsHelper;

    invoke-virtual {v2}, Landroid/security/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    .line 498
    .local v1, utils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isPatternEverChosen()Z

    move-result v2

    if-nez v2, :cond_1

    move v0, v3

    .line 500
    .local v0, lockVirgin:Z
    :goto_0
    iget-object v2, p0, Lcom/android/settings/ChooseLockPattern;->mChosenPattern:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPattern(Ljava/util/List;)V

    .line 501
    invoke-virtual {v1, v3}, Lcom/android/internal/widget/LockPatternUtils;->setLockPatternEnabled(Z)V

    .line 503
    if-eqz v0, :cond_0

    .line 504
    invoke-virtual {v1, v3}, Lcom/android/internal/widget/LockPatternUtils;->setVisiblePatternEnabled(Z)V

    .line 505
    invoke-virtual {v1, v4}, Lcom/android/internal/widget/LockPatternUtils;->setTactileFeedbackEnabled(Z)V

    .line 508
    :cond_0
    invoke-virtual {p0, v3}, Lcom/android/settings/ChooseLockPattern;->setResult(I)V

    .line 509
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPattern;->finish()V

    .line 510
    return-void

    .end local v0           #lockVirgin:Z
    :cond_1
    move v0, v4

    .line 498
    goto :goto_0
.end method

.method protected setupViews()V
    .locals 2

    .prologue
    .line 329
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPattern;->preSetupViews()V

    .line 330
    const v0, 0x7f03000d

    invoke-virtual {p0, v0}, Lcom/android/settings/ChooseLockPattern;->setContentView(I)V

    .line 332
    const v0, 0x7f0c002b

    invoke-virtual {p0, v0}, Lcom/android/settings/ChooseLockPattern;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/ChooseLockPattern;->mHeaderText:Landroid/widget/TextView;

    .line 334
    const v0, 0x7f0c0031

    invoke-virtual {p0, v0}, Lcom/android/settings/ChooseLockPattern;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/LockPatternView;

    iput-object v0, p0, Lcom/android/settings/ChooseLockPattern;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    .line 335
    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v1, p0, Lcom/android/settings/ChooseLockPattern;->mChooseNewLockPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setOnPatternListener(Lcom/android/internal/widget/LockPatternView$OnPatternListener;)V

    .line 336
    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v1, p0, Lcom/android/settings/ChooseLockPattern;->mChooseLockSettingsHelper:Landroid/security/ChooseLockSettingsHelper;

    invoke-virtual {v1}, Landroid/security/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isTactileFeedbackEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setTactileFeedbackEnabled(Z)V

    .line 339
    const v0, 0x7f0c0032

    invoke-virtual {p0, v0}, Lcom/android/settings/ChooseLockPattern;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/ChooseLockPattern;->mFooterText:Landroid/widget/TextView;

    .line 341
    const v0, 0x7f0c0033

    invoke-virtual {p0, v0}, Lcom/android/settings/ChooseLockPattern;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/ChooseLockPattern;->mFooterLeftButton:Landroid/widget/TextView;

    .line 342
    const v0, 0x7f0c0034

    invoke-virtual {p0, v0}, Lcom/android/settings/ChooseLockPattern;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/ChooseLockPattern;->mFooterRightButton:Landroid/widget/TextView;

    .line 344
    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern;->mFooterLeftButton:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 345
    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern;->mFooterRightButton:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 346
    return-void
.end method

.method protected updateStage(Lcom/android/settings/ChooseLockPattern$Stage;)V
    .locals 6
    .parameter "stage"

    .prologue
    const/4 v5, 0x0

    .line 423
    iput-object p1, p0, Lcom/android/settings/ChooseLockPattern;->mUiStage:Lcom/android/settings/ChooseLockPattern$Stage;

    .line 427
    sget-object v0, Lcom/android/settings/ChooseLockPattern$Stage;->ChoiceTooShort:Lcom/android/settings/ChooseLockPattern$Stage;

    if-ne p1, v0, :cond_0

    .line 428
    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPattern;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p1, Lcom/android/settings/ChooseLockPattern$Stage;->headerMessage:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 435
    :goto_0
    iget v0, p1, Lcom/android/settings/ChooseLockPattern$Stage;->footerMessage:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 436
    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern;->mFooterText:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 441
    :goto_1
    iget-object v0, p1, Lcom/android/settings/ChooseLockPattern$Stage;->leftMode:Lcom/android/settings/ChooseLockPattern$LeftButtonMode;

    sget-object v1, Lcom/android/settings/ChooseLockPattern$LeftButtonMode;->Gone:Lcom/android/settings/ChooseLockPattern$LeftButtonMode;

    if-ne v0, v1, :cond_2

    .line 442
    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern;->mFooterLeftButton:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 449
    :goto_2
    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern;->mFooterRightButton:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/android/settings/ChooseLockPattern$Stage;->rightMode:Lcom/android/settings/ChooseLockPattern$RightButtonMode;

    iget v1, v1, Lcom/android/settings/ChooseLockPattern$RightButtonMode;->text:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 450
    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern;->mFooterRightButton:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/android/settings/ChooseLockPattern$Stage;->rightMode:Lcom/android/settings/ChooseLockPattern$RightButtonMode;

    iget-boolean v1, v1, Lcom/android/settings/ChooseLockPattern$RightButtonMode;->enabled:Z

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 453
    iget-boolean v0, p1, Lcom/android/settings/ChooseLockPattern$Stage;->patternEnabled:Z

    if-eqz v0, :cond_3

    .line 454
    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->enableInput()V

    .line 461
    :goto_3
    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    sget-object v1, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Correct:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setDisplayMode(Lcom/android/internal/widget/LockPatternView$DisplayMode;)V

    .line 463
    sget-object v0, Lcom/android/settings/ChooseLockPattern$3;->$SwitchMap$com$android$settings$ChooseLockPattern$Stage:[I

    iget-object v1, p0, Lcom/android/settings/ChooseLockPattern;->mUiStage:Lcom/android/settings/ChooseLockPattern$Stage;

    invoke-virtual {v1}, Lcom/android/settings/ChooseLockPattern$Stage;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 486
    :goto_4
    :pswitch_0
    return-void

    .line 433
    :cond_0
    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern;->mHeaderText:Landroid/widget/TextView;

    iget v1, p1, Lcom/android/settings/ChooseLockPattern$Stage;->headerMessage:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 438
    :cond_1
    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern;->mFooterText:Landroid/widget/TextView;

    iget v1, p1, Lcom/android/settings/ChooseLockPattern$Stage;->footerMessage:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 444
    :cond_2
    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern;->mFooterLeftButton:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 445
    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern;->mFooterLeftButton:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/android/settings/ChooseLockPattern$Stage;->leftMode:Lcom/android/settings/ChooseLockPattern$LeftButtonMode;

    iget v1, v1, Lcom/android/settings/ChooseLockPattern$LeftButtonMode;->text:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 446
    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern;->mFooterLeftButton:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/android/settings/ChooseLockPattern$Stage;->leftMode:Lcom/android/settings/ChooseLockPattern$LeftButtonMode;

    iget-boolean v1, v1, Lcom/android/settings/ChooseLockPattern$LeftButtonMode;->enabled:Z

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_2

    .line 456
    :cond_3
    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->disableInput()V

    goto :goto_3

    .line 465
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    goto :goto_4

    .line 468
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    sget-object v1, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Animate:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    iget-object v2, p0, Lcom/android/settings/ChooseLockPattern;->mAnimatePattern:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/LockPatternView;->setPattern(Lcom/android/internal/widget/LockPatternView$DisplayMode;Ljava/util/List;)V

    goto :goto_4

    .line 471
    :pswitch_3
    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    sget-object v1, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Wrong:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setDisplayMode(Lcom/android/internal/widget/LockPatternView$DisplayMode;)V

    .line 472
    invoke-direct {p0}, Lcom/android/settings/ChooseLockPattern;->postClearPatternRunnable()V

    goto :goto_4

    .line 477
    :pswitch_4
    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    goto :goto_4

    .line 480
    :pswitch_5
    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    sget-object v1, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Wrong:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setDisplayMode(Lcom/android/internal/widget/LockPatternView$DisplayMode;)V

    .line 481
    invoke-direct {p0}, Lcom/android/settings/ChooseLockPattern;->postClearPatternRunnable()V

    goto :goto_4

    .line 463
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
