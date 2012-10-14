.class public Lcom/android/contacts/ContactListItemView;
.super Landroid/widget/EditableListItem;
.source "ContactListItemView.java"


# instance fields
.field private mCallButton:Lcom/android/contacts/ui/widget/DontPressWithParentImageView;

.field private mCallButtonClickListener:Landroid/view/View$OnClickListener;

.field private final mCallButtonPadding:I

.field private mCheckBox:Landroid/widget/CheckBox;

.field private final mContext:Landroid/content/Context;

.field private mDataView:Landroid/widget/TextView;

.field private mDeleteButtonText:Ljava/lang/CharSequence;

.field private mExtraHeight:I

.field private final mGapBetweenImageAndText:I

.field private final mGapBetweenLabelAndData:I

.field private mHeaderHeight:I

.field private final mHeaderTextPadding:I

.field private mHeaderTextView:Landroid/widget/TextView;

.field private final mHeaderTextWidth:I

.field private mHeaderVisible:Z

.field private mLabelView:Landroid/widget/TextView;

.field private final mLastItemExtraPadding:I

.field private mLine1Height:I

.field private mLine2Height:I

.field private mLine3Height:I

.field private mMarkView:Landroid/widget/ImageView;

.field private mMode:I

.field private mNameTextView:Landroid/widget/TextView;

.field private mOffMarkResoruceId:I

.field private mOnMarkResourceId:I

.field private final mPaddingBottom:I

.field private final mPaddingLeft:I

.field private mPaddingRight:I

.field private final mPaddingTop:I

.field private final mPhotoLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

.field private mPhotoView:Landroid/widget/ImageView;

.field private final mPhotoViewHeight:I

.field private final mPhotoViewWidth:I

.field private final mPreferredHeight:I

.field private mPresenceIcon:Landroid/widget/ImageView;

.field private final mPresenceIconMargin:I

.field public mQuickContact:Landroid/widget/QuickContactBadge;

.field private mStarredView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/16 v5, 0xc

    const/4 v4, 0x0

    .line 91
    invoke-direct {p0, p1, p2}, Landroid/widget/EditableListItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 74
    const v1, 0x8a00004

    iput v1, p0, Lcom/android/contacts/ContactListItemView;->mMode:I

    .line 92
    iput-object p1, p0, Lcom/android/contacts/ContactListItemView;->mContext:Landroid/content/Context;

    .line 94
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 95
    .local v0, resources:Landroid/content/res/Resources;
    const v1, 0x7f090009

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/ContactListItemView;->mPreferredHeight:I

    .line 96
    const v1, 0x7f09000a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/ContactListItemView;->mPaddingTop:I

    .line 97
    const v1, 0x7f09000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/ContactListItemView;->mPaddingBottom:I

    .line 98
    const v1, 0x7f09000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/ContactListItemView;->mPaddingLeft:I

    .line 99
    const v1, 0x7f09000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/ContactListItemView;->mPaddingRight:I

    .line 100
    const v1, 0x7f09000f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/ContactListItemView;->mGapBetweenImageAndText:I

    .line 101
    const v1, 0x7f090010

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/ContactListItemView;->mGapBetweenLabelAndData:I

    .line 102
    const v1, 0x7f090011

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/ContactListItemView;->mCallButtonPadding:I

    .line 103
    const v1, 0x7f090012

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/ContactListItemView;->mPresenceIconMargin:I

    .line 104
    const v1, 0x7f090013

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/ContactListItemView;->mHeaderTextWidth:I

    .line 105
    const v1, 0x7f090014

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/ContactListItemView;->mHeaderTextPadding:I

    .line 106
    const v1, 0x7f090015

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/ContactListItemView;->mHeaderHeight:I

    .line 107
    const v1, 0x7f09000e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/ContactListItemView;->mLastItemExtraPadding:I

    .line 108
    const v1, 0x7f090016

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/ContactListItemView;->mPhotoViewWidth:I

    .line 109
    const v1, 0x7f090017

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/ContactListItemView;->mPhotoViewHeight:I

    .line 110
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v2, p0, Lcom/android/contacts/ContactListItemView;->mPhotoViewWidth:I

    iget v3, p0, Lcom/android/contacts/ContactListItemView;->mPhotoViewHeight:I

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v1, p0, Lcom/android/contacts/ContactListItemView;->mPhotoLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    .line 112
    new-instance v1, Landroid/widget/CheckBox;

    iget-object v2, p0, Lcom/android/contacts/ContactListItemView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/contacts/ContactListItemView;->mCheckBox:Landroid/widget/CheckBox;

    .line 113
    iget-object v1, p0, Lcom/android/contacts/ContactListItemView;->mCheckBox:Landroid/widget/CheckBox;

    const v2, 0x1020001

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setId(I)V

    .line 114
    iget-object v1, p0, Lcom/android/contacts/ContactListItemView;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v5, v4, v5, v4}, Landroid/widget/CheckBox;->setPadding(IIII)V

    .line 115
    iget-object v1, p0, Lcom/android/contacts/ContactListItemView;->mCheckBox:Landroid/widget/CheckBox;

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setGravity(I)V

    .line 116
    iget-object v1, p0, Lcom/android/contacts/ContactListItemView;->mCheckBox:Landroid/widget/CheckBox;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 117
    iget-object v1, p0, Lcom/android/contacts/ContactListItemView;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v4}, Landroid/widget/CheckBox;->setFocusable(Z)V

    .line 118
    iget-object v1, p0, Lcom/android/contacts/ContactListItemView;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v4}, Landroid/widget/CheckBox;->setClickable(Z)V

    .line 119
    iget-object v1, p0, Lcom/android/contacts/ContactListItemView;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p0, v1}, Lcom/android/contacts/ContactListItemView;->addView(Landroid/view/View;)V

    .line 121
    const v1, 0x7f020093

    invoke-virtual {p0, v1}, Lcom/android/contacts/ContactListItemView;->setBackgroundResource(I)V

    .line 122
    return-void
