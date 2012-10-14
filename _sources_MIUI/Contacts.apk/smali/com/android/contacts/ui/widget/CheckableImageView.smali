.class public Lcom/android/contacts/ui/widget/CheckableImageView;
.super Landroid/widget/LinearLayout;
.source "CheckableImageView.java"


# instance fields
.field private mImage:Landroid/widget/ImageView;

.field private mText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 39
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 40
    const v0, 0x7f0700d4

    invoke-virtual {p0, v0}, Lcom/android/contacts/ui/widget/CheckableImageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/contacts/ui/widget/CheckableImageView;->mImage:Landroid/widget/ImageView;

    .line 41
    const v0, 0x7f0700d5

    invoke-virtual {p0, v0}, Lcom/android/contacts/ui/widget/CheckableImageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/contacts/ui/widget/CheckableImageView;->mText:Landroid/widget/TextView;

    .line 42
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "icon"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/contacts/ui/widget/CheckableImageView;->mImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 50
    return-void
.end method

.method public setImageResource(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/contacts/ui/widget/CheckableImageView;->mImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 54
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/contacts/ui/widget/CheckableImageView;->mText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    return-void
.end method
