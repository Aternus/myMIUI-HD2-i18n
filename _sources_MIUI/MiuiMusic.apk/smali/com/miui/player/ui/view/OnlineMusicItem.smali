.class public Lcom/miui/player/ui/view/OnlineMusicItem;
.super Landroid/widget/EditableListItem;
.source "OnlineMusicItem.java"


# static fields
.field public static final STATUS_DOWNLOADED:I = 0x2

.field public static final STATUS_DOWNLOADING:I = 0x1

.field public static final STATUS_NORMAL:I


# instance fields
.field public mCheckItem:Landroid/widget/CheckBox;

.field public mDownloadStatus:Landroid/widget/TextView;

.field private mStatus:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Landroid/widget/EditableListItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    return-void
.end method

.method private updateView()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 38
    iget-object v0, p0, Lcom/miui/player/ui/view/OnlineMusicItem;->mCheckItem:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 39
    iget-object v0, p0, Lcom/miui/player/ui/view/OnlineMusicItem;->mCheckItem:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setClickable(Z)V

    .line 40
    iget v0, p0, Lcom/miui/player/ui/view/OnlineMusicItem;->mStatus:I

    packed-switch v0, :pswitch_data_0

    .line 51
    iget-object v0, p0, Lcom/miui/player/ui/view/OnlineMusicItem;->mDownloadStatus:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 54
    :goto_0
    return-void

    .line 42
    :pswitch_0
    iget-object v0, p0, Lcom/miui/player/ui/view/OnlineMusicItem;->mDownloadStatus:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 43
    iget-object v0, p0, Lcom/miui/player/ui/view/OnlineMusicItem;->mDownloadStatus:Landroid/widget/TextView;

    const v1, 0x7f08008b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 46
    :pswitch_1
    iget-object v0, p0, Lcom/miui/player/ui/view/OnlineMusicItem;->mDownloadStatus:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 47
    iget-object v0, p0, Lcom/miui/player/ui/view/OnlineMusicItem;->mDownloadStatus:Landroid/widget/TextView;

    const v1, 0x7f08008a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 40
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public applyEnterAnim()V
    .locals 0

    .prologue
    .line 65
    return-void
.end method

.method public enterEditMode(Z)V
    .locals 2
    .parameter "checked"

    .prologue
    .line 58
    invoke-super {p0, p1}, Landroid/widget/EditableListItem;->enterEditMode(Z)V

    .line 59
    iget-object v0, p0, Lcom/miui/player/ui/view/OnlineMusicItem;->mCheckItem:Landroid/widget/CheckBox;

    iget v1, p0, Lcom/miui/player/ui/view/OnlineMusicItem;->mStatus:I

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 60
    return-void

    .line 59
    :cond_0
    const/16 v1, 0x8

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 27
    invoke-super {p0}, Landroid/widget/EditableListItem;->onFinishInflate()V

    .line 28
    const v0, 0x1020001

    invoke-virtual {p0, v0}, Lcom/miui/player/ui/view/OnlineMusicItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/miui/player/ui/view/OnlineMusicItem;->mCheckItem:Landroid/widget/CheckBox;

    .line 29
    const v0, 0x7f0c00a7

    invoke-virtual {p0, v0}, Lcom/miui/player/ui/view/OnlineMusicItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/player/ui/view/OnlineMusicItem;->mDownloadStatus:Landroid/widget/TextView;

    .line 30
    return-void
.end method

.method public setStatus(I)V
    .locals 0
    .parameter "status"

    .prologue
    .line 33
    iput p1, p0, Lcom/miui/player/ui/view/OnlineMusicItem;->mStatus:I

    .line 34
    invoke-direct {p0}, Lcom/miui/player/ui/view/OnlineMusicItem;->updateView()V

    .line 35
    return-void
.end method
