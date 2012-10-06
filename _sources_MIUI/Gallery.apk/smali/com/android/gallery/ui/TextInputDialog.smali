.class public Lcom/android/gallery/ui/TextInputDialog;
.super Landroid/app/AlertDialog;
.source "TextInputDialog.java"


# instance fields
.field private editText:Landroid/widget/EditText;

.field private mMeta:Lcom/android/gallery/data/BaseMeta;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/gallery/data/BaseMeta;)V
    .locals 6
    .parameter "context"
    .parameter "meta"

    .prologue
    const/4 v3, 0x0

    .line 17
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 18
    iput-object p2, p0, Lcom/android/gallery/ui/TextInputDialog;->mMeta:Lcom/android/gallery/data/BaseMeta;

    .line 20
    invoke-virtual {p0}, Lcom/android/gallery/ui/TextInputDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v4, 0x7f030018

    invoke-virtual {v2, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 21
    .local v1, view:Landroid/view/View;
    const v2, 0x7f0c0064

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/android/gallery/ui/TextInputDialog;->editText:Landroid/widget/EditText;

    .line 22
    iget-object v2, p0, Lcom/android/gallery/ui/TextInputDialog;->editText:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/android/gallery/ui/TextInputDialog;->mMeta:Lcom/android/gallery/data/BaseMeta;

    iget-object v4, v4, Lcom/android/gallery/data/BaseMeta;->mTitle:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 23
    invoke-virtual {p0, v1}, Lcom/android/gallery/ui/TextInputDialog;->setView(Landroid/view/View;)V

    .line 25
    const v2, 0x7f090084

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/gallery/ui/TextInputDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 26
    const/4 v4, -0x2

    const/high16 v2, 0x104

    invoke-virtual {p1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    move-object v0, v3

    check-cast v0, Landroid/content/DialogInterface$OnClickListener;

    move-object v2, v0

    invoke-virtual {p0, v4, v5, v2}, Lcom/android/gallery/ui/TextInputDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 27
    const/4 v2, -0x1

    const v3, 0x104000a

    invoke-virtual {p1, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    new-instance v4, Lcom/android/gallery/ui/TextInputDialog$1;

    invoke-direct {v4, p0}, Lcom/android/gallery/ui/TextInputDialog$1;-><init>(Lcom/android/gallery/ui/TextInputDialog;)V

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/gallery/ui/TextInputDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 33
    return-void
.end method

.method static synthetic access$000(Lcom/android/gallery/ui/TextInputDialog;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 12
    iget-object v0, p0, Lcom/android/gallery/ui/TextInputDialog;->editText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/gallery/ui/TextInputDialog;)Lcom/android/gallery/data/BaseMeta;
    .locals 1
    .parameter "x0"

    .prologue
    .line 12
    iget-object v0, p0, Lcom/android/gallery/ui/TextInputDialog;->mMeta:Lcom/android/gallery/data/BaseMeta;

    return-object v0
.end method
