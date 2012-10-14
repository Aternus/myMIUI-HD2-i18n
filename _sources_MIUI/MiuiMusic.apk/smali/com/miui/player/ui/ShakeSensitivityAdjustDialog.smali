.class public Lcom/miui/player/ui/ShakeSensitivityAdjustDialog;
.super Landroid/preference/DialogPreference;
.source "ShakeSensitivityAdjustDialog.java"


# instance fields
.field private MAX_SENSITIVITY:I

.field private MIN_SENSITIVITY:I

.field private mContext:Landroid/content/Context;

.field private mProgress:I

.field private mSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    const/16 v0, 0x14

    iput v0, p0, Lcom/miui/player/ui/ShakeSensitivityAdjustDialog;->MAX_SENSITIVITY:I

    .line 17
    const/4 v0, 0x5

    iput v0, p0, Lcom/miui/player/ui/ShakeSensitivityAdjustDialog;->MIN_SENSITIVITY:I

    .line 48
    new-instance v0, Lcom/miui/player/ui/ShakeSensitivityAdjustDialog$1;

    invoke-direct {v0, p0}, Lcom/miui/player/ui/ShakeSensitivityAdjustDialog$1;-><init>(Lcom/miui/player/ui/ShakeSensitivityAdjustDialog;)V

    iput-object v0, p0, Lcom/miui/player/ui/ShakeSensitivityAdjustDialog;->mSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 21
    const v0, 0x7f030034

    invoke-virtual {p0, v0}, Lcom/miui/player/ui/ShakeSensitivityAdjustDialog;->setDialogLayoutResource(I)V

    .line 22
    const v0, 0x7f080079

    invoke-virtual {p0, v0}, Lcom/miui/player/ui/ShakeSensitivityAdjustDialog;->setDialogTitle(I)V

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/player/ui/ShakeSensitivityAdjustDialog;->mProgress:I

    .line 24
    return-void
.end method

.method static synthetic access$002(Lcom/miui/player/ui/ShakeSensitivityAdjustDialog;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13
    iput p1, p0, Lcom/miui/player/ui/ShakeSensitivityAdjustDialog;->mProgress:I

    return p1
.end method

.method static synthetic access$100(Lcom/miui/player/ui/ShakeSensitivityAdjustDialog;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    iget v0, p0, Lcom/miui/player/ui/ShakeSensitivityAdjustDialog;->MIN_SENSITIVITY:I

    return v0
.end method

.method static synthetic access$200(Lcom/miui/player/ui/ShakeSensitivityAdjustDialog;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    iget v0, p0, Lcom/miui/player/ui/ShakeSensitivityAdjustDialog;->MAX_SENSITIVITY:I

    return v0
.end method


# virtual methods
.method protected onBindDialogView(Landroid/view/View;)V
    .locals 6
    .parameter "view"

    .prologue
    .line 28
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onBindDialogView(Landroid/view/View;)V

    .line 29
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 30
    .local v0, context:Landroid/content/Context;
    const v3, 0x7f0c00ac

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    .line 31
    .local v1, seekBar:Landroid/widget/SeekBar;
    iget-object v3, p0, Lcom/miui/player/ui/ShakeSensitivityAdjustDialog;->mSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v1, v3}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 32
    const/16 v3, 0x64

    invoke-virtual {v1, v3}, Landroid/widget/SeekBar;->setMax(I)V

    .line 33
    const-string v3, "shake_degree"

    invoke-static {v0, v3}, Lcom/miui/player/ui/PreferencesActivity;->getPrefAsInteger(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 35
    .local v2, sensitivity:I
    iget v3, p0, Lcom/miui/player/ui/ShakeSensitivityAdjustDialog;->MIN_SENSITIVITY:I

    sub-int v3, v2, v3

    mul-int/lit8 v3, v3, 0x64

    iget v4, p0, Lcom/miui/player/ui/ShakeSensitivityAdjustDialog;->MAX_SENSITIVITY:I

    iget v5, p0, Lcom/miui/player/ui/ShakeSensitivityAdjustDialog;->MIN_SENSITIVITY:I

    sub-int/2addr v4, v5

    div-int/2addr v3, v4

    iput v3, p0, Lcom/miui/player/ui/ShakeSensitivityAdjustDialog;->mProgress:I

    .line 36
    iget v3, p0, Lcom/miui/player/ui/ShakeSensitivityAdjustDialog;->mProgress:I

    invoke-virtual {v1, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 37
    iput-object v0, p0, Lcom/miui/player/ui/ShakeSensitivityAdjustDialog;->mContext:Landroid/content/Context;

    .line 38
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 42
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/miui/player/ui/ShakeSensitivityAdjustDialog;->mContext:Landroid/content/Context;

    const-string v1, "shake_degree"

    iget v2, p0, Lcom/miui/player/ui/ShakeSensitivityAdjustDialog;->mProgress:I

    invoke-static {v0, v1, v2}, Lcom/miui/player/ui/PreferencesActivity;->setPrefAsInteger(Landroid/content/Context;Ljava/lang/String;I)V

    .line 45
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/preference/DialogPreference;->onClick(Landroid/content/DialogInterface;I)V

    .line 46
    return-void
.end method
