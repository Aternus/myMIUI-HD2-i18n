.class Lcom/android/calculator2/EventListener;
.super Ljava/lang/Object;
.source "EventListener.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/view/View$OnLongClickListener;


# static fields
.field private static final EQUAL:[C


# instance fields
.field mHandler:Lcom/android/calculator2/Logic;

.field mPanelSwitcher:Lcom/android/calculator2/PanelSwitcher;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 78
    const/4 v0, 0x1

    new-array v0, v0, [C

    const/4 v1, 0x0

    const/16 v2, 0x3d

    aput-char v2, v0, v1

    sput-object v0, Lcom/android/calculator2/EventListener;->EQUAL:[C

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    .line 36
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 37
    .local v0, id:I
    sparse-switch v0, :sswitch_data_0

    .line 53
    instance-of v2, p1, Landroid/widget/Button;

    if-eqz v2, :cond_1

    .line 54
    check-cast p1, Landroid/widget/Button;

    .end local p1
    invoke-virtual {p1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 55
    .local v1, text:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x2

    if-lt v2, v3, :cond_0

    .line 57
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x28

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 59
    :cond_0
    iget-object v2, p0, Lcom/android/calculator2/EventListener;->mHandler:Lcom/android/calculator2/Logic;

    invoke-virtual {v2, v1}, Lcom/android/calculator2/Logic;->insert(Ljava/lang/String;)V

    .line 60
    iget-object v2, p0, Lcom/android/calculator2/EventListener;->mPanelSwitcher:Lcom/android/calculator2/PanelSwitcher;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/calculator2/EventListener;->mPanelSwitcher:Lcom/android/calculator2/PanelSwitcher;

    invoke-virtual {v2}, Lcom/android/calculator2/PanelSwitcher;->getCurrentIndex()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 62
    iget-object v2, p0, Lcom/android/calculator2/EventListener;->mPanelSwitcher:Lcom/android/calculator2/PanelSwitcher;

    invoke-virtual {v2}, Lcom/android/calculator2/PanelSwitcher;->moveRight()V

    .line 66
    .end local v1           #text:Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 39
    .restart local p1
    :sswitch_0
    iget-object v2, p0, Lcom/android/calculator2/EventListener;->mHandler:Lcom/android/calculator2/Logic;

    invoke-virtual {v2}, Lcom/android/calculator2/Logic;->onDelete()V

    goto :goto_0

    .line 43
    :sswitch_1
    iget-object v2, p0, Lcom/android/calculator2/EventListener;->mHandler:Lcom/android/calculator2/Logic;

    invoke-virtual {v2}, Lcom/android/calculator2/Logic;->onEnter()V

    goto :goto_0

    .line 37
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f070003 -> :sswitch_0
        0x7f070016 -> :sswitch_1
    .end sparse-switch
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 6
    .parameter "view"
    .parameter "keyCode"
    .parameter "keyEvent"

    .prologue
    const/16 v3, 0x15

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 82
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 84
    .local v0, action:I
    if-eq p2, v3, :cond_0

    const/16 v2, 0x16

    if-ne p2, v2, :cond_2

    .line 86
    :cond_0
    iget-object v2, p0, Lcom/android/calculator2/EventListener;->mHandler:Lcom/android/calculator2/Logic;

    if-ne p2, v3, :cond_1

    move v3, v4

    :goto_0
    invoke-virtual {v2, v3}, Lcom/android/calculator2/Logic;->eatHorizontalMove(Z)Z

    move-result v1

    .local v1, eat:Z
    move v2, v1

    .line 134
    .end local v1           #eat:Z
    :goto_1
    return v2

    :cond_1
    move v3, v5

    .line 86
    goto :goto_0

    .line 91
    :cond_2
    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    if-nez p2, :cond_3

    move v2, v4

    .line 92
    goto :goto_1

    .line 97
    :cond_3
    sget-object v2, Lcom/android/calculator2/EventListener;->EQUAL:[C

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v3

    invoke-virtual {p3, v2, v3}, Landroid/view/KeyEvent;->getMatch([CI)C

    move-result v2

    const/16 v3, 0x3d

    if-ne v2, v3, :cond_5

    .line 98
    if-ne v0, v4, :cond_4

    .line 99
    iget-object v2, p0, Lcom/android/calculator2/EventListener;->mHandler:Lcom/android/calculator2/Logic;

    invoke-virtual {v2}, Lcom/android/calculator2/Logic;->onEnter()V

    :cond_4
    move v2, v4

    .line 101
    goto :goto_1

    .line 104
    :cond_5
    const/16 v2, 0x17

    if-eq p2, v2, :cond_6

    const/16 v2, 0x13

    if-eq p2, v2, :cond_6

    const/16 v2, 0x14

    if-eq p2, v2, :cond_6

    const/16 v2, 0x42

    if-eq p2, v2, :cond_6

    move v2, v5

    .line 108
    goto :goto_1

    .line 118
    :cond_6
    if-ne v0, v4, :cond_7

    .line 119
    sparse-switch p2, :sswitch_data_0

    :cond_7
    :goto_2
    move v2, v4

    .line 134
    goto :goto_1

    .line 122
    :sswitch_0
    iget-object v2, p0, Lcom/android/calculator2/EventListener;->mHandler:Lcom/android/calculator2/Logic;

    invoke-virtual {v2}, Lcom/android/calculator2/Logic;->onEnter()V

    goto :goto_2

    .line 126
    :sswitch_1
    iget-object v2, p0, Lcom/android/calculator2/EventListener;->mHandler:Lcom/android/calculator2/Logic;

    invoke-virtual {v2}, Lcom/android/calculator2/Logic;->onUp()V

    goto :goto_2

    .line 130
    :sswitch_2
    iget-object v2, p0, Lcom/android/calculator2/EventListener;->mHandler:Lcom/android/calculator2/Logic;

    invoke-virtual {v2}, Lcom/android/calculator2/Logic;->onDown()V

    goto :goto_2

    .line 119
    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_1
        0x14 -> :sswitch_2
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 2
    .parameter "view"

    .prologue
    .line 70
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 71
    .local v0, id:I
    const v1, 0x7f070003

    if-ne v0, v1, :cond_0

    .line 72
    iget-object v1, p0, Lcom/android/calculator2/EventListener;->mHandler:Lcom/android/calculator2/Logic;

    invoke-virtual {v1}, Lcom/android/calculator2/Logic;->onClear()V

    .line 73
    const/4 v1, 0x1

    .line 75
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method setHandler(Lcom/android/calculator2/Logic;Lcom/android/calculator2/PanelSwitcher;)V
    .locals 0
    .parameter "handler"
    .parameter "panelSwitcher"

    .prologue
    .line 30
    iput-object p1, p0, Lcom/android/calculator2/EventListener;->mHandler:Lcom/android/calculator2/Logic;

    .line 31
    iput-object p2, p0, Lcom/android/calculator2/EventListener;->mPanelSwitcher:Lcom/android/calculator2/PanelSwitcher;

    .line 32
    return-void
.end method