.end method

.method private isVisible(Landroid/view/View;)Z
    .locals 1
    .parameter "view"

    .prologue
    .line 318
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showMark(I)V
    .locals 5
    .parameter "resId"

    .prologue
    const/4 v4, 0x0

    .line 423
    iget v1, p0, Lcom/android/contacts/ContactListItemView;->mMode:I

    const v2, 0x140003b

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/contacts/ContactListItemView;->mMode:I

    const v2, -0x7fbfffa6

    if-ne v1, v2, :cond_3

    .line 425
    :cond_0
    iget v0, p0, Lcom/android/contacts/ContactListItemView;->mPaddingLeft:I

    .line 430
    .local v0, markPadding:I
    :goto_0
    iget-object v1, p0, Lcom/android/contacts/ContactListItemView;->mMarkView:Landroid/widget/ImageView;

    if-nez v1, :cond_1

    if-eqz p1, :cond_1

    .line 431
    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/contacts/ContactListItemView;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v1, p0, Lcom/android/contacts/ContactListItemView;->mMarkView:Landroid/widget/ImageView;

    .line 432
    iget-object v1, p0, Lcom/android/contacts/ContactListItemView;->mMarkView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0, v4, v0, v4}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 433
    iget-object v1, p0, Lcom/android/contacts/ContactListItemView;->mMarkView:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Lcom/android/contacts/ContactListItemView;->addView(Landroid/view/View;)V

    .line 436
    :cond_1
    iget-object v1, p0, Lcom/android/contacts/ContactListItemView;->mMarkView:Landroid/widget/ImageView;

    if-eqz v1, :cond_2

    .line 437
    if-eqz p1, :cond_4

    .line 438
    iget-object v1, p0, Lcom/android/contacts/ContactListItemView;->mMarkView:Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 439
    iget-object v1, p0, Lcom/android/contacts/ContactListItemView;->mMarkView:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 444
    :cond_2
    :goto_1
    return-void

    .line 427
    .end local v0           #markPadding:I
    :cond_3
    iget v0, p0, Lcom/android/contacts/ContactListItemView;->mCallButtonPadding:I

    .restart local v0       #markPadding:I
    goto :goto_0

    .line 441
    :cond_4
    iget-object v1, p0, Lcom/android/contacts/ContactListItemView;->mMarkView:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method


# virtual methods
.method public getDataView()Landroid/widget/TextView;
    .locals 3

    .prologue
    .line 517
    iget-object v0, p0, Lcom/android/contacts/ContactListItemView;->mDataView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 518
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/contacts/ContactListItemView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/ContactListItemView;->mDataView:Landroid/widget/TextView;

    .line 519
    iget-object v0, p0, Lcom/android/contacts/ContactListItemView;->mDataView:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 520
    iget-object v0, p0, Lcom/android/contacts/ContactListItemView;->mDataView:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 521
    iget-object v0, p0, Lcom/android/contacts/ContactListItemView;->mDataView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/contacts/ContactListItemView;->mContext:Landroid/content/Context;

    const v2, 0x1030046

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 522
    iget-object v0, p0, Lcom/android/contacts/ContactListItemView;->mDataView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/contacts/ContactListItemView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08000b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 523
    iget-object v0, p0, Lcom/android/contacts/ContactListItemView;->mDataView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/android/contacts/ContactListItemView;->addView(Landroid/view/View;)V

    .line 525
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/ContactListItemView;->mDataView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getLabelView()Landroid/widget/TextView;
    .locals 3

    .prologue
    .line 486
    iget-object v0, p0, Lcom/android/contacts/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 487
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/contacts/ContactListItemView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    .line 488
    iget-object v0, p0, Lcom/android/contacts/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 489
    iget-object v0, p0, Lcom/android/contacts/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 490
    iget-object v0, p0, Lcom/android/contacts/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/contacts/ContactListItemView;->mContext:Landroid/content/Context;

    const v2, 0x10300b3

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 492
    iget-object v0, p0, Lcom/android/contacts/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/android/contacts/ContactListItemView;->addView(Landroid/view/View;)V

    .line 494
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getNameTextView()Landroid/widget/TextView;
    .locals 3

    .prologue
    .line 381
    iget-object v0, p0, Lcom/android/contacts/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 382
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/contacts/ContactListItemView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    .line 383
    iget-object v0, p0, Lcom/android/contacts/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 384
    iget-object v0, p0, Lcom/android/contacts/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/contacts/ContactListItemView;->mContext:Landroid/content/Context;

    const v2, 0x10300b2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 386
    iget-object v0, p0, Lcom/android/contacts/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 387
    iget-object v0, p0, Lcom/android/contacts/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 388
    iget-object v0, p0, Lcom/android/contacts/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/android/contacts/ContactListItemView;->addView(Landroid/view/View;)V

    .line 390
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getPhotoView()Landroid/widget/ImageView;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 338
    iget-object v0, p0, Lcom/android/contacts/ContactListItemView;->mPhotoView:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 339
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/contacts/ContactListItemView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/android/contacts/ContactListItemView;->mPhotoView:Landroid/widget/ImageView;

    .line 341
    iget-object v0, p0, Lcom/android/contacts/ContactListItemView;->mPhotoView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 342
    iget-object v0, p0, Lcom/android/contacts/ContactListItemView;->mPhotoView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/contacts/ContactListItemView;->mPhotoLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 343
    iget-object v0, p0, Lcom/android/contacts/ContactListItemView;->mPhotoView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/android/contacts/ContactListItemView;->addView(Landroid/view/View;)V

    .line 345
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/ContactListItemView;->mPhotoView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getQuickContact()Landroid/widget/QuickContactBadge;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 325
    iget-object v0, p0, Lcom/android/contacts/ContactListItemView;->mQuickContact:Landroid/widget/QuickContactBadge;

    if-nez v0, :cond_0

    .line 326
    new-instance v0, Landroid/widget/QuickContactBadge;

    iget-object v1, p0, Lcom/android/contacts/ContactListItemView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Landroid/widget/QuickContactBadge;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/android/contacts/ContactListItemView;->mQuickContact:Landroid/widget/QuickContactBadge;

    .line 327
    iget-object v0, p0, Lcom/android/contacts/ContactListItemView;->mQuickContact:Landroid/widget/QuickContactBadge;

    invoke-virtual {v0, v2}, Landroid/widget/QuickContactBadge;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 328
    iget-object v0, p0, Lcom/android/contacts/ContactListItemView;->mQuickContact:Landroid/widget/QuickContactBadge;

    iget-object v1, p0, Lcom/android/contacts/ContactListItemView;->mPhotoLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/QuickContactBadge;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 329
    iget-object v0, p0, Lcom/android/contacts/ContactListItemView;->mQuickContact:Landroid/widget/QuickContactBadge;

    invoke-virtual {p0, v0}, Lcom/android/contacts/ContactListItemView;->addView(Landroid/view/View;)V

    .line 331
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/ContactListItemView;->mQuickContact:Landroid/widget/QuickContactBadge;

    return-object v0
