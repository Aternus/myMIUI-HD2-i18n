.class Lcom/miui/player/ui/OnlineMusicBaseActivity$OnRetryClickListener;
.super Ljava/lang/Object;
.source "OnlineMusicBaseActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/ui/OnlineMusicBaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnRetryClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/ui/OnlineMusicBaseActivity;


# direct methods
.method private constructor <init>(Lcom/miui/player/ui/OnlineMusicBaseActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 383
    iput-object p1, p0, Lcom/miui/player/ui/OnlineMusicBaseActivity$OnRetryClickListener;->this$0:Lcom/miui/player/ui/OnlineMusicBaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/player/ui/OnlineMusicBaseActivity;Lcom/miui/player/ui/OnlineMusicBaseActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 383
    invoke-direct {p0, p1}, Lcom/miui/player/ui/OnlineMusicBaseActivity$OnRetryClickListener;-><init>(Lcom/miui/player/ui/OnlineMusicBaseActivity;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 387
    iget-object v0, p0, Lcom/miui/player/ui/OnlineMusicBaseActivity$OnRetryClickListener;->this$0:Lcom/miui/player/ui/OnlineMusicBaseActivity;

    invoke-virtual {v0}, Lcom/miui/player/ui/OnlineMusicBaseActivity;->startSongListLoadingAsync()V

    .line 388
    return-void
.end method
