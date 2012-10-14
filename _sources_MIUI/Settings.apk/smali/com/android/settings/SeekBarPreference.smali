.class public Lcom/android/settings/SeekBarPreference;
.super Landroid/preference/Preference;
.source "SeekBarPreference.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field private mLeftIcon:Landroid/graphics/drawable/Drawable;

.field private mLeftText:Ljava/lang/String;

.field private mMax:I

.field private mProgress:I

.field private mRightIcon:Landroid/graphics/drawable/Drawable;

.field private mRightText:Ljava/lang/String;

.field mSeekBar:Landroid/widget/SeekBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 26
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/SeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v2, 0x0

    .line 30
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    const v1, 0x7f03004b

    invoke-virtual {p0, v1}, Lcom/android/settings/SeekBarPreference;->setLayoutResource(I)V

    .line 32
    sget-object v1, Lcom/android/settings/R$styleable;->SeekBarPreference:[I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 33
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/SeekBarPreference;->mLeftIcon:Landroid/graphics/drawable/Drawable;

    .line 34
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/SeekBarPreference;->mRightIcon:Landroid/graphics/drawable/Drawable;

    .line 35
    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 75
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 76
    iget-object v0, p0, Lcom/android/settings/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/android/settings/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/android/settings/SeekBarPreference;->mProgress:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 79
    :cond_0
    return-void
.end method

.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "parent"

    .prologue
    const/4 v6, 0x0

    .line 83
    invoke-super {p0, p1}, Landroid/preference/Preference;->onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 85
    .local v4, view:Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/settings/SeekBarPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    .line 86
    .local v2, title:Ljava/lang/CharSequence;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 87
    const v5, 0x7f0c0007

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 88
    .local v3, titleView:Landroid/widget/TextView;
    if-eqz v3, :cond_0

    .line 89
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 94
    .end local v3           #titleView:Landroid/widget/TextView;
    :cond_0
    const v5, 0x7f0c00f6

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 95
    .local v0, leftView:Landroid/widget/TextView;
    const v5, 0x7f0c00f8

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 96
    .local v1, rightView:Landroid/widget/TextView;
    const v5, 0x7f0c00f7

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/SeekBar;

    iput-object v5, p0, Lcom/android/settings/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    .line 98
    if-eqz v0, :cond_2

    .line 99
    iget-object v5, p0, Lcom/android/settings/SeekBarPreference;->mLeftIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_1

    .line 100
    iget-object v5, p0, Lcom/android/settings/SeekBarPreference;->mLeftIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v5, v6, v6, v6}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 102
    :cond_1
    iget-object v5, p0, Lcom/android/settings/SeekBarPreference;->mLeftText:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    :cond_2
    if-eqz v1, :cond_4

    .line 106
    iget-object v5, p0, Lcom/android/settings/SeekBarPreference;->mRightIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_3

    .line 107
    iget-object v5, p0, Lcom/android/settings/SeekBarPreference;->mRightIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v5, v6, v6, v6}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 109
    :cond_3
    iget-object v5, p0, Lcom/android/settings/SeekBarPreference;->mRightText:Ljava/lang/String;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    :cond_4
    iget-object v5, p0, Lcom/android/settings/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v5, :cond_5

    .line 113
    iget-object v5, p0, Lcom/android/settings/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget v6, p0, Lcom/android/settings/SeekBarPreference;->mMax:I

    invoke-virtual {v5, v6}, Landroid/widget/SeekBar;->setMax(I)V

    .line 114
    iget-object v5, p0, Lcom/android/settings/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v5, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 117
    :cond_5
    return-object v4
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 39
    iput p2, p0, Lcom/android/settings/SeekBarPreference;->mProgress:I

    .line 40
    if-nez p3, :cond_0

    .line 45
    :goto_0
    return-void

    .line 44
    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/SeekBarPreference;->callChangeListener(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 49
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 53
    return-void
.end method

.method public setMax(I)V
    .locals 0
    .parameter "max"

    .prologue
    .line 56
    iput p1, p0, Lcom/android/settings/SeekBarPreference;->mMax:I

    .line 57
    return-void
.end method

.method public setProgress(I)V
    .locals 1
    .parameter "progress"

    .prologue
    .line 60
    iget v0, p0, Lcom/android/settings/SeekBarPreference;->mProgress:I

    if-eq v0, p1, :cond_0

    .line 61
    iput p1, p0, Lcom/android/settings/SeekBarPreference;->mProgress:I

    .line 62
    iget-object v0, p0, Lcom/android/settings/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/android/settings/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 66
    :cond_0
    return-void
.end method

.method public setText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "left"
    .parameter "right"

    .prologue
    .line 69
    iput-object p1, p0, Lcom/android/settings/SeekBarPreference;->mLeftText:Ljava/lang/String;

    .line 70
    iput-object p2, p0, Lcom/android/settings/SeekBarPreference;->mRightText:Ljava/lang/String;

    .line 71
    return-void
.end method
