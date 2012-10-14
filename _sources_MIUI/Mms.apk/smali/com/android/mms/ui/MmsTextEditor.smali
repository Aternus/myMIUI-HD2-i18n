.class public Lcom/android/mms/ui/MmsTextEditor;
.super Landroid/widget/EditText;
.source "MmsTextEditor.java"


# instance fields
.field private mActivity:Lcom/android/mms/ui/MessageEditableActivityBase;

.field private mNickNamePressed:Z

.field private mPressedNickNamePosition:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 24
    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 19
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/mms/ui/MmsTextEditor;->mPressedNickNamePosition:I

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/MmsTextEditor;->mNickNamePressed:Z

    .line 25
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MmsTextEditor;->initContext(Landroid/content/Context;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/mms/ui/MmsTextEditor;->mPressedNickNamePosition:I

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/MmsTextEditor;->mNickNamePressed:Z

    .line 30
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MmsTextEditor;->initContext(Landroid/content/Context;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 19
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/mms/ui/MmsTextEditor;->mPressedNickNamePosition:I

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/MmsTextEditor;->mNickNamePressed:Z

    .line 35
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MmsTextEditor;->initContext(Landroid/content/Context;)V

    .line 36
    return-void
.end method

.method private getPosition(II)I
    .locals 8
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v7, -0x1

    .line 60
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsTextEditor;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 61
    .local v0, layout:Landroid/text/Layout;
    if-nez v0, :cond_0

    move v5, v7

    .line 89
    :goto_0
    return v5

    .line 65
    :cond_0
    invoke-virtual {v0, p2}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v2

    .line 66
    .local v2, line:I
    int-to-float v5, p1

    invoke-virtual {v0, v2, v5}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v3

    .line 67
    .local v3, offset:I
    invoke-virtual {v0, v3}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v5

    float-to-int v1, v5

    .line 68
    .local v1, left:I
    if-le v1, p1, :cond_2

    .line 69
    invoke-virtual {v0, v2}, Landroid/text/Layout;->getLineStart(I)I

    move-result v5

    if-ne v3, v5, :cond_1

    move v5, v7

    .line 70
    goto :goto_0

    .line 72
    :cond_1
    add-int/lit8 v3, v3, -0x1

    .line 73
    invoke-virtual {v0, v3}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v5

    float-to-int v1, v5

    .line 75
    :cond_2
    add-int/lit8 v5, v1, 0x6

    if-ge p1, v5, :cond_3

    move v5, v7

    .line 76
    goto :goto_0

    .line 80
    :cond_3
    invoke-virtual {v0, v2}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    if-lt v3, v5, :cond_4

    .line 81
    invoke-virtual {v0, v2}, Landroid/text/Layout;->getLineRight(I)F

    move-result v5

    float-to-int v4, v5

    .line 86
    .local v4, right:I
    :goto_1
    const/4 v5, 0x6

    sub-int v5, v4, v5

    if-le p1, v5, :cond_5

    move v5, v7

    .line 87
    goto :goto_0

    .line 83
    .end local v4           #right:I
    :cond_4
    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v0, v5}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v5

    float-to-int v4, v5

    .restart local v4       #right:I
    goto :goto_1

    :cond_5
    move v5, v3

    .line 89
    goto :goto_0
.end method

.method private initContext(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 39
    instance-of v0, p1, Lcom/android/mms/ui/MessageEditableActivityBase;

    if-eqz v0, :cond_0

    .line 40
    check-cast p1, Lcom/android/mms/ui/MessageEditableActivityBase;

    .end local p1
    iput-object p1, p0, Lcom/android/mms/ui/MmsTextEditor;->mActivity:Lcom/android/mms/ui/MessageEditableActivityBase;

    .line 45
    return-void

    .line 42
    .restart local p1
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "MmsTextEditor can only be used by MessageEditableActivityBase"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private isOnPosition(III)Z
    .locals 7
    .parameter "offset"
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 93
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsTextEditor;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 94
    .local v0, layout:Landroid/text/Layout;
    if-nez v0, :cond_0

    move v4, v5

    .line 116
    :goto_0
    return v4

    .line 97
    :cond_0
    invoke-virtual {v0, p3}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v2

    .line 98
    .local v2, line:I
    invoke-virtual {v0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v4

    if-eq v2, v4, :cond_1

    move v4, v5

    .line 99
    goto :goto_0

    .line 101
    :cond_1
    invoke-virtual {v0, p1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v4

    float-to-int v1, v4

    .line 102
    .local v1, left:I
    add-int/lit8 v4, v1, 0x6

    if-ge p2, v4, :cond_2

    move v4, v5

    .line 103
    goto :goto_0

    .line 107
    :cond_2
    invoke-virtual {v0, v2}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v4

    sub-int/2addr v4, v6

    if-lt p1, v4, :cond_3

    .line 108
    invoke-virtual {v0, v2}, Landroid/text/Layout;->getLineRight(I)F

    move-result v4

    float-to-int v3, v4

    .line 113
    .local v3, right:I
    :goto_1
    const/4 v4, 0x6

    sub-int v4, v3, v4

    if-le p2, v4, :cond_4

    move v4, v5

    .line 114
    goto :goto_0

    .line 110
    .end local v3           #right:I
    :cond_3
    add-int/lit8 v4, p1, 0x1

    invoke-virtual {v0, v4}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v4

    float-to-int v3, v4

    .restart local v3       #right:I
    goto :goto_1

    :cond_4
    move v4, v6

    .line 116
    goto :goto_0
.end method

.method private setNickNamePressed(Z)V
    .locals 6
    .parameter "pressed"

    .prologue
    .line 120
    iget v1, p0, Lcom/android/mms/ui/MmsTextEditor;->mPressedNickNamePosition:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/android/mms/ui/MmsTextEditor;->mNickNamePressed:Z

    if-ne p1, v1, :cond_1

    .line 129
    :cond_0
    :goto_0
    return-void

    .line 123
    :cond_1
    iput-boolean p1, p0, Lcom/android/mms/ui/MmsTextEditor;->mNickNamePressed:Z

    .line 124
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/mms/ui/MmsTextEditor;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 125
    .local v0, icon:Landroid/widget/ImageView;
    if-eqz p1, :cond_2

    const v1, 0x7f0200bd

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 126
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsTextEditor;->getText()Landroid/text/Editable;

    move-result-object v1

    new-instance v2, Lcom/android/mms/ui/WidgetDrawableSpan;

    invoke-virtual {p0}, Lcom/android/mms/ui/MmsTextEditor;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/android/mms/ui/WidgetDrawableSpan;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iget v3, p0, Lcom/android/mms/ui/MmsTextEditor;->mPressedNickNamePosition:I

    iget v4, p0, Lcom/android/mms/ui/MmsTextEditor;->mPressedNickNamePosition:I

    add-int/lit8 v4, v4, 0x1

    const/16 v5, 0x21

    invoke-interface {v1, v2, v3, v4, v5}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    .line 125
    :cond_2
    const v1, 0x7f0200bc

    goto :goto_1
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    .line 212
    invoke-super {p0, p1}, Landroid/widget/EditText;->onDraw(Landroid/graphics/Canvas;)V

    .line 215
    iget-object v0, p0, Lcom/android/mms/ui/MmsTextEditor;->mActivity:Lcom/android/mms/ui/MessageEditableActivityBase;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageEditableActivityBase;->performShowSoftKeyboardRequest()V

    .line 216
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 49
    const/16 v0, 0x43

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/ui/MmsTextEditor;->getSelectionStart()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/ui/MmsTextEditor;->getSelectionEnd()I

    move-result v0

    if-nez v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/android/mms/ui/MmsTextEditor;->mActivity:Lcom/android/mms/ui/MessageEditableActivityBase;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageEditableActivityBase;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/mms/data/WorkingMessage;->removeAttachment(Z)V

    move v0, v1

    .line 54
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 7
    .parameter "text"
    .parameter "start"
    .parameter "before"
    .parameter "after"

    .prologue
    .line 197
    instance-of v4, p1, Landroid/text/Spannable;

    if-eqz v4, :cond_1

    .line 198
    move-object v0, p1

    check-cast v0, Landroid/text/Spannable;

    move-object v3, v0

    .line 199
    .local v3, s:Landroid/text/Spannable;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-interface {v3}, Landroid/text/Spannable;->length()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 200
    invoke-interface {v3, v1}, Landroid/text/Spannable;->charAt(I)C

    move-result v4

    const v5, 0xffff

    if-ne v4, v5, :cond_0

    .line 201
    new-instance v2, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/mms/ui/MmsTextEditor;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 202
    .local v2, image:Landroid/widget/ImageView;
    const v4, 0x7f0200bc

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 203
    new-instance v4, Lcom/android/mms/ui/WidgetDrawableSpan;

    invoke-virtual {p0}, Lcom/android/mms/ui/MmsTextEditor;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5, v2}, Lcom/android/mms/ui/WidgetDrawableSpan;-><init>(Landroid/content/Context;Landroid/view/View;)V

    add-int/lit8 v5, v1, 0x1

    const/16 v6, 0x21

    invoke-interface {v3, v4, v1, v5, v6}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 199
    .end local v2           #image:Landroid/widget/ImageView;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 208
    .end local v1           #i:I
    .end local v3           #s:Landroid/text/Spannable;
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/EditText;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 209
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .parameter "event"

    .prologue
    const/4 v8, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x1

    .line 133
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 134
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v3, v5

    .line 135
    .local v3, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v4, v5

    .line 136
    .local v4, y:I
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsTextEditor;->getCompoundPaddingLeft()I

    move-result v5

    sub-int/2addr v3, v5

    .line 137
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsTextEditor;->getExtendedPaddingTop()I

    move-result v5

    sub-int/2addr v4, v5

    .line 138
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsTextEditor;->getScrollX()I

    move-result v5

    add-int/2addr v3, v5

    .line 139
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsTextEditor;->getScrollY()I

    move-result v5

    add-int/2addr v4, v5

    .line 141
    const/4 v1, 0x0

    .line 142
    .local v1, consumed:Z
    packed-switch v0, :pswitch_data_0

    .line 187
    :cond_0
    :goto_0
    if-eqz v1, :cond_4

    move v5, v7

    .line 190
    :goto_1
    return v5

    .line 144
    :pswitch_0
    invoke-direct {p0, v3, v4}, Lcom/android/mms/ui/MmsTextEditor;->getPosition(II)I

    move-result v2

    .line 145
    .local v2, position:I
    if-eq v2, v6, :cond_0

    .line 148
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsTextEditor;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5, v2}, Landroid/text/Editable;->charAt(I)C

    move-result v5

    const v6, 0xffff

    if-ne v5, v6, :cond_0

    .line 149
    iput v2, p0, Lcom/android/mms/ui/MmsTextEditor;->mPressedNickNamePosition:I

    .line 150
    invoke-direct {p0, v7}, Lcom/android/mms/ui/MmsTextEditor;->setNickNamePressed(Z)V

    .line 151
    const/4 v1, 0x1

    goto :goto_0

    .line 157
    .end local v2           #position:I
    :pswitch_1
    iget v5, p0, Lcom/android/mms/ui/MmsTextEditor;->mPressedNickNamePosition:I

    if-ltz v5, :cond_0

    .line 158
    invoke-direct {p0, v8}, Lcom/android/mms/ui/MmsTextEditor;->setNickNamePressed(Z)V

    .line 159
    iput v6, p0, Lcom/android/mms/ui/MmsTextEditor;->mPressedNickNamePosition:I

    .line 160
    const/4 v1, 0x1

    goto :goto_0

    .line 165
    :pswitch_2
    iget v5, p0, Lcom/android/mms/ui/MmsTextEditor;->mPressedNickNamePosition:I

    if-ltz v5, :cond_0

    .line 166
    iget v5, p0, Lcom/android/mms/ui/MmsTextEditor;->mPressedNickNamePosition:I

    invoke-direct {p0, v5, v3, v4}, Lcom/android/mms/ui/MmsTextEditor;->isOnPosition(III)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 167
    invoke-direct {p0, v7}, Lcom/android/mms/ui/MmsTextEditor;->setNickNamePressed(Z)V

    .line 171
    :goto_2
    const/4 v1, 0x1

    goto :goto_0

    .line 169
    :cond_1
    invoke-direct {p0, v8}, Lcom/android/mms/ui/MmsTextEditor;->setNickNamePressed(Z)V

    goto :goto_2

    .line 176
    :pswitch_3
    iget v5, p0, Lcom/android/mms/ui/MmsTextEditor;->mPressedNickNamePosition:I

    if-ltz v5, :cond_3

    iget v5, p0, Lcom/android/mms/ui/MmsTextEditor;->mPressedNickNamePosition:I

    invoke-direct {p0, v5, v3, v4}, Lcom/android/mms/ui/MmsTextEditor;->isOnPosition(III)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 177
    invoke-direct {p0, v8}, Lcom/android/mms/ui/MmsTextEditor;->setNickNamePressed(Z)V

    .line 178
    iget-object v5, p0, Lcom/android/mms/ui/MmsTextEditor;->mActivity:Lcom/android/mms/ui/MessageEditableActivityBase;

    if-eqz v5, :cond_2

    .line 179
    iget-object v5, p0, Lcom/android/mms/ui/MmsTextEditor;->mActivity:Lcom/android/mms/ui/MessageEditableActivityBase;

    invoke-virtual {v5, v7}, Lcom/android/mms/ui/MessageEditableActivityBase;->startNicknamePicker(Z)V

    .line 181
    :cond_2
    const/4 v1, 0x1

    .line 183
    :cond_3
    iput v6, p0, Lcom/android/mms/ui/MmsTextEditor;->mPressedNickNamePosition:I

    goto :goto_0

    .line 190
    :cond_4
    invoke-super {p0, p1}, Landroid/widget/EditText;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    goto :goto_1

    .line 142
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
