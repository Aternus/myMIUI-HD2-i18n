.class public Lcom/android/settings/HapticAdjust;
.super Landroid/app/Activity;
.source "HapticAdjust.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/HapticAdjust$TestButton;
    }
.end annotation


# static fields
.field static final DESC_RESID:[I

.field static final PATTERN_RESID:[I


# instance fields
.field mAddButton:Landroid/widget/Button;

.field mCancelButton:Landroid/widget/Button;

.field mCounter:I

.field mDefaultButton:Landroid/widget/Button;

.field mHapType:I

.field mRevertButton:Landroid/widget/Button;

.field mSaveButton:Landroid/widget/Button;

.field mStartString:Ljava/lang/String;

.field mSubButton:Landroid/widget/Button;

.field mTestButton:Lcom/android/settings/HapticAdjust$TestButton;

.field mVibrator:Landroid/os/Vibrator;

.field myClickListener:Landroid/view/View$OnClickListener;

.field sbChange:Landroid/widget/SeekBar$OnSeekBarChangeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 60
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings/HapticAdjust;->PATTERN_RESID:[I

    .line 67
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/settings/HapticAdjust;->DESC_RESID:[I

    return-void

    .line 60
    :array_0
    .array-data 0x4
        0x13t 0x0t 0x7t 0x1t
        0x18t 0x0t 0x7t 0x1t
        0x12t 0x0t 0x7t 0x1t
        0x14t 0x0t 0x7t 0x1t
    .end array-data

    .line 67
    :array_1
    .array-data 0x4
        0xdct 0x4t 0x9t 0x7ft
        0xddt 0x4t 0x9t 0x7ft
        0xdet 0x4t 0x9t 0x7ft
        0xdft 0x4t 0x9t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 39
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 50
    iput v0, p0, Lcom/android/settings/HapticAdjust;->mHapType:I

    .line 51
    iput v0, p0, Lcom/android/settings/HapticAdjust;->mCounter:I

    .line 52
    const-string v0, "0"

    iput-object v0, p0, Lcom/android/settings/HapticAdjust;->mStartString:Ljava/lang/String;

    .line 74
    new-instance v0, Lcom/android/settings/HapticAdjust$1;

    invoke-direct {v0, p0}, Lcom/android/settings/HapticAdjust$1;-><init>(Lcom/android/settings/HapticAdjust;)V

    iput-object v0, p0, Lcom/android/settings/HapticAdjust;->myClickListener:Landroid/view/View$OnClickListener;

    .line 317
    new-instance v0, Lcom/android/settings/HapticAdjust$2;

    invoke-direct {v0, p0}, Lcom/android/settings/HapticAdjust$2;-><init>(Lcom/android/settings/HapticAdjust;)V

    iput-object v0, p0, Lcom/android/settings/HapticAdjust;->sbChange:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 389
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/HapticAdjust;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/settings/HapticAdjust;->saveChanges()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/HapticAdjust;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/settings/HapticAdjust;->cancelChanges()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/HapticAdjust;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/settings/HapticAdjust;->testVibe()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/HapticAdjust;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/settings/HapticAdjust;->revertChanges()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/HapticAdjust;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/android/settings/HapticAdjust;->defSet(I)V

    return-void
.end method

.method private cancelChanges()V
    .locals 3

    .prologue
    .line 237
    iget-object v0, p0, Lcom/android/settings/HapticAdjust;->mStartString:Ljava/lang/String;

    .line 238
    .local v0, output:Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 239
    .local v1, returnIntent:Landroid/content/Intent;
    const-string v2, "returnval"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 240
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Lcom/android/settings/HapticAdjust;->setResult(ILandroid/content/Intent;)V

    .line 241
    iget-object v2, p0, Lcom/android/settings/HapticAdjust;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v2}, Landroid/os/Vibrator;->cancel()V

    .line 242
    invoke-virtual {p0}, Lcom/android/settings/HapticAdjust;->finish()V

    .line 243
    return-void
.end method

.method private checkRowColors()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    const-string v5, "  "

    .line 334
    iget v3, p0, Lcom/android/settings/HapticAdjust;->mCounter:I

    if-ne v3, v4, :cond_0

    .line 335
    iget v3, p0, Lcom/android/settings/HapticAdjust;->mCounter:I

    add-int/lit16 v1, v3, 0x190

    .line 336
    .local v1, target:I
    invoke-virtual {p0, v1}, Lcom/android/settings/HapticAdjust;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 337
    .local v2, tv:Landroid/widget/TextView;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f0904db

    invoke-virtual {p0, v4}, Lcom/android/settings/HapticAdjust;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 338
    .local v0, str:Ljava/lang/String;
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 339
    invoke-virtual {v2}, Landroid/widget/TextView;->requestLayout()V

    .line 349
    .end local v0           #str:Ljava/lang/String;
    .end local v1           #target:I
    .end local v2           #tv:Landroid/widget/TextView;
    :goto_0
    return-void

    .line 340
    :cond_0
    iget v3, p0, Lcom/android/settings/HapticAdjust;->mCounter:I

    if-le v3, v4, :cond_1

    .line 341
    const/16 v1, 0x191

    .line 342
    .restart local v1       #target:I
    invoke-virtual {p0, v1}, Lcom/android/settings/HapticAdjust;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 343
    .restart local v2       #tv:Landroid/widget/TextView;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f0904da

    invoke-virtual {p0, v4}, Lcom/android/settings/HapticAdjust;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 344
    .restart local v0       #str:Ljava/lang/String;
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 345
    invoke-virtual {v2}, Landroid/widget/TextView;->requestLayout()V

    goto :goto_0

    .line 347
    .end local v0           #str:Ljava/lang/String;
    .end local v1           #target:I
    .end local v2           #tv:Landroid/widget/TextView;
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/HapticAdjust;->revertChanges()V

    goto :goto_0
.end method

.method private clearTable()V
    .locals 2

    .prologue
    .line 281
    const v1, 0x7f0c0081

    invoke-virtual {p0, v1}, Lcom/android/settings/HapticAdjust;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TableLayout;

    .line 282
    .local v0, table:Landroid/widget/TableLayout;
    invoke-virtual {v0}, Landroid/widget/TableLayout;->removeAllViews()V

    .line 283
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/settings/HapticAdjust;->mCounter:I

    .line 284
    return-void
.end method

.method private defSet(I)V
    .locals 2
    .parameter "type"

    .prologue
    .line 253
    invoke-direct {p0}, Lcom/android/settings/HapticAdjust;->clearTable()V

    .line 254
    const v0, 0x7f0904eb

    invoke-virtual {p0, v0}, Lcom/android/settings/HapticAdjust;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 255
    invoke-virtual {p0}, Lcom/android/settings/HapticAdjust;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/android/settings/HapticAdjust;->PATTERN_RESID:[I

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/HapticAdjust;->setupRows([I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 256
    invoke-direct {p0}, Lcom/android/settings/HapticAdjust;->revertChanges()V

    .line 260
    :goto_0
    return-void

    .line 259
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/HapticAdjust;->checkRowColors()V

    goto :goto_0
.end method

.method private getArray()[I
    .locals 10

    .prologue
    .line 287
    iget v9, p0, Lcom/android/settings/HapticAdjust;->mCounter:I

    new-array v4, v9, [I

    .line 291
    .local v4, result:[I
    const/4 v7, 0x0

    .line 293
    .local v7, trimPos:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget v9, p0, Lcom/android/settings/HapticAdjust;->mCounter:I

    if-ge v1, v9, :cond_0

    .line 295
    add-int/lit16 v9, v1, 0x3e9

    invoke-virtual {p0, v9}, Lcom/android/settings/HapticAdjust;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 296
    .local v6, target:Landroid/widget/TextView;
    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    aput v9, v4, v1

    .line 293
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 298
    .end local v6           #target:Landroid/widget/TextView;
    :cond_0
    array-length v5, v4

    .line 299
    .local v5, startLen:I
    const/4 v9, 0x1

    sub-int v2, v5, v9

    .local v2, j:I
    :goto_1
    if-lez v2, :cond_1

    .line 300
    aget v9, v4, v2

    if-nez v9, :cond_1

    .line 301
    move v7, v2

    .line 299
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 305
    :cond_1
    if-nez v7, :cond_2

    move-object v9, v4

    .line 313
    :goto_2
    return-object v9

    .line 308
    :cond_2
    move v0, v7

    .line 309
    .local v0, finalLength:I
    new-array v8, v0, [I

    .line 310
    .local v8, trimmed:[I
    const/4 v3, 0x0

    .local v3, k:I
    :goto_3
    if-ge v3, v0, :cond_3

    .line 311
    aget v9, v4, v3

    aput v9, v8, v3

    .line 310
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_3
    move-object v9, v8

    .line 313
    goto :goto_2
.end method

.method private intToString([I)Ljava/lang/String;
    .locals 6
    .parameter "inpint"

    .prologue
    .line 363
    const/4 v2, 0x0

    .line 364
    .local v2, returnstring:Ljava/lang/String;
    array-length v1, p1

    .line 365
    .local v1, lol:I
    const-string v3, ""

    .line 367
    .local v3, workstring:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 368
    if-lez v0, :cond_0

    .line 369
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 371
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v5, p1, v0

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 367
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 373
    :cond_1
    move-object v2, v3

    .line 374
    return-object v2
.end method

.method private revertChanges()V
    .locals 2

    .prologue
    .line 246
    invoke-direct {p0}, Lcom/android/settings/HapticAdjust;->clearTable()V

    .line 247
    const v0, 0x7f0904ea

    invoke-virtual {p0, v0}, Lcom/android/settings/HapticAdjust;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 248
    iget-object v0, p0, Lcom/android/settings/HapticAdjust;->mStartString:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/settings/HapticAdjust;->setupRows(Ljava/lang/String;)Z

    .line 249
    invoke-direct {p0}, Lcom/android/settings/HapticAdjust;->checkRowColors()V

    .line 250
    return-void
.end method

.method private saveChanges()V
    .locals 4

    .prologue
    .line 225
    iget v3, p0, Lcom/android/settings/HapticAdjust;->mCounter:I

    new-array v0, v3, [I

    .line 226
    .local v0, array:[I
    invoke-direct {p0}, Lcom/android/settings/HapticAdjust;->getArray()[I

    move-result-object v0

    .line 227
    invoke-direct {p0, v0}, Lcom/android/settings/HapticAdjust;->intToString([I)Ljava/lang/String;

    move-result-object v1

    .line 228
    .local v1, output:Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 229
    .local v2, returnIntent:Landroid/content/Intent;
    const-string v3, "returnval"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 230
    const/4 v3, -0x1

    invoke-virtual {p0, v3, v2}, Lcom/android/settings/HapticAdjust;->setResult(ILandroid/content/Intent;)V

    .line 231
    iget-object v3, p0, Lcom/android/settings/HapticAdjust;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v3}, Landroid/os/Vibrator;->cancel()V

    .line 232
    invoke-virtual {p0}, Lcom/android/settings/HapticAdjust;->finish()V

    .line 234
    return-void
.end method

.method private setupRows(Ljava/lang/String;)Z
    .locals 3
    .parameter "ss"

    .prologue
    .line 151
    if-nez p1, :cond_0

    .line 152
    invoke-virtual {p0}, Lcom/android/settings/HapticAdjust;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/android/settings/HapticAdjust;->PATTERN_RESID:[I

    iget v2, p0, Lcom/android/settings/HapticAdjust;->mHapType:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/HapticAdjust;->setupRows([I)Z

    .line 153
    const/4 v0, 0x0

    .line 155
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/settings/HapticAdjust;->stringToInt(Ljava/lang/String;)[I

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/HapticAdjust;->setupRows([I)Z

    move-result v0

    goto :goto_0
.end method

.method private setupRows([I)Z
    .locals 3
    .parameter "vals"

    .prologue
    .line 140
    array-length v1, p1

    .line 142
    .local v1, length:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 143
    aget v2, p1, v0

    invoke-virtual {p0, v2}, Lcom/android/settings/HapticAdjust;->addRow(I)Z

    .line 142
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 145
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/HapticAdjust;->checkRowColors()V

    .line 146
    const/4 v2, 0x1

    return v2
.end method

.method private stringToInt(Ljava/lang/String;)[I
    .locals 5
    .parameter "inpstring"

    .prologue
    .line 352
    const-string v4, ","

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 353
    .local v3, splitstr:[Ljava/lang/String;
    array-length v1, v3

    .line 354
    .local v1, los:I
    new-array v2, v1, [I

    .line 356
    .local v2, returnint:[I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 357
    aget-object v4, v3, v0

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aput v4, v2, v0

    .line 356
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 359
    :cond_0
    return-object v2
.end method

.method private testVibe()V
    .locals 6

    .prologue
    .line 263
    new-instance v3, Landroid/os/Vibrator;

    invoke-direct {v3}, Landroid/os/Vibrator;-><init>()V

    iput-object v3, p0, Lcom/android/settings/HapticAdjust;->mVibrator:Landroid/os/Vibrator;

    .line 265
    invoke-direct {p0}, Lcom/android/settings/HapticAdjust;->getArray()[I

    move-result-object v0

    .line 266
    .local v0, array:[I
    invoke-direct {p0}, Lcom/android/settings/HapticAdjust;->clearTable()V

    .line 267
    invoke-direct {p0, v0}, Lcom/android/settings/HapticAdjust;->intToString([I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings/HapticAdjust;->setupRows(Ljava/lang/String;)Z

    .line 268
    array-length v3, v0

    new-array v2, v3, [J

    .line 269
    .local v2, vibePattern:[J
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_0

    .line 270
    aget v3, v0, v1

    int-to-long v3, v3

    aput-wide v3, v2, v1

    .line 269
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 272
    :cond_0
    array-length v3, v2

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 273
    iget-object v3, p0, Lcom/android/settings/HapticAdjust;->mVibrator:Landroid/os/Vibrator;

    const/4 v4, 0x0

    aget-wide v4, v2, v4

    invoke-virtual {v3, v4, v5}, Landroid/os/Vibrator;->vibrate(J)V

    .line 278
    :goto_1
    return-void

    .line 275
    :cond_1
    iget-object v3, p0, Lcom/android/settings/HapticAdjust;->mVibrator:Landroid/os/Vibrator;

    const/4 v4, -0x1

    invoke-virtual {v3, v2, v4}, Landroid/os/Vibrator;->vibrate([JI)V

    goto :goto_1
.end method


# virtual methods
.method public addRow(I)Z
    .locals 13
    .parameter "val"

    .prologue
    .line 163
    const v9, 0x7f0c0081

    invoke-virtual {p0, v9}, Lcom/android/settings/HapticAdjust;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TableLayout;

    .line 165
    .local v8, table:Landroid/widget/TableLayout;
    new-instance v3, Landroid/widget/TableRow;

    invoke-direct {v3, p0}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    .line 166
    .local v3, row:Landroid/widget/TableRow;
    const/4 v0, 0x0

    .line 167
    .local v0, curid:I
    iget v9, p0, Lcom/android/settings/HapticAdjust;->mCounter:I

    add-int/lit16 v0, v9, 0xc9

    .line 168
    invoke-virtual {v3, v0}, Landroid/widget/TableRow;->setId(I)V

    .line 169
    new-instance v5, Landroid/widget/SeekBar;

    invoke-direct {v5, p0}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    .line 170
    .local v5, sb:Landroid/widget/SeekBar;
    new-instance v9, Landroid/widget/TableRow$LayoutParams;

    const/4 v10, -0x1

    const/4 v11, -0x2

    const/high16 v12, 0x3f80

    invoke-direct {v9, v10, v11, v12}, Landroid/widget/TableRow$LayoutParams;-><init>(IIF)V

    invoke-virtual {v5, v9}, Landroid/widget/SeekBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 172
    const/4 v9, 0x1

    invoke-virtual {v5, v9}, Landroid/widget/SeekBar;->setFocusable(Z)V

    .line 173
    const/16 v9, 0x64

    invoke-virtual {v5, v9}, Landroid/widget/SeekBar;->setMax(I)V

    .line 174
    invoke-virtual {v5, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 175
    const/16 v9, 0xa

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v5, v9, v10, v11, v12}, Landroid/widget/SeekBar;->setPadding(IIII)V

    .line 176
    iget v9, p0, Lcom/android/settings/HapticAdjust;->mCounter:I

    add-int/lit8 v9, v9, 0x65

    invoke-virtual {v5, v9}, Landroid/widget/SeekBar;->setId(I)V

    .line 177
    invoke-virtual {v3, v5}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    .line 178
    iget-object v9, p0, Lcom/android/settings/HapticAdjust;->sbChange:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v5, v9}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 180
    new-instance v7, Landroid/widget/TextView;

    invoke-direct {v7, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 181
    .local v7, t:Landroid/widget/TextView;
    invoke-virtual {v5}, Landroid/widget/SeekBar;->getProgress()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 182
    .local v4, s:Ljava/lang/String;
    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 183
    iget v9, p0, Lcom/android/settings/HapticAdjust;->mCounter:I

    add-int/lit16 v9, v9, 0x3e9

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setId(I)V

    .line 184
    const/high16 v9, 0x41a0

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setTextSize(F)V

    .line 185
    const/4 v9, 0x3

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setMinEms(I)V

    .line 186
    const/16 v9, 0xa

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v7, v9, v10, v11, v12}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 187
    const/4 v9, 0x2

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setInputType(I)V

    .line 188
    invoke-virtual {v3, v7}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    .line 190
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 191
    .local v1, onoff:Landroid/widget/TextView;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const v10, 0x7f0904db

    invoke-virtual {p0, v10}, Lcom/android/settings/HapticAdjust;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 192
    .local v6, str:Ljava/lang/String;
    iget v9, p0, Lcom/android/settings/HapticAdjust;->mCounter:I

    rem-int/lit8 v9, v9, 0x2

    if-nez v9, :cond_0

    .line 193
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const v10, 0x7f0904da

    invoke-virtual {p0, v10}, Lcom/android/settings/HapticAdjust;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 195
    :cond_0
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0xf

    const/4 v12, 0x0

    invoke-virtual {v1, v9, v10, v11, v12}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 196
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    iget v9, p0, Lcom/android/settings/HapticAdjust;->mCounter:I

    add-int/lit16 v9, v9, 0x191

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setId(I)V

    .line 198
    invoke-virtual {v3, v1}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    .line 200
    invoke-virtual {v8, v3}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    .line 201
    invoke-virtual {v8}, Landroid/widget/TableLayout;->getChildCount()I

    move-result v9

    iput v9, p0, Lcom/android/settings/HapticAdjust;->mCounter:I

    .line 202
    const/4 v2, 0x1

    .line 203
    .local v2, output:Z
    invoke-direct {p0}, Lcom/android/settings/HapticAdjust;->checkRowColors()V

    .line 204
    return v2
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 103
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 105
    invoke-virtual {p0}, Lcom/android/settings/HapticAdjust;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 106
    invoke-virtual {p0}, Lcom/android/settings/HapticAdjust;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 107
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "start_string"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/HapticAdjust;->mStartString:Ljava/lang/String;

    .line 108
    const-string v2, "hap_type"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/settings/HapticAdjust;->mHapType:I

    .line 115
    .end local v0           #bundle:Landroid/os/Bundle;
    :goto_0
    const v2, 0x7f03002b

    invoke-virtual {p0, v2}, Lcom/android/settings/HapticAdjust;->setContentView(I)V

    .line 117
    const v2, 0x7f0c007d

    invoke-virtual {p0, v2}, Lcom/android/settings/HapticAdjust;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 118
    .local v1, downDesc:Landroid/widget/TextView;
    sget-object v2, Lcom/android/settings/HapticAdjust;->DESC_RESID:[I

    iget v3, p0, Lcom/android/settings/HapticAdjust;->mHapType:I

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 119
    invoke-virtual {v1}, Landroid/widget/TextView;->requestLayout()V

    .line 121
    const v2, 0x7f0c007f

    invoke-virtual {p0, v2}, Lcom/android/settings/HapticAdjust;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/settings/HapticAdjust;->mAddButton:Landroid/widget/Button;

    .line 122
    const v2, 0x7f0c0080

    invoke-virtual {p0, v2}, Lcom/android/settings/HapticAdjust;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/settings/HapticAdjust;->mSubButton:Landroid/widget/Button;

    .line 123
    const v2, 0x7f0c0082

    invoke-virtual {p0, v2}, Lcom/android/settings/HapticAdjust;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/settings/HapticAdjust;->mSaveButton:Landroid/widget/Button;

    .line 124
    const v2, 0x7f0c0083

    invoke-virtual {p0, v2}, Lcom/android/settings/HapticAdjust;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/settings/HapticAdjust$TestButton;

    iput-object v2, p0, Lcom/android/settings/HapticAdjust;->mTestButton:Lcom/android/settings/HapticAdjust$TestButton;

    .line 125
    const v2, 0x7f0c002f

    invoke-virtual {p0, v2}, Lcom/android/settings/HapticAdjust;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/settings/HapticAdjust;->mCancelButton:Landroid/widget/Button;

    .line 126
    const v2, 0x7f0c0084

    invoke-virtual {p0, v2}, Lcom/android/settings/HapticAdjust;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/settings/HapticAdjust;->mRevertButton:Landroid/widget/Button;

    .line 127
    const v2, 0x7f0c0085

    invoke-virtual {p0, v2}, Lcom/android/settings/HapticAdjust;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/settings/HapticAdjust;->mDefaultButton:Landroid/widget/Button;

    .line 128
    iget-object v2, p0, Lcom/android/settings/HapticAdjust;->mAddButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/settings/HapticAdjust;->myClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    iget-object v2, p0, Lcom/android/settings/HapticAdjust;->mSubButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/settings/HapticAdjust;->myClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    iget-object v2, p0, Lcom/android/settings/HapticAdjust;->mSaveButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/settings/HapticAdjust;->myClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    iget-object v2, p0, Lcom/android/settings/HapticAdjust;->mCancelButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/settings/HapticAdjust;->myClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    iget-object v2, p0, Lcom/android/settings/HapticAdjust;->mRevertButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/settings/HapticAdjust;->myClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    iget-object v2, p0, Lcom/android/settings/HapticAdjust;->mDefaultButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/settings/HapticAdjust;->myClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    iget-object v2, p0, Lcom/android/settings/HapticAdjust;->mTestButton:Lcom/android/settings/HapticAdjust$TestButton;

    iget-object v3, p0, Lcom/android/settings/HapticAdjust;->myClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Lcom/android/settings/HapticAdjust$TestButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    new-instance v2, Landroid/os/Vibrator;

    invoke-direct {v2}, Landroid/os/Vibrator;-><init>()V

    iput-object v2, p0, Lcom/android/settings/HapticAdjust;->mVibrator:Landroid/os/Vibrator;

    .line 136
    iget-object v2, p0, Lcom/android/settings/HapticAdjust;->mStartString:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/settings/HapticAdjust;->setupRows(Ljava/lang/String;)Z

    .line 137
    return-void

    .line 110
    .end local v1           #downDesc:Landroid/widget/TextView;
    :cond_0
    const-string v2, "HapticAdjust"

    const-string v3, "haptic adjust something wrong with bundle"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public subRow()V
    .locals 4

    .prologue
    .line 210
    iget v2, p0, Lcom/android/settings/HapticAdjust;->mCounter:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 219
    :goto_0
    return-void

    .line 214
    :cond_0
    const v2, 0x7f0c0081

    invoke-virtual {p0, v2}, Lcom/android/settings/HapticAdjust;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TableLayout;

    .line 215
    .local v0, table:Landroid/widget/TableLayout;
    iget v2, p0, Lcom/android/settings/HapticAdjust;->mCounter:I

    add-int/lit16 v1, v2, 0xc8

    .line 216
    .local v1, target:I
    invoke-virtual {p0, v1}, Lcom/android/settings/HapticAdjust;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TableLayout;->removeView(Landroid/view/View;)V

    .line 217
    invoke-virtual {v0}, Landroid/widget/TableLayout;->getChildCount()I

    move-result v2

    iput v2, p0, Lcom/android/settings/HapticAdjust;->mCounter:I

    .line 218
    invoke-direct {p0}, Lcom/android/settings/HapticAdjust;->checkRowColors()V

    goto :goto_0
.end method
