.class Lcom/miui/player/helper/controller/BatchSelectionPlaylistController$OnToggleListener;
.super Ljava/lang/Object;
.source "BatchSelectionPlaylistController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnToggleListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;


# direct methods
.method private constructor <init>(Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;)V
    .locals 0
    .parameter

    .prologue
    .line 172
    iput-object p1, p0, Lcom/miui/player/helper/controller/BatchSelectionPlaylistController$OnToggleListener;->this$0:Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;Lcom/miui/player/helper/controller/BatchSelectionPlaylistController$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 172
    invoke-direct {p0, p1}, Lcom/miui/player/helper/controller/BatchSelectionPlaylistController$OnToggleListener;-><init>(Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 176
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    .line 177
    .local v2, tag:Ljava/lang/Object;
    instance-of v3, v2, Landroid/widget/CheckBox;

    if-eqz v3, :cond_0

    .line 178
    move-object v0, v2

    check-cast v0, Landroid/widget/CheckBox;

    move-object v1, v0

    .line 179
    .local v1, selectBox:Landroid/widget/CheckBox;
    invoke-virtual {v1}, Landroid/widget/CheckBox;->toggle()V

    .line 181
    .end local v1           #selectBox:Landroid/widget/CheckBox;
    :cond_0
    return-void
.end method
