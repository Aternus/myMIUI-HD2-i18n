.class public Lcom/android/launcher2/gadget/AwesomeView;
.super Landroid/view/View;
.source "AwesomeView.java"


# instance fields
.field private mAmPm:Lcom/miui/android/screenelement/IndexedNumberVariable;

.field private mDate:Lcom/miui/android/screenelement/IndexedNumberVariable;

.field private mDayOfWeek:Lcom/miui/android/screenelement/IndexedNumberVariable;

.field private mElementGroup:Lcom/miui/android/screenelement/ScreenElement;

.field private mHour12:Lcom/miui/android/screenelement/IndexedNumberVariable;

.field private mHour24:Lcom/miui/android/screenelement/IndexedNumberVariable;

.field private mMilliSecond:Lcom/miui/android/screenelement/IndexedNumberVariable;

.field private mMinute:Lcom/miui/android/screenelement/IndexedNumberVariable;

.field private mMonth:Lcom/miui/android/screenelement/IndexedNumberVariable;

.field private mSecond:Lcom/miui/android/screenelement/IndexedNumberVariable;

.field private mTime:Lcom/miui/android/screenelement/IndexedNumberVariable;

.field private mUpdateInterval:I

.field private mYear:Lcom/miui/android/screenelement/IndexedNumberVariable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/gadget/AwesomeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 65
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 66
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/launcher2/gadget/AwesomeView;->mElementGroup:Lcom/miui/android/screenelement/ScreenElement;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/android/launcher2/gadget/AwesomeView;->mElementGroup:Lcom/miui/android/screenelement/ScreenElement;

    invoke-virtual {v0}, Lcom/miui/android/screenelement/ScreenElement;->finish()V

    .line 125
    :cond_0
    return-void
.end method

.method public getUpdateInterval()I
    .locals 1

    .prologue
    .line 106
    iget v0, p0, Lcom/android/launcher2/gadget/AwesomeView;->mUpdateInterval:I

    return v0
.end method

