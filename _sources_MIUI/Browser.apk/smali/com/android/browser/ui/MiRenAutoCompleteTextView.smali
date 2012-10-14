.class public Lcom/android/browser/ui/MiRenAutoCompleteTextView;
.super Landroid/widget/AutoCompleteTextView;
.source "MiRenAutoCompleteTextView.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 13
    invoke-direct {p0, p1}, Landroid/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;)V

    .line 14
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attributeSet"

    .prologue
    const/4 v0, 0x0

    .line 17
    invoke-direct {p0, p1, p2}, Landroid/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    invoke-virtual {p0, v0}, Lcom/android/browser/ui/MiRenAutoCompleteTextView;->setBackgroundColor(I)V

    .line 20
    invoke-virtual {p0, v0, v0, v0, v0}, Lcom/android/browser/ui/MiRenAutoCompleteTextView;->setPadding(IIII)V

    .line 21
    return-void
.end method


# virtual methods
.method public enoughToFilter()Z
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x1

    return v0
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    .line 30
    packed-switch p1, :pswitch_data_0

    .line 49
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/AutoCompleteTextView;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result v1

    .end local p0
    :goto_0
    return v1

    .line 32
    .restart local p0
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/browser/ui/MiRenAutoCompleteTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/browser/ui/MiRenAutoCompleteTextView;->mContext:Landroid/content/Context;

    .line 34
    iget-object v1, p0, Lcom/android/browser/ui/MiRenAutoCompleteTextView;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 35
    iget-object v1, p0, Lcom/android/browser/ui/MiRenAutoCompleteTextView;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/android/browser/ui/MiRenBrowserActivity;

    invoke-virtual {v1}, Lcom/android/browser/ui/MiRenBrowserActivity;->getTitleViewMode()I

    move-result v0

    .line 36
    .local v0, mode:I
    if-eq v0, v2, :cond_1

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    .line 40
    :cond_1
    iget-object p0, p0, Lcom/android/browser/ui/MiRenAutoCompleteTextView;->mContext:Landroid/content/Context;

    .end local p0
    check-cast p0, Lcom/android/browser/ui/MiRenBrowserActivity;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/browser/ui/MiRenBrowserActivity;->switchTitleViewMode(I)V

    move v1, v2

    .line 41
    goto :goto_0

    .line 43
    .restart local p0
    :cond_2
    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 44
    iget-object p0, p0, Lcom/android/browser/ui/MiRenAutoCompleteTextView;->mContext:Landroid/content/Context;

    .end local p0
    check-cast p0, Lcom/android/browser/ui/MiRenBrowserActivity;

    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/android/browser/ui/MiRenBrowserActivity;->switchTitleViewMode(I)V

    move v1, v2

    .line 45
    goto :goto_0

    .line 30
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method
