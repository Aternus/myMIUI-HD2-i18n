.class Lcom/miui/player/ui/RenamePlaylist$1;
.super Ljava/lang/Object;
.source "RenamePlaylist.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/ui/RenamePlaylist;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/ui/RenamePlaylist;


# direct methods
.method constructor <init>(Lcom/miui/player/ui/RenamePlaylist;)V
    .locals 0
    .parameter

    .prologue
    .line 110
    iput-object p1, p0, Lcom/miui/player/ui/RenamePlaylist$1;->this$0:Lcom/miui/player/ui/RenamePlaylist;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 123
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 113
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/miui/player/ui/RenamePlaylist$1;->this$0:Lcom/miui/player/ui/RenamePlaylist;

    #calls: Lcom/miui/player/ui/RenamePlaylist;->setSaveButton()V
    invoke-static {v0}, Lcom/miui/player/ui/RenamePlaylist;->access$000(Lcom/miui/player/ui/RenamePlaylist;)V

    .line 119
    return-void
.end method
