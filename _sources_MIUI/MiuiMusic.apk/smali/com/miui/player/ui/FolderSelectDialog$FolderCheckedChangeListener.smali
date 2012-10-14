.class Lcom/miui/player/ui/FolderSelectDialog$FolderCheckedChangeListener;
.super Ljava/lang/Object;
.source "FolderSelectDialog.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/ui/FolderSelectDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FolderCheckedChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/ui/FolderSelectDialog;


# direct methods
.method private constructor <init>(Lcom/miui/player/ui/FolderSelectDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 148
    iput-object p1, p0, Lcom/miui/player/ui/FolderSelectDialog$FolderCheckedChangeListener;->this$0:Lcom/miui/player/ui/FolderSelectDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/player/ui/FolderSelectDialog;Lcom/miui/player/ui/FolderSelectDialog$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 148
    invoke-direct {p0, p1}, Lcom/miui/player/ui/FolderSelectDialog$FolderCheckedChangeListener;-><init>(Lcom/miui/player/ui/FolderSelectDialog;)V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 151
    iget-object v1, p0, Lcom/miui/player/ui/FolderSelectDialog$FolderCheckedChangeListener;->this$0:Lcom/miui/player/ui/FolderSelectDialog;

    #getter for: Lcom/miui/player/ui/FolderSelectDialog;->mSelectFolder:Ljava/util/HashSet;
    invoke-static {v1}, Lcom/miui/player/ui/FolderSelectDialog;->access$100(Lcom/miui/player/ui/FolderSelectDialog;)Ljava/util/HashSet;

    move-result-object v1

    if-nez v1, :cond_0

    .line 161
    :goto_0
    return-void

    .line 155
    :cond_0
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 156
    .local v0, folderPath:Ljava/lang/String;
    if-eqz p2, :cond_1

    .line 157
    iget-object v1, p0, Lcom/miui/player/ui/FolderSelectDialog$FolderCheckedChangeListener;->this$0:Lcom/miui/player/ui/FolderSelectDialog;

    #getter for: Lcom/miui/player/ui/FolderSelectDialog;->mSelectFolder:Ljava/util/HashSet;
    invoke-static {v1}, Lcom/miui/player/ui/FolderSelectDialog;->access$100(Lcom/miui/player/ui/FolderSelectDialog;)Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 159
    :cond_1
    iget-object v1, p0, Lcom/miui/player/ui/FolderSelectDialog$FolderCheckedChangeListener;->this$0:Lcom/miui/player/ui/FolderSelectDialog;

    #getter for: Lcom/miui/player/ui/FolderSelectDialog;->mSelectFolder:Ljava/util/HashSet;
    invoke-static {v1}, Lcom/miui/player/ui/FolderSelectDialog;->access$100(Lcom/miui/player/ui/FolderSelectDialog;)Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method
