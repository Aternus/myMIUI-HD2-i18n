.class public Lcom/android/contacts/SearchEditText;
.super Landroid/widget/EditText;
.source "SearchEditText.java"


# instance fields
.field private mClearSearch:Landroid/graphics/drawable/Drawable;

.field private mMagnifyingGlass:Landroid/graphics/drawable/Drawable;

.field private mMagnifyingGlassShown:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    .line 42
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/SearchEditText;->mMagnifyingGlassShown:Z

    .line 43
    invoke-virtual {p0}, Lcom/android/contacts/SearchEditText;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/contacts/SearchEditText;->mMagnifyingGlass:Landroid/graphics/drawable/Drawable;

    .line 44
    invoke-virtual {p0}, Lcom/android/contacts/SearchEditText;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x2

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/contacts/SearchEditText;->mClearSearch:Landroid/graphics/drawable/Drawable;

    .line 46
    iget-object v0, p0, Lcom/android/contacts/SearchEditText;->mClearSearch:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/android/contacts/SearchEditText;->mMagnifyingGlass:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0, v2, v2, v2}, Lcom/android/contacts/SearchEditText;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 49
    :cond_0
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/contacts/SearchEditText;->mClearSearch:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 55
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p0}, Lcom/android/contacts/SearchEditText;->getWidth()I

    move-result v1

    const/16 v2, 0x64

    sub-int/2addr v1, v2

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 56
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/contacts/SearchEditText;->setText(Ljava/lang/CharSequence;)V

    .line 59
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/EditText;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/android/contacts/SearchEditText;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 89
    .local v0, context:Landroid/content/Context;
    instance-of v1, v0, Lcom/android/contacts/ContactsListActivity;

    if-eqz v1, :cond_0

    .line 90
    check-cast v0, Lcom/android/contacts/ContactsListActivity;

    .end local v0           #context:Landroid/content/Context;
    invoke-virtual {v0, p1, p2}, Lcom/android/contacts/ContactsListActivity;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 91
    const/4 v1, 0x1

    .line 95
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public onPreDraw()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 68
    invoke-virtual {p0}, Lcom/android/contacts/SearchEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 69
    .local v0, emptyText:Z
    iget-boolean v1, p0, Lcom/android/contacts/SearchEditText;->mMagnifyingGlassShown:Z

    if-eq v1, v0, :cond_1

    .line 70
    iput-boolean v0, p0, Lcom/android/contacts/SearchEditText;->mMagnifyingGlassShown:Z

    .line 71
    iget-boolean v1, p0, Lcom/android/contacts/SearchEditText;->mMagnifyingGlassShown:Z

    if-eqz v1, :cond_0

    .line 72
    iget-object v1, p0, Lcom/android/contacts/SearchEditText;->mMagnifyingGlass:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1, v3, v3, v3}, Lcom/android/contacts/SearchEditText;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 76
    :goto_0
    const/4 v1, 0x0

    .line 78
    :goto_1
    return v1

    .line 74
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/SearchEditText;->mMagnifyingGlass:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/android/contacts/SearchEditText;->mClearSearch:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1, v3, v2, v3}, Lcom/android/contacts/SearchEditText;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 78
    :cond_1
    invoke-super {p0}, Landroid/widget/EditText;->onPreDraw()Z

    move-result v1

    goto :goto_1
.end method
