.class Lcom/android/browser/ui/TabSelectView$TabView;
.super Landroid/widget/LinearLayout;
.source "TabSelectView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/ui/TabSelectView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TabView"
.end annotation


# instance fields
.field private black_black_left:Landroid/widget/ImageView;

.field private black_black_right:Landroid/widget/ImageView;

.field private black_none:Landroid/widget/ImageView;

.field private black_white:Landroid/widget/ImageView;

.field private downYValue:F

.field private mCloseBtn:Landroid/widget/ImageButton;

.field private mFrameView:Landroid/widget/LinearLayout;

.field private mTitleView:Landroid/widget/TextView;

.field private none_black:Landroid/widget/ImageView;

.field private none_white:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/android/browser/ui/TabSelectView;

.field private white_black:Landroid/widget/ImageView;

.field private white_none:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Lcom/android/browser/ui/TabSelectView;Landroid/content/Context;)V
    .locals 3
    .parameter
    .parameter "context"

    .prologue
    .line 104
    iput-object p1, p0, Lcom/android/browser/ui/TabSelectView$TabView;->this$0:Lcom/android/browser/ui/TabSelectView;

    .line 105
    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 106
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 107
    .local v0, factory:Landroid/view/LayoutInflater;
    const v1, 0x7f03001d

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/browser/ui/TabSelectView$TabView;->mFrameView:Landroid/widget/LinearLayout;

    .line 109
    iget-object v1, p0, Lcom/android/browser/ui/TabSelectView$TabView;->mFrameView:Landroid/widget/LinearLayout;

    const v2, 0x7f0d006c

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/browser/ui/TabSelectView$TabView;->mTitleView:Landroid/widget/TextView;

    .line 110
    iget-object v1, p0, Lcom/android/browser/ui/TabSelectView$TabView;->mFrameView:Landroid/widget/LinearLayout;

    const v2, 0x7f0d006d

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/browser/ui/TabSelectView$TabView;->mCloseBtn:Landroid/widget/ImageButton;

    .line 112
    iget-object v1, p0, Lcom/android/browser/ui/TabSelectView$TabView;->mFrameView:Landroid/widget/LinearLayout;

    const v2, 0x7f0d0068

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/browser/ui/TabSelectView$TabView;->none_black:Landroid/widget/ImageView;

    .line 113
    iget-object v1, p0, Lcom/android/browser/ui/TabSelectView$TabView;->mFrameView:Landroid/widget/LinearLayout;

    const v2, 0x7f0d0069

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/browser/ui/TabSelectView$TabView;->black_black_left:Landroid/widget/ImageView;

    .line 115
    iget-object v1, p0, Lcom/android/browser/ui/TabSelectView$TabView;->mFrameView:Landroid/widget/LinearLayout;

    const v2, 0x7f0d006a

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/browser/ui/TabSelectView$TabView;->none_white:Landroid/widget/ImageView;

    .line 116
    iget-object v1, p0, Lcom/android/browser/ui/TabSelectView$TabView;->mFrameView:Landroid/widget/LinearLayout;

    const v2, 0x7f0d006b

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/browser/ui/TabSelectView$TabView;->black_white:Landroid/widget/ImageView;

    .line 118
    iget-object v1, p0, Lcom/android/browser/ui/TabSelectView$TabView;->mFrameView:Landroid/widget/LinearLayout;

    const v2, 0x7f0d006e

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/browser/ui/TabSelectView$TabView;->white_none:Landroid/widget/ImageView;

    .line 119
    iget-object v1, p0, Lcom/android/browser/ui/TabSelectView$TabView;->mFrameView:Landroid/widget/LinearLayout;

    const v2, 0x7f0d006f

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/browser/ui/TabSelectView$TabView;->white_black:Landroid/widget/ImageView;

    .line 121
    iget-object v1, p0, Lcom/android/browser/ui/TabSelectView$TabView;->mFrameView:Landroid/widget/LinearLayout;

    const v2, 0x7f0d0070

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/browser/ui/TabSelectView$TabView;->black_black_right:Landroid/widget/ImageView;

    .line 122
    iget-object v1, p0, Lcom/android/browser/ui/TabSelectView$TabView;->mFrameView:Landroid/widget/LinearLayout;

    const v2, 0x7f0d0071

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/browser/ui/TabSelectView$TabView;->black_none:Landroid/widget/ImageView;

    .line 123
    return-void
.end method

.method static synthetic access$000(Lcom/android/browser/ui/TabSelectView$TabView;)Landroid/widget/ImageButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/browser/ui/TabSelectView$TabView;->mCloseBtn:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/browser/ui/TabSelectView$TabView;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/browser/ui/TabSelectView$TabView;->mTitleView:Landroid/widget/TextView;

    return-object v0
.end method

