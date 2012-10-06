.class Lcom/miui/milk/ui/CloudBackupMain$1;
.super Ljava/lang/Object;
.source "CloudBackupMain.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/milk/ui/CloudBackupMain;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/milk/ui/CloudBackupMain;


# direct methods
.method constructor <init>(Lcom/miui/milk/ui/CloudBackupMain;)V
    .locals 0
    .parameter

    .prologue
    .line 47
    iput-object p1, p0, Lcom/miui/milk/ui/CloudBackupMain$1;->this$0:Lcom/miui/milk/ui/CloudBackupMain;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/miui/milk/ui/CloudBackupMain$1;->this$0:Lcom/miui/milk/ui/CloudBackupMain;

    iget-object v1, p0, Lcom/miui/milk/ui/CloudBackupMain$1;->this$0:Lcom/miui/milk/ui/CloudBackupMain;

    invoke-static {v0, v1}, Lcom/miui/milk/util/AccountUtil;->addAccount(Landroid/content/Context;Landroid/accounts/AccountManagerCallback;)V

    .line 51
    return-void
.end method