.method public load(Lcom/miui/android/screenelement/ScreenContext;)Z
    .locals 5
    .parameter "elementContext"

    .prologue
    .line 69
    new-instance v2, Lcom/miui/android/screenelement/IndexedNumberVariable;

    const-string v3, "time"

    iget-object v4, p1, Lcom/miui/android/screenelement/ScreenContext;->mVariables:Lcom/miui/android/screenelement/Variables;

    invoke-direct {v2, v3, v4}, Lcom/miui/android/screenelement/IndexedNumberVariable;-><init>(Ljava/lang/String;Lcom/miui/android/screenelement/Variables;)V

    iput-object v2, p0, Lcom/android/launcher2/gadget/AwesomeView;->mTime:Lcom/miui/android/screenelement/IndexedNumberVariable;

    .line 71
    new-instance v2, Lcom/miui/android/screenelement/IndexedNumberVariable;

    const-string v3, "ampm"

    iget-object v4, p1, Lcom/miui/android/screenelement/ScreenContext;->mVariables:Lcom/miui/android/screenelement/Variables;

    invoke-direct {v2, v3, v4}, Lcom/miui/android/screenelement/IndexedNumberVariable;-><init>(Ljava/lang/String;Lcom/miui/android/screenelement/Variables;)V

    iput-object v2, p0, Lcom/android/launcher2/gadget/AwesomeView;->mAmPm:Lcom/miui/android/screenelement/IndexedNumberVariable;

    .line 72
    new-instance v2, Lcom/miui/android/screenelement/IndexedNumberVariable;

    const-string v3, "hour12"

    iget-object v4, p1, Lcom/miui/android/screenelement/ScreenContext;->mVariables:Lcom/miui/android/screenelement/Variables;

    invoke-direct {v2, v3, v4}, Lcom/miui/android/screenelement/IndexedNumberVariable;-><init>(Ljava/lang/String;Lcom/miui/android/screenelement/Variables;)V

    iput-object v2, p0, Lcom/android/launcher2/gadget/AwesomeView;->mHour12:Lcom/miui/android/screenelement/IndexedNumberVariable;

    .line 73
    new-instance v2, Lcom/miui/android/screenelement/IndexedNumberVariable;

    const-string v3, "hour24"

    iget-object v4, p1, Lcom/miui/android/screenelement/ScreenContext;->mVariables:Lcom/miui/android/screenelement/Variables;

    invoke-direct {v2, v3, v4}, Lcom/miui/android/screenelement/IndexedNumberVariable;-><init>(Ljava/lang/String;Lcom/miui/android/screenelement/Variables;)V

    iput-object v2, p0, Lcom/android/launcher2/gadget/AwesomeView;->mHour24:Lcom/miui/android/screenelement/IndexedNumberVariable;

    .line 74
    new-instance v2, Lcom/miui/android/screenelement/IndexedNumberVariable;

    const-string v3, "minute"

    iget-object v4, p1, Lcom/miui/android/screenelement/ScreenContext;->mVariables:Lcom/miui/android/screenelement/Variables;

    invoke-direct {v2, v3, v4}, Lcom/miui/android/screenelement/IndexedNumberVariable;-><init>(Ljava/lang/String;Lcom/miui/android/screenelement/Variables;)V

    iput-object v2, p0, Lcom/android/launcher2/gadget/AwesomeView;->mMinute:Lcom/miui/android/screenelement/IndexedNumberVariable;

    .line 75
    new-instance v2, Lcom/miui/android/screenelement/IndexedNumberVariable;

    const-string v3, "second"

    iget-object v4, p1, Lcom/miui/android/screenelement/ScreenContext;->mVariables:Lcom/miui/android/screenelement/Variables;

    invoke-direct {v2, v3, v4}, Lcom/miui/android/screenelement/IndexedNumberVariable;-><init>(Ljava/lang/String;Lcom/miui/android/screenelement/Variables;)V

    iput-object v2, p0, Lcom/android/launcher2/gadget/AwesomeView;->mSecond:Lcom/miui/android/screenelement/IndexedNumberVariable;

    .line 76
    new-instance v2, Lcom/miui/android/screenelement/IndexedNumberVariable;

    const-string v3, "msec"

    iget-object v4, p1, Lcom/miui/android/screenelement/ScreenContext;->mVariables:Lcom/miui/android/screenelement/Variables;

    invoke-direct {v2, v3, v4}, Lcom/miui/android/screenelement/IndexedNumberVariable;-><init>(Ljava/lang/String;Lcom/miui/android/screenelement/Variables;)V

    iput-object v2, p0, Lcom/android/launcher2/gadget/AwesomeView;->mMilliSecond:Lcom/miui/android/screenelement/IndexedNumberVariable;

    .line 77
    new-instance v2, Lcom/miui/android/screenelement/IndexedNumberVariable;

    const-string v3, "year"

    iget-object v4, p1, Lcom/miui/android/screenelement/ScreenContext;->mVariables:Lcom/miui/android/screenelement/Variables;

    invoke-direct {v2, v3, v4}, Lcom/miui/android/screenelement/IndexedNumberVariable;-><init>(Ljava/lang/String;Lcom/miui/android/screenelement/Variables;)V

    iput-object v2, p0, Lcom/android/launcher2/gadget/AwesomeView;->mYear:Lcom/miui/android/screenelement/IndexedNumberVariable;

    .line 78
    new-instance v2, Lcom/miui/android/screenelement/IndexedNumberVariable;

    const-string v3, "month"

    iget-object v4, p1, Lcom/miui/android/screenelement/ScreenContext;->mVariables:Lcom/miui/android/screenelement/Variables;

    invoke-direct {v2, v3, v4}, Lcom/miui/android/screenelement/IndexedNumberVariable;-><init>(Ljava/lang/String;Lcom/miui/android/screenelement/Variables;)V

    iput-object v2, p0, Lcom/android/launcher2/gadget/AwesomeView;->mMonth:Lcom/miui/android/screenelement/IndexedNumberVariable;

    .line 79
    new-instance v2, Lcom/miui/android/screenelement/IndexedNumberVariable;

    const-string v3, "date"

    iget-object v4, p1, Lcom/miui/android/screenelement/ScreenContext;->mVariables:Lcom/miui/android/screenelement/Variables;

    invoke-direct {v2, v3, v4}, Lcom/miui/android/screenelement/IndexedNumberVariable;-><init>(Ljava/lang/String;Lcom/miui/android/screenelement/Variables;)V

    iput-object v2, p0, Lcom/android/launcher2/gadget/AwesomeView;->mDate:Lcom/miui/android/screenelement/IndexedNumberVariable;

    .line 80
    new-instance v2, Lcom/miui/android/screenelement/IndexedNumberVariable;

    const-string v3, "day_of_week"

    iget-object v4, p1, Lcom/miui/android/screenelement/ScreenContext;->mVariables:Lcom/miui/android/screenelement/Variables;

    invoke-direct {v2, v3, v4}, Lcom/miui/android/screenelement/IndexedNumberVariable;-><init>(Ljava/lang/String;Lcom/miui/android/screenelement/Variables;)V

    iput-object v2, p0, Lcom/android/launcher2/gadget/AwesomeView;->mDayOfWeek:Lcom/miui/android/screenelement/IndexedNumberVariable;

    .line 83
    :try_start_0
    iget-object v2, p1, Lcom/miui/android/screenelement/ScreenContext;->mResourceManager:Lcom/miui/android/screenelement/ResourceManager;

    invoke-virtual {v2}, Lcom/miui/android/screenelement/ResourceManager;->getManifestRoot()Lorg/w3c/dom/Element;

    move-result-object v1

    .line 84
    .local v1, root:Lorg/w3c/dom/Element;
    const-string v2, "clock"

    invoke-interface {v1}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 85
    new-instance v2, Lcom/miui/android/screenelement/ScreenElementLoadException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bad root tag "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/miui/android/screenelement/ScreenElementLoadException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Lcom/miui/android/screenelement/ScreenElementLoadException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 97
    .end local v1           #root:Lorg/w3c/dom/Element;
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 98
    .local v0, e:Lcom/miui/android/screenelement/ScreenElementLoadException;
    invoke-virtual {v0}, Lcom/miui/android/screenelement/ScreenElementLoadException;->printStackTrace()V

    .line 102
    .end local v0           #e:Lcom/miui/android/screenelement/ScreenElementLoadException;
    :goto_0
    const/4 v2, 0x0

    :goto_1
    return v2

    .line 88
    .restart local v1       #root:Lorg/w3c/dom/Element;
    :cond_0
    :try_start_1
    new-instance v2, Lcom/miui/android/screenelement/ElementGroup;

    invoke-direct {v2, v1, p1}, Lcom/miui/android/screenelement/ElementGroup;-><init>(Lorg/w3c/dom/Element;Lcom/miui/android/screenelement/ScreenContext;)V

    iput-object v2, p0, Lcom/android/launcher2/gadget/AwesomeView;->mElementGroup:Lcom/miui/android/screenelement/ScreenElement;

    .line 89
    iget-object v2, p0, Lcom/android/launcher2/gadget/AwesomeView;->mElementGroup:Lcom/miui/android/screenelement/ScreenElement;

    invoke-virtual {v2}, Lcom/miui/android/screenelement/ScreenElement;->init()V
    :try_end_1
    .catch Lcom/miui/android/screenelement/ScreenElementLoadException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 91
    :try_start_2
    const-string v2, "update_interval"

    invoke-interface {v1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/launcher2/gadget/AwesomeView;->mUpdateInterval:I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/miui/android/screenelement/ScreenElementLoadException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 96
    :goto_2
    const/4 v2, 0x1

    goto :goto_1

    .line 92
    :catch_1
    move-exception v2

    move-object v0, v2

    .line 93
    .local v0, e:Ljava/lang/NumberFormatException;
    const v2, 0xea60

    :try_start_3
    iput v2, p0, Lcom/android/launcher2/gadget/AwesomeView;->mUpdateInterval:I
    :try_end_3
    .catch Lcom/miui/android/screenelement/ScreenElementLoadException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    .line 99
    .end local v0           #e:Ljava/lang/NumberFormatException;
    .end local v1           #root:Lorg/w3c/dom/Element;
    :catch_2
    move-exception v2

    move-object v0, v2

    .line 100
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    .line 58
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 59
    iget-object v0, p0, Lcom/android/launcher2/gadget/AwesomeView;->mElementGroup:Lcom/miui/android/screenelement/ScreenElement;

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/android/launcher2/gadget/AwesomeView;->mElementGroup:Lcom/miui/android/screenelement/ScreenElement;

    invoke-virtual {v0, p1}, Lcom/miui/android/screenelement/ScreenElement;->render(Landroid/graphics/Canvas;)V

    .line 62
    :cond_0
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/launcher2/gadget/AwesomeView;->mElementGroup:Lcom/miui/android/screenelement/ScreenElement;

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/android/launcher2/gadget/AwesomeView;->mElementGroup:Lcom/miui/android/screenelement/ScreenElement;

    invoke-virtual {v0}, Lcom/miui/android/screenelement/ScreenElement;->pause()V

    .line 119
    :cond_0
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/launcher2/gadget/AwesomeView;->mElementGroup:Lcom/miui/android/screenelement/ScreenElement;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/android/launcher2/gadget/AwesomeView;->mElementGroup:Lcom/miui/android/screenelement/ScreenElement;

    invoke-virtual {v0}, Lcom/miui/android/screenelement/ScreenElement;->resume()V

    .line 113
    :cond_0
    return-void
.end method

.method public tick(J)V
    .locals 1
    .parameter "currentTime"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/launcher2/gadget/AwesomeView;->mElementGroup:Lcom/miui/android/screenelement/ScreenElement;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/android/launcher2/gadget/AwesomeView;->mElementGroup:Lcom/miui/android/screenelement/ScreenElement;

    invoke-virtual {v0, p1, p2}, Lcom/miui/android/screenelement/ScreenElement;->tick(J)V

    .line 131
    :cond_0
    return-void
.end method

.method public updateTimeOfVar(Ljava/util/Calendar;JLcom/miui/android/screenelement/Variables;)V
    .locals 3
    .parameter "calendar"
    .parameter "currentTime"
    .parameter "var"

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/launcher2/gadget/AwesomeView;->mTime:Lcom/miui/android/screenelement/IndexedNumberVariable;

    long-to-double v1, p2

    invoke-virtual {v0, v1, v2}, Lcom/miui/android/screenelement/IndexedNumberVariable;->set(D)V

    .line 136
    iget-object v0, p0, Lcom/android/launcher2/gadget/AwesomeView;->mAmPm:Lcom/miui/android/screenelement/IndexedNumberVariable;

    const/16 v1, 0x9

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    int-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/miui/android/screenelement/IndexedNumberVariable;->set(D)V

    .line 137
    iget-object v0, p0, Lcom/android/launcher2/gadget/AwesomeView;->mHour12:Lcom/miui/android/screenelement/IndexedNumberVariable;

    const/16 v1, 0xa

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    int-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/miui/android/screenelement/IndexedNumberVariable;->set(D)V

    .line 138
    iget-object v0, p0, Lcom/android/launcher2/gadget/AwesomeView;->mHour24:Lcom/miui/android/screenelement/IndexedNumberVariable;

    const/16 v1, 0xb

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    int-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/miui/android/screenelement/IndexedNumberVariable;->set(D)V

    .line 139
    iget-object v0, p0, Lcom/android/launcher2/gadget/AwesomeView;->mMinute:Lcom/miui/android/screenelement/IndexedNumberVariable;

    const/16 v1, 0xc

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    int-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/miui/android/screenelement/IndexedNumberVariable;->set(D)V

    .line 140
    iget-object v0, p0, Lcom/android/launcher2/gadget/AwesomeView;->mYear:Lcom/miui/android/screenelement/IndexedNumberVariable;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    int-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/miui/android/screenelement/IndexedNumberVariable;->set(D)V

    .line 141
    iget-object v0, p0, Lcom/android/launcher2/gadget/AwesomeView;->mMonth:Lcom/miui/android/screenelement/IndexedNumberVariable;

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    int-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/miui/android/screenelement/IndexedNumberVariable;->set(D)V

    .line 142
    iget-object v0, p0, Lcom/android/launcher2/gadget/AwesomeView;->mDate:Lcom/miui/android/screenelement/IndexedNumberVariable;

    const/4 v1, 0x5

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    int-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/miui/android/screenelement/IndexedNumberVariable;->set(D)V

    .line 143
    iget-object v0, p0, Lcom/android/launcher2/gadget/AwesomeView;->mSecond:Lcom/miui/android/screenelement/IndexedNumberVariable;

    const/16 v1, 0xd

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    int-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/miui/android/screenelement/IndexedNumberVariable;->set(D)V

    .line 144
    iget-object v0, p0, Lcom/android/launcher2/gadget/AwesomeView;->mMilliSecond:Lcom/miui/android/screenelement/IndexedNumberVariable;

    const/16 v1, 0xe

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    int-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/miui/android/screenelement/IndexedNumberVariable;->set(D)V

    .line 146
    iget-object v0, p0, Lcom/android/launcher2/gadget/AwesomeView;->mDayOfWeek:Lcom/miui/android/screenelement/IndexedNumberVariable;

    const/4 v1, 0x7

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    int-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/miui/android/screenelement/IndexedNumberVariable;->set(D)V

    .line 147
    return-void
.end method
