.class Lcom/android/contacts/ViewContactActivity$ViewCache;
.super Ljava/lang/Object;
.source "ViewContactActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/ViewContactActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewCache"
.end annotation


# instance fields
.field public actionIcon:Landroid/widget/ImageView;

.field public callDate:Landroid/widget/TextView;

.field public data:Landroid/widget/TextView;

.field public duration:Landroid/widget/TextView;

.field public duration2:Landroid/widget/TextView;

.field entry:Lcom/android/contacts/ViewContactActivity$ViewEntry;

.field public extra:Landroid/widget/TextView;

.field public footer:Landroid/widget/TextView;

.field public location:Landroid/widget/TextView;

.field public presenceIcon:Landroid/widget/ImageView;

.field public primaryIcon:Landroid/widget/ImageView;

.field public secondaryActionButton:Landroid/widget/ImageView;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 2435
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static switchToCallLog(Lcom/android/contacts/ViewContactActivity$ViewCache;)V
    .locals 3
    .parameter "views"

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 2469
    if-nez p0, :cond_0

    .line 2483
    :goto_0
    return-void

    .line 2471
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/ViewContactActivity$ViewCache;->extra:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2472
    iget-object v0, p0, Lcom/android/contacts/ViewContactActivity$ViewCache;->data:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2473
    iget-object v0, p0, Lcom/android/contacts/ViewContactActivity$ViewCache;->actionIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2474
    iget-object v0, p0, Lcom/android/contacts/ViewContactActivity$ViewCache;->presenceIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2475
    iget-object v0, p0, Lcom/android/contacts/ViewContactActivity$ViewCache;->location:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2476
    iget-object v0, p0, Lcom/android/contacts/ViewContactActivity$ViewCache;->primaryIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2477
    iget-object v0, p0, Lcom/android/contacts/ViewContactActivity$ViewCache;->secondaryActionButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2479
    iget-object v0, p0, Lcom/android/contacts/ViewContactActivity$ViewCache;->footer:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2480
    iget-object v0, p0, Lcom/android/contacts/ViewContactActivity$ViewCache;->callDate:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2481
    iget-object v0, p0, Lcom/android/contacts/ViewContactActivity$ViewCache;->duration:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2482
    iget-object v0, p0, Lcom/android/contacts/ViewContactActivity$ViewCache;->duration2:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method static switchToEntry(Lcom/android/contacts/ViewContactActivity$ViewCache;)V
    .locals 3
    .parameter "views"

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 2452
    if-nez p0, :cond_0

    .line 2466
    :goto_0
    return-void

    .line 2454
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/ViewContactActivity$ViewCache;->extra:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2455
    iget-object v0, p0, Lcom/android/contacts/ViewContactActivity$ViewCache;->data:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2456
    iget-object v0, p0, Lcom/android/contacts/ViewContactActivity$ViewCache;->actionIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2457
    iget-object v0, p0, Lcom/android/contacts/ViewContactActivity$ViewCache;->presenceIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2458
    iget-object v0, p0, Lcom/android/contacts/ViewContactActivity$ViewCache;->location:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2459
    iget-object v0, p0, Lcom/android/contacts/ViewContactActivity$ViewCache;->primaryIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2460
    iget-object v0, p0, Lcom/android/contacts/ViewContactActivity$ViewCache;->secondaryActionButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2462
    iget-object v0, p0, Lcom/android/contacts/ViewContactActivity$ViewCache;->footer:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2463
    iget-object v0, p0, Lcom/android/contacts/ViewContactActivity$ViewCache;->callDate:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2464
    iget-object v0, p0, Lcom/android/contacts/ViewContactActivity$ViewCache;->duration:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2465
    iget-object v0, p0, Lcom/android/contacts/ViewContactActivity$ViewCache;->duration2:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
