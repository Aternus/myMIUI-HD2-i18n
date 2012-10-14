.class public Lcom/miui/notes/ui/NoteEditText;
.super Landroid/widget/EditText;
.source "NoteEditText.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/notes/ui/NoteEditText$OnTextViewChangeListener;
    }
.end annotation


# static fields
.field private static final sSchemaActionResMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mIndex:I

.field private mOnTextViewChangeListener:Lcom/miui/notes/ui/NoteEditText$OnTextViewChangeListener;

.field private mSelectionStartBeforeDelete:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/miui/notes/ui/NoteEditText;->sSchemaActionResMap:Ljava/util/Map;

    .line 35
    sget-object v0, Lcom/miui/notes/ui/NoteEditText;->sSchemaActionResMap:Ljava/util/Map;

    const-string v1, "tel:"

    const v2, 0x7f08000f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    sget-object v0, Lcom/miui/notes/ui/NoteEditText;->sSchemaActionResMap:Ljava/util/Map;

    const-string v1, "http:"

    const v2, 0x7f080011

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    sget-object v0, Lcom/miui/notes/ui/NoteEditText;->sSchemaActionResMap:Ljava/util/Map;

    const-string v1, "mailto:"

    const v2, 0x7f080010

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 65
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 66
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/notes/ui/NoteEditText;->mIndex:I

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 78
    const v0, 0x101006e

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 82
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 84
    return-void
.end method


