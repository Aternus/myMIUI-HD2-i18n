.class public Lcom/android/phone/CallCard;
.super Landroid/widget/FrameLayout;
.source "CallCard.java"

# interfaces
.implements Landroid/pim/ContactsAsyncHelper$OnImageLoadCompleteListener;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/CallCard$3;,
        Lcom/android/phone/CallCard$CallCardInfo;
    }
.end annotation


# instance fields
.field private final STATE_ANSWER_CALL:I

.field private final STATE_NO_CALL:I

.field private final STATE_ONE_PRIMARY_CALL:I

.field private final STATE_TWO_CALLS:I

.field private mApplication:Lcom/android/phone/PhoneApp;

.field private mBigPhoto:Landroid/widget/ImageView;

.field private mCallCardRoot:Landroid/view/ViewGroup;

.field private mDensity:F

.field private mExtraInfo:Landroid/widget/TextView;

.field private mInCallScreen:Lcom/android/phone/InCallScreen;

.field private mLockScreenWallpaper:Landroid/widget/ImageView;

.field private mMaxTextSizeOfDigits:F

.field private mMinTextSizeOfDigits:F

.field private mPaintForMeasureText:Landroid/graphics/Paint;

.field private mPhoto:Landroid/widget/ImageView;

.field private mPhotoTracker:Landroid/pim/ContactsAsyncHelper$ImageTracker;

.field private mPostDialTextAppearanceSpan:Landroid/text/style/TextAppearanceSpan;

.field private mPrimaryCallCard:Lcom/android/phone/AlphaCallCardLayout;

.field private mPrimaryCallInfo:Landroid/widget/LinearLayout;

.field private mPrimaryCallStatus:Landroid/widget/TextView;

.field private mPrimaryCallStatusImage:Landroid/widget/ImageView;

.field private mPrimaryCallTime:Lcom/android/phone/CallTime;

.field private mPrimaryCallerInfo:Landroid/widget/LinearLayout;

.field private mPrimaryConferenceManageButtonSingleCall:Landroid/widget/Button;

.field private mPrimaryConferenceManageButtonTwoCalls:Landroid/widget/Button;

.field private mPrimaryElapsedTime:Landroid/widget/TextView;

.field private mPrimaryName:Landroid/widget/TextView;

.field private mPrimaryPhoneNumber:Landroid/widget/TextView;

.field private mPrimaryPhoneNumberInfo:Landroid/widget/LinearLayout;

.field private mPrimaryTelocation:Landroid/widget/TextView;

.field private mScaledDensity:F

.field private mSecondaryCallCard:Lcom/android/phone/AlphaCallCardLayout;

.field private mSecondaryCallInfo:Landroid/widget/LinearLayout;

.field private mSecondaryCallStatus:Landroid/widget/TextView;

.field private mSecondaryCallStatusImage:Landroid/widget/ImageView;

.field private mSecondaryCallTime:Lcom/android/phone/CallTime;

.field private mSecondaryConferenceManageButton:Landroid/widget/Button;

.field private mSecondaryElapsedTime:Landroid/widget/TextView;

.field private mSecondaryName:Landroid/widget/TextView;

.field private mSecondaryPhoneNumber:Landroid/widget/TextView;

.field private mSecondaryTelocation:Landroid/widget/TextView;

