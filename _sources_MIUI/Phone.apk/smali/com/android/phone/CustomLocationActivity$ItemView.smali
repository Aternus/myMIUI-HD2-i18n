.class public Lcom/android/phone/CustomLocationActivity$ItemView;
.super Ljava/lang/Object;
.source "CustomLocationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CustomLocationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ItemView"
.end annotation


# instance fields
.field public final location:Landroid/widget/TextView;

.field public final number:Landroid/widget/TextView;

.field public final type:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    const v0, 0x7f070041

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/CustomLocationActivity$ItemView;->location:Landroid/widget/TextView;

    .line 125
    const v0, 0x7f070043

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/CustomLocationActivity$ItemView;->number:Landroid/widget/TextView;

    .line 126
    const v0, 0x7f070042

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/CustomLocationActivity$ItemView;->type:Landroid/widget/TextView;

    .line 127
    return-void
.end method
