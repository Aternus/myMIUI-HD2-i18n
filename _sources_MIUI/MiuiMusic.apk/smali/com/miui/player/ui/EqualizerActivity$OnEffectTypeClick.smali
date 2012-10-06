.class Lcom/miui/player/ui/EqualizerActivity$OnEffectTypeClick;
.super Ljava/lang/Object;
.source "EqualizerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/ui/EqualizerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnEffectTypeClick"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/ui/EqualizerActivity;


# direct methods
.method private constructor <init>(Lcom/miui/player/ui/EqualizerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 450
    iput-object p1, p0, Lcom/miui/player/ui/EqualizerActivity$OnEffectTypeClick;->this$0:Lcom/miui/player/ui/EqualizerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/player/ui/EqualizerActivity;Lcom/miui/player/ui/EqualizerActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 450
    invoke-direct {p0, p1}, Lcom/miui/player/ui/EqualizerActivity$OnEffectTypeClick;-><init>(Lcom/miui/player/ui/EqualizerActivity;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    .line 454
    iget-object v3, p0, Lcom/miui/player/ui/EqualizerActivity$OnEffectTypeClick;->this$0:Lcom/miui/player/ui/EqualizerActivity;

    invoke-static {v3}, Lcom/miui/player/ui/EqualizerActivity;->getEqualizerConfigId(Landroid/content/Context;)I

    move-result v1

    .line 455
    .local v1, config:I
    const/4 v2, -0x1

    .line 456
    .local v2, idx:I
    if-eqz v1, :cond_0

    .line 457
    iget-object v3, p0, Lcom/miui/player/ui/EqualizerActivity$OnEffectTypeClick;->this$0:Lcom/miui/player/ui/EqualizerActivity;

    iget-object v3, v3, Lcom/miui/player/ui/EqualizerActivity;->mIdArr:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 460
    :cond_0
    new-instance v0, Lcom/miui/player/ui/EqualizerActivity$EffectTypeAdapter;

    iget-object v3, p0, Lcom/miui/player/ui/EqualizerActivity$OnEffectTypeClick;->this$0:Lcom/miui/player/ui/EqualizerActivity;

    iget-object v4, p0, Lcom/miui/player/ui/EqualizerActivity$OnEffectTypeClick;->this$0:Lcom/miui/player/ui/EqualizerActivity;

    iget-object v4, v4, Lcom/miui/player/ui/EqualizerActivity;->mNameArr:Ljava/util/List;

    invoke-direct {v0, v3, v4}, Lcom/miui/player/ui/EqualizerActivity$EffectTypeAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 461
    .local v0, adapter:Lcom/miui/player/ui/EqualizerActivity$EffectTypeAdapter;
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/miui/player/ui/EqualizerActivity$OnEffectTypeClick;->this$0:Lcom/miui/player/ui/EqualizerActivity;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v4, Lcom/miui/player/ui/EqualizerActivity$OnEffectTypeSelected;

    iget-object v5, p0, Lcom/miui/player/ui/EqualizerActivity$OnEffectTypeClick;->this$0:Lcom/miui/player/ui/EqualizerActivity;

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lcom/miui/player/ui/EqualizerActivity$OnEffectTypeSelected;-><init>(Lcom/miui/player/ui/EqualizerActivity;Lcom/miui/player/ui/EqualizerActivity$1;)V

    invoke-virtual {v3, v0, v2, v4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 465
    return-void
.end method