.end method

.method public getStarredView()Landroid/widget/ImageView;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 362
    iget-object v0, p0, Lcom/android/contacts/ContactListItemView;->mStarredView:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 363
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/contacts/ContactListItemView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/android/contacts/ContactListItemView;->mStarredView:Landroid/widget/ImageView;

    .line 365
    iget-object v0, p0, Lcom/android/contacts/ContactListItemView;->mStarredView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 366
    iget-object v0, p0, Lcom/android/contacts/ContactListItemView;->mStarredView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/contacts/ContactListItemView;->mPhotoLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 367
    iget-object v0, p0, Lcom/android/contacts/ContactListItemView;->mStarredView:Landroid/widget/ImageView;

    const v1, 0x7f02002e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 368
    iget-object v0, p0, Lcom/android/contacts/ContactListItemView;->mStarredView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/android/contacts/ContactListItemView;->addView(Landroid/view/View;)V

    .line 370
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/ContactListItemView;->mStarredView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public hideCallButton()V
    .locals 2

    .prologue
    .line 447
    iget-object v0, p0, Lcom/android/contacts/ContactListItemView;->mCallButton:Lcom/android/contacts/ui/widget/DontPressWithParentImageView;

    if-eqz v0, :cond_0

    .line 448
    iget-object v0, p0, Lcom/android/contacts/ContactListItemView;->mCallButton:Lcom/android/contacts/ui/widget/DontPressWithParentImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/contacts/ui/widget/DontPressWithParentImageView;->setVisibility(I)V

    .line 450
    :cond_0
    return-void
.end method

.method public hideMark()V
    .locals 1

    .prologue
    .line 417
    iget v0, p0, Lcom/android/contacts/ContactListItemView;->mOffMarkResoruceId:I

    invoke-direct {p0, v0}, Lcom/android/contacts/ContactListItemView;->showMark(I)V

    .line 418
    const v0, 0x7f020093

    invoke-virtual {p0, v0}, Lcom/android/contacts/ContactListItemView;->setBackgroundResource(I)V

    .line 419
    return-void
.end method