# virtual methods
.method protected onCreateContextMenu(Landroid/view/ContextMenu;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 168
    invoke-virtual {p0}, Lcom/miui/notes/ui/NoteEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    instance-of v0, v0, Landroid/text/Spanned;

    if-eqz v0, :cond_2

    .line 169
    invoke-virtual {p0}, Lcom/miui/notes/ui/NoteEditText;->getSelectionStart()I

    move-result v0

    .line 170
    invoke-virtual {p0}, Lcom/miui/notes/ui/NoteEditText;->getSelectionEnd()I

    move-result v1

    .line 172
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 173
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 175
    invoke-virtual {p0}, Lcom/miui/notes/ui/NoteEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    const-class v3, Landroid/text/style/URLSpan;

    invoke-interface {v1, v2, v0, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/URLSpan;

    .line 176
    array-length v1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 178
    sget-object v1, Lcom/miui/notes/ui/NoteEditText;->sSchemaActionResMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 179
    aget-object v3, v0, v4

    invoke-virtual {v3}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_0

    .line 180
    sget-object v2, Lcom/miui/notes/ui/NoteEditText;->sSchemaActionResMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 185
    :goto_0
    if-nez v1, :cond_1

    .line 186
    const v1, 0x7f080012

    .line 189
    :cond_1
    invoke-interface {p1, v4, v4, v4, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    new-instance v2, Lcom/miui/notes/ui/NoteEditText$1;

    invoke-direct {v2, p0, v0}, Lcom/miui/notes/ui/NoteEditText$1;-><init>(Lcom/miui/notes/ui/NoteEditText;[Landroid/text/style/URLSpan;)V

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 200
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/EditText;->onCreateContextMenu(Landroid/view/ContextMenu;)V

    .line 201
    return-void

    :cond_3
    move v1, v4

    goto :goto_0
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 3
    .parameter "focused"
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 156
    iget-object v0, p0, Lcom/miui/notes/ui/NoteEditText;->mOnTextViewChangeListener:Lcom/miui/notes/ui/NoteEditText$OnTextViewChangeListener;

    if-eqz v0, :cond_0

    .line 157
    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/miui/notes/ui/NoteEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 158
    iget-object v0, p0, Lcom/miui/notes/ui/NoteEditText;->mOnTextViewChangeListener:Lcom/miui/notes/ui/NoteEditText$OnTextViewChangeListener;

    iget v1, p0, Lcom/miui/notes/ui/NoteEditText;->mIndex:I

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/miui/notes/ui/NoteEditText$OnTextViewChangeListener;->onTextChange(IZ)V

    .line 163
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/EditText;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 164
    return-void

    .line 160
    :cond_1
    iget-object v0, p0, Lcom/miui/notes/ui/NoteEditText;->mOnTextViewChangeListener:Lcom/miui/notes/ui/NoteEditText$OnTextViewChangeListener;

    iget v1, p0, Lcom/miui/notes/ui/NoteEditText;->mIndex:I

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/miui/notes/ui/NoteEditText$OnTextViewChangeListener;->onTextChange(IZ)V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 110
    packed-switch p1, :pswitch_data_0

    .line 122
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_1
    return v0

    .line 112
    :pswitch_0
    iget-object v0, p0, Lcom/miui/notes/ui/NoteEditText;->mOnTextViewChangeListener:Lcom/miui/notes/ui/NoteEditText$OnTextViewChangeListener;

    if-eqz v0, :cond_0

    .line 113
    const/4 v0, 0x0

    goto :goto_1

    .line 117
    :pswitch_1
    invoke-virtual {p0}, Lcom/miui/notes/ui/NoteEditText;->getSelectionStart()I

    move-result v0

    iput v0, p0, Lcom/miui/notes/ui/NoteEditText;->mSelectionStartBeforeDelete:I

    goto :goto_0

    .line 110
    nop

    :pswitch_data_0
    .packed-switch 0x42
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const-string v4, "OnTextViewChangeListener was not seted"

    const-string v3, "NoteEditText"

    .line 127
    packed-switch p1, :pswitch_data_0

    .line 151
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    :goto_1
    return v2

    .line 129
    :pswitch_0
    iget-object v2, p0, Lcom/miui/notes/ui/NoteEditText;->mOnTextViewChangeListener:Lcom/miui/notes/ui/NoteEditText$OnTextViewChangeListener;

    if-eqz v2, :cond_1

    .line 130
    iget v2, p0, Lcom/miui/notes/ui/NoteEditText;->mSelectionStartBeforeDelete:I

    if-nez v2, :cond_0

    iget v2, p0, Lcom/miui/notes/ui/NoteEditText;->mIndex:I

    if-eqz v2, :cond_0

    .line 131
    iget-object v2, p0, Lcom/miui/notes/ui/NoteEditText;->mOnTextViewChangeListener:Lcom/miui/notes/ui/NoteEditText$OnTextViewChangeListener;

    iget v3, p0, Lcom/miui/notes/ui/NoteEditText;->mIndex:I

    invoke-virtual {p0}, Lcom/miui/notes/ui/NoteEditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/miui/notes/ui/NoteEditText$OnTextViewChangeListener;->onEditTextDelete(ILjava/lang/String;)V

    .line 132
    const/4 v2, 0x1

    goto :goto_1

    .line 135
    :cond_1
    const-string v2, "NoteEditText"

    const-string v2, "OnTextViewChangeListener was not seted"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 139
    :pswitch_1
    iget-object v2, p0, Lcom/miui/notes/ui/NoteEditText;->mOnTextViewChangeListener:Lcom/miui/notes/ui/NoteEditText$OnTextViewChangeListener;

    if-eqz v2, :cond_2

    .line 140
    invoke-virtual {p0}, Lcom/miui/notes/ui/NoteEditText;->getSelectionStart()I

    move-result v0

    .line 141
    .local v0, selectionStart:I
    invoke-virtual {p0}, Lcom/miui/notes/ui/NoteEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {p0}, Lcom/miui/notes/ui/NoteEditText;->length()I

    move-result v3

    invoke-interface {v2, v0, v3}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 142
    .local v1, text:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/miui/notes/ui/NoteEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3, v0}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/miui/notes/ui/NoteEditText;->setText(Ljava/lang/CharSequence;)V

    .line 143
    iget-object v2, p0, Lcom/miui/notes/ui/NoteEditText;->mOnTextViewChangeListener:Lcom/miui/notes/ui/NoteEditText$OnTextViewChangeListener;

    iget v3, p0, Lcom/miui/notes/ui/NoteEditText;->mIndex:I

    add-int/lit8 v3, v3, 0x1

    invoke-interface {v2, v3, v1}, Lcom/miui/notes/ui/NoteEditText$OnTextViewChangeListener;->onEditTextEnter(ILjava/lang/String;)V

    goto :goto_0

    .line 145
    .end local v0           #selectionStart:I
    .end local v1           #text:Ljava/lang/String;
    :cond_2
    const-string v2, "NoteEditText"

    const-string v2, "OnTextViewChangeListener was not seted"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 127
    nop

    :pswitch_data_0
    .packed-switch 0x42
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "event"

    .prologue
    .line 88
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 105
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/EditText;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    return v5

    .line 91
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v3, v5

    .line 92
    .local v3, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v4, v5

    .line 93
    .local v4, y:I
    invoke-virtual {p0}, Lcom/miui/notes/ui/NoteEditText;->getTotalPaddingLeft()I

    move-result v5

    sub-int/2addr v3, v5

    .line 94
    invoke-virtual {p0}, Lcom/miui/notes/ui/NoteEditText;->getTotalPaddingTop()I

    move-result v5

    sub-int/2addr v4, v5

    .line 95
    invoke-virtual {p0}, Lcom/miui/notes/ui/NoteEditText;->getScrollX()I

    move-result v5

    add-int/2addr v3, v5

    .line 96
    invoke-virtual {p0}, Lcom/miui/notes/ui/NoteEditText;->getScrollY()I

    move-result v5

    add-int/2addr v4, v5

    .line 98
    invoke-virtual {p0}, Lcom/miui/notes/ui/NoteEditText;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 99
    .local v0, layout:Landroid/text/Layout;
    invoke-virtual {v0, v4}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v1

    .line 100
    .local v1, line:I
    int-to-float v5, v3

    invoke-virtual {v0, v1, v5}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v2

    .line 101
    .local v2, off:I
    invoke-virtual {p0}, Lcom/miui/notes/ui/NoteEditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-static {v5, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    goto :goto_0

    .line 88
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public setIndex(I)V
    .locals 0
    .parameter "index"

    .prologue
    .line 70
    iput p1, p0, Lcom/miui/notes/ui/NoteEditText;->mIndex:I

    .line 71
    return-void
.end method

.method public setOnTextViewChangeListener(Lcom/miui/notes/ui/NoteEditText$OnTextViewChangeListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 74
    iput-object p1, p0, Lcom/miui/notes/ui/NoteEditText;->mOnTextViewChangeListener:Lcom/miui/notes/ui/NoteEditText$OnTextViewChangeListener;

    .line 75
    return-void
.end method
