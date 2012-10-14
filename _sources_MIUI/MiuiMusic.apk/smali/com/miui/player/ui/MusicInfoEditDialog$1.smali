.class Lcom/miui/player/ui/MusicInfoEditDialog$1;
.super Ljava/lang/Object;
.source "MusicInfoEditDialog.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/player/ui/MusicInfoEditDialog;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/ui/MusicInfoEditDialog;


# direct methods
.method constructor <init>(Lcom/miui/player/ui/MusicInfoEditDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 131
    iput-object p1, p0, Lcom/miui/player/ui/MusicInfoEditDialog$1;->this$0:Lcom/miui/player/ui/MusicInfoEditDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    const/4 v2, 0x0

    .line 134
    iget-object v0, p0, Lcom/miui/player/ui/MusicInfoEditDialog$1;->this$0:Lcom/miui/player/ui/MusicInfoEditDialog;

    invoke-virtual {v0}, Lcom/miui/player/ui/MusicInfoEditDialog;->isModifyId3Invalid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/miui/player/ui/MusicInfoEditDialog$1;->this$0:Lcom/miui/player/ui/MusicInfoEditDialog;

    #getter for: Lcom/miui/player/ui/MusicInfoEditDialog;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/miui/player/ui/MusicInfoEditDialog;->access$100(Lcom/miui/player/ui/MusicInfoEditDialog;)Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0800bf

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 136
    iget-object v0, p0, Lcom/miui/player/ui/MusicInfoEditDialog$1;->this$0:Lcom/miui/player/ui/MusicInfoEditDialog;

    #getter for: Lcom/miui/player/ui/MusicInfoEditDialog;->mId3EditCheckBox:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/miui/player/ui/MusicInfoEditDialog;->access$200(Lcom/miui/player/ui/MusicInfoEditDialog;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 138
    :cond_0
    return-void
.end method
