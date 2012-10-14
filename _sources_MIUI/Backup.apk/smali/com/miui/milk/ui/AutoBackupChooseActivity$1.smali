.class Lcom/miui/milk/ui/AutoBackupChooseActivity$1;
.super Ljava/lang/Object;
.source "AutoBackupChooseActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/milk/ui/AutoBackupChooseActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/milk/ui/AutoBackupChooseActivity;


# direct methods
.method constructor <init>(Lcom/miui/milk/ui/AutoBackupChooseActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 48
    iput-object p1, p0, Lcom/miui/milk/ui/AutoBackupChooseActivity$1;->this$0:Lcom/miui/milk/ui/AutoBackupChooseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/miui/milk/ui/AutoBackupChooseActivity$1;->this$0:Lcom/miui/milk/ui/AutoBackupChooseActivity;

    invoke-virtual {v0}, Lcom/miui/milk/ui/AutoBackupChooseActivity;->finish()V

    .line 52
    return-void
.end method
