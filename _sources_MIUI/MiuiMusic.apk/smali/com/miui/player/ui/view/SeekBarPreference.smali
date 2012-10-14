.class public Lcom/miui/player/ui/view/SeekBarPreference;
.super Landroid/preference/Preference;
.source "SeekBarPreference.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# static fields
.field private static final K_SIZE:I = 0x400

.field private static final MAX_SIZE:I = 0x200000

.field private static final MIN_SIZE:I = 0x19000


# instance fields
.field private mLeftText:Ljava/lang/String;

.field private mMax:I

.field private mMusicSizeText:Landroid/widget/TextView;

.field private mProgress:I

.field private mRightText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 34
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/player/ui/view/SeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    const v2, 0x7f030030

    invoke-virtual {p0, v2}, Lcom/miui/player/ui/view/SeekBarPreference;->setLayoutResource(I)V

    .line 40
    const v2, 0x7f0800a8

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 41
    .local v1, filterMin:Ljava/lang/String;
    const v2, 0x7f0800a9

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 42
    .local v0, filterMax:Ljava/lang/String;
    invoke-virtual {p0, v1, v0}, Lcom/miui/player/ui/view/SeekBarPreference;->setText(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method private getMusicSize(I)Ljava/lang/String;
    .locals 3
    .parameter "value"

    .prologue
    .line 81
    const-string v0, ""

    .line 82
    .local v0, musicSize:Ljava/lang/String;
    const v1, 0x19000

    if-lt p1, v1, :cond_0

    .line 83
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit16 v2, p1, 0x200

    div-int/lit16 v2, v2, 0x400

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "K"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 87
    :goto_0
    return-object v0

    .line 85
    :cond_0
    const-string v0, "0K"

    goto :goto_0
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    const/high16 v4, 0x20

    .line 92
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 93
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 94
    .local v0, context:Landroid/content/Context;
    const v3, 0x7f0c00ac

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SeekBar;

    .line 95
    .local v2, seekBar:Landroid/widget/SeekBar;
    const-string v3, "min_music_filter_size"

    invoke-static {v0, v3}, Lcom/miui/player/ui/PreferencesActivity;->getPrefAsInteger(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 96
    .local v1, progress:I
    invoke-virtual {v2, v4}, Landroid/widget/SeekBar;->setMax(I)V

    .line 97
    iput v1, p0, Lcom/miui/player/ui/view/SeekBarPreference;->mProgress:I

    .line 98
    iget v3, p0, Lcom/miui/player/ui/view/SeekBarPreference;->mProgress:I

    if-le v3, v4, :cond_0

    .line 99
    iput v4, p0, Lcom/miui/player/ui/view/SeekBarPreference;->mProgress:I

    .line 102
    :cond_0
    iget v3, p0, Lcom/miui/player/ui/view/SeekBarPreference;->mProgress:I

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 103
    iget-object v3, p0, Lcom/miui/player/ui/view/SeekBarPreference;->mMusicSizeText:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/miui/player/ui/view/SeekBarPreference;->getMusicSize(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    return-void
.end method

.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "parent"

    .prologue
    .line 108
    invoke-super {p0, p1}, Landroid/preference/Preference;->onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 110
    .local v3, view:Landroid/view/View;
    const v4, 0x7f0c00ab

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 111
    .local v0, leftView:Landroid/widget/TextView;
    const v4, 0x7f0c00ad

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 112
    .local v1, rightView:Landroid/widget/TextView;
    const v4, 0x7f0c00ac

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SeekBar;

    .line 113
    .local v2, seekBar:Landroid/widget/SeekBar;
    const v4, 0x7f0c00aa

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/miui/player/ui/view/SeekBarPreference;->mMusicSizeText:Landroid/widget/TextView;

    .line 114
    if-eqz v0, :cond_0

    .line 115
    iget-object v4, p0, Lcom/miui/player/ui/view/SeekBarPreference;->mLeftText:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    :cond_0
    if-eqz v1, :cond_1

    .line 120
    iget-object v4, p0, Lcom/miui/player/ui/view/SeekBarPreference;->mRightText:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    :cond_1
    if-eqz v2, :cond_2

    .line 124
    iget v4, p0, Lcom/miui/player/ui/view/SeekBarPreference;->mMax:I

    invoke-virtual {v2, v4}, Landroid/widget/SeekBar;->setMax(I)V

    .line 125
    invoke-virtual {v2, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 128
    :cond_2
    return-object v3
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 47
    iput p2, p0, Lcom/miui/player/ui/view/SeekBarPreference;->mProgress:I

    .line 49
    if-nez p3, :cond_0

    .line 55
    :goto_0
    return-void

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/miui/player/ui/view/SeekBarPreference;->mMusicSizeText:Landroid/widget/TextView;

    iget v1, p0, Lcom/miui/player/ui/view/SeekBarPreference;->mProgress:I

    invoke-direct {p0, v1}, Lcom/miui/player/ui/view/SeekBarPreference;->getMusicSize(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 59
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3
    .parameter "seekBar"

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/miui/player/ui/view/SeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "min_music_filter_size"

    iget v2, p0, Lcom/miui/player/ui/view/SeekBarPreference;->mProgress:I

    invoke-static {v0, v1, v2}, Lcom/miui/player/ui/PreferencesActivity;->setPrefAsInteger(Landroid/content/Context;Ljava/lang/String;I)V

    .line 64
    iget v0, p0, Lcom/miui/player/ui/view/SeekBarPreference;->mProgress:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/player/ui/view/SeekBarPreference;->callChangeListener(Ljava/lang/Object;)Z

    .line 65
    return-void
.end method

.method public setMax(I)V
    .locals 0
    .parameter "max"

    .prologue
    .line 68
    iput p1, p0, Lcom/miui/player/ui/view/SeekBarPreference;->mMax:I

    .line 69
    return-void
.end method

.method public setProgress(I)V
    .locals 0
    .parameter "progress"

    .prologue
    .line 72
    iput p1, p0, Lcom/miui/player/ui/view/SeekBarPreference;->mProgress:I

    .line 73
    return-void
.end method

.method public setText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "left"
    .parameter "right"

    .prologue
    .line 76
    iput-object p1, p0, Lcom/miui/player/ui/view/SeekBarPreference;->mLeftText:Ljava/lang/String;

    .line 77
    iput-object p2, p0, Lcom/miui/player/ui/view/SeekBarPreference;->mRightText:Ljava/lang/String;

    .line 78
    return-void
.end method