.field private mState:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 10
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x1

    .line 144
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 68
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/phone/CallCard;->mPaintForMeasureText:Landroid/graphics/Paint;

    .line 114
    const/high16 v0, 0x41c0

    iput v0, p0, Lcom/android/phone/CallCard;->mMinTextSizeOfDigits:F

    .line 123
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/CallCard;->STATE_NO_CALL:I

    .line 124
    iput v1, p0, Lcom/android/phone/CallCard;->STATE_ANSWER_CALL:I

    .line 125
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/phone/CallCard;->STATE_ONE_PRIMARY_CALL:I

    .line 126
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/phone/CallCard;->STATE_TWO_CALLS:I

    .line 151
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    .line 152
    .local v6, inflater:Landroid/view/LayoutInflater;
    const v0, 0x7f030001

    invoke-virtual {v6, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 154
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneApp;

    .line 156
    new-instance v0, Lcom/android/phone/CallTime;

    new-instance v1, Lcom/android/phone/CallCard$1;

    invoke-direct {v1, p0}, Lcom/android/phone/CallCard$1;-><init>(Lcom/android/phone/CallCard;)V

    invoke-direct {v0, v1}, Lcom/android/phone/CallTime;-><init>(Lcom/android/phone/CallTime$OnTickListener;)V

    iput-object v0, p0, Lcom/android/phone/CallCard;->mPrimaryCallTime:Lcom/android/phone/CallTime;

    .line 162
    new-instance v0, Lcom/android/phone/CallTime;

    new-instance v1, Lcom/android/phone/CallCard$2;

    invoke-direct {v1, p0}, Lcom/android/phone/CallCard$2;-><init>(Lcom/android/phone/CallCard;)V

    invoke-direct {v0, v1}, Lcom/android/phone/CallTime;-><init>(Lcom/android/phone/CallTime$OnTickListener;)V

    iput-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryCallTime:Lcom/android/phone/CallTime;

    .line 170
    new-instance v0, Landroid/pim/ContactsAsyncHelper$ImageTracker;

    invoke-direct {v0}, Landroid/pim/ContactsAsyncHelper$ImageTracker;-><init>()V

    iput-object v0, p0, Lcom/android/phone/CallCard;->mPhotoTracker:Landroid/pim/ContactsAsyncHelper$ImageTracker;

    .line 172
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    .line 173
    .local v7, metrics:Landroid/util/DisplayMetrics;
    iget v0, v7, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/android/phone/CallCard;->mDensity:F

    .line 174
    iget v0, v7, Landroid/util/DisplayMetrics;->scaledDensity:F

    iput v0, p0, Lcom/android/phone/CallCard;->mScaledDensity:F

    .line 176
    new-instance v8, Landroid/text/style/TextAppearanceSpan;

    const v0, 0x7f0e000f

    invoke-direct {v8, p1, v0}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    .line 177
    .local v8, span1:Landroid/text/style/TextAppearanceSpan;
    new-instance v9, Landroid/text/style/TextAppearanceSpan;

    const v0, 0x7f0e0012

    invoke-direct {v9, p1, v0}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    .line 178
    .local v9, span2:Landroid/text/style/TextAppearanceSpan;
    new-instance v0, Landroid/text/style/TextAppearanceSpan;

    invoke-virtual {v9}, Landroid/text/style/TextAppearanceSpan;->getFamily()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9}, Landroid/text/style/TextAppearanceSpan;->getTextStyle()I

    move-result v2

    invoke-virtual {v9}, Landroid/text/style/TextAppearanceSpan;->getTextSize()I

    move-result v3

    invoke-virtual {v8}, Landroid/text/style/TextAppearanceSpan;->getTextColor()Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v8}, Landroid/text/style/TextAppearanceSpan;->getLinkTextColor()Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Landroid/text/style/TextAppearanceSpan;-><init>(Ljava/lang/String;IILandroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V

    iput-object v0, p0, Lcom/android/phone/CallCard;->mPostDialTextAppearanceSpan:Landroid/text/style/TextAppearanceSpan;

    .line 182
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/CallCard;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPrimaryElapsedTime:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Landroid/widget/TextView;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    invoke-static {p0, p1, p2}, Lcom/android/phone/CallCard;->updateElapsedTimeWidget(Landroid/widget/TextView;J)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/CallCard;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryElapsedTime:Landroid/widget/TextView;

    return-object v0
.end method

.method private adaptiveTextSize(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 7
    .parameter "v"
    .parameter "digits"

    .prologue
    const/4 v6, 0x0

    .line 1098
    invoke-virtual {p1}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v3, v4

    .line 1101
    .local v3, widthView:F
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1102
    .local v0, params:Landroid/view/ViewGroup$LayoutParams;
    iget v4, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-gez v4, :cond_0

    .line 1103
    invoke-static {v6, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-static {v6, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {p1, v4, v5}, Landroid/widget/TextView;->measure(II)V

    .line 1105
    invoke-virtual {p1}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v4

    iput v4, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1106
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1109
    :cond_0
    iget v1, p0, Lcom/android/phone/CallCard;->mMaxTextSizeOfDigits:F

    .line 1110
    .local v1, textSize:F
    iget-object v4, p0, Lcom/android/phone/CallCard;->mPaintForMeasureText:Landroid/graphics/Paint;

    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1111
    iget-object v4, p0, Lcom/android/phone/CallCard;->mPaintForMeasureText:Landroid/graphics/Paint;

    invoke-virtual {v4, p2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    .line 1112
    .local v2, widthText:F
    :goto_0
    cmpl-float v4, v2, v3

    if-lez v4, :cond_1

    .line 1114
    const/high16 v4, 0x3f80

    sub-float/2addr v1, v4

    .line 1115
    iget v4, p0, Lcom/android/phone/CallCard;->mMinTextSizeOfDigits:F

    cmpg-float v4, v1, v4

    if-gez v4, :cond_2

    .line 1116
    iget v1, p0, Lcom/android/phone/CallCard;->mMinTextSizeOfDigits:F

    .line 1122
    :cond_1
    invoke-virtual {p1, v6, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1123
    return-void

    .line 1119
    :cond_2
    iget-object v4, p0, Lcom/android/phone/CallCard;->mPaintForMeasureText:Landroid/graphics/Paint;

    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1120
    iget-object v4, p0, Lcom/android/phone/CallCard;->mPaintForMeasureText:Landroid/graphics/Paint;

    invoke-virtual {v4, p2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    goto :goto_0
.end method

.method private createCallCardInfo(Lcom/android/internal/telephony/Call;Lcom/android/internal/telephony/CallerInfo;)Lcom/android/phone/CallCard$CallCardInfo;
    .locals 11
    .parameter "call"
    .parameter "callerInfo"

    .prologue
    const-wide/16 v9, 0x0

    const/4 v5, 0x0

    const/4 v1, -0x1

    .line 565
    new-instance v8, Lcom/android/phone/CallCard$CallCardInfo;

    invoke-direct {v8, p0, v5}, Lcom/android/phone/CallCard$CallCardInfo;-><init>(Lcom/android/phone/CallCard;Lcom/android/phone/CallCard$1;)V

    .line 566
    .local v8, info:Lcom/android/phone/CallCard$CallCardInfo;
    if-eqz p2, :cond_2

    .line 567
    iget-wide v2, p2, Lcom/android/internal/telephony/CallerInfo;->person_id:J

    cmp-long v0, v2, v9

    if-lez v0, :cond_4

    iget-object v0, p2, Lcom/android/internal/telephony/CallerInfo;->bigPhotoUri:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    new-instance v0, Ljava/io/File;

    iget-object v2, p2, Lcom/android/internal/telephony/CallerInfo;->bigPhotoUri:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 568
    iget-object v0, p2, Lcom/android/internal/telephony/CallerInfo;->cachedBigPhoto:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    iget-boolean v0, p2, Lcom/android/internal/telephony/CallerInfo;->isCachedPhotoCurrent:Z

    if-eqz v0, :cond_3

    .line 570
    iget-object v0, p2, Lcom/android/internal/telephony/CallerInfo;->cachedBigPhoto:Landroid/graphics/drawable/Drawable;

    iput-object v0, v8, Lcom/android/phone/CallCard$CallCardInfo;->bigPhoto:Landroid/graphics/drawable/Drawable;

    .line 592
    :cond_0
    :goto_0
    iget-object v0, p2, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 593
    const-string v0, ""

    iput-object v0, v8, Lcom/android/phone/CallCard$CallCardInfo;->phoneNumber:Ljava/lang/String;

    .line 603
    :goto_1
    iget-object v0, p2, Lcom/android/internal/telephony/CallerInfo;->displayName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 605
    iget-object v0, p2, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p2, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    sget v1, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    if-eq v0, v1, :cond_a

    .line 607
    :cond_1
    iget v0, p2, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    invoke-static {v0}, Lcom/android/internal/telephony/Connection;->getPresentationString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/android/phone/CallCard$CallCardInfo;->name:Ljava/lang/String;

    .line 623
    :cond_2
    :goto_2
    return-object v8

    .line 571
    :cond_3
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhotoTracker:Landroid/pim/ContactsAsyncHelper$ImageTracker;

    invoke-virtual {v0, p2}, Landroid/pim/ContactsAsyncHelper$ImageTracker;->isDifferentImageRequest(Lcom/android/internal/telephony/CallerInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 572
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhotoTracker:Landroid/pim/ContactsAsyncHelper$ImageTracker;

    invoke-virtual {v0, p2}, Landroid/pim/ContactsAsyncHelper$ImageTracker;->setPhotoRequest(Lcom/android/internal/telephony/CallerInfo;)V

    .line 574
    const/4 v1, -0x2

    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p2, Lcom/android/internal/telephony/CallerInfo;->bigPhotoUri:Ljava/lang/String;

    move-object v0, p2

    move-object v2, p0

    move-object v3, p2

    invoke-static/range {v0 .. v5}, Landroid/pim/ContactsAsyncHelper;->LoadBigPhotoAsync(Lcom/android/internal/telephony/CallerInfo;ILandroid/pim/ContactsAsyncHelper$OnImageLoadCompleteListener;Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 578
    :cond_4
    iget v0, p2, Lcom/android/internal/telephony/CallerInfo;->photoResource:I

    if-eqz v0, :cond_5

    .line 580
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p2, Lcom/android/internal/telephony/CallerInfo;->photoResource:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v8, Lcom/android/phone/CallCard$CallCardInfo;->photo:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 581
    :cond_5
    iget-object v0, p2, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_6

    iget-boolean v0, p2, Lcom/android/internal/telephony/CallerInfo;->isCachedPhotoCurrent:Z

    if-eqz v0, :cond_6

    .line 583
    iget-object v0, p2, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    iput-object v0, v8, Lcom/android/phone/CallCard$CallCardInfo;->photo:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 584
    :cond_6
    iget-wide v2, p2, Lcom/android/internal/telephony/CallerInfo;->person_id:J

    cmp-long v0, v2, v9

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhotoTracker:Landroid/pim/ContactsAsyncHelper$ImageTracker;

    invoke-virtual {v0, p2}, Landroid/pim/ContactsAsyncHelper$ImageTracker;->isDifferentImageRequest(Lcom/android/internal/telephony/CallerInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 585
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhotoTracker:Landroid/pim/ContactsAsyncHelper$ImageTracker;

    invoke-virtual {v0, p2}, Landroid/pim/ContactsAsyncHelper$ImageTracker;->setPhotoRequest(Lcom/android/internal/telephony/CallerInfo;)V

    .line 586
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhotoTracker:Landroid/pim/ContactsAsyncHelper$ImageTracker;

    invoke-virtual {v0}, Landroid/pim/ContactsAsyncHelper$ImageTracker;->getPhotoUri()Landroid/net/Uri;

    move-result-object v6

    .line 588
    .local v6, personUri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v4

    move-object v0, p2

    move-object v2, p0

    move-object v3, p2

    move v7, v1

    invoke-static/range {v0 .. v7}, Landroid/pim/ContactsAsyncHelper;->updateImageViewWithContactPhotoAsync(Lcom/android/internal/telephony/CallerInfo;ILandroid/pim/ContactsAsyncHelper$OnImageLoadCompleteListener;Ljava/lang/Object;Landroid/content/Context;Landroid/widget/ImageView;Landroid/net/Uri;I)V

    goto/16 :goto_0

    .line 594
    .end local v6           #personUri:Landroid/net/Uri;
    :cond_7
    iget-object v0, p2, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    const-string v1, "sip:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 595
    iget-object v0, p2, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/android/phone/CallCard$CallCardInfo;->phoneNumber:Ljava/lang/String;

    goto/16 :goto_1

    .line 596
    :cond_8
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_9

    .line 597
    iget-object v0, p2, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    iput-object v0, v8, Lcom/android/phone/CallCard$CallCardInfo;->phoneNumber:Ljava/lang/String;

    goto/16 :goto_1

    .line 600
    :cond_9
    iget-object v0, p2, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    iput-object v0, v8, Lcom/android/phone/CallCard$CallCardInfo;->phoneNumber:Ljava/lang/String;

    goto/16 :goto_1

    .line 608
    :cond_a
    iget-object v0, p2, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 609
    iget-object v0, p2, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    iput-object v0, v8, Lcom/android/phone/CallCard$CallCardInfo;->name:Ljava/lang/String;

    .line 610
    iget-object v0, p2, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    iput-object v0, p2, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    goto/16 :goto_2

    .line 612
    :cond_b
    iget-object v0, p2, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->splitNetworkAndPostDialPortion(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iput-object v0, v8, Lcom/android/phone/CallCard$CallCardInfo;->name:Ljava/lang/String;

    goto/16 :goto_2

    .line 616
    :cond_c
    iget v0, p2, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    sget v1, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    if-eq v0, v1, :cond_d

    .line 617
    iget v0, p2, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    invoke-static {v0}, Lcom/android/internal/telephony/Connection;->getPresentationString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/android/phone/CallCard$CallCardInfo;->name:Ljava/lang/String;

    goto/16 :goto_2

    .line 619
    :cond_d
    iget-object v0, p2, Lcom/android/internal/telephony/CallerInfo;->displayName:Ljava/lang/String;

    iput-object v0, v8, Lcom/android/phone/CallCard$CallCardInfo;->name:Ljava/lang/String;

    goto/16 :goto_2
.end method

.method private createPostDialTextAppearanceSpan()Landroid/text/style/TextAppearanceSpan;
    .locals 6

    .prologue
    .line 185
    new-instance v0, Landroid/text/style/TextAppearanceSpan;

    iget-object v1, p0, Lcom/android/phone/CallCard;->mPostDialTextAppearanceSpan:Landroid/text/style/TextAppearanceSpan;

    invoke-virtual {v1}, Landroid/text/style/TextAppearanceSpan;->getFamily()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/CallCard;->mPostDialTextAppearanceSpan:Landroid/text/style/TextAppearanceSpan;

    invoke-virtual {v2}, Landroid/text/style/TextAppearanceSpan;->getTextStyle()I

    move-result v2

    iget-object v3, p0, Lcom/android/phone/CallCard;->mPostDialTextAppearanceSpan:Landroid/text/style/TextAppearanceSpan;

    invoke-virtual {v3}, Landroid/text/style/TextAppearanceSpan;->getTextSize()I

    move-result v3

    iget-object v4, p0, Lcom/android/phone/CallCard;->mPostDialTextAppearanceSpan:Landroid/text/style/TextAppearanceSpan;

    invoke-virtual {v4}, Landroid/text/style/TextAppearanceSpan;->getTextColor()Landroid/content/res/ColorStateList;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/CallCard;->mPostDialTextAppearanceSpan:Landroid/text/style/TextAppearanceSpan;

    invoke-virtual {v5}, Landroid/text/style/TextAppearanceSpan;->getLinkTextColor()Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Landroid/text/style/TextAppearanceSpan;-><init>(Ljava/lang/String;IILandroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V

    return-object v0
.end method

.method private dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V
    .locals 3
    .parameter "event"
    .parameter "view"

    .prologue
    .line 1155
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    .line 1156
    .local v0, eventText:Ljava/util/List;,"Ljava/util/List<Ljava/lang/CharSequence;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 1157
    .local v1, size:I
    invoke-virtual {p2, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 1159
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 1160
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1162
    :cond_0
    return-void
.end method

.method private getCallCardInfo(Lcom/android/internal/telephony/Call;)Lcom/android/phone/CallCard$CallCardInfo;
    .locals 10
    .parameter

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    const-string v6, "CallCard"

    const-string v9, ""

    .line 630
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v4

    .line 633
    if-nez v4, :cond_4

    .line 639
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v8}, Lcom/android/phone/PhoneUtils;->getCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v1

    .line 689
    :cond_0
    :goto_0
    invoke-direct {p0, p1, v1}, Lcom/android/phone/CallCard;->createCallCardInfo(Lcom/android/internal/telephony/Call;Lcom/android/internal/telephony/CallerInfo;)Lcom/android/phone/CallCard$CallCardInfo;

    move-result-object v2

    .line 691
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    const/4 v5, 0x3

    if-ne v3, v5, :cond_8

    .line 692
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f0c0150

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/phone/CallCard$CallCardInfo;->telocation:Ljava/lang/String;

    .line 697
    :goto_1
    if-eqz v4, :cond_9

    invoke-virtual {v4}, Lcom/android/internal/telephony/Connection;->isForwardedCall()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 698
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0c0132

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/android/phone/CallCard$CallCardInfo;->extraInfo:Ljava/lang/String;

    .line 703
    :cond_1
    :goto_2
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getDigitsPressed()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 704
    iget-object v1, v2, Lcom/android/phone/CallCard$CallCardInfo;->name:Ljava/lang/String;

    iput-object v1, v2, Lcom/android/phone/CallCard$CallCardInfo;->phoneNumber:Ljava/lang/String;

    .line 705
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getDigitsPressed()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/android/phone/CallCard$CallCardInfo;->name:Ljava/lang/String;

    .line 706
    const-string v1, ""

    iput-object v9, v2, Lcom/android/phone/CallCard$CallCardInfo;->telocation:Ljava/lang/String;

    .line 709
    :cond_2
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    .line 710
    sget-object v3, Lcom/android/phone/CallCard$3;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 762
    const-string v3, "CallCard"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCallCardInfo: unexpected call state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    :cond_3
    :goto_3
    return-object v2

    .line 646
    :cond_4
    invoke-virtual {v4}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v2

    .line 647
    instance-of v1, v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    if-eqz v1, :cond_5

    .line 648
    move-object v0, v2

    check-cast v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move-object v1, v0

    iget-object v1, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 652
    :goto_4
    if-eqz v1, :cond_c

    .line 653
    iget-object v3, p0, Lcom/android/phone/CallCard;->mPhotoTracker:Landroid/pim/ContactsAsyncHelper$ImageTracker;

    invoke-virtual {v3, v1}, Landroid/pim/ContactsAsyncHelper$ImageTracker;->isDifferentImageRequest(Lcom/android/internal/telephony/CallerInfo;)Z

    move-result v3

    .line 656
    :goto_5
    if-eqz v3, :cond_6

    .line 658
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v4, p0, p1}, Lcom/android/phone/PhoneUtils;->startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    goto/16 :goto_0

    .line 649
    :cond_5
    instance-of v1, v2, Lcom/android/internal/telephony/CallerInfo;

    if-eqz v1, :cond_d

    .line 650
    move-object v0, v2

    check-cast v0, Lcom/android/internal/telephony/CallerInfo;

    move-object v3, v0

    move-object v1, v3

    goto :goto_4

    .line 664
    :cond_6
    instance-of v3, v2, Lcom/android/internal/telephony/CallerInfo;

    if-eqz v3, :cond_7

    .line 666
    invoke-virtual {v4}, Lcom/android/internal/telephony/Connection;->getCnapName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    .line 667
    invoke-virtual {v4}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v2

    iput v2, v1, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    .line 668
    invoke-virtual {v4}, Lcom/android/internal/telephony/Connection;->getCnapNamePresentation()I

    move-result v2

    iput v2, v1, Lcom/android/internal/telephony/CallerInfo;->namePresentation:I

    goto/16 :goto_0

    .line 673
    :cond_7
    instance-of v3, v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    if-nez v3, :cond_0

    .line 679
    const-string v3, "CallCard"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateCall: runQuery was false, but we didn\'t have a cached CallerInfo object!  o = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 694
    :cond_8
    iget-object v3, p0, Lcom/android/phone/CallCard;->mContext:Landroid/content/Context;

    iget-object v5, v2, Lcom/android/phone/CallCard$CallCardInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v3, v5}, Landroid/telephony/PhoneNumberUtils;->parseTelocationString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/phone/CallCard$CallCardInfo;->telocation:Ljava/lang/String;

    goto/16 :goto_1

    .line 699
    :cond_9
    if-eqz v1, :cond_1

    .line 700
    iget-object v1, v1, Lcom/android/internal/telephony/CallerInfo;->company:Ljava/lang/String;

    iput-object v1, v2, Lcom/android/phone/CallCard$CallCardInfo;->extraInfo:Ljava/lang/String;

    goto/16 :goto_2

    .line 713
    :pswitch_0
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v3

    iget-object v3, v3, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    invoke-virtual {v3}, Lcom/android/phone/CallNotifier;->getRedialTimes()I

    move-result v3

    .line 714
    if-gez v3, :cond_a

    .line 715
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c012f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/phone/CallCard$CallCardInfo;->callStatus:Ljava/lang/String;

    .line 719
    :goto_6
    const-string v3, ""

    iput-object v9, v2, Lcom/android/phone/CallCard$CallCardInfo;->elapsedTime:Ljava/lang/String;

    .line 720
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    sget-object v3, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v3, :cond_3

    .line 722
    iput-object v8, v2, Lcom/android/phone/CallCard$CallCardInfo;->elapsedTime:Ljava/lang/String;

    goto/16 :goto_3

    .line 717
    :cond_a
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c01f7

    new-array v6, v7, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/phone/CallCard$CallCardInfo;->callStatus:Ljava/lang/String;

    goto :goto_6

    .line 728
    :pswitch_1
    const-string v1, ""

    iput-object v9, v2, Lcom/android/phone/CallCard$CallCardInfo;->elapsedTime:Ljava/lang/String;

    goto/16 :goto_3

    .line 732
    :pswitch_2
    iput-object v8, v2, Lcom/android/phone/CallCard$CallCardInfo;->elapsedTime:Ljava/lang/String;

    goto/16 :goto_3

    .line 736
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0c0135

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/android/phone/CallCard$CallCardInfo;->callStatus:Ljava/lang/String;

    .line 737
    iput-object v8, v2, Lcom/android/phone/CallCard$CallCardInfo;->elapsedTime:Ljava/lang/String;

    goto/16 :goto_3

    .line 741
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0c0134

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/android/phone/CallCard$CallCardInfo;->callStatus:Ljava/lang/String;

    .line 742
    iput-object v8, v2, Lcom/android/phone/CallCard$CallCardInfo;->elapsedTime:Ljava/lang/String;

    goto/16 :goto_3

    .line 746
    :pswitch_5
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0c0133

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/android/phone/CallCard$CallCardInfo;->callStatus:Ljava/lang/String;

    .line 747
    invoke-static {p1}, Lcom/android/phone/CallTime;->getCallDuration(Lcom/android/internal/telephony/Call;)J

    move-result-wide v3

    .line 748
    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-nez v1, :cond_b

    .line 749
    invoke-direct {p0, p1}, Lcom/android/phone/CallCard;->getCallFailedString(Lcom/android/internal/telephony/Call;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/android/phone/CallCard$CallCardInfo;->elapsedTime:Ljava/lang/String;

    .line 750
    iget-object v1, v2, Lcom/android/phone/CallCard$CallCardInfo;->callStatus:Ljava/lang/String;

    iget-object v3, v2, Lcom/android/phone/CallCard$CallCardInfo;->elapsedTime:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 751
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0c0199

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/android/phone/CallCard$CallCardInfo;->elapsedTime:Ljava/lang/String;

    goto/16 :goto_3

    .line 754
    :cond_b
    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    invoke-static {v3, v4}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/android/phone/CallCard$CallCardInfo;->elapsedTime:Ljava/lang/String;

    goto/16 :goto_3

    .line 759
    :pswitch_6
    const-string v1, "CallCard"

    const-string v1, "getCallCardInfo: IDLE call in the call card"

    invoke-static {v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_c
    move v3, v7

    goto/16 :goto_5

    :cond_d
    move-object v1, v8

    goto/16 :goto_4

    .line 710
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private getCallFailedString(Lcom/android/internal/telephony/Call;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    const v2, 0x7f0c0133

    .line 949
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 952
    if-nez v0, :cond_0

    move v0, v2

    .line 1029
    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 959
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v0

    .line 965
    sget-object v1, Lcom/android/phone/CallCard$3;->$SwitchMap$com$android$internal$telephony$Connection$DisconnectCause:[I

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection$DisconnectCause;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    move v0, v2

    .line 1025
    goto :goto_0

    .line 967
    :pswitch_0
    const v0, 0x7f0c000b

    .line 968
    goto :goto_0

    .line 971
    :pswitch_1
    const v0, 0x7f0c000c

    .line 972
    goto :goto_0

    .line 975
    :pswitch_2
    const v0, 0x7f0c000d

    .line 976
    goto :goto_0

    .line 979
    :pswitch_3
    const v0, 0x7f0c000e

    .line 980
    goto :goto_0

    .line 983
    :pswitch_4
    const v0, 0x7f0c000f

    .line 984
    goto :goto_0

    .line 987
    :pswitch_5
    const v0, 0x7f0c0010

    .line 988
    goto :goto_0

    .line 991
    :pswitch_6
    const v0, 0x7f0c0012

    .line 992
    goto :goto_0

    .line 995
    :pswitch_7
    const v0, 0x7f0c0011

    .line 996
    goto :goto_0

    .line 1000
    :pswitch_8
    const v0, 0x7f0c0013

    .line 1001
    goto :goto_0

    .line 1004
    :pswitch_9
    const v0, 0x7f0c0014

    .line 1005
    goto :goto_0

    .line 1008
    :pswitch_a
    const v0, 0x7f0c0015

    .line 1009
    goto :goto_0

    .line 1012
    :pswitch_b
    const v0, 0x7f0c0016

    .line 1013
    goto :goto_0

    .line 1016
    :pswitch_c
    const v0, 0x7f0c0017

    .line 1017
    goto :goto_0

    .line 1021
    :pswitch_d
    const v0, 0x7f0c001d

    .line 1022
    goto :goto_0

    .line 965
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_d
    .end packed-switch
.end method

.method private getConferenceCallCardInfo(Lcom/android/internal/telephony/Call;)Lcom/android/phone/CallCard$CallCardInfo;
    .locals 14
    .parameter "call"

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 522
    new-instance v6, Lcom/android/phone/CallCard$CallCardInfo;

    invoke-direct {v6, p0, v12}, Lcom/android/phone/CallCard$CallCardInfo;-><init>(Lcom/android/phone/CallCard;Lcom/android/phone/CallCard$1;)V

    .line 524
    .local v6, info:Lcom/android/phone/CallCard$CallCardInfo;
    iput-boolean v11, v6, Lcom/android/phone/CallCard$CallCardInfo;->isConference:Z

    .line 525
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0c0131

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v6, Lcom/android/phone/CallCard$CallCardInfo;->name:Ljava/lang/String;

    .line 526
    iput-object v12, v6, Lcom/android/phone/CallCard$CallCardInfo;->elapsedTime:Ljava/lang/String;

    .line 528
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v3

    .line 529
    .local v3, connections:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    .line 530
    .local v4, count:I
    const/4 v2, 0x0

    .line 531
    .local v2, callerInfo:Lcom/android/internal/telephony/CallerInfo;
    if-lez v4, :cond_3

    .line 532
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    if-ge v5, v4, :cond_3

    .line 533
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Connection;

    .line 534
    .local v1, c:Lcom/android/internal/telephony/Connection;
    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v7

    .line 535
    .local v7, o:Ljava/lang/Object;
    instance-of v9, v7, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    if-eqz v9, :cond_0

    .line 536
    check-cast v7, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    .end local v7           #o:Ljava/lang/Object;
    iget-object v2, v7, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 542
    :goto_1
    iget-object v9, v6, Lcom/android/phone/CallCard$CallCardInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 543
    invoke-direct {p0, p1, v2}, Lcom/android/phone/CallCard;->createCallCardInfo(Lcom/android/internal/telephony/Call;Lcom/android/internal/telephony/CallerInfo;)Lcom/android/phone/CallCard$CallCardInfo;

    move-result-object v9

    iget-object v9, v9, Lcom/android/phone/CallCard$CallCardInfo;->name:Ljava/lang/String;

    iput-object v9, v6, Lcom/android/phone/CallCard$CallCardInfo;->phoneNumber:Ljava/lang/String;

    .line 532
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 537
    .restart local v7       #o:Ljava/lang/Object;
    :cond_0
    instance-of v9, v7, Lcom/android/internal/telephony/CallerInfo;

    if-eqz v9, :cond_1

    .line 538
    move-object v0, v7

    check-cast v0, Lcom/android/internal/telephony/CallerInfo;

    move-object v2, v0

    goto :goto_1

    .line 540
    :cond_1
    const-string v9, "CallCard"

    const-string v10, "getConferenceCallCardInfo: no caller info"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 545
    .end local v7           #o:Ljava/lang/Object;
    :cond_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v6, Lcom/android/phone/CallCard$CallCardInfo;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-direct {p0, p1, v2}, Lcom/android/phone/CallCard;->createCallCardInfo(Lcom/android/internal/telephony/Call;Lcom/android/internal/telephony/CallerInfo;)Lcom/android/phone/CallCard$CallCardInfo;

    move-result-object v10

    iget-object v10, v10, Lcom/android/phone/CallCard$CallCardInfo;->name:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v6, Lcom/android/phone/CallCard$CallCardInfo;->phoneNumber:Ljava/lang/String;

    goto :goto_2

    .line 549
    .end local v1           #c:Lcom/android/internal/telephony/Connection;
    .end local v5           #i:I
    :cond_3
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0c0198

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {v9, v10, v11}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v6, Lcom/android/phone/CallCard$CallCardInfo;->telocation:Ljava/lang/String;

    .line 550
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v8

    .line 551
    .local v8, state:Lcom/android/internal/telephony/Call$State;
    sget-object v9, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v8, v9, :cond_4

    .line 552
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0c0134

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v6, Lcom/android/phone/CallCard$CallCardInfo;->callStatus:Ljava/lang/String;

    .line 555
    :cond_4
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getDigitsPressed()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_5

    .line 556
    iget-object v9, v6, Lcom/android/phone/CallCard$CallCardInfo;->name:Ljava/lang/String;

    iput-object v9, v6, Lcom/android/phone/CallCard$CallCardInfo;->phoneNumber:Ljava/lang/String;

    .line 557
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getDigitsPressed()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v6, Lcom/android/phone/CallCard$CallCardInfo;->name:Ljava/lang/String;

    .line 558
    const-string v9, ""

    iput-object v9, v6, Lcom/android/phone/CallCard$CallCardInfo;->telocation:Ljava/lang/String;

    .line 560
    :cond_5
    return-object v6
.end method

.method private refreshAfterInflate()V
    .locals 1

    .prologue
    .line 247
    const v0, 0x7f07001f

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mCallCardRoot:Landroid/view/ViewGroup;

    .line 248
    const v0, 0x7f070021

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mPhoto:Landroid/widget/ImageView;

    .line 250
    const v0, 0x7f070022

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/phone/AlphaCallCardLayout;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mPrimaryCallCard:Lcom/android/phone/AlphaCallCardLayout;

    .line 251
    const v0, 0x7f070023

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mPrimaryCallerInfo:Landroid/widget/LinearLayout;

    .line 252
    const v0, 0x7f070024

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mPrimaryName:Landroid/widget/TextView;

    .line 253
    const v0, 0x7f070025

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mPrimaryPhoneNumberInfo:Landroid/widget/LinearLayout;

    .line 254
    const v0, 0x7f070026

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mPrimaryPhoneNumber:Landroid/widget/TextView;

    .line 255
    const v0, 0x7f070027

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mPrimaryTelocation:Landroid/widget/TextView;

    .line 256
    const v0, 0x7f07002a

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mPrimaryCallInfo:Landroid/widget/LinearLayout;

    .line 257
    const v0, 0x7f07002b

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mPrimaryCallStatus:Landroid/widget/TextView;

    .line 258
    const v0, 0x7f07002c

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mPrimaryCallStatusImage:Landroid/widget/ImageView;

    .line 259
    const v0, 0x7f07002d

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mPrimaryElapsedTime:Landroid/widget/TextView;

    .line 261
    const v0, 0x7f07002e

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mPrimaryConferenceManageButtonSingleCall:Landroid/widget/Button;

    .line 262
    const v0, 0x7f070029

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mPrimaryConferenceManageButtonTwoCalls:Landroid/widget/Button;

    .line 264
    const v0, 0x7f070028

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mExtraInfo:Landroid/widget/TextView;

    .line 266
    const v0, 0x7f07002f

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/phone/AlphaCallCardLayout;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryCallCard:Lcom/android/phone/AlphaCallCardLayout;

    .line 267
    const v0, 0x7f070031

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryName:Landroid/widget/TextView;

    .line 268
    const v0, 0x7f070032

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryPhoneNumber:Landroid/widget/TextView;

    .line 269
    const v0, 0x7f070033

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryTelocation:Landroid/widget/TextView;

    .line 270
    const v0, 0x7f070035

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryCallInfo:Landroid/widget/LinearLayout;

    .line 271
    const v0, 0x7f070036

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryCallStatus:Landroid/widget/TextView;

    .line 272
    const v0, 0x7f070037

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryCallStatusImage:Landroid/widget/ImageView;

    .line 273
    const v0, 0x7f070038

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryElapsedTime:Landroid/widget/TextView;

    .line 274
    const v0, 0x7f070034

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryConferenceManageButton:Landroid/widget/Button;

    .line 276
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPrimaryConferenceManageButtonSingleCall:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 277
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPrimaryConferenceManageButtonTwoCalls:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 278
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryConferenceManageButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 279
    return-void
.end method

.method private updateCall(Lcom/android/internal/telephony/Call;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/Button;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/TextView;Lcom/android/phone/CallTime;Z)V
    .locals 4
    .parameter "call"
    .parameter "name"
    .parameter "phoneNumber"
    .parameter "telocation"
    .parameter "conferenceButton"
    .parameter "callStatus"
    .parameter "callStatusImage"
    .parameter "elapsedTime"
    .parameter "callTime"
    .parameter "isForegroundCall"

    .prologue
    .line 809
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    .line 812
    .local v1, state:Lcom/android/internal/telephony/Call$State;
    invoke-static {p1}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-direct {p0, p1}, Lcom/android/phone/CallCard;->getConferenceCallCardInfo(Lcom/android/internal/telephony/Call;)Lcom/android/phone/CallCard$CallCardInfo;

    move-result-object v2

    move-object v0, v2

    .line 814
    .local v0, info:Lcom/android/phone/CallCard$CallCardInfo;
    :goto_0
    iget-object v2, v0, Lcom/android/phone/CallCard$CallCardInfo;->name:Ljava/lang/String;

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 815
    iget-object v2, v0, Lcom/android/phone/CallCard$CallCardInfo;->phoneNumber:Ljava/lang/String;

    invoke-direct {p0, p1, p3, v2}, Lcom/android/phone/CallCard;->updatePhoneNumberField(Lcom/android/internal/telephony/Call;Landroid/widget/TextView;Ljava/lang/String;)V

    .line 817
    iget-object v2, v0, Lcom/android/phone/CallCard$CallCardInfo;->telocation:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 818
    const/16 v2, 0x8

    invoke-virtual {p4, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 824
    :goto_1
    iget-object v2, v0, Lcom/android/phone/CallCard$CallCardInfo;->callStatus:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 825
    iget v2, p0, Lcom/android/phone/CallCard;->mState:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_6

    const/4 v2, 0x0

    :goto_2
    invoke-virtual {p7, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 826
    const/16 v2, 0x8

    invoke-virtual {p6, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 833
    :goto_3
    const/4 v2, 0x0

    invoke-virtual {p8, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 834
    iget-object v2, v0, Lcom/android/phone/CallCard$CallCardInfo;->elapsedTime:Ljava/lang/String;

    if-nez v2, :cond_8

    .line 835
    invoke-virtual {p9, p1}, Lcom/android/phone/CallTime;->setActiveCallMode(Lcom/android/internal/telephony/Call;)V

    .line 836
    invoke-virtual {p9}, Lcom/android/phone/CallTime;->reset()V

    .line 837
    invoke-virtual {p9}, Lcom/android/phone/CallTime;->periodicUpdateTimer()V

    .line 848
    .end local p2
    :cond_0
    :goto_4
    iget-boolean v2, v0, Lcom/android/phone/CallCard$CallCardInfo;->isConference:Z

    if-eqz v2, :cond_b

    .line 849
    const/4 v2, 0x0

    invoke-virtual {p5, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 850
    if-eqz p10, :cond_a

    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_a

    const/4 v2, 0x1

    :goto_5
    invoke-virtual {p5, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 856
    :goto_6
    if-eqz p10, :cond_3

    .line 857
    iget-object v2, p0, Lcom/android/phone/CallCard;->mPhoto:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 858
    iget-object v2, v0, Lcom/android/phone/CallCard$CallCardInfo;->bigPhoto:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_c

    .line 859
    iget-object v2, p0, Lcom/android/phone/CallCard;->mBigPhoto:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 860
    iget-object v2, p0, Lcom/android/phone/CallCard;->mBigPhoto:Landroid/widget/ImageView;

    iget-object v3, v0, Lcom/android/phone/CallCard$CallCardInfo;->bigPhoto:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 861
    iget-object v2, p0, Lcom/android/phone/CallCard;->mLockScreenWallpaper:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 866
    :goto_7
    iget-object v2, v0, Lcom/android/phone/CallCard$CallCardInfo;->photo:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/android/phone/CallCard;->mState:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    .line 867
    iget-object v2, p0, Lcom/android/phone/CallCard;->mPhoto:Landroid/widget/ImageView;

    iget-object v3, v0, Lcom/android/phone/CallCard$CallCardInfo;->photo:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 868
    iget-object v2, p0, Lcom/android/phone/CallCard;->mPhoto:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 871
    :cond_1
    iget v2, p0, Lcom/android/phone/CallCard;->mState:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    iget-object v2, v0, Lcom/android/phone/CallCard$CallCardInfo;->extraInfo:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 872
    :cond_2
    iget-object v2, p0, Lcom/android/phone/CallCard;->mExtraInfo:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 877
    :cond_3
    :goto_8
    return-void

    .line 812
    .end local v0           #info:Lcom/android/phone/CallCard$CallCardInfo;
    .restart local p2
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/phone/CallCard;->getCallCardInfo(Lcom/android/internal/telephony/Call;)Lcom/android/phone/CallCard$CallCardInfo;

    move-result-object v2

    move-object v0, v2

    goto/16 :goto_0

    .line 820
    .restart local v0       #info:Lcom/android/phone/CallCard$CallCardInfo;
    :cond_5
    const/4 v2, 0x0

    invoke-virtual {p4, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 821
    iget-object v2, v0, Lcom/android/phone/CallCard$CallCardInfo;->telocation:Ljava/lang/String;

    invoke-virtual {p4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 825
    :cond_6
    const/16 v2, 0x8

    goto/16 :goto_2

    .line 828
    :cond_7
    const/16 v2, 0x8

    invoke-virtual {p7, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 829
    const/4 v2, 0x0

    invoke-virtual {p6, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 830
    iget-object v2, v0, Lcom/android/phone/CallCard$CallCardInfo;->callStatus:Ljava/lang/String;

    invoke-virtual {p6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 838
    :cond_8
    iget-object v2, v0, Lcom/android/phone/CallCard$CallCardInfo;->elapsedTime:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 839
    iget-object v2, v0, Lcom/android/phone/CallCard$CallCardInfo;->elapsedTime:Ljava/lang/String;

    invoke-virtual {p8, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 840
    invoke-virtual {p8}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    .end local p2
    check-cast p2, Landroid/widget/LinearLayout;

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getOrientation()I

    move-result v2

    if-nez v2, :cond_0

    .line 841
    const/16 v2, 0x8

    invoke-virtual {p8, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_4

    .line 844
    .restart local p2
    :cond_9
    invoke-virtual {p9}, Lcom/android/phone/CallTime;->cancelTimer()V

    .line 845
    iget-object v2, v0, Lcom/android/phone/CallCard$CallCardInfo;->elapsedTime:Ljava/lang/String;

    invoke-virtual {p8, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 850
    .end local p2
    :cond_a
    const/4 v2, 0x0

    goto/16 :goto_5

    .line 853
    :cond_b
    const/16 v2, 0x8

    invoke-virtual {p5, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_6

    .line 863
    :cond_c
    iget-object v2, p0, Lcom/android/phone/CallCard;->mBigPhoto:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 864
    iget-object v2, p0, Lcom/android/phone/CallCard;->mLockScreenWallpaper:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_7

    .line 874
    :cond_d
    iget-object v2, p0, Lcom/android/phone/CallCard;->mExtraInfo:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/android/phone/CallCard$CallCardInfo;->extraInfo:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_8
.end method

.method private updateCallCard()V
    .locals 8

    .prologue
    const/high16 v7, 0x40a0

    const/4 v6, 0x0

    const/high16 v5, -0x3f60

    const/16 v2, 0x8

    const/4 v4, 0x0

    .line 282
    iget v1, p0, Lcom/android/phone/CallCard;->mState:I

    packed-switch v1, :pswitch_data_0

    .line 309
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->hideCallCardElements()V

    .line 311
    :goto_0
    iget-object v1, p0, Lcom/android/phone/CallCard;->mSecondaryCallCard:Lcom/android/phone/AlphaCallCardLayout;

    invoke-virtual {v1}, Lcom/android/phone/AlphaCallCardLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 312
    iget-object v1, p0, Lcom/android/phone/CallCard;->mPrimaryCallCard:Lcom/android/phone/AlphaCallCardLayout;

    invoke-virtual {v1, v4}, Lcom/android/phone/AlphaCallCardLayout;->setOrientation(I)V

    .line 313
    iget-object v1, p0, Lcom/android/phone/CallCard;->mPrimaryCallCard:Lcom/android/phone/AlphaCallCardLayout;

    invoke-virtual {v1}, Lcom/android/phone/AlphaCallCardLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 314
    .local v0, params:Landroid/widget/LinearLayout$LayoutParams;
    const/4 v1, -0x1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 315
    iput v6, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 316
    iget-object v1, p0, Lcom/android/phone/CallCard;->mPrimaryCallCard:Lcom/android/phone/AlphaCallCardLayout;

    invoke-virtual {v1, v0}, Lcom/android/phone/AlphaCallCardLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 317
    iget-object v1, p0, Lcom/android/phone/CallCard;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0e0010

    invoke-static {v1, v2, v3}, Lcom/android/phone/PhoneUtils;->setTextStyle(Landroid/widget/TextView;Landroid/content/Context;I)V

    .line 318
    iget-object v1, p0, Lcom/android/phone/CallCard;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextSize()F

    move-result v1

    iput v1, p0, Lcom/android/phone/CallCard;->mMaxTextSizeOfDigits:F

    .line 319
    iget-object v1, p0, Lcom/android/phone/CallCard;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .end local v0           #params:Landroid/widget/LinearLayout$LayoutParams;
    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 320
    .restart local v0       #params:Landroid/widget/LinearLayout$LayoutParams;
    const/4 v1, -0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 321
    iget v1, p0, Lcom/android/phone/CallCard;->mDensity:F

    mul-float/2addr v1, v6

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 322
    iget-object v1, p0, Lcom/android/phone/CallCard;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 323
    iget-object v1, p0, Lcom/android/phone/CallCard;->mPrimaryPhoneNumberInfo:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .end local v0           #params:Landroid/widget/LinearLayout$LayoutParams;
    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 324
    .restart local v0       #params:Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v1, -0x3fc0

    iget v2, p0, Lcom/android/phone/CallCard;->mDensity:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 325
    iget-object v1, p0, Lcom/android/phone/CallCard;->mPrimaryPhoneNumberInfo:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 326
    iget-object v1, p0, Lcom/android/phone/CallCard;->mPrimaryCallInfo:Landroid/widget/LinearLayout;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 327
    iget-object v1, p0, Lcom/android/phone/CallCard;->mPrimaryCallInfo:Landroid/widget/LinearLayout;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 328
    iget-object v1, p0, Lcom/android/phone/CallCard;->mPrimaryCallInfo:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .end local v0           #params:Landroid/widget/LinearLayout$LayoutParams;
    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 329
    .restart local v0       #params:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v1, 0x50

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 330
    iget v1, p0, Lcom/android/phone/CallCard;->mDensity:F

    mul-float/2addr v1, v7

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 331
    iget-object v1, p0, Lcom/android/phone/CallCard;->mPrimaryCallInfo:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 332
    iget-object v1, p0, Lcom/android/phone/CallCard;->mPrimaryCallInfo:Landroid/widget/LinearLayout;

    const/high16 v2, 0x425c

    iget v3, p0, Lcom/android/phone/CallCard;->mDensity:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setMinimumWidth(I)V

    .line 333
    iget-object v1, p0, Lcom/android/phone/CallCard;->mPrimaryCallStatus:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .end local v0           #params:Landroid/widget/LinearLayout$LayoutParams;
    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 334
    .restart local v0       #params:Landroid/widget/LinearLayout$LayoutParams;
    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 335
    iget-object v1, p0, Lcom/android/phone/CallCard;->mPrimaryCallStatus:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 362
    .end local v0           #params:Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    :goto_1
    return-void

    .line 284
    :pswitch_0
    iget-object v1, p0, Lcom/android/phone/CallCard;->mPrimaryCallCard:Lcom/android/phone/AlphaCallCardLayout;

    invoke-virtual {v1, v4}, Lcom/android/phone/AlphaCallCardLayout;->setVisibility(I)V

    .line 285
    iget-object v1, p0, Lcom/android/phone/CallCard;->mPrimaryCallInfo:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 286
    iget-object v1, p0, Lcom/android/phone/CallCard;->mSecondaryCallCard:Lcom/android/phone/AlphaCallCardLayout;

    invoke-virtual {v1, v2}, Lcom/android/phone/AlphaCallCardLayout;->setVisibility(I)V

    .line 287
    iget-object v1, p0, Lcom/android/phone/CallCard;->mExtraInfo:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 288
    iget-object v1, p0, Lcom/android/phone/CallCard;->mPhoto:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 289
    iget-object v1, p0, Lcom/android/phone/CallCard;->mPrimaryConferenceManageButtonSingleCall:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_0

    .line 292
    :pswitch_1
    iget-object v1, p0, Lcom/android/phone/CallCard;->mPrimaryCallCard:Lcom/android/phone/AlphaCallCardLayout;

    invoke-virtual {v1, v4}, Lcom/android/phone/AlphaCallCardLayout;->setVisibility(I)V

    .line 293
    iget-object v1, p0, Lcom/android/phone/CallCard;->mPrimaryCallInfo:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 294
    iget-object v1, p0, Lcom/android/phone/CallCard;->mSecondaryCallCard:Lcom/android/phone/AlphaCallCardLayout;

    invoke-virtual {v1, v2}, Lcom/android/phone/AlphaCallCardLayout;->setVisibility(I)V

    .line 295
    iget-object v1, p0, Lcom/android/phone/CallCard;->mExtraInfo:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 296
    iget-object v1, p0, Lcom/android/phone/CallCard;->mPhoto:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 297
    iget-object v1, p0, Lcom/android/phone/CallCard;->mPrimaryConferenceManageButtonSingleCall:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_0

    .line 300
    :pswitch_2
    iget-object v1, p0, Lcom/android/phone/CallCard;->mPrimaryCallCard:Lcom/android/phone/AlphaCallCardLayout;

    invoke-virtual {v1, v4}, Lcom/android/phone/AlphaCallCardLayout;->setVisibility(I)V

    .line 301
    iget-object v1, p0, Lcom/android/phone/CallCard;->mPrimaryCallInfo:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 302
    iget-object v1, p0, Lcom/android/phone/CallCard;->mSecondaryCallCard:Lcom/android/phone/AlphaCallCardLayout;

    invoke-virtual {v1, v4}, Lcom/android/phone/AlphaCallCardLayout;->setVisibility(I)V

    .line 303
    iget-object v1, p0, Lcom/android/phone/CallCard;->mSecondaryCallInfo:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 304
    iget-object v1, p0, Lcom/android/phone/CallCard;->mExtraInfo:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 305
    iget-object v1, p0, Lcom/android/phone/CallCard;->mPhoto:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 306
    iget-object v1, p0, Lcom/android/phone/CallCard;->mPrimaryConferenceManageButtonSingleCall:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_0

    .line 336
    :cond_1
    iget-object v1, p0, Lcom/android/phone/CallCard;->mPrimaryCallCard:Lcom/android/phone/AlphaCallCardLayout;

    invoke-virtual {v1}, Lcom/android/phone/AlphaCallCardLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 337
    iget-object v1, p0, Lcom/android/phone/CallCard;->mPrimaryCallCard:Lcom/android/phone/AlphaCallCardLayout;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/phone/AlphaCallCardLayout;->setOrientation(I)V

    .line 338
    iget-object v1, p0, Lcom/android/phone/CallCard;->mPrimaryCallCard:Lcom/android/phone/AlphaCallCardLayout;

    invoke-virtual {v1}, Lcom/android/phone/AlphaCallCardLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 339
    .restart local v0       #params:Landroid/widget/LinearLayout$LayoutParams;
    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 340
    const/high16 v1, 0x3f80

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 341
    iget-object v1, p0, Lcom/android/phone/CallCard;->mPrimaryCallCard:Lcom/android/phone/AlphaCallCardLayout;

    invoke-virtual {v1, v0}, Lcom/android/phone/AlphaCallCardLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 342
    iget-object v1, p0, Lcom/android/phone/CallCard;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0e000f

    invoke-static {v1, v2, v3}, Lcom/android/phone/PhoneUtils;->setTextStyle(Landroid/widget/TextView;Landroid/content/Context;I)V

    .line 343
    iget-object v1, p0, Lcom/android/phone/CallCard;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextSize()F

    move-result v1

    iput v1, p0, Lcom/android/phone/CallCard;->mMaxTextSizeOfDigits:F

    .line 344
    iget-object v1, p0, Lcom/android/phone/CallCard;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .end local v0           #params:Landroid/widget/LinearLayout$LayoutParams;
    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 345
    .restart local v0       #params:Landroid/widget/LinearLayout$LayoutParams;
    const/4 v1, -0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 346
    iget v1, p0, Lcom/android/phone/CallCard;->mDensity:F

    mul-float/2addr v1, v5

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 347
    iget-object v1, p0, Lcom/android/phone/CallCard;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 348
    iget-object v1, p0, Lcom/android/phone/CallCard;->mPrimaryPhoneNumberInfo:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .end local v0           #params:Landroid/widget/LinearLayout$LayoutParams;
    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 349
    .restart local v0       #params:Landroid/widget/LinearLayout$LayoutParams;
    iget v1, p0, Lcom/android/phone/CallCard;->mDensity:F

    mul-float/2addr v1, v5

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 350
    iget-object v1, p0, Lcom/android/phone/CallCard;->mPrimaryPhoneNumberInfo:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 351
    iget-object v1, p0, Lcom/android/phone/CallCard;->mPrimaryCallInfo:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 352
    iget-object v1, p0, Lcom/android/phone/CallCard;->mPrimaryCallInfo:Landroid/widget/LinearLayout;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 353
    iget-object v1, p0, Lcom/android/phone/CallCard;->mPrimaryCallInfo:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .end local v0           #params:Landroid/widget/LinearLayout$LayoutParams;
    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 354
    .restart local v0       #params:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 355
    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 356
    iget-object v1, p0, Lcom/android/phone/CallCard;->mPrimaryCallInfo:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 357
    iget-object v1, p0, Lcom/android/phone/CallCard;->mPrimaryCallInfo:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setMinimumWidth(I)V

    .line 358
    iget-object v1, p0, Lcom/android/phone/CallCard;->mPrimaryCallStatus:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .end local v0           #params:Landroid/widget/LinearLayout$LayoutParams;
    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 359
    .restart local v0       #params:Landroid/widget/LinearLayout$LayoutParams;
    iget v1, p0, Lcom/android/phone/CallCard;->mDensity:F

    mul-float/2addr v1, v7

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 360
    iget-object v1, p0, Lcom/android/phone/CallCard;->mPrimaryCallStatus:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1

    .line 282
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static updateElapsedTimeWidget(Landroid/widget/TextView;J)V
    .locals 2
    .parameter "elapsedTime"
    .parameter "timeElapsed"

    .prologue
    .line 941
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 942
    const-string v0, ""

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 946
    :goto_0
    return-void

    .line 944
    :cond_0
    invoke-static {p1, p2}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateNoCall()V
    .locals 0

    .prologue
    .line 889
    return-void
.end method

.method private updatePhoneNumberField(Lcom/android/internal/telephony/Call;Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 7
    .parameter "call"
    .parameter "phoneNumber"
    .parameter "number"

    .prologue
    .line 790
    invoke-static {p1}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 791
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 792
    .local v0, c:Lcom/android/internal/telephony/Connection;
    if-nez v0, :cond_0

    const/4 v3, 0x0

    move-object v1, v3

    .line 793
    .local v1, s:Ljava/lang/String;
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p3, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 794
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2, p3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 795
    .local v2, ssb:Landroid/text/SpannableStringBuilder;
    invoke-direct {p0}, Lcom/android/phone/CallCard;->createPostDialTextAppearanceSpan()Landroid/text/style/TextAppearanceSpan;

    move-result-object v3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x21

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 798
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 803
    .end local v0           #c:Lcom/android/internal/telephony/Connection;
    .end local v1           #s:Ljava/lang/String;
    .end local v2           #ssb:Landroid/text/SpannableStringBuilder;
    :goto_1
    return-void

    .line 792
    .restart local v0       #c:Lcom/android/internal/telephony/Connection;
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getRemainingPostDialString()Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    goto :goto_0

    .line 802
    .end local v0           #c:Lcom/android/internal/telephony/Connection;
    :cond_1
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private updatePrimaryCall(Lcom/android/internal/telephony/Call;)V
    .locals 11
    .parameter "call"

    .prologue
    .line 511
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPrimaryConferenceManageButtonTwoCalls:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 513
    iget-object v2, p0, Lcom/android/phone/CallCard;->mPrimaryName:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/phone/CallCard;->mPrimaryPhoneNumber:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/phone/CallCard;->mPrimaryTelocation:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/phone/CallCard;->mPrimaryConferenceManageButtonSingleCall:Landroid/widget/Button;

    iget-object v6, p0, Lcom/android/phone/CallCard;->mPrimaryCallStatus:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/phone/CallCard;->mPrimaryCallStatusImage:Landroid/widget/ImageView;

    iget-object v8, p0, Lcom/android/phone/CallCard;->mPrimaryElapsedTime:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/android/phone/CallCard;->mPrimaryCallTime:Lcom/android/phone/CallTime;

    const/4 v10, 0x1

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v10}, Lcom/android/phone/CallCard;->updateCall(Lcom/android/internal/telephony/Call;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/Button;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/TextView;Lcom/android/phone/CallTime;Z)V

    .line 517
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPrimaryCallCard:Lcom/android/phone/AlphaCallCardLayout;

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Lcom/android/phone/AlphaCallCardLayout;->setAlpha(F)V

    .line 518
    return-void
.end method

.method private updateRingingCall(Lcom/android/internal/telephony/Call;)V
    .locals 0
    .parameter "call"

    .prologue
    .line 483
    invoke-direct {p0, p1}, Lcom/android/phone/CallCard;->updatePrimaryCall(Lcom/android/internal/telephony/Call;)V

    .line 484
    return-void
.end method

.method private updateTwoCalls(Lcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Call;Z)V
    .locals 11
    .parameter "firstCall"
    .parameter "secondCall"
    .parameter "isFirstCallFrontground"

    .prologue
    .line 489
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPrimaryConferenceManageButtonSingleCall:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 492
    iget-object v2, p0, Lcom/android/phone/CallCard;->mPrimaryName:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/phone/CallCard;->mPrimaryPhoneNumber:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/phone/CallCard;->mPrimaryTelocation:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/phone/CallCard;->mPrimaryConferenceManageButtonTwoCalls:Landroid/widget/Button;

    iget-object v6, p0, Lcom/android/phone/CallCard;->mPrimaryCallStatus:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/phone/CallCard;->mPrimaryCallStatusImage:Landroid/widget/ImageView;

    iget-object v8, p0, Lcom/android/phone/CallCard;->mPrimaryElapsedTime:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/android/phone/CallCard;->mPrimaryCallTime:Lcom/android/phone/CallTime;

    move-object v0, p0

    move-object v1, p1

    move v10, p3

    invoke-direct/range {v0 .. v10}, Lcom/android/phone/CallCard;->updateCall(Lcom/android/internal/telephony/Call;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/Button;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/TextView;Lcom/android/phone/CallTime;Z)V

    .line 496
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPrimaryCallCard:Lcom/android/phone/AlphaCallCardLayout;

    if-eqz p3, :cond_0

    const/high16 v1, 0x3f80

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/phone/AlphaCallCardLayout;->setAlpha(F)V

    .line 498
    iget-object v2, p0, Lcom/android/phone/CallCard;->mSecondaryName:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/phone/CallCard;->mSecondaryPhoneNumber:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/phone/CallCard;->mSecondaryTelocation:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/phone/CallCard;->mSecondaryConferenceManageButton:Landroid/widget/Button;

    iget-object v6, p0, Lcom/android/phone/CallCard;->mSecondaryCallStatus:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/phone/CallCard;->mSecondaryCallStatusImage:Landroid/widget/ImageView;

    iget-object v8, p0, Lcom/android/phone/CallCard;->mSecondaryElapsedTime:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/android/phone/CallCard;->mSecondaryCallTime:Lcom/android/phone/CallTime;

    if-nez p3, :cond_1

    const/4 v0, 0x1

    move v10, v0

    :goto_1
    move-object v0, p0

    move-object v1, p2

    invoke-direct/range {v0 .. v10}, Lcom/android/phone/CallCard;->updateCall(Lcom/android/internal/telephony/Call;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/Button;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/TextView;Lcom/android/phone/CallTime;Z)V

    .line 502
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryCallCard:Lcom/android/phone/AlphaCallCardLayout;

    if-nez p3, :cond_2

    const/high16 v1, 0x3f80

    :goto_2
    invoke-virtual {v0, v1}, Lcom/android/phone/AlphaCallCardLayout;->setAlpha(F)V

    .line 503
    return-void

    .line 496
    :cond_0
    const/high16 v1, 0x3f00

    goto :goto_0

    .line 498
    :cond_1
    const/4 v0, 0x0

    move v10, v0

    goto :goto_1

    .line 502
    :cond_2
    const/high16 v1, 0x3f00

    goto :goto_2
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 1131
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhoto:Landroid/widget/ImageView;

    invoke-direct {p0, p1, v0}, Lcom/android/phone/CallCard;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 1133
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPrimaryName:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/phone/CallCard;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 1134
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPrimaryPhoneNumber:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/phone/CallCard;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 1135
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPrimaryTelocation:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/phone/CallCard;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 1136
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPrimaryCallStatus:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/phone/CallCard;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 1137
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPrimaryCallStatusImage:Landroid/widget/ImageView;

    invoke-direct {p0, p1, v0}, Lcom/android/phone/CallCard;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 1138
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPrimaryElapsedTime:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/phone/CallCard;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 1139
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPrimaryConferenceManageButtonSingleCall:Landroid/widget/Button;

    invoke-direct {p0, p1, v0}, Lcom/android/phone/CallCard;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 1140
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPrimaryConferenceManageButtonTwoCalls:Landroid/widget/Button;

    invoke-direct {p0, p1, v0}, Lcom/android/phone/CallCard;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 1142
    iget-object v0, p0, Lcom/android/phone/CallCard;->mExtraInfo:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/phone/CallCard;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 1144
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryName:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/phone/CallCard;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 1145
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryPhoneNumber:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/phone/CallCard;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 1146
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryTelocation:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/phone/CallCard;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 1147
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryCallStatus:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/phone/CallCard;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 1148
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryCallStatusImage:Landroid/widget/ImageView;

    invoke-direct {p0, p1, v0}, Lcom/android/phone/CallCard;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 1149
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryElapsedTime:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/phone/CallCard;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 1150
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryConferenceManageButton:Landroid/widget/Button;

    invoke-direct {p0, p1, v0}, Lcom/android/phone/CallCard;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 1151
    const/4 v0, 0x1

    return v0
.end method

.method public hideCallCardElements()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 1046
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPrimaryCallCard:Lcom/android/phone/AlphaCallCardLayout;

    invoke-virtual {v0, v1}, Lcom/android/phone/AlphaCallCardLayout;->setVisibility(I)V

    .line 1047
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryCallCard:Lcom/android/phone/AlphaCallCardLayout;

    invoke-virtual {v0, v1}, Lcom/android/phone/AlphaCallCardLayout;->setVisibility(I)V

    .line 1048
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPrimaryConferenceManageButtonSingleCall:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 1049
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhoto:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1050
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    .line 1054
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 1057
    sparse-switch v0, :sswitch_data_0

    .line 1067
    const-string v1, "CallCard"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onClick: unexpected click: View "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1070
    :goto_0
    return-void

    .line 1063
    :sswitch_0
    iget-object v0, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v1, 0x7f070016

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallScreen;->handleOnscreenButtonClick(I)V

    goto :goto_0

    .line 1057
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f070029 -> :sswitch_0
        0x7f07002e -> :sswitch_0
        0x7f070034 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onFinishInflate()V
    .locals 7

    .prologue
    const v6, 0x1050004

    const/16 v5, 0x30

    const/4 v4, 0x0

    .line 208
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 210
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 213
    .local v0, dm:Landroid/util/DisplayMetrics;
    new-instance v2, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/phone/CallCard;->mBigPhoto:Landroid/widget/ImageView;

    .line 214
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 215
    .local v1, params:Landroid/widget/FrameLayout$LayoutParams;
    iput v5, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 216
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    neg-int v2, v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 217
    iget-object v2, p0, Lcom/android/phone/CallCard;->mBigPhoto:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 218
    iget-object v2, p0, Lcom/android/phone/CallCard;->mBigPhoto:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 219
    iget-object v2, p0, Lcom/android/phone/CallCard;->mBigPhoto:Landroid/widget/ImageView;

    invoke-virtual {p0, v2, v4}, Lcom/android/phone/CallCard;->addView(Landroid/view/View;I)V

    .line 222
    new-instance v2, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/phone/CallCard;->mLockScreenWallpaper:Landroid/widget/ImageView;

    .line 223
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v2, v3, :cond_0

    .line 224
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    .end local v1           #params:Landroid/widget/FrameLayout$LayoutParams;
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 228
    .restart local v1       #params:Landroid/widget/FrameLayout$LayoutParams;
    :goto_0
    iput v5, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 229
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    neg-int v2, v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 230
    iget-object v2, p0, Lcom/android/phone/CallCard;->mLockScreenWallpaper:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 231
    iget-object v2, p0, Lcom/android/phone/CallCard;->mLockScreenWallpaper:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 232
    iget-object v2, p0, Lcom/android/phone/CallCard;->mLockScreenWallpaper:Landroid/widget/ImageView;

    invoke-virtual {p0, v2, v4}, Lcom/android/phone/CallCard;->addView(Landroid/view/View;I)V

    .line 234
    invoke-direct {p0}, Lcom/android/phone/CallCard;->refreshAfterInflate()V

    .line 235
    return-void

    .line 226
    :cond_0
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    .end local v1           #params:Landroid/widget/FrameLayout$LayoutParams;
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .restart local v1       #params:Landroid/widget/FrameLayout$LayoutParams;
    goto :goto_0
.end method

.method public onImageLoadComplete(ILjava/lang/Object;Landroid/widget/ImageView;Z)V
    .locals 6
    .parameter "token"
    .parameter "cookie"
    .parameter "iView"
    .parameter "imagePresent"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 916
    move-object v0, p2

    check-cast v0, Lcom/android/internal/telephony/CallerInfo;

    move-object v1, v0

    .line 917
    .local v1, info:Lcom/android/internal/telephony/CallerInfo;
    if-nez v1, :cond_1

    .line 933
    :cond_0
    :goto_0
    return-void

    .line 920
    :cond_1
    const/4 v2, 0x0

    .line 921
    .local v2, success:Z
    packed-switch p1, :pswitch_data_0

    .line 929
    :goto_1
    if-eqz v2, :cond_0

    .line 931
    iget-object v3, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v3, v3, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {p0, v3}, Lcom/android/phone/CallCard;->updateState(Lcom/android/internal/telephony/CallManager;)V

    goto :goto_0

    .line 923
    :pswitch_0
    iget-object v3, v1, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_2

    iget-boolean v3, v1, Lcom/android/internal/telephony/CallerInfo;->isCachedPhotoCurrent:Z

    if-eqz v3, :cond_2

    move v2, v5

    .line 924
    :goto_2
    goto :goto_1

    :cond_2
    move v2, v4

    .line 923
    goto :goto_2

    .line 926
    :pswitch_1
    iget-object v3, v1, Lcom/android/internal/telephony/CallerInfo;->cachedBigPhoto:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_3

    iget-boolean v3, v1, Lcom/android/internal/telephony/CallerInfo;->isCachedPhotoCurrent:Z

    if-eqz v3, :cond_3

    move v2, v5

    :goto_3
    goto :goto_1

    :cond_3
    move v2, v4

    goto :goto_3

    .line 921
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onQueryComplete(ILjava/lang/Object;Lcom/android/internal/telephony/CallerInfo;)V
    .locals 3
    .parameter "token"
    .parameter "cookie"
    .parameter "ci"

    .prologue
    .line 898
    instance-of v0, p2, Lcom/android/internal/telephony/Call;

    if-eqz v0, :cond_0

    .line 903
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast p2, Lcom/android/internal/telephony/Call;

    .end local p2
    invoke-virtual {p2}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, p0, v2}, Lcom/android/phone/PhoneUtils;->startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/PhoneUtils$CallerInfoToken;

    .line 905
    iget-object v0, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->updateState(Lcom/android/internal/telephony/CallManager;)V

    .line 907
    :cond_0
    return-void
.end method

.method setInCallScreenInstance(Lcom/android/phone/InCallScreen;)V
    .locals 0
    .parameter "inCallScreen"

    .prologue
    .line 193
    iput-object p1, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    .line 194
    return-void
.end method

.method stopTimer()V
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPrimaryCallTime:Lcom/android/phone/CallTime;

    invoke-virtual {v0}, Lcom/android/phone/CallTime;->cancelTimer()V

    .line 199
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryCallTime:Lcom/android/phone/CallTime;

    invoke-virtual {v0}, Lcom/android/phone/CallTime;->cancelTimer()V

    .line 200
    return-void
.end method

.method public updateForDigitPressed()V
    .locals 7

    .prologue
    .line 1076
    iget-object v3, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v3, v3, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    .line 1077
    .local v2, fgCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getDigitsPressed()Ljava/lang/String;

    move-result-object v1

    .line 1078
    .local v1, digits:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 1079
    iget-object v3, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v3, v3, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {p0, v3}, Lcom/android/phone/CallCard;->updateState(Lcom/android/internal/telephony/CallManager;)V

    .line 1095
    :goto_0
    return-void

    .line 1081
    :cond_0
    iget v3, p0, Lcom/android/phone/CallCard;->mState:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 1082
    iget-object v3, p0, Lcom/android/phone/CallCard;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1083
    iget-object v3, p0, Lcom/android/phone/CallCard;->mPrimaryName:Landroid/widget/TextView;

    invoke-direct {p0, v3, v1}, Lcom/android/phone/CallCard;->adaptiveTextSize(Landroid/widget/TextView;Ljava/lang/String;)V

    goto :goto_0

    .line 1085
    :cond_1
    iget-object v3, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v3, v3, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 1086
    .local v0, bgCall:Lcom/android/internal/telephony/Call;
    invoke-static {v2}, Lcom/android/phone/CallTime;->getCallDuration(Lcom/android/internal/telephony/Call;)J

    move-result-wide v3

    invoke-static {v0}, Lcom/android/phone/CallTime;->getCallDuration(Lcom/android/internal/telephony/Call;)J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-lez v3, :cond_2

    .line 1087
    iget-object v3, p0, Lcom/android/phone/CallCard;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1088
    iget-object v3, p0, Lcom/android/phone/CallCard;->mPrimaryName:Landroid/widget/TextView;

    invoke-direct {p0, v3, v1}, Lcom/android/phone/CallCard;->adaptiveTextSize(Landroid/widget/TextView;Ljava/lang/String;)V

    goto :goto_0

    .line 1090
    :cond_2
    iget-object v3, p0, Lcom/android/phone/CallCard;->mSecondaryName:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1091
    iget-object v3, p0, Lcom/android/phone/CallCard;->mSecondaryName:Landroid/widget/TextView;

    invoke-direct {p0, v3, v1}, Lcom/android/phone/CallCard;->adaptiveTextSize(Landroid/widget/TextView;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public updateForPostDialCharProcessed(Lcom/android/internal/telephony/Connection;)V
    .locals 11
    .parameter "c"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 771
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->isAlive()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    move-object v1, v5

    .line 772
    .local v1, call:Lcom/android/internal/telephony/Call;
    :goto_0
    if-eqz v1, :cond_0

    .line 773
    iget v5, p0, Lcom/android/phone/CallCard;->mState:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_2

    .line 774
    iget-object v5, p0, Lcom/android/phone/CallCard;->mPrimaryPhoneNumber:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/android/phone/CallCard;->getCallCardInfo(Lcom/android/internal/telephony/Call;)Lcom/android/phone/CallCard$CallCardInfo;

    move-result-object v6

    iget-object v6, v6, Lcom/android/phone/CallCard$CallCardInfo;->phoneNumber:Ljava/lang/String;

    invoke-direct {p0, v1, v5, v6}, Lcom/android/phone/CallCard;->updatePhoneNumberField(Lcom/android/internal/telephony/Call;Landroid/widget/TextView;Ljava/lang/String;)V

    .line 787
    :cond_0
    :goto_1
    return-void

    .line 771
    .end local v1           #call:Lcom/android/internal/telephony/Call;
    :cond_1
    const/4 v5, 0x0

    move-object v1, v5

    goto :goto_0

    .line 776
    .restart local v1       #call:Lcom/android/internal/telephony/Call;
    :cond_2
    iget-object v5, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v5, v5, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    .line 777
    .local v2, fgCall:Lcom/android/internal/telephony/Call;
    iget-object v5, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v5, v5, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 778
    .local v0, bgCall:Lcom/android/internal/telephony/Call;
    invoke-static {v2}, Lcom/android/phone/CallTime;->getCallDuration(Lcom/android/internal/telephony/Call;)J

    move-result-wide v5

    invoke-static {v0}, Lcom/android/phone/CallTime;->getCallDuration(Lcom/android/internal/telephony/Call;)J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-lez v5, :cond_5

    move v3, v10

    .line 779
    .local v3, isFgCallPrimary:Z
    :goto_2
    if-eqz v3, :cond_3

    if-eq v1, v2, :cond_4

    :cond_3
    if-nez v3, :cond_6

    if-ne v1, v0, :cond_6

    :cond_4
    move v4, v10

    .line 780
    .local v4, isPrimary:Z
    :goto_3
    if-eqz v4, :cond_7

    .line 781
    iget-object v5, p0, Lcom/android/phone/CallCard;->mPrimaryPhoneNumber:Landroid/widget/TextView;

    invoke-direct {p0, v2}, Lcom/android/phone/CallCard;->getCallCardInfo(Lcom/android/internal/telephony/Call;)Lcom/android/phone/CallCard$CallCardInfo;

    move-result-object v6

    iget-object v6, v6, Lcom/android/phone/CallCard$CallCardInfo;->phoneNumber:Ljava/lang/String;

    invoke-direct {p0, v2, v5, v6}, Lcom/android/phone/CallCard;->updatePhoneNumberField(Lcom/android/internal/telephony/Call;Landroid/widget/TextView;Ljava/lang/String;)V

    goto :goto_1

    .end local v3           #isFgCallPrimary:Z
    .end local v4           #isPrimary:Z
    :cond_5
    move v3, v9

    .line 778
    goto :goto_2

    .restart local v3       #isFgCallPrimary:Z
    :cond_6
    move v4, v9

    .line 779
    goto :goto_3

    .line 783
    .restart local v4       #isPrimary:Z
    :cond_7
    iget-object v5, p0, Lcom/android/phone/CallCard;->mSecondaryPhoneNumber:Landroid/widget/TextView;

    invoke-direct {p0, v2}, Lcom/android/phone/CallCard;->getCallCardInfo(Lcom/android/internal/telephony/Call;)Lcom/android/phone/CallCard$CallCardInfo;

    move-result-object v6

    iget-object v6, v6, Lcom/android/phone/CallCard$CallCardInfo;->phoneNumber:Ljava/lang/String;

    invoke-direct {p0, v2, v5, v6}, Lcom/android/phone/CallCard;->updatePhoneNumberField(Lcom/android/internal/telephony/Call;Landroid/widget/TextView;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public updateLockScreenWallpaper()V
    .locals 4

    .prologue
    .line 239
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "wallpaper"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/WallpaperManager;

    .line 240
    .local v1, wm:Landroid/app/WallpaperManager;
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v1}, Landroid/app/WallpaperManager;->getLockScreen()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 241
    .local v0, lockScreen:Landroid/graphics/drawable/Drawable;
    iget-object v2, p0, Lcom/android/phone/CallCard;->mLockScreenWallpaper:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 242
    return-void
.end method

.method updateState(Lcom/android/internal/telephony/CallManager;)V
    .locals 14
    .parameter "cm"

    .prologue
    const/16 v13, 0x13

    const/4 v12, 0x1

    const/4 v11, 0x0

    const/4 v10, 0x3

    .line 371
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    .line 372
    .local v4, ringingCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 373
    .local v1, fgCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 376
    .local v0, bgCall:Lcom/android/internal/telephony/Call;
    const/4 v2, 0x0

    .line 377
    .local v2, firstCall:Lcom/android/internal/telephony/Call;
    const/4 v5, 0x0

    .line 379
    .local v5, secondCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v6, v7, :cond_3

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v6

    if-nez v6, :cond_3

    .line 388
    iput v12, p0, Lcom/android/phone/CallCard;->mState:I

    .line 389
    move-object v2, v4

    .line 436
    :goto_0
    invoke-direct {p0}, Lcom/android/phone/CallCard;->updateCallCard()V

    .line 438
    iget v6, p0, Lcom/android/phone/CallCard;->mState:I

    packed-switch v6, :pswitch_data_0

    .line 449
    invoke-direct {p0}, Lcom/android/phone/CallCard;->updateNoCall()V

    .line 456
    :goto_1
    iget-object v6, p0, Lcom/android/phone/CallCard;->mPhoto:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getVisibility()I

    move-result v6

    if-eqz v6, :cond_0

    iget v6, p0, Lcom/android/phone/CallCard;->mState:I

    if-eq v6, v10, :cond_0

    if-eqz v2, :cond_a

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 459
    :cond_0
    iget-object v6, p0, Lcom/android/phone/CallCard;->mPrimaryCallerInfo:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v13}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 460
    iget v6, p0, Lcom/android/phone/CallCard;->mState:I

    if-eq v6, v10, :cond_1

    .line 461
    iget-object v6, p0, Lcom/android/phone/CallCard;->mPrimaryCallInfo:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 462
    .local v3, params:Landroid/widget/LinearLayout$LayoutParams;
    iput v13, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 463
    iget-object v6, p0, Lcom/android/phone/CallCard;->mPrimaryCallInfo:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 469
    .end local v3           #params:Landroid/widget/LinearLayout$LayoutParams;
    :cond_1
    :goto_2
    iget-object v6, p0, Lcom/android/phone/CallCard;->mPrimaryName:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/phone/CallCard;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lcom/android/phone/CallCard;->adaptiveTextSize(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 470
    iget v6, p0, Lcom/android/phone/CallCard;->mState:I

    if-ne v6, v10, :cond_2

    .line 471
    iget-object v6, p0, Lcom/android/phone/CallCard;->mSecondaryName:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/phone/CallCard;->mSecondaryName:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lcom/android/phone/CallCard;->adaptiveTextSize(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 473
    :cond_2
    return-void

    .line 391
    :cond_3
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v6, v7, :cond_5

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v6, v7, :cond_5

    .line 402
    iput v10, p0, Lcom/android/phone/CallCard;->mState:I

    .line 403
    invoke-static {v1}, Lcom/android/phone/CallTime;->getCallDuration(Lcom/android/internal/telephony/Call;)J

    move-result-wide v6

    invoke-static {v0}, Lcom/android/phone/CallTime;->getCallDuration(Lcom/android/internal/telephony/Call;)J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-lez v6, :cond_4

    .line 404
    move-object v2, v1

    .line 405
    move-object v5, v0

    goto :goto_0

    .line 407
    :cond_4
    move-object v2, v0

    .line 408
    move-object v5, v1

    goto :goto_0

    .line 411
    :cond_5
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-ne v6, v7, :cond_6

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v6, v7, :cond_8

    .line 413
    :cond_6
    const/4 v6, 0x2

    iput v6, p0, Lcom/android/phone/CallCard;->mState:I

    .line 414
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v6, v7, :cond_7

    move-object v2, v1

    :goto_3
    goto/16 :goto_0

    :cond_7
    move-object v2, v0

    goto :goto_3

    .line 432
    :cond_8
    iput v11, p0, Lcom/android/phone/CallCard;->mState:I

    goto/16 :goto_0

    .line 440
    :pswitch_0
    invoke-direct {p0, v4}, Lcom/android/phone/CallCard;->updateRingingCall(Lcom/android/internal/telephony/Call;)V

    goto/16 :goto_1

    .line 443
    :pswitch_1
    if-ne v2, v1, :cond_9

    move v6, v12

    :goto_4
    invoke-direct {p0, v2, v5, v6}, Lcom/android/phone/CallCard;->updateTwoCalls(Lcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Call;Z)V

    goto/16 :goto_1

    :cond_9
    move v6, v11

    goto :goto_4

    .line 446
    :pswitch_2
    invoke-direct {p0, v2}, Lcom/android/phone/CallCard;->updatePrimaryCall(Lcom/android/internal/telephony/Call;)V

    goto/16 :goto_1

    .line 466
    :cond_a
    iget-object v6, p0, Lcom/android/phone/CallCard;->mPrimaryCallerInfo:Landroid/widget/LinearLayout;

    const/16 v7, 0x11

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setGravity(I)V

    goto/16 :goto_2

    .line 438
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