.method public hidePhotoView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 349
    iget-object v0, p0, Lcom/android/contacts/ContactListItemView;->mPhotoView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/android/contacts/ContactListItemView;->removeView(Landroid/view/View;)V

    .line 350
    iget-object v0, p0, Lcom/android/contacts/ContactListItemView;->mQuickContact:Landroid/widget/QuickContactBadge;

    invoke-virtual {p0, v0}, Lcom/android/contacts/ContactListItemView;->removeView(Landroid/view/View;)V

    .line 351
    iget-object v0, p0, Lcom/android/contacts/ContactListItemView;->mStarredView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/android/contacts/ContactListItemView;->removeView(Landroid/view/View;)V

    .line 353
    iput-object v1, p0, Lcom/android/contacts/ContactListItemView;->mPhotoView:Landroid/widget/ImageView;

    .line 354
    iput-object v1, p0, Lcom/android/contacts/ContactListItemView;->mQuickContact:Landroid/widget/QuickContactBadge;

    .line 355
    iput-object v1, p0, Lcom/android/contacts/ContactListItemView;->mStarredView:Landroid/widget/ImageView;

    .line 356
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 24
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 197
    sub-int v9, p5, p3

    .line 200
    .local v9, height:I
    const/16 v17, 0x0

    .line 202
    .local v17, topBound:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/ContactListItemView;->mHeaderVisible:Z

    move/from16 v19, v0

    if-eqz v19, :cond_0

    .line 203
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ContactListItemView;->mHeaderTextView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/ContactListItemView;->mHeaderTextWidth:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/ContactListItemView;->mHeaderHeight:I

    move/from16 v23, v0

    invoke-virtual/range {v19 .. v23}, Landroid/widget/TextView;->layout(IIII)V

    .line 204
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/ContactListItemView;->mHeaderHeight:I

    move/from16 v19, v0

    add-int v17, v17, v19

    .line 213
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/ContactListItemView;->mPaddingTop:I

    move/from16 v19, v0

    add-int v17, v17, v19

    .line 214
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/ContactListItemView;->mPaddingBottom:I

    move/from16 v19, v0

    sub-int v5, v9, v19

    .line 216
    .local v5, bottomBound:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/ContactListItemView;->mMode:I

    move/from16 v19, v0

    const v20, 0x140003b

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/ContactListItemView;->mMode:I

    move/from16 v19, v0

    const v20, -0x7fbfffa6

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_5

    .line 219
    :cond_1
    const/4 v11, 0x0

    .line 220
    .local v11, leftBound:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ContactListItemView;->mMarkView:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/contacts/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v19

    if-eqz v19, :cond_2

    .line 221
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ContactListItemView;->mMarkView:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v7

    .line 222
    .local v7, buttonWidth:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ContactListItemView;->mMarkView:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v6

    .line 223
    .local v6, buttonHeight:I
    add-int v19, v17, v9

    div-int/lit8 v12, v19, 0x2

    .line 224
    .local v12, middleLine:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ContactListItemView;->mMarkView:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    div-int/lit8 v20, v6, 0x2

    sub-int v20, v12, v20

    add-int v21, v11, v7

    div-int/lit8 v22, v6, 0x2

    add-int v22, v22, v12

    move-object/from16 v0, v19

    move v1, v11

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/ImageView;->layout(IIII)V

    .line 226
    add-int/2addr v11, v7

    .line 230
    .end local v6           #buttonHeight:I
    .end local v7           #buttonWidth:I
    .end local v12           #middleLine:I
    :cond_2
    move/from16 v15, p4

    .line 231
    .local v15, rightBound:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/ContactListItemView;->mPaddingRight:I

    move/from16 v19, v0

    sub-int v15, v15, v19

    .line 234
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/ContactListItemView;->mLine1Height:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/ContactListItemView;->mLine2Height:I

    move/from16 v20, v0

    add-int v19, v19, v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/ContactListItemView;->mLine3Height:I

    move/from16 v20, v0

    add-int v18, v19, v20

    .line 235
    .local v18, totalTextHeight:I
    add-int v19, v5, v17

    sub-int v19, v19, v18

    div-int/lit8 v16, v19, 0x2

    .line 237
    .local v16, textTopBound:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/ContactListItemView;->mLine1Height:I

    move/from16 v20, v0

    add-int v20, v20, v16

    move-object/from16 v0, v19

    move v1, v11

    move/from16 v2, v16

    move v3, v15

    move/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->layout(IIII)V

    .line 239
    move v8, v11

    .line 240
    .local v8, dataLeftBound:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/contacts/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v19

    if-eqz v19, :cond_3

    .line 241
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v19

    add-int v8, v11, v19

    .line 242
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/ContactListItemView;->mLine1Height:I

    move/from16 v20, v0

    add-int v20, v20, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/ContactListItemView;->mLine1Height:I

    move/from16 v21, v0

    add-int v21, v21, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/ContactListItemView;->mLine2Height:I

    move/from16 v22, v0

    add-int v21, v21, v22

    move-object/from16 v0, v19

    move v1, v11

    move/from16 v2, v20

    move v3, v8

    move/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->layout(IIII)V

    .line 244
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/ContactListItemView;->mGapBetweenLabelAndData:I

    move/from16 v19, v0

    add-int v8, v8, v19

    .line 247
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ContactListItemView;->mDataView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/contacts/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v19

    if-eqz v19, :cond_4

    .line 248
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ContactListItemView;->mDataView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/ContactListItemView;->mLine1Height:I

    move/from16 v20, v0

    add-int v20, v20, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/ContactListItemView;->mLine1Height:I

    move/from16 v21, v0

    add-int v21, v21, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/ContactListItemView;->mLine2Height:I

    move/from16 v22, v0

    add-int v21, v21, v22

    move-object/from16 v0, v19

    move v1, v8

    move/from16 v2, v20

    move v3, v15

    move/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->layout(IIII)V

    .line 315
    :cond_4
    :goto_0
    return-void

    .line 253
    .end local v8           #dataLeftBound:I
    .end local v11           #leftBound:I
    .end local v15           #rightBound:I
    .end local v16           #textTopBound:I
    .end local v18           #totalTextHeight:I
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/ContactListItemView;->mPaddingLeft:I

    move v11, v0

    .line 254
    .restart local v11       #leftBound:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ContactListItemView;->mQuickContact:Landroid/widget/QuickContactBadge;

    move-object/from16 v19, v0

    if-eqz v19, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ContactListItemView;->mQuickContact:Landroid/widget/QuickContactBadge;

    move-object/from16 v19, v0

    move-object/from16 v14, v19

    .line 255
    .local v14, photoView:Landroid/view/View;
    :goto_1
    if-eqz v14, :cond_7

    .line 256
    sub-int v19, v9, v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/ContactListItemView;->mPhotoViewHeight:I

    move/from16 v20, v0

    sub-int v19, v19, v20

    div-int/lit8 v19, v19, 0x2

    add-int v13, v17, v19

    .line 258
    .local v13, photoTop:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/ContactListItemView;->mPhotoViewWidth:I

    move/from16 v19, v0

    add-int v19, v19, v11

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/ContactListItemView;->mPhotoViewHeight:I

    move/from16 v20, v0

    add-int v20, v20, v13

    move-object v0, v14

    move v1, v11

    move v2, v13

    move/from16 v3, v19

    move/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/ImageView;->layout(IIII)V

    .line 261
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ContactListItemView;->mStarredView:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/contacts/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v19

    if-eqz v19, :cond_6

    .line 262
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ContactListItemView;->mStarredView:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    add-int/lit8 v20, v11, 0x29

    add-int/lit8 v21, v13, 0x2b

    move-object/from16 v0, v19

    move v1, v11

    move v2, v13

    move/from16 v3, v20

    move/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/ImageView;->layout(IIII)V

    .line 264
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/ContactListItemView;->mPhotoViewWidth:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/ContactListItemView;->mGapBetweenImageAndText:I

    move/from16 v20, v0

    add-int v19, v19, v20

    add-int v11, v11, v19

    .line 268
    .end local v13           #photoTop:I
    :cond_7
    move/from16 v15, p4

    .line 269
    .restart local v15       #rightBound:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/ContactListItemView;->mPaddingRight:I

    move/from16 v19, v0

    sub-int v15, v15, v19

    .line 271
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ContactListItemView;->mCheckBox:Landroid/widget/CheckBox;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/contacts/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v19

    if-eqz v19, :cond_c

    .line 272
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ContactListItemView;->mCheckBox:Landroid/widget/CheckBox;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/CheckBox;->getMeasuredWidth()I

    move-result v7

    .line 273
    .restart local v7       #buttonWidth:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ContactListItemView;->mCheckBox:Landroid/widget/CheckBox;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/CheckBox;->getMeasuredHeight()I

    move-result v6

    .line 274
    .restart local v6       #buttonHeight:I
    add-int v19, v17, v9

    div-int/lit8 v12, v19, 0x2

    .line 275
    .restart local v12       #middleLine:I
    sub-int/2addr v15, v7

    .line 276
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ContactListItemView;->mCheckBox:Landroid/widget/CheckBox;

    move-object/from16 v19, v0

    div-int/lit8 v20, v6, 0x2

    sub-int v20, v12, v20

    add-int v21, v15, v7

    div-int/lit8 v22, v6, 0x2

    add-int v22, v22, v12

    move-object/from16 v0, v19

    move v1, v15

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/CheckBox;->layout(IIII)V

    .line 291
    .end local v6           #buttonHeight:I
    .end local v7           #buttonWidth:I
    .end local v12           #middleLine:I
    :cond_8
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/contacts/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v19

    if-eqz v19, :cond_9

    .line 292
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v10

    .line 293
    .local v10, iconWidth:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/ContactListItemView;->mPresenceIconMargin:I

    move/from16 v19, v0

    add-int v19, v19, v10

    sub-int v15, v15, v19

    .line 294
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    add-int v20, v15, v10

    move-object/from16 v0, v19

    move v1, v15

    move/from16 v2, v17

    move/from16 v3, v20

    move v4, v9

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/ImageView;->layout(IIII)V

    .line 297
    .end local v10           #iconWidth:I
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/ContactListItemView;->mLine1Height:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/ContactListItemView;->mLine2Height:I

    move/from16 v20, v0

    add-int v19, v19, v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/ContactListItemView;->mLine3Height:I

    move/from16 v20, v0

    add-int v18, v19, v20

    .line 298
    .restart local v18       #totalTextHeight:I
    add-int v19, v5, v17

    sub-int v19, v19, v18

    div-int/lit8 v16, v19, 0x2

    .line 300
    .restart local v16       #textTopBound:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/ContactListItemView;->mLine1Height:I

    move/from16 v20, v0

    add-int v20, v20, v16

    move-object/from16 v0, v19

    move v1, v11

    move/from16 v2, v16

    move v3, v15

    move/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->layout(IIII)V

    .line 302
    move v8, v11

    .line 303
    .restart local v8       #dataLeftBound:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/contacts/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v19

    if-eqz v19, :cond_a

    .line 304
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v19

    add-int v8, v11, v19

    .line 305
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/ContactListItemView;->mLine1Height:I

    move/from16 v20, v0

    add-int v20, v20, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/ContactListItemView;->mLine1Height:I

    move/from16 v21, v0

    add-int v21, v21, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/ContactListItemView;->mLine2Height:I

    move/from16 v22, v0

    add-int v21, v21, v22

    move-object/from16 v0, v19

    move v1, v11

    move/from16 v2, v20

    move v3, v8

    move/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->layout(IIII)V

    .line 307
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/ContactListItemView;->mGapBetweenLabelAndData:I

    move/from16 v19, v0

    add-int v8, v8, v19

    .line 310
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ContactListItemView;->mDataView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/contacts/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v19

    if-eqz v19, :cond_4

    .line 311
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ContactListItemView;->mDataView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/ContactListItemView;->mLine1Height:I

    move/from16 v20, v0

    add-int v20, v20, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/ContactListItemView;->mLine1Height:I

    move/from16 v21, v0

    add-int v21, v21, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/ContactListItemView;->mLine2Height:I

    move/from16 v22, v0

    add-int v21, v21, v22

    move-object/from16 v0, v19

    move v1, v8

    move/from16 v2, v20

    move v3, v15

    move/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->layout(IIII)V

    goto/16 :goto_0

    .line 254
    .end local v8           #dataLeftBound:I
    .end local v14           #photoView:Landroid/view/View;
    .end local v15           #rightBound:I
    .end local v16           #textTopBound:I
    .end local v18           #totalTextHeight:I
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ContactListItemView;->mPhotoView:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    move-object/from16 v14, v19

    goto/16 :goto_1

    .line 278
    .restart local v14       #photoView:Landroid/view/View;
    .restart local v15       #rightBound:I
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ContactListItemView;->mCallButton:Lcom/android/contacts/ui/widget/DontPressWithParentImageView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/contacts/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v19

    if-eqz v19, :cond_d

    .line 279
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ContactListItemView;->mCallButton:Lcom/android/contacts/ui/widget/DontPressWithParentImageView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/contacts/ui/widget/DontPressWithParentImageView;->getMeasuredWidth()I

    move-result v7

    .line 280
    .restart local v7       #buttonWidth:I
    sub-int/2addr v15, v7

    .line 281
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ContactListItemView;->mCallButton:Lcom/android/contacts/ui/widget/DontPressWithParentImageView;

    move-object/from16 v19, v0

    add-int v20, v15, v7

    move-object/from16 v0, v19

    move v1, v15

    move/from16 v2, v17

    move/from16 v3, v20

    move v4, v9

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/contacts/ui/widget/DontPressWithParentImageView;->layout(IIII)V

    goto/16 :goto_2

    .line 282
    .end local v7           #buttonWidth:I
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ContactListItemView;->mMarkView:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/contacts/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v19

    if-eqz v19, :cond_8

    .line 283
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ContactListItemView;->mMarkView:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v7

    .line 284
    .restart local v7       #buttonWidth:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ContactListItemView;->mMarkView:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v6

    .line 285
    .restart local v6       #buttonHeight:I
    add-int v19, v17, v9

    div-int/lit8 v12, v19, 0x2

    .line 286
    .restart local v12       #middleLine:I
    sub-int/2addr v15, v7

    .line 287
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ContactListItemView;->mMarkView:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    div-int/lit8 v20, v6, 0x2

    sub-int v20, v12, v20

    add-int v21, v15, v7

    div-int/lit8 v22, v6, 0x2

    add-int v22, v22, v12

    move-object/from16 v0, v19

    move v1, v15

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/ImageView;->layout(IIII)V

    goto/16 :goto_2
