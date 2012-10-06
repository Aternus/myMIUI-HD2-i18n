.class Lcom/miui/player/helper/controller/SearchBarController$OnSearchAction;
.super Ljava/lang/Object;
.source "SearchBarController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/helper/controller/SearchBarController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnSearchAction"
.end annotation


# instance fields
.field private mActionType:I

.field final synthetic this$0:Lcom/miui/player/helper/controller/SearchBarController;


# direct methods
.method public constructor <init>(Lcom/miui/player/helper/controller/SearchBarController;I)V
    .locals 0
    .parameter
    .parameter "actionType"

    .prologue
    .line 228
    iput-object p1, p0, Lcom/miui/player/helper/controller/SearchBarController$OnSearchAction;->this$0:Lcom/miui/player/helper/controller/SearchBarController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 229
    iput p2, p0, Lcom/miui/player/helper/controller/SearchBarController$OnSearchAction;->mActionType:I

    .line 230
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 238
    iget-object v0, p0, Lcom/miui/player/helper/controller/SearchBarController$OnSearchAction;->this$0:Lcom/miui/player/helper/controller/SearchBarController;

    iget v1, p0, Lcom/miui/player/helper/controller/SearchBarController$OnSearchAction;->mActionType:I

    #calls: Lcom/miui/player/helper/controller/SearchBarController;->searchAction(I)V
    invoke-static {v0, v1}, Lcom/miui/player/helper/controller/SearchBarController;->access$200(Lcom/miui/player/helper/controller/SearchBarController;I)V

    .line 239
    return-void
.end method

.method public setActionType(I)V
    .locals 0
    .parameter "actionType"

    .prologue
    .line 233
    iput p1, p0, Lcom/miui/player/helper/controller/SearchBarController$OnSearchAction;->mActionType:I

    .line 234
    return-void
.end method
