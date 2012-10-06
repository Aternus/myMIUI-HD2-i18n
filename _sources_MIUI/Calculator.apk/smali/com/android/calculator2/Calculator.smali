.class public Lcom/android/calculator2/Calculator;
.super Landroid/app/Activity;
.source "Calculator.java"


# instance fields
.field private mDisplay:Lcom/android/calculator2/CalculatorDisplay;

.field private mHistory:Lcom/android/calculator2/History;

.field mListener:Lcom/android/calculator2/EventListener;

.field private mLogic:Lcom/android/calculator2/Logic;

.field private mPanelSwitcher:Lcom/android/calculator2/PanelSwitcher;

.field private mPersist:Lcom/android/calculator2/Persist;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 33
    new-instance v0, Lcom/android/calculator2/EventListener;

    invoke-direct {v0}, Lcom/android/calculator2/EventListener;-><init>()V

    iput-object v0, p0, Lcom/android/calculator2/Calculator;->mListener:Lcom/android/calculator2/EventListener;

    return-void
.end method

.method static log(Ljava/lang/String;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 169
    return-void
.end method


# virtual methods
.method public adjustFontSize(Landroid/widget/TextView;)V
    .locals 6
    .parameter "view"

    .prologue
    .line 177
    invoke-virtual {p1}, Landroid/widget/TextView;->getTextSize()F

    move-result v1

    .line 178
    .local v1, fontPixelSize:F
    invoke-virtual {p0}, Lcom/android/calculator2/Calculator;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 179
    .local v0, display:Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 180
    .local v2, h:I
    int-to-float v4, v2

    const/high16 v5, 0x43a0

    div-float v3, v4, v5

    .line 181
    .local v3, ratio:F
    const/4 v4, 0x0

    mul-float v5, v1, v3

    invoke-virtual {p1, v4, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 182
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "state"

    .prologue
    const/4 v6, 0x0

    .line 56
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 58
    const v2, 0x7f030001

    invoke-virtual {p0, v2}, Lcom/android/calculator2/Calculator;->setContentView(I)V

    .line 60
    new-instance v2, Lcom/android/calculator2/Persist;

    invoke-direct {v2, p0}, Lcom/android/calculator2/Persist;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/calculator2/Calculator;->mPersist:Lcom/android/calculator2/Persist;

    .line 61
    iget-object v2, p0, Lcom/android/calculator2/Calculator;->mPersist:Lcom/android/calculator2/Persist;

    iget-object v2, v2, Lcom/android/calculator2/Persist;->history:Lcom/android/calculator2/History;

    iput-object v2, p0, Lcom/android/calculator2/Calculator;->mHistory:Lcom/android/calculator2/History;

    .line 63
    const v2, 0x7f070002

    invoke-virtual {p0, v2}, Lcom/android/calculator2/Calculator;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/calculator2/CalculatorDisplay;

    iput-object v2, p0, Lcom/android/calculator2/Calculator;->mDisplay:Lcom/android/calculator2/CalculatorDisplay;

    .line 65
    new-instance v3, Lcom/android/calculator2/Logic;

    iget-object v4, p0, Lcom/android/calculator2/Calculator;->mHistory:Lcom/android/calculator2/History;

    iget-object v5, p0, Lcom/android/calculator2/Calculator;->mDisplay:Lcom/android/calculator2/CalculatorDisplay;

    const v2, 0x7f070016

    invoke-virtual {p0, v2}, Lcom/android/calculator2/Calculator;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    invoke-direct {v3, p0, v4, v5, v2}, Lcom/android/calculator2/Logic;-><init>(Landroid/content/Context;Lcom/android/calculator2/History;Lcom/android/calculator2/CalculatorDisplay;Landroid/widget/Button;)V

    iput-object v3, p0, Lcom/android/calculator2/Calculator;->mLogic:Lcom/android/calculator2/Logic;

    .line 66
    new-instance v0, Lcom/android/calculator2/HistoryAdapter;

    iget-object v2, p0, Lcom/android/calculator2/Calculator;->mHistory:Lcom/android/calculator2/History;

    iget-object v3, p0, Lcom/android/calculator2/Calculator;->mLogic:Lcom/android/calculator2/Logic;

    invoke-direct {v0, p0, v2, v3}, Lcom/android/calculator2/HistoryAdapter;-><init>(Landroid/content/Context;Lcom/android/calculator2/History;Lcom/android/calculator2/Logic;)V

    .line 67
    .local v0, historyAdapter:Lcom/android/calculator2/HistoryAdapter;
    iget-object v2, p0, Lcom/android/calculator2/Calculator;->mHistory:Lcom/android/calculator2/History;

    invoke-virtual {v2, v0}, Lcom/android/calculator2/History;->setObserver(Landroid/widget/BaseAdapter;)V

    .line 69
    const v2, 0x7f070004

    invoke-virtual {p0, v2}, Lcom/android/calculator2/Calculator;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/calculator2/PanelSwitcher;

    iput-object v2, p0, Lcom/android/calculator2/Calculator;->mPanelSwitcher:Lcom/android/calculator2/PanelSwitcher;

    .line 70
    iget-object v2, p0, Lcom/android/calculator2/Calculator;->mPanelSwitcher:Lcom/android/calculator2/PanelSwitcher;

    if-nez p1, :cond_1

    move v3, v6

    :goto_0
    invoke-virtual {v2, v3}, Lcom/android/calculator2/PanelSwitcher;->setCurrentIndex(I)V

    .line 72
    iget-object v2, p0, Lcom/android/calculator2/Calculator;->mListener:Lcom/android/calculator2/EventListener;

    iget-object v3, p0, Lcom/android/calculator2/Calculator;->mLogic:Lcom/android/calculator2/Logic;

    iget-object v4, p0, Lcom/android/calculator2/Calculator;->mPanelSwitcher:Lcom/android/calculator2/PanelSwitcher;

    invoke-virtual {v2, v3, v4}, Lcom/android/calculator2/EventListener;->setHandler(Lcom/android/calculator2/Logic;Lcom/android/calculator2/PanelSwitcher;)V

    .line 74
    iget-object v2, p0, Lcom/android/calculator2/Calculator;->mDisplay:Lcom/android/calculator2/CalculatorDisplay;

    iget-object v3, p0, Lcom/android/calculator2/Calculator;->mListener:Lcom/android/calculator2/EventListener;

    invoke-virtual {v2, v3}, Lcom/android/calculator2/CalculatorDisplay;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 77
    const v2, 0x7f070003

    invoke-virtual {p0, v2}, Lcom/android/calculator2/Calculator;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .local v1, view:Landroid/view/View;
    if-eqz v1, :cond_0

    .line 79
    iget-object v2, p0, Lcom/android/calculator2/Calculator;->mListener:Lcom/android/calculator2/EventListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 86
    :cond_0
    return-void

    .line 70
    .end local v1           #view:Landroid/view/View;
    :cond_1
    const-string v3, "state-current-view"

    invoke-virtual {p1, v3, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .parameter "menu"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 90
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 93
    const v1, 0x7f050023

    invoke-interface {p1, v3, v4, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 94
    .local v0, item:Landroid/view/MenuItem;
    const v1, 0x7f020003

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 96
    const/4 v1, 0x3

    const v2, 0x7f050022

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 97
    const/high16 v1, 0x7f02

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 99
    const/4 v1, 0x2

    const v2, 0x7f050021

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 100
    const v1, 0x7f020005

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 102
    return v4
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "keyEvent"

    .prologue
    const/4 v1, 0x1

    .line 156
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/calculator2/Calculator;->mPanelSwitcher:Lcom/android/calculator2/PanelSwitcher;

    invoke-virtual {v0}, Lcom/android/calculator2/PanelSwitcher;->getCurrentIndex()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 158
    iget-object v0, p0, Lcom/android/calculator2/Calculator;->mPanelSwitcher:Lcom/android/calculator2/PanelSwitcher;

    invoke-virtual {v0}, Lcom/android/calculator2/PanelSwitcher;->moveRight()V

    move v0, v1

    .line 161
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 119
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 138
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 121
    :pswitch_0
    iget-object v0, p0, Lcom/android/calculator2/Calculator;->mHistory:Lcom/android/calculator2/History;

    invoke-virtual {v0}, Lcom/android/calculator2/History;->clear()V

    goto :goto_0

    .line 125
    :pswitch_1
    iget-object v0, p0, Lcom/android/calculator2/Calculator;->mPanelSwitcher:Lcom/android/calculator2/PanelSwitcher;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calculator2/Calculator;->mPanelSwitcher:Lcom/android/calculator2/PanelSwitcher;

    invoke-virtual {v0}, Lcom/android/calculator2/PanelSwitcher;->getCurrentIndex()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 127
    iget-object v0, p0, Lcom/android/calculator2/Calculator;->mPanelSwitcher:Lcom/android/calculator2/PanelSwitcher;

    invoke-virtual {v0}, Lcom/android/calculator2/PanelSwitcher;->moveRight()V

    goto :goto_0

    .line 132
    :pswitch_2
    iget-object v0, p0, Lcom/android/calculator2/Calculator;->mPanelSwitcher:Lcom/android/calculator2/PanelSwitcher;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calculator2/Calculator;->mPanelSwitcher:Lcom/android/calculator2/PanelSwitcher;

    invoke-virtual {v0}, Lcom/android/calculator2/PanelSwitcher;->getCurrentIndex()I

    move-result v0

    if-nez v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/android/calculator2/Calculator;->mPanelSwitcher:Lcom/android/calculator2/PanelSwitcher;

    invoke-virtual {v0}, Lcom/android/calculator2/PanelSwitcher;->moveLeft()V

    goto :goto_0

    .line 119
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 149
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 150
    iget-object v0, p0, Lcom/android/calculator2/Calculator;->mLogic:Lcom/android/calculator2/Logic;

    invoke-virtual {v0}, Lcom/android/calculator2/Logic;->updateHistory()V

    .line 151
    iget-object v0, p0, Lcom/android/calculator2/Calculator;->mPersist:Lcom/android/calculator2/Persist;

    invoke-virtual {v0}, Lcom/android/calculator2/Persist;->save()V

    .line 152
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 107
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 108
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calculator2/Calculator;->mPanelSwitcher:Lcom/android/calculator2/PanelSwitcher;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/calculator2/Calculator;->mPanelSwitcher:Lcom/android/calculator2/PanelSwitcher;

    invoke-virtual {v1}, Lcom/android/calculator2/PanelSwitcher;->getCurrentIndex()I

    move-result v1

    if-ne v1, v2, :cond_0

    move v1, v2

    :goto_0
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 111
    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calculator2/Calculator;->mPanelSwitcher:Lcom/android/calculator2/PanelSwitcher;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/calculator2/Calculator;->mPanelSwitcher:Lcom/android/calculator2/PanelSwitcher;

    invoke-virtual {v1}, Lcom/android/calculator2/PanelSwitcher;->getCurrentIndex()I

    move-result v1

    if-nez v1, :cond_1

    move v1, v2

    :goto_1
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 114
    return v2

    :cond_0
    move v1, v3

    .line 108
    goto :goto_0

    :cond_1
    move v1, v3

    .line 111
    goto :goto_1
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "state"

    .prologue
    .line 143
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 144
    const-string v0, "state-current-view"

    iget-object v1, p0, Lcom/android/calculator2/Calculator;->mPanelSwitcher:Lcom/android/calculator2/PanelSwitcher;

    invoke-virtual {v1}, Lcom/android/calculator2/PanelSwitcher;->getCurrentIndex()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 145
    return-void
.end method