.end method

.method protected onMeasure(II)V
    .locals 6
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/high16 v5, 0x4000

    const/4 v4, 0x0

    .line 143
    invoke-static {v4, p1}, Lcom/android/contacts/ContactListItemView;->resolveSize(II)I

    move-result v1

    .line 144
    .local v1, width:I
    const/4 v0, 0x0

    .line 146
    .local v0, height:I
    iput v4, p0, Lcom/android/contacts/ContactListItemView;->mLine1Height:I

    .line 147
    iput v4, p0, Lcom/android/contacts/ContactListItemView;->mLine2Height:I

    .line 148
    iput v4, p0, Lcom/android/contacts/ContactListItemView;->mLine3Height:I

    .line 151
    iget-object v2, p0, Lcom/android/contacts/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v4, v4}, Landroid/widget/TextView;->measure(II)V

    .line 153
    iget-object v2, p0, Lcom/android/contacts/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v2

    iput v2, p0, Lcom/android/contacts/ContactListItemView;->mLine1Height:I

    .line 155
    iget-object v2, p0, Lcom/android/contacts/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    invoke-direct {p0, v2}, Lcom/android/contacts/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 156
    iget-object v2, p0, Lcom/android/contacts/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    invoke-virtual {v2, v4, v4}, Landroid/widget/TextView;->measure(II)V

    .line 157
    iget-object v2, p0, Lcom/android/contacts/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v2

    iput v2, p0, Lcom/android/contacts/ContactListItemView;->mLine2Height:I

    .line 160
    :cond_0
    iget-object v2, p0, Lcom/android/contacts/ContactListItemView;->mDataView:Landroid/widget/TextView;

    invoke-direct {p0, v2}, Lcom/android/contacts/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 161
    iget-object v2, p0, Lcom/android/contacts/ContactListItemView;->mDataView:Landroid/widget/TextView;

    invoke-virtual {v2, v4, v4}, Landroid/widget/TextView;->measure(II)V

    .line 162
    iget v2, p0, Lcom/android/contacts/ContactListItemView;->mLine2Height:I

    iget-object v3, p0, Lcom/android/contacts/ContactListItemView;->mDataView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcom/android/contacts/ContactListItemView;->mLine2Height:I

    .line 165
    :cond_1
    iget v2, p0, Lcom/android/contacts/ContactListItemView;->mLine1Height:I

    iget v3, p0, Lcom/android/contacts/ContactListItemView;->mLine2Height:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/android/contacts/ContactListItemView;->mLine3Height:I

    add-int/2addr v2, v3

    add-int/2addr v0, v2

    .line 167
    iget-object v2, p0, Lcom/android/contacts/ContactListItemView;->mCallButton:Lcom/android/contacts/ui/widget/DontPressWithParentImageView;

    invoke-direct {p0, v2}, Lcom/android/contacts/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 168
    iget-object v2, p0, Lcom/android/contacts/ContactListItemView;->mCallButton:Lcom/android/contacts/ui/widget/DontPressWithParentImageView;

    invoke-virtual {v2, v4, v4}, Lcom/android/contacts/ui/widget/DontPressWithParentImageView;->measure(II)V

    .line 170
    :cond_2
    iget-object v2, p0, Lcom/android/contacts/ContactListItemView;->mCheckBox:Landroid/widget/CheckBox;

    invoke-direct {p0, v2}, Lcom/android/contacts/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 171
    iget-object v2, p0, Lcom/android/contacts/ContactListItemView;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2, v4, v4}, Landroid/widget/CheckBox;->measure(II)V

    .line 173
    :cond_3
    iget-object v2, p0, Lcom/android/contacts/ContactListItemView;->mMarkView:Landroid/widget/ImageView;

    invoke-direct {p0, v2}, Lcom/android/contacts/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 174
    iget-object v2, p0, Lcom/android/contacts/ContactListItemView;->mMarkView:Landroid/widget/ImageView;

    invoke-virtual {v2, v4, v4}, Landroid/widget/ImageView;->measure(II)V

    .line 176
    :cond_4
    iget-object v2, p0, Lcom/android/contacts/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;

    invoke-direct {p0, v2}, Lcom/android/contacts/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 177
    iget-object v2, p0, Lcom/android/contacts/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v4, v4}, Landroid/widget/ImageView;->measure(II)V

    .line 180
    :cond_5
    iget v2, p0, Lcom/android/contacts/ContactListItemView;->mPhotoViewHeight:I

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 181
    iget v2, p0, Lcom/android/contacts/ContactListItemView;->mPreferredHeight:I

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 183
    iget-boolean v2, p0, Lcom/android/contacts/ContactListItemView;->mHeaderVisible:Z

    if-eqz v2, :cond_6

    .line 184
    iget-object v2, p0, Lcom/android/contacts/ContactListItemView;->mHeaderTextView:Landroid/widget/TextView;

    iget v3, p0, Lcom/android/contacts/ContactListItemView;->mHeaderTextWidth:I

    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    iget v4, p0, Lcom/android/contacts/ContactListItemView;->mHeaderHeight:I

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->measure(II)V

    .line 187
    iget v2, p0, Lcom/android/contacts/ContactListItemView;->mHeaderHeight:I

    add-int/2addr v0, v2

    .line 190
    :cond_6
    iget v2, p0, Lcom/android/contacts/ContactListItemView;->mExtraHeight:I

    add-int/2addr v0, v2

    .line 192
    invoke-virtual {p0, v1, v0}, Lcom/android/contacts/ContactListItemView;->setMeasuredDimension(II)V

    .line 193
    return-void
