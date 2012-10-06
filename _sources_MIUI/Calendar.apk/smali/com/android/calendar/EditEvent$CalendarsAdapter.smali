.class Lcom/android/calendar/EditEvent$CalendarsAdapter;
.super Landroid/widget/ResourceCursorAdapter;
.source "EditEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/EditEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CalendarsAdapter"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 1
    .parameter "context"
    .parameter "c"

    .prologue
    .line 422
    const v0, 0x7f03000b

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ResourceCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;)V

    .line 423
    const v0, 0x7f03000a

    invoke-virtual {p0, v0}, Lcom/android/calendar/EditEvent$CalendarsAdapter;->setDropDownViewResource(I)V

    .line 424
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 6
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 428
    const v5, 0x7f0c0012

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 429
    .local v1, colorBar:Landroid/view/View;
    if-eqz v1, :cond_0

    .line 430
    const/4 v5, 0x3

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-static {v5}, Lcom/android/calendar/Utils;->getColorChip(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 434
    :cond_0
    const v5, 0x7f0c0019

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 435
    .local v3, name:Landroid/widget/TextView;
    if-eqz v3, :cond_1

    .line 436
    const/4 v5, 0x1

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 437
    .local v2, displayName:Ljava/lang/String;
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 438
    const/high16 v5, -0x100

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 440
    const v5, 0x7f0c001a

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 441
    .local v0, accountName:Landroid/widget/TextView;
    if-eqz v0, :cond_1

    .line 442
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 443
    .local v4, res:Landroid/content/res/Resources;
    const/4 v5, 0x2

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 444
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 445
    const v5, 0x7f070007

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 448
    .end local v0           #accountName:Landroid/widget/TextView;
    .end local v2           #displayName:Ljava/lang/String;
    .end local v4           #res:Landroid/content/res/Resources;
    :cond_1
    return-void
.end method
