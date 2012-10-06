.class Lcom/miui/player/helper/controller/SearchBarController$3;
.super Ljava/lang/Object;
.source "SearchBarController.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/player/helper/controller/SearchBarController;->setSearchActionAnim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/helper/controller/SearchBarController;


# direct methods
.method constructor <init>(Lcom/miui/player/helper/controller/SearchBarController;)V
    .locals 0
    .parameter

    .prologue
    .line 167
    iput-object p1, p0, Lcom/miui/player/helper/controller/SearchBarController$3;->this$0:Lcom/miui/player/helper/controller/SearchBarController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    .line 171
    iget-object v0, p0, Lcom/miui/player/helper/controller/SearchBarController$3;->this$0:Lcom/miui/player/helper/controller/SearchBarController;

    invoke-virtual {v0, p2}, Lcom/miui/player/helper/controller/SearchBarController;->showHistoryList(Z)V

    .line 172
    return-void
.end method