.end method

.method public setData([CI)V
    .locals 2
    .parameter "text"
    .parameter "size"

    .prologue
    const/4 v1, 0x0

    .line 501
    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    .line 502
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/ContactListItemView;->mDataView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 503
    iget-object v0, p0, Lcom/android/contacts/ContactListItemView;->mDataView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 511
    :cond_1
    :goto_0
    return-void

    .line 507
    :cond_2
    invoke-virtual {p0}, Lcom/android/contacts/ContactListItemView;->getDataView()Landroid/widget/TextView;

    .line 508
    iget-object v0, p0, Lcom/android/contacts/ContactListItemView;->mDataView:Landroid/widget/TextView;

    invoke-virtual {v0, p1, v1, p2}, Landroid/widget/TextView;->setText([CII)V

    .line 509
    iget-object v0, p0, Lcom/android/contacts/ContactListItemView;->mDataView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setDeleteButtonText(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 553
    iget-object v0, p0, Lcom/android/contacts/ContactListItemView;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/ContactListItemView;->mDeleteButtonText:Ljava/lang/CharSequence;

    .line 554
    return-void
.end method

.method public setLabel(Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "text"

    .prologue
    .line 456
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 457
    iget-object v0, p0, Lcom/android/contacts/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 458
    iget-object v0, p0, Lcom/android/contacts/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 465
    :cond_0
    :goto_0
    return-void

    .line 461
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/ContactListItemView;->getLabelView()Landroid/widget/TextView;

    .line 462
    iget-object v0, p0, Lcom/android/contacts/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 463
    iget-object v0, p0, Lcom/android/contacts/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setLabel([CI)V
    .locals 2
    .parameter "text"
    .parameter "size"

    .prologue
    const/4 v1, 0x0

    .line 471
    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    .line 472
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 473
    iget-object v0, p0, Lcom/android/contacts/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 480
    :cond_1
    :goto_0
    return-void

    .line 476
    :cond_2
    invoke-virtual {p0}, Lcom/android/contacts/ContactListItemView;->getLabelView()Landroid/widget/TextView;

    .line 477
    iget-object v0, p0, Lcom/android/contacts/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    invoke-virtual {v0, p1, v1, p2}, Landroid/widget/TextView;->setText([CII)V

    .line 478
    iget-object v0, p0, Lcom/android/contacts/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setMode(I)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 129
    iput p1, p0, Lcom/android/contacts/ContactListItemView;->mMode:I

    .line 130
    return-void
.end method

.method public setOnCallButtonClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .parameter "callButtonClickListener"

    .prologue
    .line 136
    iput-object p1, p0, Lcom/android/contacts/ContactListItemView;->mCallButtonClickListener:Landroid/view/View$OnClickListener;

    .line 137
    return-void
.end method

.method public setPaddingRight(I)V
    .locals 0
    .parameter "v"

    .prologue
    .line 125
    iput p1, p0, Lcom/android/contacts/ContactListItemView;->mPaddingRight:I

    .line 126
    return-void
.end method

.method public setPresence(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .parameter "icon"

    .prologue
    .line 532
    if-eqz p1, :cond_2

    .line 533
    iget-object v0, p0, Lcom/android/contacts/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 534
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/contacts/ContactListItemView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;

    .line 535
    iget-object v0, p0, Lcom/android/contacts/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/android/contacts/ContactListItemView;->addView(Landroid/view/View;)V

    .line 537
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 538
    iget-object v0, p0, Lcom/android/contacts/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 539
    iget-object v0, p0, Lcom/android/contacts/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 545
    :cond_1
    :goto_0
    return-void

    .line 541
    :cond_2
    iget-object v0, p0, Lcom/android/contacts/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 542
    iget-object v0, p0, Lcom/android/contacts/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setToggleMarkResource(II)V
    .locals 0
    .parameter "onResId"
    .parameter "offResId"

    .prologue
    .line 548
    iput p1, p0, Lcom/android/contacts/ContactListItemView;->mOnMarkResourceId:I

    .line 549
    iput p2, p0, Lcom/android/contacts/ContactListItemView;->mOffMarkResoruceId:I

    .line 550
    return-void
.end method

.method public showCallButton(II)V
    .locals 4
    .parameter "id"
    .parameter "tag"

    .prologue
    const/4 v3, 0x0

    .line 397
    iget-object v0, p0, Lcom/android/contacts/ContactListItemView;->mCallButton:Lcom/android/contacts/ui/widget/DontPressWithParentImageView;

    if-nez v0, :cond_0

    .line 398
    new-instance v0, Lcom/android/contacts/ui/widget/DontPressWithParentImageView;

    iget-object v1, p0, Lcom/android/contacts/ContactListItemView;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/contacts/ui/widget/DontPressWithParentImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/android/contacts/ContactListItemView;->mCallButton:Lcom/android/contacts/ui/widget/DontPressWithParentImageView;

    .line 399
    iget-object v0, p0, Lcom/android/contacts/ContactListItemView;->mCallButton:Lcom/android/contacts/ui/widget/DontPressWithParentImageView;

    invoke-virtual {v0, p1}, Lcom/android/contacts/ui/widget/DontPressWithParentImageView;->setId(I)V

    .line 400
    iget-object v0, p0, Lcom/android/contacts/ContactListItemView;->mCallButton:Lcom/android/contacts/ui/widget/DontPressWithParentImageView;

    iget-object v1, p0, Lcom/android/contacts/ContactListItemView;->mCallButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/android/contacts/ui/widget/DontPressWithParentImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 401
    iget-object v0, p0, Lcom/android/contacts/ContactListItemView;->mCallButton:Lcom/android/contacts/ui/widget/DontPressWithParentImageView;

    const v1, 0x108008d

    invoke-virtual {v0, v1}, Lcom/android/contacts/ui/widget/DontPressWithParentImageView;->setImageResource(I)V

    .line 402
    iget-object v0, p0, Lcom/android/contacts/ContactListItemView;->mCallButton:Lcom/android/contacts/ui/widget/DontPressWithParentImageView;

    iget v1, p0, Lcom/android/contacts/ContactListItemView;->mCallButtonPadding:I

    iget v2, p0, Lcom/android/contacts/ContactListItemView;->mCallButtonPadding:I

    invoke-virtual {v0, v1, v3, v2, v3}, Lcom/android/contacts/ui/widget/DontPressWithParentImageView;->setPadding(IIII)V

    .line 403
    iget-object v0, p0, Lcom/android/contacts/ContactListItemView;->mCallButton:Lcom/android/contacts/ui/widget/DontPressWithParentImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Lcom/android/contacts/ui/widget/DontPressWithParentImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 404
    iget-object v0, p0, Lcom/android/contacts/ContactListItemView;->mCallButton:Lcom/android/contacts/ui/widget/DontPressWithParentImageView;

    invoke-virtual {p0, v0}, Lcom/android/contacts/ContactListItemView;->addView(Landroid/view/View;)V

    .line 407
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/ContactListItemView;->mCallButton:Lcom/android/contacts/ui/widget/DontPressWithParentImageView;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/ui/widget/DontPressWithParentImageView;->setTag(Ljava/lang/Object;)V

    .line 408
    iget-object v0, p0, Lcom/android/contacts/ContactListItemView;->mCallButton:Lcom/android/contacts/ui/widget/DontPressWithParentImageView;

    invoke-virtual {v0, v3}, Lcom/android/contacts/ui/widget/DontPressWithParentImageView;->setVisibility(I)V

    .line 409
    return-void
.end method

.method public showMark()V
    .locals 1

    .prologue
    .line 412
    iget v0, p0, Lcom/android/contacts/ContactListItemView;->mOnMarkResourceId:I

    invoke-direct {p0, v0}, Lcom/android/contacts/ContactListItemView;->showMark(I)V

    .line 413
    const v0, 0x7f020092

    invoke-virtual {p0, v0}, Lcom/android/contacts/ContactListItemView;->setBackgroundResource(I)V

    .line 414
    return-void
.end method

.method public showStarred(Z)V
    .locals 2
    .parameter "isVisibile"

    .prologue
    .line 374
    iget-object v0, p0, Lcom/android/contacts/ContactListItemView;->mStarredView:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 375
    return-void

    .line 374
    :cond_0
    const/16 v1, 0x8

    goto :goto_0
.end method
