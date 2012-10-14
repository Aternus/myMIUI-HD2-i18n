.class public final Lcom/android/contacts/ui/GroupsBrowserActivity;
.super Landroid/app/ListActivity;
.source "GroupsBrowserActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/android/contacts/DialtactsActivity$TabVisibilityManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/ui/GroupsBrowserActivity$MergedGroup;,
        Lcom/android/contacts/ui/GroupsBrowserActivity$QueryGroupsTask;,
        Lcom/android/contacts/ui/GroupsBrowserActivity$DisplayAdapter;,
        Lcom/android/contacts/ui/GroupsBrowserActivity$ViewHolder;
    }
.end annotation


# static fields
.field private static final ITEM_ICON_RESOURCE:[I

.field private static mEditingGroup:Lcom/android/contacts/model/GroupDelta;

.field private static mGroupList:Lcom/android/contacts/model/GroupList;

.field private static mMergedGroupList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/ui/GroupsBrowserActivity$MergedGroup;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAccounts:[Landroid/accounts/Account;

.field private mAdapter:Lcom/android/contacts/ui/GroupsBrowserActivity$DisplayAdapter;

.field private mAnimating:Z

.field private mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

.field private mButtonPanel:Landroid/view/View;

.field private mDisplayOnlyPhones:Z

.field private mEnablePhoto:Z

.field private mFadeInAnimation:Landroid/view/animation/Animation;

.field private mFadeOutAnimation:Landroid/view/animation/Animation;

.field private mGroupEmpty:Landroid/view/View;

.field private mHideAnimation:Landroid/view/animation/Animation;

.field private mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field private mIsAddingGroup:Z

.field private mLastFocusedItem:Landroid/view/View;

.field private mList:Landroid/widget/SortableListView;

.field private mListFooter:Landroid/view/View;

.field private mManagingGroups:Z

.field private mMoveInAnimation:Landroid/view/animation/Animation;

.field private mMoveOutAnimation:Landroid/view/animation/Animation;

.field private mNewGroupView:Landroid/view/View;

.field private mOnOrderChagnedListener:Landroid/widget/SortableListView$OnOrderChangedListener;

.field private mPhotoLoader:Lcom/android/contacts/ContactPhotoLoader;

.field private mSelectedPosition:I

.field private mTabWidget:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 96
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/contacts/ui/GroupsBrowserActivity;->ITEM_ICON_RESOURCE:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x7et 0x0t 0x7t 0x7ft
        0x80t 0x0t 0x7t 0x7ft
        0x7ft 0x0t 0x7t 0x7ft
        0x81t 0x0t 0x7t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 86
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 114
    iput-boolean v0, p0, Lcom/android/contacts/ui/GroupsBrowserActivity;->mIsAddingGroup:Z

    .line 136
    iput-boolean v0, p0, Lcom/android/contacts/ui/GroupsBrowserActivity;->mEnablePhoto:Z

    .line 138
    iput-boolean v0, p0, Lcom/android/contacts/ui/GroupsBrowserActivity;->mDisplayOnlyPhones:Z

    .line 140
    new-instance v0, Lcom/android/contacts/ui/GroupsBrowserActivity$1;

    invoke-direct {v0, p0}, Lcom/android/contacts/ui/GroupsBrowserActivity$1;-><init>(Lcom/android/contacts/ui/GroupsBrowserActivity;)V

    iput-object v0, p0, Lcom/android/contacts/ui/GroupsBrowserActivity;->mOnOrderChagnedListener:Landroid/widget/SortableListView$OnOrderChangedListener;

    .line 567
    new-instance v0, Lcom/android/contacts/ui/GroupsBrowserActivity$9;

    invoke-direct {v0, p0}, Lcom/android/contacts/ui/GroupsBrowserActivity$9;-><init>(Lcom/android/contacts/ui/GroupsBrowserActivity;)V

    iput-object v0, p0, Lcom/android/contacts/ui/GroupsBrowserActivity;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 1021
    return-void
.end method

.method static synthetic access$000()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 86
    sget-object v0, Lcom/android/contacts/ui/GroupsBrowserActivity;->mMergedGroupList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$002(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .parameter "x0"

    .prologue
    .line 86
    sput-object p0, Lcom/android/contacts/ui/GroupsBrowserActivity;->mMergedGroupList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$100()Lcom/android/contacts/model/GroupList;
    .locals 1

    .prologue
    .line 86
    sget-object v0, Lcom/android/contacts/ui/GroupsBrowserActivity;->mGroupList:Lcom/android/contacts/model/GroupList;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/contacts/ui/GroupsBrowserActivity;)Landroid/widget/SortableListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/contacts/ui/GroupsBrowserActivity;->mList:Landroid/widget/SortableListView;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/contacts/model/GroupList;)Lcom/android/contacts/model/GroupList;
    .locals 0
    .parameter "x0"

    .prologue
    .line 86
    sput-object p0, Lcom/android/contacts/ui/GroupsBrowserActivity;->mGroupList:Lcom/android/contacts/model/GroupList;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/android/contacts/ui/GroupsBrowserActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/android/contacts/ui/GroupsBrowserActivity;->mAnimating:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/android/contacts/ui/GroupsBrowserActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/android/contacts/ui/GroupsBrowserActivity;->mAnimating:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/contacts/ui/GroupsBrowserActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/android/contacts/ui/GroupsBrowserActivity;->getFirstVisibleDataChild()I

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/android/contacts/ui/GroupsBrowserActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/android/contacts/ui/GroupsBrowserActivity;->getLastVisibleDataChild()I

    move-result v0

    return v0
.end method

.method static synthetic access$1400()[I
    .locals 1

    .prologue
    .line 86
    sget-object v0, Lcom/android/contacts/ui/GroupsBrowserActivity;->ITEM_ICON_RESOURCE:[I

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/contacts/ui/GroupsBrowserActivity;Lcom/android/contacts/ui/GroupsBrowserActivity$ViewHolder;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/android/contacts/ui/GroupsBrowserActivity;->updateVisibilities(Lcom/android/contacts/ui/GroupsBrowserActivity$ViewHolder;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/contacts/ui/GroupsBrowserActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/android/contacts/ui/GroupsBrowserActivity;->mEnablePhoto:Z

    return v0
.end method

.method static synthetic access$1700(Lcom/android/contacts/ui/GroupsBrowserActivity;)Lcom/android/contacts/ContactPhotoLoader;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/contacts/ui/GroupsBrowserActivity;->mPhotoLoader:Lcom/android/contacts/ContactPhotoLoader;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/contacts/ui/GroupsBrowserActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/android/contacts/ui/GroupsBrowserActivity;->mDisplayOnlyPhones:Z

    return v0
.end method

.method static synthetic access$1900(Lcom/android/contacts/ui/GroupsBrowserActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget v0, p0, Lcom/android/contacts/ui/GroupsBrowserActivity;->mSelectedPosition:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/contacts/ui/GroupsBrowserActivity;)Lcom/android/contacts/ui/GroupsBrowserActivity$DisplayAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/contacts/ui/GroupsBrowserActivity;->mAdapter:Lcom/android/contacts/ui/GroupsBrowserActivity$DisplayAdapter;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/contacts/ui/GroupsBrowserActivity;Lcom/android/contacts/ui/GroupsBrowserActivity$DisplayAdapter;)Lcom/android/contacts/ui/GroupsBrowserActivity$DisplayAdapter;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    iput-object p1, p0, Lcom/android/contacts/ui/GroupsBrowserActivity;->mAdapter:Lcom/android/contacts/ui/GroupsBrowserActivity$DisplayAdapter;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/android/contacts/ui/GroupsBrowserActivity;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/contacts/ui/GroupsBrowserActivity;->mNewGroupView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/contacts/ui/GroupsBrowserActivity;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/contacts/ui/GroupsBrowserActivity;->mGroupEmpty:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/contacts/ui/GroupsBrowserActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/android/contacts/ui/GroupsBrowserActivity;->isAddingGroup()Z

    move-result v0

    return v0
.end method

.method static synthetic access$402(Lcom/android/contacts/ui/GroupsBrowserActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/android/contacts/ui/GroupsBrowserActivity;->mIsAddingGroup:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/contacts/ui/GroupsBrowserActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/android/contacts/ui/GroupsBrowserActivity;->chooseAccountForGroupAdding()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/contacts/ui/GroupsBrowserActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/android/contacts/ui/GroupsBrowserActivity;->discardEditing()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/contacts/ui/GroupsBrowserActivity;Ljava/lang/String;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 86
    invoke-direct {p0, p1, p2}, Lcom/android/contacts/ui/GroupsBrowserActivity;->validateName(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/contacts/ui/GroupsBrowserActivity;)[Landroid/accounts/Account;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/contacts/ui/GroupsBrowserActivity;->mAccounts:[Landroid/accounts/Account;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/contacts/ui/GroupsBrowserActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/android/contacts/ui/GroupsBrowserActivity;->finishAddingGroup()V

    return-void
.end method

.method private buildAddGroupDialog()V
    .locals 5

    .prologue
    .line 396
    invoke-virtual {p0}, Lcom/android/contacts/ui/GroupsBrowserActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030030

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 398
    .local v1, groupName:Landroid/widget/EditText;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 399
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0b0171

    new-instance v3, Lcom/android/contacts/ui/GroupsBrowserActivity$5;

    invoke-direct {v3, p0, v1}, Lcom/android/contacts/ui/GroupsBrowserActivity$5;-><init>(Lcom/android/contacts/ui/GroupsBrowserActivity;Landroid/widget/EditText;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0b0172

    new-instance v4, Lcom/android/contacts/ui/GroupsBrowserActivity$4;

    invoke-direct {v4, p0}, Lcom/android/contacts/ui/GroupsBrowserActivity$4;-><init>(Lcom/android/contacts/ui/GroupsBrowserActivity;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/contacts/ui/GroupsBrowserActivity$3;

    invoke-direct {v3, p0}, Lcom/android/contacts/ui/GroupsBrowserActivity$3;-><init>(Lcom/android/contacts/ui/GroupsBrowserActivity;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 429
    const v2, 0x7f0b0113

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 433
    return-void
.end method

.method private buildAnimations(I)V
    .locals 7
    .parameter "deltaX"

    .prologue
    const/high16 v6, 0x3f80

    const/4 v5, 0x0

    .line 602
    iget-object v2, p0, Lcom/android/contacts/ui/GroupsBrowserActivity;->mMoveInAnimation:Landroid/view/animation/Animation;

    if-eqz v2, :cond_0

    .line 627
    :goto_0
    return-void

    .line 604
    :cond_0
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 605
    .local v1, interpolator:Landroid/view/animation/Interpolator;
    invoke-virtual {p0}, Lcom/android/contacts/ui/GroupsBrowserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e0002

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 607
    .local v0, duration:I
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    neg-int v3, p1

    int-to-float v3, v3

    invoke-direct {v2, v3, v5, v5, v5}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v2, p0, Lcom/android/contacts/ui/GroupsBrowserActivity;->mMoveInAnimation:Landroid/view/animation/Animation;

    .line 608
    iget-object v2, p0, Lcom/android/contacts/ui/GroupsBrowserActivity;->mMoveInAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v2, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 609
    iget-object v2, p0, Lcom/android/contacts/ui/GroupsBrowserActivity;->mMoveInAnimation:Landroid/view/animation/Animation;

    int-to-long v3, v0

    invoke-virtual {v2, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 611
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    neg-int v3, p1

    int-to-float v3, v3

    invoke-direct {v2, v5, v3, v5, v5}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v2, p0, Lcom/android/contacts/ui/GroupsBrowserActivity;->mMoveOutAnimation:Landroid/view/animation/Animation;

    .line 612
    iget-object v2, p0, Lcom/android/contacts/ui/GroupsBrowserActivity;->mMoveOutAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v2, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 613
    iget-object v2, p0, Lcom/android/contacts/ui/GroupsBrowserActivity;->mMoveOutAnimation:Landroid/view/animation/Animation;

    int-to-long v3, v0

    invoke-virtual {v2, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 615
    new-instance v2, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v2, v5, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v2, p0, Lcom/android/contacts/ui/GroupsBrowserActivity;->mFadeInAnimation:Landroid/view/animation/Animation;

    .line 616
    iget-object v2, p0, Lcom/android/contacts/ui/GroupsBrowserActivity;->mFadeInAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v2, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 617
    iget-object v2, p0, Lcom/android/contacts/ui/GroupsBrowserActivity;->mFadeInAnimation:Landroid/view/animation/Animation;

    int-to-long v3, v0

    invoke-virtual {v2, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 619
    new-instance v2, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v2, v6, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v2, p0, Lcom/android/contacts/ui/GroupsBrowserActivity;->mFadeOutAnimation:Landroid/view/animation/Animation;

    .line 620
    iget-object v2, p0, Lcom/android/contacts/ui/GroupsBrowserActivity;->mFadeOutAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v2, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 621
    iget-object v2, p0, Lcom/android/contacts/ui/GroupsBrowserActivity;->mFadeOutAnimation:Landroid/view/animation/Animation;

    int-to-long v3, v0

    invoke-virtual {v2, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 623
    new-instance v2, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v2, v5, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v2, p0, Lcom/android/contacts/ui/GroupsBrowserActivity;->mHideAnimation:Landroid/view/animation/Animation;

    .line 624
    iget-object v2, p0, Lcom/android/contacts/ui/GroupsBrowserActivity;->mHideAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v2, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 625
    iget-object v2, p0, Lcom/android/contacts/ui/GroupsBrowserActivity;->mHideAnimation:Landroid/view/animation/Animation;

    int-to-long v3, v0

    invoke-virtual {v2, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 626
    iget-object v2, p0, Lcom/android/contacts/ui/GroupsBrowserActivity;->mHideAnimation:Landroid/view/animation/Animation;

    iget-object v3, p0, Lcom/android/contacts/ui/GroupsBrowserActivity;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_0
.end method

.method private buildEditGroupNameDialog(I)V
    .locals 6
    .parameter "mSelectedPosition"

    .prologue
    .line 436
    invoke-virtual {p0}, Lcom/android/contacts/ui/GroupsBrowserActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f030030

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 439
    .local v2, groupName:Landroid/widget/EditText;
    sget-object v3, Lcom/android/contacts/ui/GroupsBrowserActivity;->mMergedGroupList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/ui/GroupsBrowserActivity$MergedGroup;

    iget-object v1, v3, Lcom/android/contacts/ui/GroupsBrowserActivity$MergedGroup;->mGroupDelta:Lcom/android/contacts/model/GroupDelta;

    .line 440
    .local v1, group:Lcom/android/contacts/model/GroupDelta;
    invoke-virtual {v1}, Lcom/android/contacts/model/GroupDelta;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 441
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 442
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v3, 0x7f0b0171

    new-instance v4, Lcom/android/contacts/ui/GroupsBrowserActivity$8;

    invoke-direct {v4, p0, v2, p1}, Lcom/android/contacts/ui/GroupsBrowserActivity$8;-><init>(Lcom/android/contacts/ui/GroupsBrowserActivity;Landroid/widget/EditText;I)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0b0172

    new-instance v5, Lcom/android/contacts/ui/GroupsBrowserActivity$7;

    invoke-direct {v5, p0}, Lcom/android/contacts/ui/GroupsBrowserActivity$7;-><init>(Lcom/android/contacts/ui/GroupsBrowserActivity;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/android/contacts/ui/GroupsBrowserActivity$6;

    invoke-direct {v4, p0}, Lcom/android/contacts/ui/GroupsBrowserActivity$6;-><init>(Lcom/android/contacts/ui/GroupsBrowserActivity;)V

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 471
    const v3, 0x7f0b0117

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 475
    return-void
.end method

.method private chooseAccountForGroupAdding()V
    .locals 1

    .prologue
    .line 377
    invoke-static {p0}, Lcom/android/contacts/ContactsUtils;->getDefaultAccount(Landroid/content/Context;)[Landroid/accounts/Account;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/ui/GroupsBrowserActivity;->mAccounts:[Landroid/accounts/Account;

    .line 379
    invoke-direct {p0}, Lcom/android/contacts/ui/GroupsBrowserActivity;->startAddingGroup()V

    .line 380
    return-void
.end method

.method private discardEditing()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 498
    invoke-direct {p0}, Lcom/android/contacts/ui/GroupsBrowserActivity;->isAddingGroup()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 499
    invoke-direct {p0}, Lcom/android/contacts/ui/GroupsBrowserActivity;->finishAddingGroup()V

    .line 503
    :goto_0
    return-void

    .line 501
    :cond_0
    invoke-virtual {p0, v1, v1}, Lcom/android/contacts/ui/GroupsBrowserActivity;->setMode(ZZ)V

    goto :goto_0
.end method

.method private finishAddingGroup()V
    .locals 1

    .prologue
    .line 387
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/ui/GroupsBrowserActivity;->mIsAddingGroup:Z

    .line 388
    invoke-direct {p0}, Lcom/android/contacts/ui/GroupsBrowserActivity;->hideSoftKeyboard()V

    .line 389
    return-void
.end method

.method private getEnableDisplayOnlyPhones()V
    .locals 3

    .prologue
    .line 678
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 679
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v1, "only_phones"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/contacts/ui/GroupsBrowserActivity;->mDisplayOnlyPhones:Z

    .line 680
    return-void
.end method

.method private getEnablePhoto()Z
    .locals 3

    .prologue
    .line 671
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 672
    .local v0, sp:Landroid/content/SharedPreferences;
    const-string v1, "pref_key_enable_contact_photo"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method private getFirstVisibleDataChild()I
    .locals 2

    .prologue
    .line 539
    iget-object v0, p0, Lcom/android/contacts/ui/GroupsBrowserActivity;->mList:Landroid/widget/SortableListView;

    invoke-virtual {v0}, Landroid/widget/SortableListView;->getHeaderViewsCount()I

    move-result v0

    iget-object v1, p0, Lcom/android/contacts/ui/GroupsBrowserActivity;->mList:Landroid/widget/SortableListView;

    invoke-virtual {v1}, Landroid/widget/SortableListView;->getFirstVisiblePosition()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object v1, p0, Lcom/android/contacts/ui/GroupsBrowserActivity;->mList:Landroid/widget/SortableListView;

    invoke-virtual {v1}, Landroid/widget/SortableListView;->getFirstVisiblePosition()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private getLastVisibleDataChild()I
    .locals 3

    .prologue
    .line 544
    iget-object v0, p0, Lcom/android/contacts/ui/GroupsBrowserActivity;->mList:Landroid/widget/SortableListView;

    invoke-virtual {v0}, Landroid/widget/SortableListView;->getLastVisiblePosition()I

    move-result v0

    iget-object v1, p0, Lcom/android/contacts/ui/GroupsBrowserActivity;->mList:Landroid/widget/SortableListView;

    invoke-virtual {v1}, Landroid/widget/SortableListView;->getCount()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/contacts/ui/GroupsBrowserActivity;->mList:Landroid/widget/SortableListView;

    invoke-virtual {v2}, Landroid/widget/SortableListView;->getFooterViewsCount()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lcom/android/contacts/ui/GroupsBrowserActivity;->mList:Landroid/widget/SortableListView;

    invoke-virtual {v1}, Landroid/widget/SortableListView;->getFirstVisiblePosition()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private getRealPosition(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 1018
    iget-object v0, p0, Lcom/android/contacts/ui/GroupsBrowserActivity;->mList:Landroid/widget/SortableListView;

    invoke-virtual {v0}, Landroid/widget/SortableListView;->getHeaderViewsCount()I

    move-result v0

    sub-int v0, p1, v0

    return v0
.end method

.method private hideSoftKeyboard()V
    .locals 3

    .prologue
    .line 510
    iget-object v0, p0, Lcom/android/contacts/ui/GroupsBrowserActivity;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/android/contacts/ui/GroupsBrowserActivity;->mList:Landroid/widget/SortableListView;

    invoke-virtual {v1}, Landroid/widget/SortableListView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 511
    return-void
.end method

.method private isAddingGroup()Z
    .locals 1

    .prologue
    .line 392
    iget-boolean v0, p0, Lcom/android/contacts/ui/GroupsBrowserActivity;->mIsAddingGroup:Z

    return v0
.end method

.method private setCreateNewIcon()V
    .locals 4

    .prologue
    .line 251
    iget-object v2, p0, Lcom/android/contacts/ui/GroupsBrowserActivity;->mNewGroupView:Landroid/view/View;

    if-nez v2, :cond_0

    .line 263
    :goto_0
    return-void

    .line 255
    :cond_0
    invoke-direct {p0}, Lcom/android/contacts/ui/GroupsBrowserActivity;->getEnablePhoto()Z

    move-result v1

    .line 257
    .local v1, enablePhoto:Z
    iget-object v2, p0, Lcom/android/contacts/ui/GroupsBrowserActivity;->mNewGroupView:Landroid/view/View;

    const v3, 0x7f0700a0

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 258
    .local v0, createNew:Landroid/widget/ImageView;
    if-eqz v1, :cond_1

    .line 259
    const v2, 0x7f020090

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 261
    :cond_1
    const v2, 0x7f020037

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method private startAddingGroup()V
    .locals 0

    .prologue
    .line 383
    invoke-direct {p0}, Lcom/android/contacts/ui/GroupsBrowserActivity;->buildAddGroupDialog()V

    .line 384
    return-void
.end method

.method private startAnimations()V
    .locals 6

    .prologue
    .line 549
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/contacts/ui/GroupsBrowserActivity;->mAnimating:Z

    .line 550
    invoke-direct {p0}, Lcom/android/contacts/ui/GroupsBrowserActivity;->getFirstVisibleDataChild()I

    move-result v2

    .line 551
    .local v2, start:I
    invoke-direct {p0}, Lcom/android/contacts/ui/GroupsBrowserActivity;->getLastVisibleDataChild()I

    move-result v0

    .line 552
    .local v0, end:I
    move v1, v2

    .local v1, i:I
    :goto_0
    if-gt v1, v0, :cond_6

    .line 553
    iget-object v4, p0, Lcom/android/contacts/ui/GroupsBrowserActivity;->mList:Landroid/widget/SortableListView;

    invoke-virtual {v4, v1}, Landroid/widget/SortableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/ui/GroupsBrowserActivity$ViewHolder;

    .line 554
    .local v3, vh:Lcom/android/contacts/ui/GroupsBrowserActivity$ViewHolder;
    iget-object v4, v3, Lcom/android/contacts/ui/GroupsBrowserActivity$ViewHolder;->zIcon:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/contacts/ui/GroupsBrowserActivity;->buildAnimations(I)V

    .line 555
    iget-boolean v4, p0, Lcom/android/contacts/ui/GroupsBrowserActivity;->mEnablePhoto:Z

    if-eqz v4, :cond_0

    .line 556
    iget-object v4, v3, Lcom/android/contacts/ui/GroupsBrowserActivity$ViewHolder;->zIcon:Landroid/view/View;

    iget-boolean v5, p0, Lcom/android/contacts/ui/GroupsBrowserActivity;->mManagingGroups:Z

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/contacts/ui/GroupsBrowserActivity;->mMoveOutAnimation:Landroid/view/animation/Animation;

    :goto_1
    invoke-virtual {v4, v5}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 557
    iget-object v4, v3, Lcom/android/contacts/ui/GroupsBrowserActivity$ViewHolder;->zName:Landroid/widget/TextView;

    iget-boolean v5, p0, Lcom/android/contacts/ui/GroupsBrowserActivity;->mManagingGroups:Z

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/contacts/ui/GroupsBrowserActivity;->mMoveOutAnimation:Landroid/view/animation/Animation;

    :goto_2
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 559
    :cond_0
    iget-object v4, v3, Lcom/android/contacts/ui/GroupsBrowserActivity$ViewHolder;->zSummary:Landroid/widget/TextView;

    iget-boolean v5, p0, Lcom/android/contacts/ui/GroupsBrowserActivity;->mManagingGroups:Z

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/contacts/ui/GroupsBrowserActivity;->mFadeOutAnimation:Landroid/view/animation/Animation;

    :goto_3
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 560
    iget-object v4, v3, Lcom/android/contacts/ui/GroupsBrowserActivity$ViewHolder;->zRight:Landroid/view/View;

    iget-boolean v5, p0, Lcom/android/contacts/ui/GroupsBrowserActivity;->mManagingGroups:Z

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/contacts/ui/GroupsBrowserActivity;->mFadeOutAnimation:Landroid/view/animation/Animation;

    :goto_4
    invoke-virtual {v4, v5}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 562
    iget-object v4, v3, Lcom/android/contacts/ui/GroupsBrowserActivity$ViewHolder;->zNameEdit:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/contacts/ui/GroupsBrowserActivity;->mHideAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 563
    iget-object v4, v3, Lcom/android/contacts/ui/GroupsBrowserActivity$ViewHolder;->zMoveButton:Landroid/widget/ImageView;

    iget-boolean v5, p0, Lcom/android/contacts/ui/GroupsBrowserActivity;->mManagingGroups:Z

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/contacts/ui/GroupsBrowserActivity;->mFadeInAnimation:Landroid/view/animation/Animation;

    :goto_5
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 552
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 556
    :cond_1
    iget-object v5, p0, Lcom/android/contacts/ui/GroupsBrowserActivity;->mMoveInAnimation:Landroid/view/animation/Animation;

    goto :goto_1

    .line 557
    :cond_2
    iget-object v5, p0, Lcom/android/contacts/ui/GroupsBrowserActivity;->mMoveInAnimation:Landroid/view/animation/Animation;

    goto :goto_2

    .line 559
    :cond_3
    iget-object v5, p0, Lcom/android/contacts/ui/GroupsBrowserActivity;->mFadeInAnimation:Landroid/view/animation/Animation;

    goto :goto_3

    .line 560
    :cond_4
    iget-object v5, p0, Lcom/android/contacts/ui/GroupsBrowserActivity;->mFadeInAnimation:Landroid/view/animation/Animation;

    goto :goto_4

    .line 563
    :cond_5
    iget-object v5, p0, Lcom/android/contacts/ui/GroupsBrowserActivity;->mFadeOutAnimation:Landroid/view/animation/Animation;

    goto :goto_5

    .line 565
    .end local v3           #vh:Lcom/android/contacts/ui/GroupsBrowserActivity$ViewHolder;
    :cond_6
    return-void
.end method

.method private startGroupWindow(Lcom/android/contacts/ui/GroupsBrowserActivity$MergedGroup;)V
    .locals 3
    .parameter

    .prologue
    .line 918
    if-eqz p1, :cond_0

    .line 920
    iget-object v0, p1, Lcom/android/contacts/ui/GroupsBrowserActivity$MergedGroup;->mGroupDelta:Lcom/android/contacts/model/GroupDelta;

    sput-object v0, Lcom/android/contacts/ui/GroupsBrowserActivity;->mEditingGroup:Lcom/android/contacts/model/GroupDelta;

    .line 921
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/contacts/ContactsListActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 922
    const-string v1, "com.android.contacts.action.LIST_GROUP"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 923
    const-string v1, "com.android.contacts.extra.GROUP"

    iget-object v2, p1, Lcom/android/contacts/ui/GroupsBrowserActivity$MergedGroup;->mGroupDelta:Lcom/android/contacts/model/GroupDelta;

    invoke-virtual {v2}, Lcom/android/contacts/model/GroupDelta;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 924
    const-string v1, "com.android.contacts.extra.GROUP_ID"

    iget-object v2, p1, Lcom/android/contacts/ui/GroupsBrowserActivity$MergedGroup;->mGroupIds:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putIntegerArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 925
    invoke-virtual {p0, v0}, Lcom/android/contacts/ui/GroupsBrowserActivity;->startActivity(Landroid/content/Intent;)V

    .line 927
    :cond_0
    return-void
.end method

.method private updateVisibilities(Lcom/android/contacts/ui/GroupsBrowserActivity$ViewHolder;)V
    .locals 4
    .parameter "vh"

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 650
    iget-object v0, p1, Lcom/android/contacts/ui/GroupsBrowserActivity$ViewHolder;->zIcon:Landroid/view/View;

    iget-boolean v1, p0, Lcom/android/contacts/ui/GroupsBrowserActivity;->mManagingGroups:Z

    if-eqz v1, :cond_0

    move v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 651
    iget-object v0, p1, Lcom/android/contacts/ui/GroupsBrowserActivity$ViewHolder;->zName:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/android/contacts/ui/GroupsBrowserActivity;->mManagingGroups:Z

    if-eqz v1, :cond_1

    move v1, v3

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 652
    iget-object v0, p1, Lcom/android/contacts/ui/GroupsBrowserActivity$ViewHolder;->zSummary:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/android/contacts/ui/GroupsBrowserActivity;->mManagingGroups:Z

    if-eqz v1, :cond_2

    move v1, v3

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 653
    iget-object v0, p1, Lcom/android/contacts/ui/GroupsBrowserActivity$ViewHolder;->zRight:Landroid/view/View;

    iget-boolean v1, p0, Lcom/android/contacts/ui/GroupsBrowserActivity;->mManagingGroups:Z

    if-eqz v1, :cond_3

    move v1, v3

    :goto_3
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 655
    iget-object v0, p1, Lcom/android/contacts/ui/GroupsBrowserActivity$ViewHolder;->zNameEdit:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/android/contacts/ui/GroupsBrowserActivity;->mManagingGroups:Z

    if-eqz v1, :cond_4

    move v1, v2

    :goto_4
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 656
    iget-object v0, p1, Lcom/android/contacts/ui/GroupsBrowserActivity$ViewHolder;->zMoveButton:Landroid/widget/ImageView;

    iget-boolean v1, p0, Lcom/android/contacts/ui/GroupsBrowserActivity;->mManagingGroups:Z

    if-eqz v1, :cond_5

    move v1, v2

    :goto_5
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 657
    return-void

    :cond_0
    move v1, v2

    .line 650
    goto :goto_0

    :cond_1
    move v1, v2

    .line 651
    goto :goto_1

    :cond_2
    move v1, v2

    .line 652
    goto :goto_2

    :cond_3
    move v1, v2

    .line 653
    goto :goto_3

    :cond_4
    move v1, v3

    .line 655
    goto :goto_4

    :cond_5
    move v1, v3

    .line 656
    goto :goto_5
.end method

.method private validateName(Ljava/lang/String;I)Z
    .locals 5
    .parameter "name"
    .parameter "positionToSkip"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 163
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 164
    const v2, 0x7f0b0118

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    move v2, v4

    .line 187
    :goto_0
    return v2

    .line 172
    :cond_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    sget-object v2, Lcom/android/contacts/ui/GroupsBrowserActivity;->mGroupList:Lcom/android/contacts/model/GroupList;

    invoke-virtual {v2}, Lcom/android/contacts/model/GroupList;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 173
    if-ne v1, p2, :cond_2

    .line 172
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 177
    :cond_2
    sget-object v2, Lcom/android/contacts/ui/GroupsBrowserActivity;->mGroupList:Lcom/android/contacts/model/GroupList;

    invoke-virtual {v2, v1}, Lcom/android/contacts/model/GroupList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/GroupDelta;

    .line 178
    .local v0, group:Lcom/android/contacts/model/GroupDelta;
    invoke-virtual {v0}, Lcom/android/contacts/model/GroupDelta;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v0}, Lcom/android/contacts/model/GroupDelta;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 179
    :cond_3
    const v2, 0x7f0b0111

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    move v2, v4

    .line 184
    goto :goto_0

    .end local v0           #group:Lcom/android/contacts/model/GroupDelta;
    :cond_4
    move v2, v3

    .line 187
    goto :goto_0
.end method


# virtual methods
.method public cancelAllModifications()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1004
    invoke-virtual {p0, v0, v0}, Lcom/android/contacts/ui/GroupsBrowserActivity;->setMode(ZZ)V

    .line 1005
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 631
    packed-switch p1, :pswitch_data_0

    .line 646
    :cond_0
    :goto_0
    return-void

    .line 633
    :pswitch_0
    sget-object v0, Lcom/android/contacts/ui/GroupsBrowserActivity;->mEditingGroup:Lcom/android/contacts/model/GroupDelta;

    if-eqz v0, :cond_0

    .line 634
    sget-object v0, Lcom/android/contacts/ui/GroupsBrowserActivity;->mEditingGroup:Lcom/android/contacts/model/GroupDelta;

    invoke-virtual {v0}, Lcom/android/contacts/model/GroupDelta;->clearData()V

    .line 635
    iget-object v0, p0, Lcom/android/contacts/ui/GroupsBrowserActivity;->mAdapter:Lcom/android/contacts/ui/GroupsBrowserActivity$DisplayAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/ui/GroupsBrowserActivity$DisplayAdapter;->notifyDataSetChanged()V

    .line 636
    const/4 v0, 0x0

    sput-object v0, Lcom/android/contacts/ui/GroupsBrowserActivity;->mEditingGroup:Lcom/android/contacts/model/GroupDelta;

    goto :goto_0

    .line 641
    :pswitch_1
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 642
    new-instance v0, Lcom/android/contacts/ui/GroupsBrowserActivity$QueryGroupsTask;

    invoke-direct {v0, p0, p0}, Lcom/android/contacts/ui/GroupsBrowserActivity$QueryGroupsTask;-><init>(Lcom/android/contacts/ui/GroupsBrowserActivity;Lcom/android/contacts/ui/GroupsBrowserActivity;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/contacts/ui/GroupsBrowserActivity$QueryGroupsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 631
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Lcom/android/contacts/ui/GroupsBrowserActivity;->mButtonPanel:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 355
    invoke-direct {p0}, Lcom/android/contacts/ui/GroupsBrowserActivity;->discardEditing()V

    .line 360
    :goto_0
    return-void

    .line 357
    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/contacts/TwelveKeyDialer;->IS_SLIDE_DOWN:Z

    .line 358
    invoke-super {p0}, Landroid/app/ListActivity;->onBackPressed()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    const/4 v1, 0x1

    .line 479
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 495
    :cond_0
    :goto_0
    return-void

    .line 481
    :sswitch_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/contacts/ui/GroupsBrowserActivity;->setMode(ZZ)V

    goto :goto_0

    .line 485
    :sswitch_1
    invoke-direct {p0}, Lcom/android/contacts/ui/GroupsBrowserActivity;->discardEditing()V

    goto :goto_0

    .line 489
    :sswitch_2
    invoke-direct {p0}, Lcom/android/contacts/ui/GroupsBrowserActivity;->isAddingGroup()Z

    move-result v0

    if-nez v0, :cond_0

    .line 490
    iput-boolean v1, p0, Lcom/android/contacts/ui/GroupsBrowserActivity;->mIsAddingGroup:Z

    .line 491
    invoke-direct {p0}, Lcom/android/contacts/ui/GroupsBrowserActivity;->chooseAccountForGroupAdding()V

    goto :goto_0

    .line 479
    :sswitch_data_0
    .sparse-switch
        0x7f07001c -> :sswitch_0
        0x7f07001d -> :sswitch_1
        0x7f07007b -> :sswitch_2
    .end sparse-switch
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    const/4 v2, 0x1

    .line 316
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 330
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 318
    :pswitch_0
    sget-object v0, Lcom/android/contacts/ui/GroupsBrowserActivity;->mMergedGroupList:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/contacts/ui/GroupsBrowserActivity;->mSelectedPosition:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/ui/GroupsBrowserActivity$MergedGroup;

    invoke-direct {p0, v0}, Lcom/android/contacts/ui/GroupsBrowserActivity;->startGroupWindow(Lcom/android/contacts/ui/GroupsBrowserActivity$MergedGroup;)V

    move v0, v2

    .line 319
    goto :goto_0

    .line 322
    :pswitch_1
    iget v0, p0, Lcom/android/contacts/ui/GroupsBrowserActivity;->mSelectedPosition:I

    invoke-direct {p0, v0}, Lcom/android/contacts/ui/GroupsBrowserActivity;->buildEditGroupNameDialog(I)V

    move v0, v2

    .line 323
    goto :goto_0

    .line 326
    :pswitch_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/contacts/ui/GroupsBrowserActivity;->showDialog(I)V

    move v0, v2

    .line 327
    goto :goto_0

    .line 316
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "icicle"

    .prologue
    const/4 v4, 0x0

    const v3, 0x7f07007b

    const/4 v2, 0x0

    .line 193
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 195
    const v0, 0x7f03001b

    invoke-virtual {p0, v0}, Lcom/android/contacts/ui/GroupsBrowserActivity;->setContentView(I)V

    .line 197
    const v0, 0x7f070048

    invoke-virtual {p0, v0}, Lcom/android/contacts/ui/GroupsBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/ui/GroupsBrowserActivity;->mButtonPanel:Landroid/view/View;

    .line 198
    iget-object v0, p0, Lcom/android/contacts/ui/GroupsBrowserActivity;->mButtonPanel:Landroid/view/View;

    const v1, 0x7f07001c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 199
    iget-object v0, p0, Lcom/android/contacts/ui/GroupsBrowserActivity;->mButtonPanel:Landroid/view/View;

    const v1, 0x7f07001d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 201
    const v0, 0x7f070078

    invoke-virtual {p0, v0}, Lcom/android/contacts/ui/GroupsBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/ui/GroupsBrowserActivity;->mGroupEmpty:Landroid/view/View;

    .line 202
    iget-object v0, p0, Lcom/android/contacts/ui/GroupsBrowserActivity;->mGroupEmpty:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 203
    iget-object v0, p0, Lcom/android/contacts/ui/GroupsBrowserActivity;->mGroupEmpty:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 205
    invoke-virtual {p0}, Lcom/android/contacts/ui/GroupsBrowserActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/contacts/DialtactsActivity;

    if-eqz v0, :cond_0

    .line 206
    invoke-virtual {p0}, Lcom/android/contacts/ui/GroupsBrowserActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/DialtactsActivity;

    invoke-virtual {v0}, Lcom/android/contacts/DialtactsActivity;->getPhotoLoader()Lcom/android/contacts/ContactPhotoLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/ui/GroupsBrowserActivity;->mPhotoLoader:Lcom/android/contacts/ContactPhotoLoader;

    .line 212
    :goto_0
    invoke-virtual {p0}, Lcom/android/contacts/ui/GroupsBrowserActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    check-cast v0, Landroid/widget/SortableListView;

    iput-object v0, p0, Lcom/android/contacts/ui/GroupsBrowserActivity;->mList:Landroid/widget/SortableListView;

    .line 213
    iget-object v0, p0, Lcom/android/contacts/ui/GroupsBrowserActivity;->mList:Landroid/widget/SortableListView;

    invoke-virtual {v0, p0}, Landroid/widget/SortableListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 214
    iget-object v0, p0, Lcom/android/contacts/ui/GroupsBrowserActivity;->mList:Landroid/widget/SortableListView;

    invoke-virtual {v0, p0}, Landroid/widget/SortableListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 215
    iget-object v0, p0, Lcom/android/contacts/ui/GroupsBrowserActivity;->mList:Landroid/widget/SortableListView;

    iget-object v1, p0, Lcom/android/contacts/ui/GroupsBrowserActivity;->mOnOrderChagnedListener:Landroid/widget/SortableListView$OnOrderChangedListener;

    invoke-virtual {v0, v1}, Landroid/widget/SortableListView;->setOnOrderChangedListener(Landroid/widget/SortableListView$OnOrderChangedListener;)V

    .line 216
    iget-object v0, p0, Lcom/android/contacts/ui/GroupsBrowserActivity;->mList:Landroid/widget/SortableListView;

    invoke-virtual {v0, v2}, Landroid/widget/SortableListView;->setCacheColorHint(I)V

    .line 218
    invoke-virtual {p0}, Lcom/android/contacts/ui/GroupsBrowserActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030026

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/ui/GroupsBrowserActivity;->mNewGroupView:Landroid/view/View;

    .line 219
    iget-object v0, p0, Lcom/android/contacts/ui/GroupsBrowserActivity;->mNewGroupView:Landroid/view/View;

    const v1, 0x7f0700a1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0b0113

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 220
    iget-object v0, p0, Lcom/android/contacts/ui/GroupsBrowserActivity;->mNewGroupView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 221
    iget-object v0, p0, Lcom/android/contacts/ui/GroupsBrowserActivity;->mList:Landroid/widget/SortableListView;

    iget-object v1, p0, Lcom/android/contacts/ui/GroupsBrowserActivity;->mNewGroupView:Landroid/view/View;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v4, v2}, Landroid/widget/SortableListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 222
    iget-object v0, p0, Lcom/android/contacts/ui/GroupsBrowserActivity;->mNewGroupView:Landroid/view/View;

    new-instance v1, Lcom/android/contacts/ui/GroupsBrowserActivity$2;

    invoke-direct {v1, p0}, Lcom/android/contacts/ui/GroupsBrowserActivity$2;-><init>(Lcom/android/contacts/ui/GroupsBrowserActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 242
    invoke-virtual {p0, v3}, Lcom/android/contacts/ui/GroupsBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 244
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/android/contacts/ui/GroupsBrowserActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/android/contacts/ui/GroupsBrowserActivity;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 245
    invoke-virtual {p0}, Lcom/android/contacts/ui/GroupsBrowserActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 248
    return-void

    .line 208
    :cond_0
    new-instance v0, Lcom/android/contacts/ContactPhotoLoader;

    const v1, 0x10803b6

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/ContactPhotoLoader;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/contacts/ui/GroupsBrowserActivity;->mPhotoLoader:Lcom/android/contacts/ContactPhotoLoader;

    goto :goto_0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 10
    .parameter "menu"
    .parameter "view"
    .parameter "menuInfo"

    .prologue
    const/4 v9, 0x0

    .line 282
    iget-boolean v7, p0, Lcom/android/contacts/ui/GroupsBrowserActivity;->mManagingGroups:Z

    if-nez v7, :cond_0

    invoke-direct {p0}, Lcom/android/contacts/ui/GroupsBrowserActivity;->isAddingGroup()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 312
    :cond_0
    :goto_0
    return-void

    .line 288
    :cond_1
    :try_start_0
    move-object v0, p3

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    move-object v5, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 294
    .local v5, info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    iget v7, v5, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-direct {p0, v7}, Lcom/android/contacts/ui/GroupsBrowserActivity;->getRealPosition(I)I

    move-result v7

    iput v7, p0, Lcom/android/contacts/ui/GroupsBrowserActivity;->mSelectedPosition:I

    .line 295
    sget-object v7, Lcom/android/contacts/ui/GroupsBrowserActivity;->mMergedGroupList:Ljava/util/ArrayList;

    iget v8, p0, Lcom/android/contacts/ui/GroupsBrowserActivity;->mSelectedPosition:I

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/contacts/ui/GroupsBrowserActivity$MergedGroup;

    .line 296
    .local v6, mergedGroup:Lcom/android/contacts/ui/GroupsBrowserActivity$MergedGroup;
    iget-object v7, v6, Lcom/android/contacts/ui/GroupsBrowserActivity$MergedGroup;->mGroupDelta:Lcom/android/contacts/model/GroupDelta;

    invoke-virtual {v7}, Lcom/android/contacts/model/GroupDelta;->getDisplayName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p1, v7}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 298
    const/4 v7, 0x1

    const v8, 0x7f0b0115

    invoke-interface {p1, v9, v7, v9, v8}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 301
    const/4 v3, 0x0

    .line 302
    .local v3, hasSystemGroup:Z
    iget-object v7, v6, Lcom/android/contacts/ui/GroupsBrowserActivity$MergedGroup;->mGroupList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/model/GroupDelta;

    .line 303
    .local v2, groupDelta:Lcom/android/contacts/model/GroupDelta;
    invoke-virtual {v2}, Lcom/android/contacts/model/GroupDelta;->getSystemId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 304
    const/4 v3, 0x1

    goto :goto_1

    .line 289
    .end local v2           #groupDelta:Lcom/android/contacts/model/GroupDelta;
    .end local v3           #hasSystemGroup:Z
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    .end local v6           #mergedGroup:Lcom/android/contacts/ui/GroupsBrowserActivity$MergedGroup;
    :catch_0
    move-exception v1

    .line 290
    .local v1, e:Ljava/lang/ClassCastException;
    const-string v7, "GroupsBrowserActivity"

    const-string v8, "bad menuInfo"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 308
    .end local v1           #e:Ljava/lang/ClassCastException;
    .restart local v3       #hasSystemGroup:Z
    .restart local v4       #i$:Ljava/util/Iterator;
    .restart local v5       #info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    .restart local v6       #mergedGroup:Lcom/android/contacts/ui/GroupsBrowserActivity$MergedGroup;
    :cond_3
    if-nez v3, :cond_0

    .line 309
    const/4 v7, 0x3

    const v8, 0x7f0b0117

    invoke-interface {p1, v9, v7, v9, v8}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 310
    const/4 v7, 0x2

    const v8, 0x7f0b0116

    invoke-interface {p1, v9, v7, v9, v8}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .parameter "id"
    .parameter "args"

    .prologue
    const/4 v2, 0x0

    .line 891
    packed-switch p1, :pswitch_data_0

    move-object v0, v2

    .line 914
    :goto_0
    return-object v0

    .line 893
    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b002d

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b014f

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/contacts/ui/GroupsBrowserActivity$10;

    invoke-direct {v2, p0}, Lcom/android/contacts/ui/GroupsBrowserActivity$10;-><init>(Lcom/android/contacts/ui/GroupsBrowserActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 891
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 335
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 337
    invoke-virtual {p0}, Lcom/android/contacts/ui/GroupsBrowserActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 338
    .local v0, inflater:Landroid/view/MenuInflater;
    const v1, 0x7f0f0004

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 339
    const/4 v1, 0x1

    return v1
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 872
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-boolean v0, p0, Lcom/android/contacts/ui/GroupsBrowserActivity;->mManagingGroups:Z

    if-nez v0, :cond_0

    .line 873
    iget-object v0, p0, Lcom/android/contacts/ui/GroupsBrowserActivity;->mAdapter:Lcom/android/contacts/ui/GroupsBrowserActivity$DisplayAdapter;

    iget-object v1, p0, Lcom/android/contacts/ui/GroupsBrowserActivity;->mList:Landroid/widget/SortableListView;

    invoke-virtual {v1}, Landroid/widget/SortableListView;->getHeaderViewsCount()I

    move-result v1

    sub-int v1, p3, v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/ui/GroupsBrowserActivity$DisplayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/ui/GroupsBrowserActivity$MergedGroup;

    invoke-direct {p0, v0}, Lcom/android/contacts/ui/GroupsBrowserActivity;->startGroupWindow(Lcom/android/contacts/ui/GroupsBrowserActivity$MergedGroup;)V

    .line 875
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 364
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    move v0, v2

    .line 373
    :goto_0
    return v0

    .line 366
    :pswitch_0
    invoke-virtual {p0, v1, v2}, Lcom/android/contacts/ui/GroupsBrowserActivity;->setMode(ZZ)V

    move v0, v1

    .line 367
    goto :goto_0

    .line 370
    :pswitch_1
    invoke-direct {p0}, Lcom/android/contacts/ui/GroupsBrowserActivity;->chooseAccountForGroupAdding()V

    move v0, v1

    .line 371
    goto :goto_0

    .line 364
    nop

    :pswitch_data_0
    .packed-switch 0x7f070107
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 5
    .parameter "id"
    .parameter "dialog"

    .prologue
    const-string v4, "\""

    .line 879
    packed-switch p1, :pswitch_data_0

    .line 887
    .end local p0
    .end local p2
    :goto_0
    return-void

    .line 881
    .restart local p0
    .restart local p2
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/contacts/ui/GroupsBrowserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b014f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 882
    .local v0, confirmationMsg:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/contacts/ui/GroupsBrowserActivity;->mMergedGroupList:Ljava/util/ArrayList;

    iget v3, p0, Lcom/android/contacts/ui/GroupsBrowserActivity;->mSelectedPosition:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/contacts/ui/GroupsBrowserActivity$MergedGroup;

    iget-object v2, p0, Lcom/android/contacts/ui/GroupsBrowserActivity$MergedGroup;->mGroupDelta:Lcom/android/contacts/model/GroupDelta;

    invoke-virtual {v2}, Lcom/android/contacts/model/GroupDelta;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 884
    check-cast p2, Landroid/app/AlertDialog;

    .end local p2
    invoke-virtual {p2, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 879
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 344
    iget-object v0, p0, Lcom/android/contacts/ui/GroupsBrowserActivity;->mAdapter:Lcom/android/contacts/ui/GroupsBrowserActivity$DisplayAdapter;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/contacts/ui/GroupsBrowserActivity;->mAnimating:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/contacts/ui/GroupsBrowserActivity;->mManagingGroups:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/contacts/ui/GroupsBrowserActivity;->isAddingGroup()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v2

    .line 349
    :goto_0
    return v0

    .line 346
    :cond_1
    const v0, 0x7f070107

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/contacts/ui/GroupsBrowserActivity;->mManagingGroups:Z

    if-nez v1, :cond_2

    move v1, v3

    :goto_1
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 347
    const v0, 0x7f070108

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/contacts/ui/GroupsBrowserActivity;->mManagingGroups:Z

    if-nez v1, :cond_3

    sget-object v1, Lcom/android/contacts/ui/GroupsBrowserActivity;->mGroupList:Lcom/android/contacts/model/GroupList;

    invoke-virtual {v1}, Lcom/android/contacts/model/GroupList;->size()I

    move-result v1

    if-lez v1, :cond_3

    move v1, v3

    :goto_2
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move v0, v3

    .line 349
    goto :goto_0

    :cond_2
    move v1, v2

    .line 346
    goto :goto_1

    :cond_3
    move v1, v2

    .line 347
    goto :goto_2
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 268
    invoke-direct {p0}, Lcom/android/contacts/ui/GroupsBrowserActivity;->getEnablePhoto()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/ui/GroupsBrowserActivity;->mEnablePhoto:Z

    .line 269
    invoke-direct {p0}, Lcom/android/contacts/ui/GroupsBrowserActivity;->getEnableDisplayOnlyPhones()V

    .line 270
    invoke-direct {p0}, Lcom/android/contacts/ui/GroupsBrowserActivity;->setCreateNewIcon()V

    .line 272
    new-instance v0, Lcom/android/contacts/ui/GroupsBrowserActivity$QueryGroupsTask;

    invoke-direct {v0, p0, p0}, Lcom/android/contacts/ui/GroupsBrowserActivity$QueryGroupsTask;-><init>(Lcom/android/contacts/ui/GroupsBrowserActivity;Lcom/android/contacts/ui/GroupsBrowserActivity;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/contacts/ui/GroupsBrowserActivity$QueryGroupsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 273
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 274
    return-void
.end method

.method public setMode(ZZ)V
    .locals 4
    .parameter "isManaging"
    .parameter "applyChanges"

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 514
    iget-boolean v0, p0, Lcom/android/contacts/ui/GroupsBrowserActivity;->mManagingGroups:Z

    if-ne p1, v0, :cond_0

    .line 536
    :goto_0
    return-void

    .line 515
    :cond_0
    iput-boolean p1, p0, Lcom/android/contacts/ui/GroupsBrowserActivity;->mManagingGroups:Z

    .line 517
    invoke-direct {p0}, Lcom/android/contacts/ui/GroupsBrowserActivity;->startAnimations()V

    .line 519
    iget-boolean v0, p0, Lcom/android/contacts/ui/GroupsBrowserActivity;->mManagingGroups:Z

    if-nez v0, :cond_2

    .line 520
    iget-object v0, p0, Lcom/android/contacts/ui/GroupsBrowserActivity;->mLastFocusedItem:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/ui/GroupsBrowserActivity;->mLastFocusedItem:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 521
    :cond_1
    invoke-direct {p0}, Lcom/android/contacts/ui/GroupsBrowserActivity;->hideSoftKeyboard()V

    .line 524
    if-eqz p2, :cond_4

    .line 525
    sget-object v0, Lcom/android/contacts/ui/GroupsBrowserActivity;->mGroupList:Lcom/android/contacts/model/GroupList;

    invoke-virtual {v0}, Lcom/android/contacts/model/GroupList;->applyChanges()V

    .line 532
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/contacts/ui/GroupsBrowserActivity;->mListFooter:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 533
    iget-object v0, p0, Lcom/android/contacts/ui/GroupsBrowserActivity;->mListFooter:Landroid/view/View;

    if-eqz p1, :cond_5

    move v1, v3

    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 535
    :cond_3
    iget-object v0, p0, Lcom/android/contacts/ui/GroupsBrowserActivity;->mButtonPanel:Landroid/view/View;

    if-eqz p1, :cond_6

    move v1, v2

    :goto_3
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 527
    :cond_4
    new-instance v0, Lcom/android/contacts/ui/GroupsBrowserActivity$QueryGroupsTask;

    invoke-direct {v0, p0, p0}, Lcom/android/contacts/ui/GroupsBrowserActivity$QueryGroupsTask;-><init>(Lcom/android/contacts/ui/GroupsBrowserActivity;Lcom/android/contacts/ui/GroupsBrowserActivity;)V

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/contacts/ui/GroupsBrowserActivity$QueryGroupsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1

    :cond_5
    move v1, v2

    .line 533
    goto :goto_2

    :cond_6
    move v1, v3

    .line 535
    goto :goto_3
.end method

.method public setTabView(Landroid/view/View;Landroid/view/View;)V
    .locals 2
    .parameter "tabWidget"
    .parameter "listFooter"

    .prologue
    .line 997
    iput-object p1, p0, Lcom/android/contacts/ui/GroupsBrowserActivity;->mTabWidget:Landroid/view/View;

    .line 998
    iput-object p2, p0, Lcom/android/contacts/ui/GroupsBrowserActivity;->mListFooter:Landroid/view/View;

    .line 999
    iget-object v0, p0, Lcom/android/contacts/ui/GroupsBrowserActivity;->mListFooter:Landroid/view/View;

    iget-boolean v1, p0, Lcom/android/contacts/ui/GroupsBrowserActivity;->mManagingGroups:Z

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1000
    return-void

    .line 999
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V
    .locals 0
    .parameter "initialQuery"
    .parameter "selectInitialQuery"
    .parameter "appSearchData"
    .parameter "globalSearch"

    .prologue
    .line 1010
    if-eqz p4, :cond_0

    .line 1011
    invoke-super {p0, p1, p2, p3, p4}, Landroid/app/ListActivity;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    .line 1015
    :goto_0
    return-void

    .line 1013
    :cond_0
    invoke-static {p0, p1}, Lcom/android/contacts/ContactsSearchManager;->startSearch(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0
.end method
