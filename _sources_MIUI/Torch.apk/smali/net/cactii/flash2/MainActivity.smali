.class public Lnet/cactii/flash2/MainActivity;
.super Landroid/app/Activity;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# static fields
.field private static useBrightSetting:Z


# instance fields
.field private bright:Z

.field private buttonBright:Landroid/widget/CheckBox;

.field private buttonStrobe:Landroid/widget/CheckBox;

.field private context:Landroid/content/Context;

.field private labelOff:Ljava/lang/String;

.field private labelOn:Ljava/lang/String;

.field private mMessage:Landroid/widget/TextView;

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mPrefsEditor:Landroid/content/SharedPreferences$Editor;

.field private mStateReceiver:Landroid/content/BroadcastReceiver;

.field private mTorch:Landroid/widget/LinearLayout;

.field private mTorchLight:Landroid/widget/ImageView;

.field private mTorchOn:Z

.field private mVibrator:Landroid/os/Vibrator;

.field private mWidgetProvider:Lnet/cactii/flash2/TorchWidgetProvider;

.field private slider:Landroid/widget/SeekBar;

.field private strobeLabel:Landroid/widget/TextView;

.field private strobeperiod:I

.field private vibratePatternOff:[B

.field private vibratePatternOn:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 77
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "crespo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lnet/cactii/flash2/MainActivity;->useBrightSetting:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 38
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 71
    iput-object v0, p0, Lnet/cactii/flash2/MainActivity;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    .line 74
    iput-object v0, p0, Lnet/cactii/flash2/MainActivity;->labelOn:Ljava/lang/String;

    .line 75
    iput-object v0, p0, Lnet/cactii/flash2/MainActivity;->labelOff:Ljava/lang/String;

    .line 282
    new-instance v0, Lnet/cactii/flash2/MainActivity$6;

    invoke-direct {v0, p0}, Lnet/cactii/flash2/MainActivity$6;-><init>(Lnet/cactii/flash2/MainActivity;)V

    iput-object v0, p0, Lnet/cactii/flash2/MainActivity;->mStateReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lnet/cactii/flash2/MainActivity;)Landroid/content/SharedPreferences;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lnet/cactii/flash2/MainActivity;->mPrefs:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$102(Lnet/cactii/flash2/MainActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-boolean p1, p0, Lnet/cactii/flash2/MainActivity;->bright:Z

    return p1
.end method

.method static synthetic access$200(Lnet/cactii/flash2/MainActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lnet/cactii/flash2/MainActivity;->openBrightDialog()V

    return-void
.end method

.method static synthetic access$300(Lnet/cactii/flash2/MainActivity;)Landroid/content/SharedPreferences$Editor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lnet/cactii/flash2/MainActivity;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    return-object v0
.end method

.method static synthetic access$400(Lnet/cactii/flash2/MainActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget v0, p0, Lnet/cactii/flash2/MainActivity;->strobeperiod:I

    return v0
.end method

.method static synthetic access$402(Lnet/cactii/flash2/MainActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput p1, p0, Lnet/cactii/flash2/MainActivity;->strobeperiod:I

    return p1
.end method

.method static synthetic access$500(Lnet/cactii/flash2/MainActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lnet/cactii/flash2/MainActivity;->strobeLabel:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$600(Lnet/cactii/flash2/MainActivity;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lnet/cactii/flash2/MainActivity;->buttonBright:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$700(Lnet/cactii/flash2/MainActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lnet/cactii/flash2/MainActivity;->updateBigButtonState()V

    return-void
.end method

.method private addTorchMessageSpans(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 9
    .parameter "text"

    .prologue
    const/4 v8, 0x0

    .line 178
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 179
    .local v0, builder:Landroid/text/SpannableStringBuilder;
    const-string v3, "[icon]"

    .line 180
    .local v3, pattern:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    .line 181
    .local v4, patternSize:I
    invoke-virtual {p0}, Lnet/cactii/flash2/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 182
    .local v1, context:Landroid/content/Context;
    const/4 v5, 0x0

    .line 183
    .local v5, start:I
    invoke-virtual {p1, v3, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v5

    if-ltz v5, :cond_0

    .line 184
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10803d5

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 185
    .local v2, d:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    invoke-virtual {v2, v8, v8, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 186
    new-instance v6, Landroid/text/style/ImageSpan;

    invoke-direct {v6, v2, v8}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    add-int v7, v5, v4

    const/16 v8, 0x11

    invoke-virtual {v0, v6, v5, v7, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 190
    .end local v2           #d:Landroid/graphics/drawable/Drawable;
    :cond_0
    return-object v0
.end method

.method private getByteArray([I)[B
    .locals 3
    .parameter "from"

    .prologue
    .line 270
    if-nez p1, :cond_0

    .line 271
    const/4 v2, 0x0

    .line 279
    :goto_0
    return-object v2

    .line 274
    :cond_0
    array-length v2, p1

    new-array v1, v2, [B

    .line 275
    .local v1, to:[B
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v2, p1

    if-ge v0, v2, :cond_1

    .line 276
    aget v2, p1, v0

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 275
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move-object v2, v1

    .line 279
    goto :goto_0
.end method

.method private openBrightDialog()V
    .locals 5

    .prologue
    .line 225
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 226
    .local v0, li:Landroid/view/LayoutInflater;
    const v2, 0x7f030001

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 227
    .local v1, view:Landroid/view/View;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f07000b

    invoke-virtual {p0, v3}, Lnet/cactii/flash2/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f07000c

    invoke-virtual {p0, v3}, Lnet/cactii/flash2/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lnet/cactii/flash2/MainActivity$5;

    invoke-direct {v4, p0}, Lnet/cactii/flash2/MainActivity$5;-><init>(Lnet/cactii/flash2/MainActivity;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f07000d

    invoke-virtual {p0, v3}, Lnet/cactii/flash2/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lnet/cactii/flash2/MainActivity$4;

    invoke-direct {v4, p0}, Lnet/cactii/flash2/MainActivity$4;-><init>(Lnet/cactii/flash2/MainActivity;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 240
    return-void
.end method

.method private updateBigButtonState()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 247
    iget-object v0, p0, Lnet/cactii/flash2/MainActivity;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "torch_state"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_1

    .line 249
    iput-boolean v3, p0, Lnet/cactii/flash2/MainActivity;->mTorchOn:Z

    .line 250
    iget-object v0, p0, Lnet/cactii/flash2/MainActivity;->mTorch:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 251
    iget-object v0, p0, Lnet/cactii/flash2/MainActivity;->buttonBright:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 252
    iget-object v0, p0, Lnet/cactii/flash2/MainActivity;->buttonStrobe:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 253
    iget-object v0, p0, Lnet/cactii/flash2/MainActivity;->buttonStrobe:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 254
    iget-object v0, p0, Lnet/cactii/flash2/MainActivity;->slider:Landroid/widget/SeekBar;

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 256
    :cond_0
    iget-object v0, p0, Lnet/cactii/flash2/MainActivity;->mTorchLight:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 257
    iget-object v0, p0, Lnet/cactii/flash2/MainActivity;->mMessage:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 267
    :goto_0
    return-void

    .line 259
    :cond_1
    iput-boolean v2, p0, Lnet/cactii/flash2/MainActivity;->mTorchOn:Z

    .line 260
    iget-object v0, p0, Lnet/cactii/flash2/MainActivity;->mTorch:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 261
    iget-object v0, p0, Lnet/cactii/flash2/MainActivity;->buttonBright:Landroid/widget/CheckBox;

    sget-boolean v1, Lnet/cactii/flash2/MainActivity;->useBrightSetting:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 262
    iget-object v0, p0, Lnet/cactii/flash2/MainActivity;->buttonStrobe:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 263
    iget-object v0, p0, Lnet/cactii/flash2/MainActivity;->slider:Landroid/widget/SeekBar;

    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 264
    iget-object v0, p0, Lnet/cactii/flash2/MainActivity;->mTorchLight:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 265
    iget-object v0, p0, Lnet/cactii/flash2/MainActivity;->mMessage:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x1

    const/16 v5, 0x64

    const/4 v4, 0x0

    const-string v7, "strobeperiod"

    .line 87
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 88
    const-string v1, "vibrator"

    invoke-virtual {p0, v1}, Lnet/cactii/flash2/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Vibrator;

    iput-object v1, p0, Lnet/cactii/flash2/MainActivity;->mVibrator:Landroid/os/Vibrator;

    .line 89
    invoke-virtual {p0}, Lnet/cactii/flash2/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x7f05

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    invoke-direct {p0, v1}, Lnet/cactii/flash2/MainActivity;->getByteArray([I)[B

    move-result-object v1

    iput-object v1, p0, Lnet/cactii/flash2/MainActivity;->vibratePatternOn:[B

    .line 90
    invoke-virtual {p0}, Lnet/cactii/flash2/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    invoke-direct {p0, v1}, Lnet/cactii/flash2/MainActivity;->getByteArray([I)[B

    move-result-object v1

    iput-object v1, p0, Lnet/cactii/flash2/MainActivity;->vibratePatternOff:[B

    .line 92
    const v1, 0x7f030002

    invoke-virtual {p0, v1}, Lnet/cactii/flash2/MainActivity;->setContentView(I)V

    .line 93
    invoke-virtual {p0}, Lnet/cactii/flash2/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lnet/cactii/flash2/MainActivity;->context:Landroid/content/Context;

    .line 94
    const v1, 0x7f090001

    invoke-virtual {p0, v1}, Lnet/cactii/flash2/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lnet/cactii/flash2/MainActivity;->mTorch:Landroid/widget/LinearLayout;

    .line 95
    const v1, 0x7f09000d

    invoke-virtual {p0, v1}, Lnet/cactii/flash2/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lnet/cactii/flash2/MainActivity;->buttonStrobe:Landroid/widget/CheckBox;

    .line 96
    const v1, 0x7f09000b

    invoke-virtual {p0, v1}, Lnet/cactii/flash2/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lnet/cactii/flash2/MainActivity;->strobeLabel:Landroid/widget/TextView;

    .line 97
    const v1, 0x7f09000c

    invoke-virtual {p0, v1}, Lnet/cactii/flash2/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    iput-object v1, p0, Lnet/cactii/flash2/MainActivity;->slider:Landroid/widget/SeekBar;

    .line 98
    const v1, 0x7f090007

    invoke-virtual {p0, v1}, Lnet/cactii/flash2/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lnet/cactii/flash2/MainActivity;->buttonBright:Landroid/widget/CheckBox;

    .line 99
    const v1, 0x7f090003

    invoke-virtual {p0, v1}, Lnet/cactii/flash2/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lnet/cactii/flash2/MainActivity;->mTorchLight:Landroid/widget/ImageView;

    .line 101
    const v1, 0x7f090002

    invoke-virtual {p0, v1}, Lnet/cactii/flash2/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lnet/cactii/flash2/MainActivity;->mMessage:Landroid/widget/TextView;

    .line 102
    iget-object v1, p0, Lnet/cactii/flash2/MainActivity;->mMessage:Landroid/widget/TextView;

    invoke-virtual {p0}, Lnet/cactii/flash2/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07001e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lnet/cactii/flash2/MainActivity;->addTorchMessageSpans(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    iput v5, p0, Lnet/cactii/flash2/MainActivity;->strobeperiod:I

    .line 105
    iput-boolean v4, p0, Lnet/cactii/flash2/MainActivity;->mTorchOn:Z

    .line 107
    const v1, 0x7f07000e

    invoke-virtual {p0, v1}, Lnet/cactii/flash2/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lnet/cactii/flash2/MainActivity;->labelOn:Ljava/lang/String;

    .line 108
    const v1, 0x7f07000f

    invoke-virtual {p0, v1}, Lnet/cactii/flash2/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lnet/cactii/flash2/MainActivity;->labelOff:Ljava/lang/String;

    .line 110
    invoke-static {}, Lnet/cactii/flash2/TorchWidgetProvider;->getInstance()Lnet/cactii/flash2/TorchWidgetProvider;

    move-result-object v1

    iput-object v1, p0, Lnet/cactii/flash2/MainActivity;->mWidgetProvider:Lnet/cactii/flash2/TorchWidgetProvider;

    .line 113
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lnet/cactii/flash2/MainActivity;->mPrefs:Landroid/content/SharedPreferences;

    .line 116
    iget-object v1, p0, Lnet/cactii/flash2/MainActivity;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iput-object v1, p0, Lnet/cactii/flash2/MainActivity;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    .line 118
    sget-boolean v1, Lnet/cactii/flash2/MainActivity;->useBrightSetting:Z

    if-eqz v1, :cond_0

    .line 119
    iget-object v1, p0, Lnet/cactii/flash2/MainActivity;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "bright"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lnet/cactii/flash2/MainActivity;->bright:Z

    .line 120
    iget-object v1, p0, Lnet/cactii/flash2/MainActivity;->buttonBright:Landroid/widget/CheckBox;

    iget-boolean v2, p0, Lnet/cactii/flash2/MainActivity;->bright:Z

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 121
    iget-object v1, p0, Lnet/cactii/flash2/MainActivity;->buttonBright:Landroid/widget/CheckBox;

    new-instance v2, Lnet/cactii/flash2/MainActivity$1;

    invoke-direct {v2, p0}, Lnet/cactii/flash2/MainActivity$1;-><init>(Lnet/cactii/flash2/MainActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 139
    :goto_0
    iget-object v1, p0, Lnet/cactii/flash2/MainActivity;->strobeLabel:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 140
    iget-object v1, p0, Lnet/cactii/flash2/MainActivity;->mTorch:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 143
    invoke-virtual {p0, v6}, Lnet/cactii/flash2/MainActivity;->setProgressBarVisibility(Z)V

    .line 144
    iget-object v1, p0, Lnet/cactii/flash2/MainActivity;->slider:Landroid/widget/SeekBar;

    invoke-virtual {v1, v6}, Landroid/widget/SeekBar;->setHorizontalScrollBarEnabled(Z)V

    .line 145
    iget-object v1, p0, Lnet/cactii/flash2/MainActivity;->slider:Landroid/widget/SeekBar;

    const/16 v2, 0x190

    iget-object v3, p0, Lnet/cactii/flash2/MainActivity;->mPrefs:Landroid/content/SharedPreferences;

    const-string v4, "strobeperiod"

    invoke-interface {v3, v7, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 146
    iget-object v1, p0, Lnet/cactii/flash2/MainActivity;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "strobeperiod"

    invoke-interface {v1, v7, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lnet/cactii/flash2/MainActivity;->strobeperiod:I

    .line 147
    const v1, 0x7f070016

    invoke-virtual {p0, v1}, Lnet/cactii/flash2/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 148
    .local v0, strStrobeLabel:Ljava/lang/String;
    iget-object v1, p0, Lnet/cactii/flash2/MainActivity;->strobeLabel:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x29a

    iget v4, p0, Lnet/cactii/flash2/MainActivity;->strobeperiod:I

    div-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Hz / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x9c40

    iget v4, p0, Lnet/cactii/flash2/MainActivity;->strobeperiod:I

    div-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "BPM"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    iget-object v1, p0, Lnet/cactii/flash2/MainActivity;->slider:Landroid/widget/SeekBar;

    new-instance v2, Lnet/cactii/flash2/MainActivity$2;

    invoke-direct {v2, p0, v0}, Lnet/cactii/flash2/MainActivity$2;-><init>(Lnet/cactii/flash2/MainActivity;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 175
    return-void

    .line 136
    .end local v0           #strStrobeLabel:Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lnet/cactii/flash2/MainActivity;->buttonBright:Landroid/widget/CheckBox;

    invoke-virtual {v1, v4}, Landroid/widget/CheckBox;->setEnabled(Z)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 202
    invoke-virtual {p0}, Lnet/cactii/flash2/MainActivity;->updateWidget()V

    .line 203
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 204
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 194
    iget-object v0, p0, Lnet/cactii/flash2/MainActivity;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "strobeperiod"

    iget v2, p0, Lnet/cactii/flash2/MainActivity;->strobeperiod:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 195
    iget-object v0, p0, Lnet/cactii/flash2/MainActivity;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 196
    invoke-virtual {p0}, Lnet/cactii/flash2/MainActivity;->updateWidget()V

    .line 197
    iget-object v0, p0, Lnet/cactii/flash2/MainActivity;->context:Landroid/content/Context;

    iget-object v1, p0, Lnet/cactii/flash2/MainActivity;->mStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 198
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 199
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 207
    invoke-direct {p0}, Lnet/cactii/flash2/MainActivity;->updateBigButtonState()V

    .line 208
    invoke-virtual {p0}, Lnet/cactii/flash2/MainActivity;->updateWidget()V

    .line 209
    iget-object v0, p0, Lnet/cactii/flash2/MainActivity;->context:Landroid/content/Context;

    iget-object v1, p0, Lnet/cactii/flash2/MainActivity;->mStateReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "net.cactii.flash2.TORCH_STATE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 210
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 211
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 293
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 294
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 315
    :cond_0
    :goto_0
    return v3

    .line 296
    :sswitch_0
    iget-object v1, p0, Lnet/cactii/flash2/MainActivity;->buttonStrobe:Landroid/widget/CheckBox;

    iget-object v2, p0, Lnet/cactii/flash2/MainActivity;->buttonStrobe:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    :cond_1
    move v2, v4

    goto :goto_1

    .line 299
    :sswitch_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "net.cactii.flash2.TOGGLE_FLASHLIGHT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 300
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "strobe"

    iget-object v2, p0, Lnet/cactii/flash2/MainActivity;->buttonStrobe:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 301
    const-string v1, "period"

    iget v2, p0, Lnet/cactii/flash2/MainActivity;->strobeperiod:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 302
    const-string v1, "bright"

    iget-boolean v2, p0, Lnet/cactii/flash2/MainActivity;->bright:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 303
    iget-object v1, p0, Lnet/cactii/flash2/MainActivity;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 304
    invoke-virtual {p0}, Lnet/cactii/flash2/MainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "haptic_feedback_enabled"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v3, v1, :cond_0

    .line 305
    iget-object v1, p0, Lnet/cactii/flash2/MainActivity;->mTorch:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->isSelected()Z

    move-result v1

    if-nez v1, :cond_2

    .line 306
    iget-object v1, p0, Lnet/cactii/flash2/MainActivity;->mVibrator:Landroid/os/Vibrator;

    iget-object v2, p0, Lnet/cactii/flash2/MainActivity;->vibratePatternOn:[B

    invoke-virtual {v1, v2}, Landroid/os/Vibrator;->vibrateEx([B)V

    goto :goto_0

    .line 308
    :cond_2
    iget-object v1, p0, Lnet/cactii/flash2/MainActivity;->mVibrator:Landroid/os/Vibrator;

    iget-object v2, p0, Lnet/cactii/flash2/MainActivity;->vibratePatternOff:[B

    invoke-virtual {v1, v2}, Landroid/os/Vibrator;->vibrateEx([B)V

    goto :goto_0

    .line 294
    :sswitch_data_0
    .sparse-switch
        0x7f090001 -> :sswitch_1
        0x7f09000b -> :sswitch_0
    .end sparse-switch
.end method

.method public updateWidget()V
    .locals 2

    .prologue
    .line 243
    iget-object v0, p0, Lnet/cactii/flash2/MainActivity;->mWidgetProvider:Lnet/cactii/flash2/TorchWidgetProvider;

    iget-object v1, p0, Lnet/cactii/flash2/MainActivity;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lnet/cactii/flash2/TorchWidgetProvider;->updateAllStates(Landroid/content/Context;)V

    .line 244
    return-void
.end method
