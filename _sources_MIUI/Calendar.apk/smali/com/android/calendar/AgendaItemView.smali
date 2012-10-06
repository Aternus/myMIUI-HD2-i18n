.class public Lcom/android/calendar/AgendaItemView;
.super Landroid/widget/RelativeLayout;
.source "AgendaItemView.java"


# instance fields
.field mPaint:Landroid/graphics/Paint;

.field private mTempEventBundle:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 33
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/AgendaItemView;->mPaint:Landroid/graphics/Paint;

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/AgendaItemView;->mPaint:Landroid/graphics/Paint;

    .line 43
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .parameter "canvas"

    .prologue
    const/4 v1, 0x0

    .line 47
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 48
    invoke-virtual {p0}, Lcom/android/calendar/AgendaItemView;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/calendar/AgendaAdapter$ViewHolder;

    .line 49
    .local v6, holder:Lcom/android/calendar/AgendaAdapter$ViewHolder;
    if-eqz v6, :cond_0

    .line 51
    iget-object v0, p0, Lcom/android/calendar/AgendaItemView;->mPaint:Landroid/graphics/Paint;

    iget v2, v6, Lcom/android/calendar/AgendaAdapter$ViewHolder;->calendarColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 52
    const/high16 v3, 0x40a0

    invoke-virtual {p0}, Lcom/android/calendar/AgendaItemView;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/android/calendar/AgendaItemView;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 55
    iget v0, v6, Lcom/android/calendar/AgendaAdapter$ViewHolder;->overLayColor:I

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/android/calendar/AgendaItemView;->mPaint:Landroid/graphics/Paint;

    iget v2, v6, Lcom/android/calendar/AgendaAdapter$ViewHolder;->overLayColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 57
    invoke-virtual {p0}, Lcom/android/calendar/AgendaItemView;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/android/calendar/AgendaItemView;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/android/calendar/AgendaItemView;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 60
    :cond_0
    return-void
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    .line 64
    iget-object v2, p0, Lcom/android/calendar/AgendaItemView;->mTempEventBundle:Landroid/os/Bundle;

    if-nez v2, :cond_0

    .line 65
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iput-object v2, p0, Lcom/android/calendar/AgendaItemView;->mTempEventBundle:Landroid/os/Bundle;

    .line 67
    :cond_0
    invoke-virtual {p0}, Lcom/android/calendar/AgendaItemView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/calendar/AgendaAdapter$ViewHolder;

    .line 68
    .local v1, holder:Lcom/android/calendar/AgendaAdapter$ViewHolder;
    if-eqz v1, :cond_1

    .line 70
    iget-object v0, p0, Lcom/android/calendar/AgendaItemView;->mTempEventBundle:Landroid/os/Bundle;

    .line 71
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "color"

    iget v3, v1, Lcom/android/calendar/AgendaAdapter$ViewHolder;->calendarColor:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 72
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setParcelableData(Landroid/os/Parcelable;)V

    .line 74
    .end local v0           #bundle:Landroid/os/Bundle;
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v2

    return v2
.end method
