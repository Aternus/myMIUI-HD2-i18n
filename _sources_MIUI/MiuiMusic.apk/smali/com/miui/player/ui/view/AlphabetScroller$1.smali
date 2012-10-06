.class Lcom/miui/player/ui/view/AlphabetScroller$1;
.super Ljava/lang/Object;
.source "AlphabetScroller.java"

# interfaces
.implements Lcom/miui/player/ui/view/AlphabetScroller$OnIndexerChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/ui/view/AlphabetScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/ui/view/AlphabetScroller;


# direct methods
.method constructor <init>(Lcom/miui/player/ui/view/AlphabetScroller;)V
    .locals 0
    .parameter

    .prologue
    .line 150
    iput-object p1, p0, Lcom/miui/player/ui/view/AlphabetScroller$1;->this$0:Lcom/miui/player/ui/view/AlphabetScroller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onIndexerChanged()V
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/miui/player/ui/view/AlphabetScroller$1;->this$0:Lcom/miui/player/ui/view/AlphabetScroller;

    invoke-virtual {v0}, Lcom/miui/player/ui/view/AlphabetScroller;->refreshAlphabetBgPos()V

    .line 155
    return-void
.end method
