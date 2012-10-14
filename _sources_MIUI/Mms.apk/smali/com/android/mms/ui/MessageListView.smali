.class public final Lcom/android/mms/ui/MessageListView;
.super Landroid/widget/EditableListView;
.source "MessageListView.java"


# instance fields
.field private mAllowTranscriptionOnResize:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Landroid/widget/EditableListView;-><init>(Landroid/content/Context;)V

    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/MessageListView;->mAllowTranscriptionOnResize:Z

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Landroid/widget/EditableListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/MessageListView;->mAllowTranscriptionOnResize:Z

    .line 44
    return-void
.end method


# virtual methods
.method public onKeyShortcut(ILandroid/view/KeyEvent;)Z
    .locals 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 48
    packed-switch p1, :pswitch_data_0

    .line 64
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/EditableListView;->onKeyShortcut(ILandroid/view/KeyEvent;)Z

    move-result v3

    :goto_0
    return v3

    .line 50
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListView;->getSelectedView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/mms/ui/MessageListItem;

    .line 51
    .local v2, view:Lcom/android/mms/ui/MessageListItem;
    if-eqz v2, :cond_0

    .line 54
    invoke-virtual {v2}, Lcom/android/mms/ui/MessageListItem;->getMessageItem()Lcom/android/mms/ui/MessageItem;

    move-result-object v1

    .line 55
    .local v1, item:Lcom/android/mms/ui/MessageItem;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 56
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "clipboard"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    .line 58
    .local v0, clip:Landroid/text/ClipboardManager;
    invoke-virtual {v1}, Lcom/android/mms/ui/MessageItem;->getBody()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 59
    const/4 v3, 0x1

    goto :goto_0

    .line 48
    nop

    :pswitch_data_0
    .packed-switch 0x1f
        :pswitch_0
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 81
    invoke-super/range {p0 .. p5}, Landroid/widget/EditableListView;->onLayout(ZIIII)V

    .line 82
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListView;->setTranscriptMode(I)V

    .line 83
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 73
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/EditableListView;->onSizeChanged(IIII)V

    .line 74
    iget-boolean v0, p0, Lcom/android/mms/ui/MessageListView;->mAllowTranscriptionOnResize:Z

    if-eqz v0, :cond_0

    .line 75
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListView;->setTranscriptMode(I)V

    .line 77
    :cond_0
    return-void
.end method

.method public setAllowTranscriptOnResize(Z)V
    .locals 0
    .parameter "allow"

    .prologue
    .line 68
    iput-boolean p1, p0, Lcom/android/mms/ui/MessageListView;->mAllowTranscriptionOnResize:Z

    .line 69
    return-void
.end method
