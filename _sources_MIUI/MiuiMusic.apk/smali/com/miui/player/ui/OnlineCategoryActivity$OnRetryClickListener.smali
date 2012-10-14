.class Lcom/miui/player/ui/OnlineCategoryActivity$OnRetryClickListener;
.super Ljava/lang/Object;
.source "OnlineCategoryActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/ui/OnlineCategoryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnRetryClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/ui/OnlineCategoryActivity;


# direct methods
.method private constructor <init>(Lcom/miui/player/ui/OnlineCategoryActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 144
    iput-object p1, p0, Lcom/miui/player/ui/OnlineCategoryActivity$OnRetryClickListener;->this$0:Lcom/miui/player/ui/OnlineCategoryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/player/ui/OnlineCategoryActivity;Lcom/miui/player/ui/OnlineCategoryActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 144
    invoke-direct {p0, p1}, Lcom/miui/player/ui/OnlineCategoryActivity$OnRetryClickListener;-><init>(Lcom/miui/player/ui/OnlineCategoryActivity;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 148
    iget-object v0, p0, Lcom/miui/player/ui/OnlineCategoryActivity$OnRetryClickListener;->this$0:Lcom/miui/player/ui/OnlineCategoryActivity;

    #calls: Lcom/miui/player/ui/OnlineCategoryActivity;->startCategoryLoadingAsync()V
    invoke-static {v0}, Lcom/miui/player/ui/OnlineCategoryActivity;->access$800(Lcom/miui/player/ui/OnlineCategoryActivity;)V

    .line 149
    return-void
.end method
