.class public Lcom/android/mms/ui/NumberPicker;
.super Landroid/widget/LinearLayout;
.source "NumberPicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/NumberPicker$NumberRangeKeyListener;,
        Lcom/android/mms/ui/NumberPicker$NumberPickerInputFilter;,
        Lcom/android/mms/ui/NumberPicker$Formatter;,
        Lcom/android/mms/ui/NumberPicker$OnChangedListener;
    }
.end annotation


# static fields
.field private static final DIGIT_CHARACTERS:[C

.field public static final TWO_DIGIT_FORMATTER:Lcom/android/mms/ui/NumberPicker$Formatter;


# instance fields
.field private mCurrent:I

.field private mDecrement:Z

.field private mDecrementButton:Lcom/android/mms/ui/NumberPickerButton;

.field private mDisplayedValues:[Ljava/lang/String;

.field private mEnd:I

.field private mFormatter:Lcom/android/mms/ui/NumberPicker$Formatter;

.field private final mHandler:Landroid/os/Handler;

.field private mIncrement:Z

.field private mIncrementButton:Lcom/android/mms/ui/NumberPickerButton;

.field private mListener:Lcom/android/mms/ui/NumberPicker$OnChangedListener;

.field private final mNumberInputFilter:Landroid/text/InputFilter;

.field private mPrevious:I

.field private final mRunnable:Ljava/lang/Runnable;

.field private mSpeed:J

.field private mStart:I

.field private final mText:Landroid/widget/EditText;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 70
    new-instance v0, Lcom/android/mms/ui/NumberPicker$1;

    invoke-direct {v0}, Lcom/android/mms/ui/NumberPicker$1;-><init>()V

    sput-object v0, Lcom/android/mms/ui/NumberPicker;->TWO_DIGIT_FORMATTER:Lcom/android/mms/ui/NumberPicker$Formatter;

    .line 400
    const/16 v0, 0xa

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/mms/ui/NumberPicker;->DIGIT_CHARACTERS:[C

    return-void

    nop

    :array_0
    .array-data 0x2
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 132
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/mms/ui/NumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 133
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 10
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 141
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 84
    new-instance v5, Lcom/android/mms/ui/NumberPicker$2;

    invoke-direct {v5, p0}, Lcom/android/mms/ui/NumberPicker$2;-><init>(Lcom/android/mms/ui/NumberPicker;)V

    iput-object v5, p0, Lcom/android/mms/ui/NumberPicker;->mRunnable:Ljava/lang/Runnable;

    .line 122
    const-wide/16 v5, 0x12c

    iput-wide v5, p0, Lcom/android/mms/ui/NumberPicker;->mSpeed:J

    .line 142
    invoke-virtual {p0, v7}, Lcom/android/mms/ui/NumberPicker;->setOrientation(I)V

    .line 143
    iget-object v5, p0, Lcom/android/mms/ui/NumberPicker;->mContext:Landroid/content/Context;

    const-string v6, "layout_inflater"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 145
    .local v2, inflater:Landroid/view/LayoutInflater;
    const v5, 0x7f03003e

    invoke-virtual {v2, v5, p0, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 146
    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    iput-object v5, p0, Lcom/android/mms/ui/NumberPicker;->mHandler:Landroid/os/Handler;

    .line 148
    new-instance v0, Lcom/android/mms/ui/NumberPicker$3;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/NumberPicker$3;-><init>(Lcom/android/mms/ui/NumberPicker;)V

    .line 162
    .local v0, clickListener:Landroid/view/View$OnClickListener;
    new-instance v1, Lcom/android/mms/ui/NumberPicker$4;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/NumberPicker$4;-><init>(Lcom/android/mms/ui/NumberPicker;)V

    .line 174
    .local v1, focusListener:Landroid/view/View$OnFocusChangeListener;
    new-instance v4, Lcom/android/mms/ui/NumberPicker$5;

    invoke-direct {v4, p0}, Lcom/android/mms/ui/NumberPicker$5;-><init>(Lcom/android/mms/ui/NumberPicker;)V

    .line 196
    .local v4, longClickListener:Landroid/view/View$OnLongClickListener;
    new-instance v3, Lcom/android/mms/ui/NumberPicker$NumberPickerInputFilter;

    invoke-direct {v3, p0, v9}, Lcom/android/mms/ui/NumberPicker$NumberPickerInputFilter;-><init>(Lcom/android/mms/ui/NumberPicker;Lcom/android/mms/ui/NumberPicker$1;)V

    .line 197
    .local v3, inputFilter:Landroid/text/InputFilter;
    new-instance v5, Lcom/android/mms/ui/NumberPicker$NumberRangeKeyListener;

    invoke-direct {v5, p0, v9}, Lcom/android/mms/ui/NumberPicker$NumberRangeKeyListener;-><init>(Lcom/android/mms/ui/NumberPicker;Lcom/android/mms/ui/NumberPicker$1;)V

    iput-object v5, p0, Lcom/android/mms/ui/NumberPicker;->mNumberInputFilter:Landroid/text/InputFilter;

    .line 198
    const v5, 0x7f0d00c3

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/mms/ui/NumberPickerButton;

    iput-object v5, p0, Lcom/android/mms/ui/NumberPicker;->mIncrementButton:Lcom/android/mms/ui/NumberPickerButton;

    .line 199
    iget-object v5, p0, Lcom/android/mms/ui/NumberPicker;->mIncrementButton:Lcom/android/mms/ui/NumberPickerButton;

    invoke-virtual {v5, v0}, Lcom/android/mms/ui/NumberPickerButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 200
    iget-object v5, p0, Lcom/android/mms/ui/NumberPicker;->mIncrementButton:Lcom/android/mms/ui/NumberPickerButton;

    invoke-virtual {v5, v4}, Lcom/android/mms/ui/NumberPickerButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 201
    iget-object v5, p0, Lcom/android/mms/ui/NumberPicker;->mIncrementButton:Lcom/android/mms/ui/NumberPickerButton;

    invoke-virtual {v5, p0}, Lcom/android/mms/ui/NumberPickerButton;->setNumberPicker(Lcom/android/mms/ui/NumberPicker;)V

    .line 203
    const v5, 0x7f0d00c5

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/mms/ui/NumberPickerButton;

    iput-object v5, p0, Lcom/android/mms/ui/NumberPicker;->mDecrementButton:Lcom/android/mms/ui/NumberPickerButton;

    .line 204
    iget-object v5, p0, Lcom/android/mms/ui/NumberPicker;->mDecrementButton:Lcom/android/mms/ui/NumberPickerButton;

    invoke-virtual {v5, v0}, Lcom/android/mms/ui/NumberPickerButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 205
    iget-object v5, p0, Lcom/android/mms/ui/NumberPicker;->mDecrementButton:Lcom/android/mms/ui/NumberPickerButton;

    invoke-virtual {v5, v4}, Lcom/android/mms/ui/NumberPickerButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 206
    iget-object v5, p0, Lcom/android/mms/ui/NumberPicker;->mDecrementButton:Lcom/android/mms/ui/NumberPickerButton;

    invoke-virtual {v5, p0}, Lcom/android/mms/ui/NumberPickerButton;->setNumberPicker(Lcom/android/mms/ui/NumberPicker;)V

    .line 208
    const v5, 0x7f0d00c4

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lcom/android/mms/ui/NumberPicker;->mText:Landroid/widget/EditText;

    .line 209
    iget-object v5, p0, Lcom/android/mms/ui/NumberPicker;->mText:Landroid/widget/EditText;

    invoke-virtual {v5, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 210
    iget-object v5, p0, Lcom/android/mms/ui/NumberPicker;->mText:Landroid/widget/EditText;

    new-array v6, v7, [Landroid/text/InputFilter;

    aput-object v3, v6, v8

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 211
    iget-object v5, p0, Lcom/android/mms/ui/NumberPicker;->mText:Landroid/widget/EditText;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setRawInputType(I)V

    .line 213
    invoke-virtual {p0}, Lcom/android/mms/ui/NumberPicker;->isEnabled()Z

    move-result v5

    if-nez v5, :cond_0

    .line 214
    invoke-virtual {p0, v8}, Lcom/android/mms/ui/NumberPicker;->setEnabled(Z)V

    .line 216
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/NumberPicker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/android/mms/ui/NumberPicker;->mIncrement:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/mms/ui/NumberPicker;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/android/mms/ui/NumberPicker;->mIncrement:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/mms/ui/NumberPicker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget v0, p0, Lcom/android/mms/ui/NumberPicker;->mCurrent:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/mms/ui/NumberPicker;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/mms/ui/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/mms/ui/NumberPicker;)Landroid/text/InputFilter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/mms/ui/NumberPicker;->mNumberInputFilter:Landroid/text/InputFilter;

    return-object v0
.end method

.method static synthetic access$1200()[C
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/android/mms/ui/NumberPicker;->DIGIT_CHARACTERS:[C

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/mms/ui/NumberPicker;Ljava/lang/String;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/android/mms/ui/NumberPicker;->getSelectedPos(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/android/mms/ui/NumberPicker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget v0, p0, Lcom/android/mms/ui/NumberPicker;->mEnd:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/mms/ui/NumberPicker;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 43
    iget-wide v0, p0, Lcom/android/mms/ui/NumberPicker;->mSpeed:J

    return-wide v0
.end method

.method static synthetic access$300(Lcom/android/mms/ui/NumberPicker;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/mms/ui/NumberPicker;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/mms/ui/NumberPicker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/android/mms/ui/NumberPicker;->mDecrement:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/mms/ui/NumberPicker;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/android/mms/ui/NumberPicker;->mDecrement:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/mms/ui/NumberPicker;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/mms/ui/NumberPicker;->mText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/mms/ui/NumberPicker;Landroid/view/View;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/android/mms/ui/NumberPicker;->validateInput(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/mms/ui/NumberPicker;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/mms/ui/NumberPicker;->mRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method private formatNumber(I)Ljava/lang/String;
    .locals 1
    .parameter "value"

    .prologue
    .line 305
    iget-object v0, p0, Lcom/android/mms/ui/NumberPicker;->mFormatter:Lcom/android/mms/ui/NumberPicker$Formatter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/NumberPicker;->mFormatter:Lcom/android/mms/ui/NumberPicker$Formatter;

    invoke-interface {v0, p1}, Lcom/android/mms/ui/NumberPicker$Formatter;->toString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getSelectedPos(Ljava/lang/String;)I
    .locals 2
    .parameter "str"

    .prologue
    .line 473
    iget-object v1, p0, Lcom/android/mms/ui/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-nez v1, :cond_0

    .line 475
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 499
    :goto_0
    return v1

    .line 480
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v1, p0, Lcom/android/mms/ui/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 483
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 484
    iget-object v1, p0, Lcom/android/mms/ui/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 485
    iget v1, p0, Lcom/android/mms/ui/NumberPicker;->mStart:I

    add-int/2addr v1, v0

    goto :goto_0

    .line 480
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 493
    :cond_2
    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    goto :goto_0

    .line 476
    .end local v0           #i:I
    :catch_0
    move-exception v1

    .line 499
    :goto_2
    iget v1, p0, Lcom/android/mms/ui/NumberPicker;->mStart:I

    goto :goto_0

    .line 494
    .restart local v0       #i:I
    :catch_1
    move-exception v1

    goto :goto_2
.end method

.method private notifyChange()V
    .locals 3

    .prologue
    .line 337
    iget-object v0, p0, Lcom/android/mms/ui/NumberPicker;->mListener:Lcom/android/mms/ui/NumberPicker$OnChangedListener;

    if-eqz v0, :cond_0

    .line 338
    iget-object v0, p0, Lcom/android/mms/ui/NumberPicker;->mListener:Lcom/android/mms/ui/NumberPicker$OnChangedListener;

    iget v1, p0, Lcom/android/mms/ui/NumberPicker;->mPrevious:I

    iget v2, p0, Lcom/android/mms/ui/NumberPicker;->mCurrent:I

    invoke-interface {v0, p0, v1, v2}, Lcom/android/mms/ui/NumberPicker$OnChangedListener;->onChanged(Lcom/android/mms/ui/NumberPicker;II)V

    .line 340
    :cond_0
    return-void
.end method

.method private updateView()V
    .locals 4

    .prologue
    .line 353
    iget-object v0, p0, Lcom/android/mms/ui/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 354
    iget-object v0, p0, Lcom/android/mms/ui/NumberPicker;->mText:Landroid/widget/EditText;

    iget v1, p0, Lcom/android/mms/ui/NumberPicker;->mCurrent:I

    invoke-direct {p0, v1}, Lcom/android/mms/ui/NumberPicker;->formatNumber(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 358
    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/NumberPicker;->mText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/mms/ui/NumberPicker;->mText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 359
    return-void

    .line 356
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/NumberPicker;->mText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/mms/ui/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    iget v2, p0, Lcom/android/mms/ui/NumberPicker;->mCurrent:I

    iget v3, p0, Lcom/android/mms/ui/NumberPicker;->mStart:I

    sub-int/2addr v2, v3

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private validateCurrentView(Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "str"

    .prologue
    .line 362
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/mms/ui/NumberPicker;->getSelectedPos(Ljava/lang/String;)I

    move-result v0

    .line 363
    .local v0, val:I
    iget v1, p0, Lcom/android/mms/ui/NumberPicker;->mStart:I

    if-lt v0, v1, :cond_0

    iget v1, p0, Lcom/android/mms/ui/NumberPicker;->mEnd:I

    if-gt v0, v1, :cond_0

    .line 364
    iget v1, p0, Lcom/android/mms/ui/NumberPicker;->mCurrent:I

    if-eq v1, v0, :cond_0

    .line 365
    iget v1, p0, Lcom/android/mms/ui/NumberPicker;->mCurrent:I

    iput v1, p0, Lcom/android/mms/ui/NumberPicker;->mPrevious:I

    .line 366
    iput v0, p0, Lcom/android/mms/ui/NumberPicker;->mCurrent:I

    .line 367
    invoke-direct {p0}, Lcom/android/mms/ui/NumberPicker;->notifyChange()V

    .line 370
    :cond_0
    invoke-direct {p0}, Lcom/android/mms/ui/NumberPicker;->updateView()V

    .line 371
    return-void
.end method

.method private validateInput(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 374
    check-cast p1, Landroid/widget/TextView;

    .end local p1
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 375
    .local v0, str:Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 378
    invoke-direct {p0}, Lcom/android/mms/ui/NumberPicker;->updateView()V

    .line 384
    :goto_0
    return-void

    .line 382
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/mms/ui/NumberPicker;->validateCurrentView(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public cancelDecrement()V
    .locals 1

    .prologue
    .line 397
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/NumberPicker;->mDecrement:Z

    .line 398
    return-void
.end method

.method public cancelIncrement()V
    .locals 1

    .prologue
    .line 390
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/NumberPicker;->mIncrement:Z

    .line 391
    return-void
.end method

.method protected changeCurrent(I)V
    .locals 1
    .parameter "current"

    .prologue
    .line 321
    iget v0, p0, Lcom/android/mms/ui/NumberPicker;->mEnd:I

    if-le p1, v0, :cond_1

    .line 322
    iget p1, p0, Lcom/android/mms/ui/NumberPicker;->mStart:I

    .line 326
    :cond_0
    :goto_0
    iget v0, p0, Lcom/android/mms/ui/NumberPicker;->mCurrent:I

    iput v0, p0, Lcom/android/mms/ui/NumberPicker;->mPrevious:I

    .line 327
    iput p1, p0, Lcom/android/mms/ui/NumberPicker;->mCurrent:I

    .line 328
    invoke-direct {p0}, Lcom/android/mms/ui/NumberPicker;->notifyChange()V

    .line 329
    invoke-direct {p0}, Lcom/android/mms/ui/NumberPicker;->updateView()V

    .line 330
    return-void

    .line 323
    :cond_1
    iget v0, p0, Lcom/android/mms/ui/NumberPicker;->mStart:I

    if-ge p1, v0, :cond_0

    .line 324
    iget p1, p0, Lcom/android/mms/ui/NumberPicker;->mEnd:I

    goto :goto_0
.end method

.method protected getBeginRange()I
    .locals 1

    .prologue
    .line 523
    iget v0, p0, Lcom/android/mms/ui/NumberPicker;->mStart:I

    return v0
.end method

.method public getCurrent()I
    .locals 1

    .prologue
    .line 507
    iget v0, p0, Lcom/android/mms/ui/NumberPicker;->mCurrent:I

    return v0
.end method

.method protected getEndRange()I
    .locals 1

    .prologue
    .line 515
    iget v0, p0, Lcom/android/mms/ui/NumberPicker;->mEnd:I

    return v0
.end method

.method public setCurrent(I)V
    .locals 2
    .parameter "current"

    .prologue
    .line 285
    iget v0, p0, Lcom/android/mms/ui/NumberPicker;->mStart:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/android/mms/ui/NumberPicker;->mEnd:I

    if-le p1, v0, :cond_1

    .line 286
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "current should be >= start and <= end"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 289
    :cond_1
    iput p1, p0, Lcom/android/mms/ui/NumberPicker;->mCurrent:I

    .line 290
    invoke-direct {p0}, Lcom/android/mms/ui/NumberPicker;->updateView()V

    .line 291
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 226
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 227
    iget-object v0, p0, Lcom/android/mms/ui/NumberPicker;->mIncrementButton:Lcom/android/mms/ui/NumberPickerButton;

    invoke-virtual {v0, p1}, Lcom/android/mms/ui/NumberPickerButton;->setEnabled(Z)V

    .line 228
    iget-object v0, p0, Lcom/android/mms/ui/NumberPicker;->mDecrementButton:Lcom/android/mms/ui/NumberPickerButton;

    invoke-virtual {v0, p1}, Lcom/android/mms/ui/NumberPickerButton;->setEnabled(Z)V

    .line 229
    iget-object v0, p0, Lcom/android/mms/ui/NumberPicker;->mText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 230
    return-void
.end method

.method public setRange(II)V
    .locals 1
    .parameter "start"
    .parameter "end"

    .prologue
    .line 257
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/mms/ui/NumberPicker;->setRange(II[Ljava/lang/String;)V

    .line 258
    return-void
.end method

.method public setRange(II[Ljava/lang/String;)V
    .locals 0
    .parameter "start"
    .parameter "end"
    .parameter "displayedValues"

    .prologue
    .line 270
    iput-object p3, p0, Lcom/android/mms/ui/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    .line 271
    iput p1, p0, Lcom/android/mms/ui/NumberPicker;->mStart:I

    .line 272
    iput p2, p0, Lcom/android/mms/ui/NumberPicker;->mEnd:I

    .line 273
    iput p1, p0, Lcom/android/mms/ui/NumberPicker;->mCurrent:I

    .line 274
    invoke-direct {p0}, Lcom/android/mms/ui/NumberPicker;->updateView()V

    .line 275
    return-void
.end method

.method public setSpeed(J)V
    .locals 0
    .parameter "speed"

    .prologue
    .line 301
    iput-wide p1, p0, Lcom/android/mms/ui/NumberPicker;->mSpeed:J

    .line 302
    return-void
.end method
