.class public Lcom/android/browser/ui/BrowserHomepagePreference;
.super Landroid/preference/EditTextPreference;
.source "BrowserHomepagePreference.java"


# instance fields
.field private mCurrentPage:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Landroid/preference/EditTextPreference;-><init>(Landroid/content/Context;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Landroid/preference/EditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/EditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    return-void
.end method

.method static synthetic access$000(Lcom/android/browser/ui/BrowserHomepagePreference;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/browser/ui/BrowserHomepagePreference;->mCurrentPage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/browser/ui/BrowserHomepagePreference;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    iput-object p1, p0, Lcom/android/browser/ui/BrowserHomepagePreference;->mCurrentPage:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method protected onAddEditTextToDialogView(Landroid/view/View;Landroid/widget/EditText;)V
    .locals 8
    .parameter "dialogView"
    .parameter "editText"

    .prologue
    const/4 v7, -0x2

    .line 42
    invoke-super {p0, p1, p2}, Landroid/preference/EditTextPreference;->onAddEditTextToDialogView(Landroid/view/View;Landroid/widget/EditText;)V

    .line 45
    invoke-virtual {p2}, Landroid/widget/EditText;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 46
    .local v4, parent:Landroid/view/ViewGroup;
    new-instance v1, Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/browser/ui/BrowserHomepagePreference;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v1, v5}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 47
    .local v1, button:Landroid/widget/Button;
    const v5, 0x7f09004e

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setText(I)V

    .line 48
    new-instance v5, Lcom/android/browser/ui/BrowserHomepagePreference$1;

    invoke-direct {v5, p0}, Lcom/android/browser/ui/BrowserHomepagePreference$1;-><init>(Lcom/android/browser/ui/BrowserHomepagePreference;)V

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    new-instance v2, Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/browser/ui/BrowserHomepagePreference;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v2, v5}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 57
    .local v2, buttonDefaultSite:Landroid/widget/Button;
    const v5, 0x7f09004f

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setText(I)V

    .line 58
    new-instance v5, Lcom/android/browser/ui/BrowserHomepagePreference$2;

    invoke-direct {v5, p0}, Lcom/android/browser/ui/BrowserHomepagePreference$2;-><init>(Lcom/android/browser/ui/BrowserHomepagePreference;)V

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    instance-of v5, v4, Landroid/widget/LinearLayout;

    if-eqz v5, :cond_0

    .line 64
    move-object v0, v4

    check-cast v0, Landroid/widget/LinearLayout;

    move-object v5, v0

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 66
    :cond_0
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/android/browser/ui/BrowserHomepagePreference;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 67
    .local v3, buttons:Landroid/widget/LinearLayout;
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 68
    const/16 v5, 0x10

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 69
    invoke-virtual {v3, v1, v7, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 71
    invoke-virtual {v3, v2, v7, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 73
    invoke-virtual {v4, v3, v7, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 75
    return-void
.end method

.method protected onDialogClosed(Z)V
    .locals 6
    .parameter "positiveResult"

    .prologue
    const/4 v4, -0x1

    .line 79
    if-eqz p1, :cond_0

    .line 80
    invoke-virtual {p0}, Lcom/android/browser/ui/BrowserHomepagePreference;->getEditText()Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 81
    .local v2, url:Ljava/lang/String;
    const-string v3, "miui:home"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    sget-object v3, Lcom/android/browser/api_v8/PatternsInternal;->ACCEPTED_URI_SCHEMA:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-nez v3, :cond_0

    .line 85
    const/16 v3, 0x3a

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 86
    .local v0, colon:I
    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 87
    .local v1, space:I
    if-ne v0, v4, :cond_1

    if-ne v1, v4, :cond_1

    .line 89
    invoke-virtual {p0}, Lcom/android/browser/ui/BrowserHomepagePreference;->getEditText()Landroid/widget/EditText;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "http://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 100
    .end local v0           #colon:I
    .end local v1           #space:I
    .end local v2           #url:Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/preference/EditTextPreference;->onDialogClosed(Z)V

    .line 101
    return-void

    .line 93
    .restart local v0       #colon:I
    .restart local v1       #space:I
    .restart local v2       #url:Ljava/lang/String;
    :cond_1
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/browser/ui/BrowserHomepagePreference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f09001e

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f09000f

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 96
    const/4 p1, 0x0

    goto :goto_0
.end method

.method protected showDialog(Landroid/os/Bundle;)V
    .locals 4
    .parameter "state"

    .prologue
    .line 105
    invoke-super {p0, p1}, Landroid/preference/EditTextPreference;->showDialog(Landroid/os/Bundle;)V

    .line 108
    invoke-virtual {p0}, Lcom/android/browser/ui/BrowserHomepagePreference;->getDialog()Landroid/app/Dialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 109
    .local v2, window:Landroid/view/Window;
    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 110
    .local v0, decorView:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager$LayoutParams;

    .line 112
    .local v1, params:Landroid/view/WindowManager$LayoutParams;
    const/4 v3, -0x1

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 113
    invoke-virtual {v2}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3, v0, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 114
    return-void
.end method