.method private setGone()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 126
    iget-object v0, p0, Lcom/android/browser/ui/TabSelectView$TabView;->none_black:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 127
    iget-object v0, p0, Lcom/android/browser/ui/TabSelectView$TabView;->black_black_left:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 129
    iget-object v0, p0, Lcom/android/browser/ui/TabSelectView$TabView;->none_white:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 130
    iget-object v0, p0, Lcom/android/browser/ui/TabSelectView$TabView;->black_white:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 132
    iget-object v0, p0, Lcom/android/browser/ui/TabSelectView$TabView;->white_none:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 133
    iget-object v0, p0, Lcom/android/browser/ui/TabSelectView$TabView;->white_black:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 135
    iget-object v0, p0, Lcom/android/browser/ui/TabSelectView$TabView;->black_black_right:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 136
    iget-object v0, p0, Lcom/android/browser/ui/TabSelectView$TabView;->black_none:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 137
    return-void
.end method


# virtual methods
.method public setActive(II)V
    .locals 3
    .parameter "currentIndex"
    .parameter "totalNum"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 140
    invoke-direct {p0}, Lcom/android/browser/ui/TabSelectView$TabView;->setGone()V

    .line 141
    if-nez p1, :cond_0

    .line 142
    iget-object v0, p0, Lcom/android/browser/ui/TabSelectView$TabView;->none_white:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 147
    :goto_0
    sub-int v0, p2, v2

    if-ne p1, v0, :cond_1

    .line 148
    iget-object v0, p0, Lcom/android/browser/ui/TabSelectView$TabView;->white_none:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 153
    :goto_1
    iget-object v0, p0, Lcom/android/browser/ui/TabSelectView$TabView;->mCloseBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 154
    iget-object v0, p0, Lcom/android/browser/ui/TabSelectView$TabView;->mTitleView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 155
    iget-object v0, p0, Lcom/android/browser/ui/TabSelectView$TabView;->mFrameView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 157
    iget-object v0, p0, Lcom/android/browser/ui/TabSelectView$TabView;->mFrameView:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/android/browser/ui/TabSelectView$TabView$1;

    invoke-direct {v1, p0}, Lcom/android/browser/ui/TabSelectView$TabView$1;-><init>(Lcom/android/browser/ui/TabSelectView$TabView;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    return-void

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/android/browser/ui/TabSelectView$TabView;->black_white:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 150
    :cond_1
    iget-object v0, p0, Lcom/android/browser/ui/TabSelectView$TabView;->white_black:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method public setInactive(III)V
    .locals 3
    .parameter "currentIndex"
    .parameter "selectedIndex"
    .parameter "totalNum"

    .prologue
    const/4 v2, 0x0

    .line 166
    invoke-direct {p0}, Lcom/android/browser/ui/TabSelectView$TabView;->setGone()V

    .line 168
    if-ge p1, p2, :cond_1

    .line 169
    if-nez p1, :cond_0

    .line 170
    iget-object v0, p0, Lcom/android/browser/ui/TabSelectView$TabView;->none_black:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 183
    :goto_0
    iget-object v0, p0, Lcom/android/browser/ui/TabSelectView$TabView;->mCloseBtn:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 184
    iget-object v0, p0, Lcom/android/browser/ui/TabSelectView$TabView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 185
    iget-object v0, p0, Lcom/android/browser/ui/TabSelectView$TabView;->mFrameView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 187
    iget-object v0, p0, Lcom/android/browser/ui/TabSelectView$TabView;->mFrameView:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/android/browser/ui/TabSelectView$TabView$2;

    invoke-direct {v1, p0}, Lcom/android/browser/ui/TabSelectView$TabView$2;-><init>(Lcom/android/browser/ui/TabSelectView$TabView;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 193
    return-void

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/android/browser/ui/TabSelectView$TabView;->black_black_left:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 176
    :cond_1
    const/4 v0, 0x1

    sub-int v0, p3, v0

    if-ne p1, v0, :cond_2

    .line 177
    iget-object v0, p0, Lcom/android/browser/ui/TabSelectView$TabView;->black_none:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 179
    :cond_2
    iget-object v0, p0, Lcom/android/browser/ui/TabSelectView$TabView;->black_black_right:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setOnClickListener(ILandroid/view/View$OnClickListener;)V
    .locals 1
    .parameter "mod"
    .parameter "l"

    .prologue
    .line 200
    packed-switch p1, :pswitch_data_0

    .line 206
    :goto_0
    return-void

    .line 202
    :pswitch_0
    iget-object v0, p0, Lcom/android/browser/ui/TabSelectView$TabView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 204
    :pswitch_1
    iget-object v0, p0, Lcom/android/browser/ui/TabSelectView$TabView;->mCloseBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, p2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 200
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/browser/ui/TabSelectView$TabView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    return-void
.end method
