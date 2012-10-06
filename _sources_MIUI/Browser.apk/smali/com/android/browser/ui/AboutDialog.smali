.class public Lcom/android/browser/ui/AboutDialog;
.super Landroid/preference/DialogPreference;
.source "AboutDialog.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    iput-object p1, p0, Lcom/android/browser/ui/AboutDialog;->mContext:Landroid/content/Context;

    .line 20
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/browser/ui/AboutDialog;->setNegativeButtonText(Ljava/lang/CharSequence;)V

    .line 21
    const v0, 0x7f090013

    invoke-virtual {p0, v0}, Lcom/android/browser/ui/AboutDialog;->setPositiveButtonText(I)V

    .line 23
    const v0, 0x7f030006

    invoke-virtual {p0, v0}, Lcom/android/browser/ui/AboutDialog;->setDialogLayoutResource(I)V

    .line 24
    const v0, 0x7f020048

    invoke-virtual {p0, v0}, Lcom/android/browser/ui/AboutDialog;->setDialogIcon(I)V

    .line 25
    const v0, 0x7f09006c

    invoke-virtual {p0, v0}, Lcom/android/browser/ui/AboutDialog;->setDialogTitle(I)V

    .line 26
    return-void
.end method


# virtual methods
.method protected onBindDialogView(Landroid/view/View;)V
    .locals 7
    .parameter "view"

    .prologue
    .line 30
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onBindDialogView(Landroid/view/View;)V

    .line 32
    const v2, 0x7f0d000b

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 33
    .local v1, tv:Landroid/widget/TextView;
    const-string v2, "%s %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/browser/ui/AboutDialog;->mContext:Landroid/content/Context;

    const v6, 0x7f090003

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 35
    const v2, 0x7f0d000c

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 36
    .local v0, creditView:Landroid/view/View;
    invoke-static {}, Lcom/android/browser/util/LanguageUtil;->isInternationalVersion()Z

    move-result v2

    if-nez v2, :cond_0

    .line 37
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 39
    :cond_0
    return-void
.end method

.method protected onDialogClosed(Z)V
    .locals 0
    .parameter "positiveResult"

    .prologue
    .line 43
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onDialogClosed(Z)V

    .line 44
    return-void
.end method
