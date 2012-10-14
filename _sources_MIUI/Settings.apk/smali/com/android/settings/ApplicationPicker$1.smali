.class Lcom/android/settings/ApplicationPicker$1;
.super Ljava/lang/Object;
.source "ApplicationPicker.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/ApplicationPicker;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ApplicationPicker;


# direct methods
.method constructor <init>(Lcom/android/settings/ApplicationPicker;)V
    .locals 0
    .parameter

    .prologue
    .line 56
    iput-object p1, p0, Lcom/android/settings/ApplicationPicker$1;->this$0:Lcom/android/settings/ApplicationPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v7, 0x2

    .line 59
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/ApplicationPicker$AppProcess;

    .line 60
    .local v2, process:Lcom/android/settings/ApplicationPicker$AppProcess;
    if-eqz v2, :cond_0

    iget-object v3, v2, Lcom/android/settings/ApplicationPicker$AppProcess;->processName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 79
    :cond_0
    :goto_0
    return-void

    .line 63
    :cond_1
    iget-object v1, v2, Lcom/android/settings/ApplicationPicker$AppProcess;->processName:Ljava/lang/String;

    .line 64
    .local v1, name:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings/ApplicationPicker$1;->this$0:Lcom/android/settings/ApplicationPicker;

    #getter for: Lcom/android/settings/ApplicationPicker;->mChecked:Ljava/util/HashSet;
    invoke-static {v3}, Lcom/android/settings/ApplicationPicker;->access$000(Lcom/android/settings/ApplicationPicker;)Ljava/util/HashSet;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 65
    iget-object v3, p0, Lcom/android/settings/ApplicationPicker$1;->this$0:Lcom/android/settings/ApplicationPicker;

    #getter for: Lcom/android/settings/ApplicationPicker;->mChecked:Ljava/util/HashSet;
    invoke-static {v3}, Lcom/android/settings/ApplicationPicker;->access$000(Lcom/android/settings/ApplicationPicker;)Ljava/util/HashSet;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 76
    :goto_1
    const v3, 0x1020001

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iget-object v4, p0, Lcom/android/settings/ApplicationPicker$1;->this$0:Lcom/android/settings/ApplicationPicker;

    #getter for: Lcom/android/settings/ApplicationPicker;->mChecked:Ljava/util/HashSet;
    invoke-static {v4}, Lcom/android/settings/ApplicationPicker;->access$000(Lcom/android/settings/ApplicationPicker;)Ljava/util/HashSet;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 78
    iget-object v3, p0, Lcom/android/settings/ApplicationPicker$1;->this$0:Lcom/android/settings/ApplicationPicker;

    #calls: Lcom/android/settings/ApplicationPicker;->setCompelteButtonText()V
    invoke-static {v3}, Lcom/android/settings/ApplicationPicker;->access$100(Lcom/android/settings/ApplicationPicker;)V

    goto :goto_0

    .line 67
    :cond_2
    iget-object v3, p0, Lcom/android/settings/ApplicationPicker$1;->this$0:Lcom/android/settings/ApplicationPicker;

    #getter for: Lcom/android/settings/ApplicationPicker;->mChecked:Ljava/util/HashSet;
    invoke-static {v3}, Lcom/android/settings/ApplicationPicker;->access$000(Lcom/android/settings/ApplicationPicker;)Ljava/util/HashSet;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v3

    if-ge v3, v7, :cond_3

    .line 68
    iget-object v3, p0, Lcom/android/settings/ApplicationPicker$1;->this$0:Lcom/android/settings/ApplicationPicker;

    #getter for: Lcom/android/settings/ApplicationPicker;->mChecked:Ljava/util/HashSet;
    invoke-static {v3}, Lcom/android/settings/ApplicationPicker;->access$000(Lcom/android/settings/ApplicationPicker;)Ljava/util/HashSet;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 70
    :cond_3
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/settings/ApplicationPicker$1;->this$0:Lcom/android/settings/ApplicationPicker;

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 71
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    iget-object v3, p0, Lcom/android/settings/ApplicationPicker$1;->this$0:Lcom/android/settings/ApplicationPicker;

    const v4, 0x7f0904ff

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/android/settings/ApplicationPicker;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 72
    const v3, 0x104000a

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 73
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    goto :goto_1
.end method
