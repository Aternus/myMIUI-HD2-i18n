.class Lcom/android/phone/CustomLocationActivity$2$1;
.super Ljava/lang/Object;
.source "CustomLocationActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/CustomLocationActivity$2;->onClick(Landroid/view/View;Landroid/widget/EditableListView$EditableListViewCheckable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/phone/CustomLocationActivity$2;

.field final synthetic val$ids:Ljava/util/HashSet;


# direct methods
.method constructor <init>(Lcom/android/phone/CustomLocationActivity$2;Ljava/util/HashSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 73
    iput-object p1, p0, Lcom/android/phone/CustomLocationActivity$2$1;->this$1:Lcom/android/phone/CustomLocationActivity$2;

    iput-object p2, p0, Lcom/android/phone/CustomLocationActivity$2$1;->val$ids:Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v2, 0x0

    .line 77
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/phone/CustomLocationActivity$2$1;->this$1:Lcom/android/phone/CustomLocationActivity$2;

    iget-object v1, v1, Lcom/android/phone/CustomLocationActivity$2;->this$0:Lcom/android/phone/CustomLocationActivity;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 79
    .local v0, progress:Landroid/app/ProgressDialog;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 80
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 81
    const v1, 0x7f0c027d

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(I)V

    .line 82
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 83
    iget-object v1, p0, Lcom/android/phone/CustomLocationActivity$2$1;->val$ids:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 84
    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressNumberFormat(Ljava/lang/String;)V

    .line 85
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 86
    new-instance v1, Lcom/android/phone/CustomLocationActivity$2$1$1;

    invoke-direct {v1, p0, v0}, Lcom/android/phone/CustomLocationActivity$2$1$1;-><init>(Lcom/android/phone/CustomLocationActivity$2$1;Landroid/app/ProgressDialog;)V

    invoke-virtual {v1}, Lcom/android/phone/CustomLocationActivity$2$1$1;->start()V

    .line 106
    return-void
.end method
