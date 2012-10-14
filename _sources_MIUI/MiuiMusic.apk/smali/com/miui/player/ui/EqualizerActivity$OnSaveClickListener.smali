.class Lcom/miui/player/ui/EqualizerActivity$OnSaveClickListener;
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
    name = "OnSaveClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/ui/EqualizerActivity;


# direct methods
.method private constructor <init>(Lcom/miui/player/ui/EqualizerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 469
    iput-object p1, p0, Lcom/miui/player/ui/EqualizerActivity$OnSaveClickListener;->this$0:Lcom/miui/player/ui/EqualizerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/player/ui/EqualizerActivity;Lcom/miui/player/ui/EqualizerActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 469
    invoke-direct {p0, p1}, Lcom/miui/player/ui/EqualizerActivity$OnSaveClickListener;-><init>(Lcom/miui/player/ui/EqualizerActivity;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 473
    iget-object v2, p0, Lcom/miui/player/ui/EqualizerActivity$OnSaveClickListener;->this$0:Lcom/miui/player/ui/EqualizerActivity;

    invoke-virtual {v2}, Lcom/miui/player/ui/EqualizerActivity;->getCurrentConfigData()[I

    move-result-object v0

    .line 474
    .local v0, custom:[I
    invoke-static {v0}, Lcom/miui/player/provider/PlayerProviderUtils;->codeEqualizerConfig([I)Ljava/lang/String;

    move-result-object v1

    .line 475
    .local v1, data:Ljava/lang/String;
    iget-object v2, p0, Lcom/miui/player/ui/EqualizerActivity$OnSaveClickListener;->this$0:Lcom/miui/player/ui/EqualizerActivity;

    iget-object v3, p0, Lcom/miui/player/ui/EqualizerActivity$OnSaveClickListener;->this$0:Lcom/miui/player/ui/EqualizerActivity;

    const/4 v4, 0x1

    invoke-static {v2, v3, v4, v1}, Lcom/miui/player/ui/CreatorDialog;->makeEqualizerConfigCreator(Landroid/app/Activity;Lcom/miui/player/MusicUtils$OnDialogCallback;ILjava/lang/String;)Lcom/miui/player/ui/CreatorDialog;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/player/ui/CreatorDialog;->show()V

    .line 477
    return-void
.end method
