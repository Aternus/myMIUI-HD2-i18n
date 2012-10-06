.class public Lcom/android/calendar/MultiStateButton;
.super Landroid/widget/Button;
.source "MultiStateButton.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field private mButtonDrawable:Landroid/graphics/drawable/Drawable;

.field private mButtonResource:I

.field private mButtonResources:[I

.field private mMaxStates:I

.field private mState:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 56
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/calendar/MultiStateButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 60
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/calendar/MultiStateButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 65
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    const-string v0, "MSB"

    iput-object v0, p0, Lcom/android/calendar/MultiStateButton;->TAG:Ljava/lang/String;

    .line 66
    iput v1, p0, Lcom/android/calendar/MultiStateButton;->mMaxStates:I

    .line 67
    iput v2, p0, Lcom/android/calendar/MultiStateButton;->mState:I

    .line 69
    new-array v0, v1, [I

    const v1, 0x7f02001a

    aput v1, v0, v2

    iput-object v0, p0, Lcom/android/calendar/MultiStateButton;->mButtonResources:[I

    .line 70
    iget-object v0, p0, Lcom/android/calendar/MultiStateButton;->mButtonResources:[I

    iget v1, p0, Lcom/android/calendar/MultiStateButton;->mState:I

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/calendar/MultiStateButton;->setButtonDrawable(I)V

    .line 71
    return-void
.end method


# virtual methods
.method public getState()I
    .locals 1

    .prologue
    .line 117
    iget v0, p0, Lcom/android/calendar/MultiStateButton;->mState:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .parameter "canvas"

    .prologue
    .line 163
    invoke-super {p0, p1}, Landroid/widget/Button;->onDraw(Landroid/graphics/Canvas;)V

    .line 164
    iget-object v6, p0, Lcom/android/calendar/MultiStateButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_0

    .line 165
    invoke-virtual {p0}, Lcom/android/calendar/MultiStateButton;->getGravity()I

    move-result v6

    and-int/lit8 v2, v6, 0x70

    .line 166
    .local v2, verticalGravity:I
    invoke-virtual {p0}, Lcom/android/calendar/MultiStateButton;->getGravity()I

    move-result v6

    and-int/lit8 v1, v6, 0x7

    .line 167
    .local v1, horizontalGravity:I
    iget-object v6, p0, Lcom/android/calendar/MultiStateButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 168
    .local v0, height:I
    iget-object v6, p0, Lcom/android/calendar/MultiStateButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    .line 170
    .local v3, width:I
    const/4 v5, 0x0

    .line 171
    .local v5, y:I
    const/4 v4, 0x0

    .line 173
    .local v4, x:I
    sparse-switch v2, :sswitch_data_0

    .line 181
    :goto_0
    sparse-switch v1, :sswitch_data_1

    .line 190
    :goto_1
    iget-object v6, p0, Lcom/android/calendar/MultiStateButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    add-int v7, v4, v3

    add-int v8, v5, v0

    invoke-virtual {v6, v4, v5, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 191
    iget-object v6, p0, Lcom/android/calendar/MultiStateButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 193
    .end local v0           #height:I
    .end local v1           #horizontalGravity:I
    .end local v2           #verticalGravity:I
    .end local v3           #width:I
    .end local v4           #x:I
    .end local v5           #y:I
    :cond_0
    return-void

    .line 175
    .restart local v0       #height:I
    .restart local v1       #horizontalGravity:I
    .restart local v2       #verticalGravity:I
    .restart local v3       #width:I
    .restart local v4       #x:I
    .restart local v5       #y:I
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/calendar/MultiStateButton;->getHeight()I

    move-result v6

    sub-int v5, v6, v0

    .line 176
    goto :goto_0

    .line 178
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/calendar/MultiStateButton;->getHeight()I

    move-result v6

    sub-int/2addr v6, v0

    div-int/lit8 v5, v6, 0x2

    goto :goto_0

    .line 183
    :sswitch_2
    invoke-virtual {p0}, Lcom/android/calendar/MultiStateButton;->getWidth()I

    move-result v6

    sub-int v4, v6, v3

    .line 184
    goto :goto_1

    .line 186
    :sswitch_3
    invoke-virtual {p0}, Lcom/android/calendar/MultiStateButton;->getWidth()I

    move-result v6

    sub-int/2addr v6, v3

    div-int/lit8 v4, v6, 0x2

    goto :goto_1

    .line 173
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x50 -> :sswitch_0
    .end sparse-switch

    .line 181
    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_3
        0x5 -> :sswitch_2
    .end sparse-switch
.end method

.method public performClick()Z
    .locals 1

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/android/calendar/MultiStateButton;->transitionState()V

    .line 77
    invoke-super {p0}, Landroid/widget/Button;->performClick()Z

    move-result v0

    return v0
.end method

.method public setButtonDrawable(I)V
    .locals 3
    .parameter "resid"

    .prologue
    .line 126
    if-eqz p1, :cond_0

    iget v1, p0, Lcom/android/calendar/MultiStateButton;->mButtonResource:I

    if-ne p1, v1, :cond_0

    .line 137
    :goto_0
    return-void

    .line 130
    :cond_0
    iput p1, p0, Lcom/android/calendar/MultiStateButton;->mButtonResource:I

    .line 132
    const/4 v0, 0x0

    .line 133
    .local v0, d:Landroid/graphics/drawable/Drawable;
    iget v1, p0, Lcom/android/calendar/MultiStateButton;->mButtonResource:I

    if-eqz v1, :cond_1

    .line 134
    invoke-virtual {p0}, Lcom/android/calendar/MultiStateButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/android/calendar/MultiStateButton;->mButtonResource:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 136
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/calendar/MultiStateButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setButtonDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .parameter "d"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 145
    if-eqz p1, :cond_1

    .line 146
    iget-object v0, p0, Lcom/android/calendar/MultiStateButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/android/calendar/MultiStateButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 148
    iget-object v0, p0, Lcom/android/calendar/MultiStateButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/android/calendar/MultiStateButton;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 150
    :cond_0
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 151
    invoke-virtual {p0}, Lcom/android/calendar/MultiStateButton;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 152
    invoke-virtual {p0}, Lcom/android/calendar/MultiStateButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 153
    iput-object p1, p0, Lcom/android/calendar/MultiStateButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    .line 154
    iget-object v0, p0, Lcom/android/calendar/MultiStateButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 155
    iget-object v0, p0, Lcom/android/calendar/MultiStateButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/calendar/MultiStateButton;->setMinHeight(I)V

    .line 156
    iget-object v0, p0, Lcom/android/calendar/MultiStateButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/calendar/MultiStateButton;->setWidth(I)V

    .line 158
    :cond_1
    invoke-virtual {p0}, Lcom/android/calendar/MultiStateButton;->refreshDrawableState()V

    .line 159
    return-void

    :cond_2
    move v0, v1

    .line 152
    goto :goto_0
.end method

.method public setButtonResources([I)V
    .locals 2
    .parameter "resources"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 92
    if-nez p1, :cond_0

    .line 93
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Button resources cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    :cond_0
    array-length v0, p1

    iput v0, p0, Lcom/android/calendar/MultiStateButton;->mMaxStates:I

    .line 96
    iget v0, p0, Lcom/android/calendar/MultiStateButton;->mState:I

    iget v1, p0, Lcom/android/calendar/MultiStateButton;->mMaxStates:I

    if-lt v0, v1, :cond_1

    .line 97
    iget v0, p0, Lcom/android/calendar/MultiStateButton;->mMaxStates:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/calendar/MultiStateButton;->mState:I

    .line 99
    :cond_1
    iput-object p1, p0, Lcom/android/calendar/MultiStateButton;->mButtonResources:[I

    .line 100
    return-void
.end method

.method public setState(I)Z
    .locals 2
    .parameter "state"

    .prologue
    .line 106
    iget v0, p0, Lcom/android/calendar/MultiStateButton;->mMaxStates:I

    if-ge p1, v0, :cond_0

    if-gez p1, :cond_1

    .line 108
    :cond_0
    const-string v0, "Cal"

    const-string v1, "MultiStateButton state set to value greater than maxState or < 0"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    const/4 v0, 0x0

    .line 113
    :goto_0
    return v0

    .line 111
    :cond_1
    iput p1, p0, Lcom/android/calendar/MultiStateButton;->mState:I

    .line 112
    iget-object v0, p0, Lcom/android/calendar/MultiStateButton;->mButtonResources:[I

    iget v1, p0, Lcom/android/calendar/MultiStateButton;->mState:I

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/calendar/MultiStateButton;->setButtonDrawable(I)V

    .line 113
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public transitionState()V
    .locals 2

    .prologue
    .line 81
    iget v0, p0, Lcom/android/calendar/MultiStateButton;->mState:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/android/calendar/MultiStateButton;->mMaxStates:I

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/android/calendar/MultiStateButton;->mState:I

    .line 82
    iget-object v0, p0, Lcom/android/calendar/MultiStateButton;->mButtonResources:[I

    iget v1, p0, Lcom/android/calendar/MultiStateButton;->mState:I

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/calendar/MultiStateButton;->setButtonDrawable(I)V

    .line 83
    return-void
.end method
