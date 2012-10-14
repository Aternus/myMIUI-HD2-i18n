.class public Lcom/android/sidekick/SearchableItemPreference;
.super Landroid/preference/CheckBoxPreference;
.source "SearchableItemPreference.java"


# instance fields
.field private mIcon:Landroid/graphics/drawable/Drawable;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 34
    const v0, 0x7f030009

    invoke-virtual {p0, v0}, Lcom/android/sidekick/SearchableItemPreference;->setLayoutResource(I)V

    .line 35
    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 43
    invoke-super {p0, p1}, Landroid/preference/CheckBoxPreference;->onBindView(Landroid/view/View;)V

    .line 44
    const v1, 0x7f090025

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 45
    .local v0, icon:Landroid/widget/ImageView;
    iget-object v1, p0, Lcom/android/sidekick/SearchableItemPreference;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 46
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "icon"

    .prologue
    .line 38
    iput-object p1, p0, Lcom/android/sidekick/SearchableItemPreference;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 39
    return-void
.end method
