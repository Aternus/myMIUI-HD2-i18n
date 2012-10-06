.class public Lnet/cactii/flash2/SeekBarPreference;
.super Landroid/preference/DialogPreference;
.source "SeekBarPreference.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDefault:I

.field private mDialogMessage:Ljava/lang/String;

.field private mMax:I

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mSplashText:Landroid/widget/TextView;

.field private mSuffix:Ljava/lang/String;

.field private mValue:I

.field private mValueText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    const-string v2, "http://schemas.android.com/apk/res/android"

    .line 33
    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    iput v1, p0, Lnet/cactii/flash2/SeekBarPreference;->mValue:I

    .line 34
    iput-object p1, p0, Lnet/cactii/flash2/SeekBarPreference;->mContext:Landroid/content/Context;

    .line 36
    const-string v0, "http://schemas.android.com/apk/res/android"

    const-string v0, "dialogMessage"

    invoke-interface {p2, v2, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/cactii/flash2/SeekBarPreference;->mDialogMessage:Ljava/lang/String;

    .line 37
    const-string v0, "http://schemas.android.com/apk/res/android"

    const-string v0, "text"

    invoke-interface {p2, v2, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/cactii/flash2/SeekBarPreference;->mSuffix:Ljava/lang/String;

    .line 38
    const-string v0, "http://schemas.android.com/apk/res/android"

    const-string v0, "defaultValue"

    invoke-interface {p2, v2, v0, v1}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lnet/cactii/flash2/SeekBarPreference;->mDefault:I

    .line 39
    const-string v0, "http://schemas.android.com/apk/res/android"

    const-string v0, "max"

    const/16 v1, 0x64

    invoke-interface {p2, v2, v0, v1}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lnet/cactii/flash2/SeekBarPreference;->mMax:I

    .line 41
    return-void
.end method


# virtual methods
.method protected onBindDialogView(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 77
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onBindDialogView(Landroid/view/View;)V

    .line 78
    iget-object v0, p0, Lnet/cactii/flash2/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lnet/cactii/flash2/SeekBarPreference;->mMax:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 79
    iget-object v0, p0, Lnet/cactii/flash2/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lnet/cactii/flash2/SeekBarPreference;->mValue:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 80
    return-void
.end method

.method protected onCreateDialogView()Landroid/view/View;
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, -0x1

    const/4 v4, -0x2

    const/4 v3, 0x6

    .line 46
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lnet/cactii/flash2/SeekBarPreference;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 47
    .local v0, layout:Landroid/widget/LinearLayout;
    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 48
    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 50
    new-instance v2, Landroid/widget/TextView;

    iget-object v3, p0, Lnet/cactii/flash2/SeekBarPreference;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lnet/cactii/flash2/SeekBarPreference;->mSplashText:Landroid/widget/TextView;

    .line 51
    iget-object v2, p0, Lnet/cactii/flash2/SeekBarPreference;->mDialogMessage:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 52
    iget-object v2, p0, Lnet/cactii/flash2/SeekBarPreference;->mSplashText:Landroid/widget/TextView;

    iget-object v3, p0, Lnet/cactii/flash2/SeekBarPreference;->mDialogMessage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    :cond_0
    iget-object v2, p0, Lnet/cactii/flash2/SeekBarPreference;->mSplashText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 55
    new-instance v2, Landroid/widget/TextView;

    iget-object v3, p0, Lnet/cactii/flash2/SeekBarPreference;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lnet/cactii/flash2/SeekBarPreference;->mValueText:Landroid/widget/TextView;

    .line 56
    iget-object v2, p0, Lnet/cactii/flash2/SeekBarPreference;->mValueText:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 57
    iget-object v2, p0, Lnet/cactii/flash2/SeekBarPreference;->mValueText:Landroid/widget/TextView;

    const/high16 v3, 0x4200

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 58
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 60
    .local v1, params:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v2, p0, Lnet/cactii/flash2/SeekBarPreference;->mValueText:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 62
    new-instance v2, Landroid/widget/SeekBar;

    iget-object v3, p0, Lnet/cactii/flash2/SeekBarPreference;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lnet/cactii/flash2/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    .line 63
    iget-object v2, p0, Lnet/cactii/flash2/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 64
    iget-object v2, p0, Lnet/cactii/flash2/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 67
    invoke-virtual {p0}, Lnet/cactii/flash2/SeekBarPreference;->shouldPersist()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 68
    iget v2, p0, Lnet/cactii/flash2/SeekBarPreference;->mDefault:I

    invoke-virtual {p0, v2}, Lnet/cactii/flash2/SeekBarPreference;->getPersistedInt(I)I

    move-result v2

    iput v2, p0, Lnet/cactii/flash2/SeekBarPreference;->mValue:I

    .line 70
    :cond_1
    iget-object v2, p0, Lnet/cactii/flash2/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget v3, p0, Lnet/cactii/flash2/SeekBarPreference;->mMax:I

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setMax(I)V

    .line 71
    iget-object v2, p0, Lnet/cactii/flash2/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget v3, p0, Lnet/cactii/flash2/SeekBarPreference;->mValue:I

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 72
    return-object v0
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3
    .parameter "seek"
    .parameter "value"
    .parameter "fromTouch"

    .prologue
    .line 92
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 93
    .local v0, t:Ljava/lang/String;
    iget-object v1, p0, Lnet/cactii/flash2/SeekBarPreference;->mValueText:Landroid/widget/TextView;

    iget-object v2, p0, Lnet/cactii/flash2/SeekBarPreference;->mSuffix:Ljava/lang/String;

    if-nez v2, :cond_1

    move-object v2, v0

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    invoke-virtual {p0}, Lnet/cactii/flash2/SeekBarPreference;->shouldPersist()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 95
    invoke-virtual {p0, p2}, Lnet/cactii/flash2/SeekBarPreference;->persistInt(I)Z

    .line 96
    :cond_0
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p0, v1}, Lnet/cactii/flash2/SeekBarPreference;->callChangeListener(Ljava/lang/Object;)Z

    .line 97
    return-void

    .line 93
    :cond_1
    iget-object v2, p0, Lnet/cactii/flash2/SeekBarPreference;->mSuffix:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 1
    .parameter "restore"
    .parameter "defaultValue"

    .prologue
    .line 84
    invoke-super {p0, p1, p2}, Landroid/preference/DialogPreference;->onSetInitialValue(ZLjava/lang/Object;)V

    .line 85
    if-eqz p1, :cond_1

    .line 86
    invoke-virtual {p0}, Lnet/cactii/flash2/SeekBarPreference;->shouldPersist()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lnet/cactii/flash2/SeekBarPreference;->mDefault:I

    invoke-virtual {p0, v0}, Lnet/cactii/flash2/SeekBarPreference;->getPersistedInt(I)I

    move-result v0

    :goto_0
    iput v0, p0, Lnet/cactii/flash2/SeekBarPreference;->mValue:I

    .line 89
    .end local p2
    :goto_1
    return-void

    .line 86
    .restart local p2
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 88
    :cond_1
    check-cast p2, Ljava/lang/Integer;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lnet/cactii/flash2/SeekBarPreference;->mValue:I

    goto :goto_1
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seek"

    .prologue
    .line 100
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seek"

    .prologue
    .line 103
    return-void
.end method
