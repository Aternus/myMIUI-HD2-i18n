.class Lcom/miui/fmradio/FMRadioMain$14;
.super Ljava/lang/Object;
.source "FMRadioMain.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/fmradio/FMRadioMain;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/fmradio/FMRadioMain;


# direct methods
.method constructor <init>(Lcom/miui/fmradio/FMRadioMain;)V
    .locals 0
    .parameter

    .prologue
    .line 1342
    iput-object p1, p0, Lcom/miui/fmradio/FMRadioMain$14;->this$0:Lcom/miui/fmradio/FMRadioMain;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 6
    .parameter "dialog"

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 1344
    const-string v0, "MainActivity"

    const-string v1, "Progress dialog call onDismiss"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1345
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioMain$14;->this$0:Lcom/miui/fmradio/FMRadioMain;

    invoke-virtual {v0, v5}, Lcom/miui/fmradio/FMRadioMain;->removeDialog(I)V

    .line 1346
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioMain$14;->this$0:Lcom/miui/fmradio/FMRadioMain;

    #setter for: Lcom/miui/fmradio/FMRadioMain;->mIsSeekAll:Z
    invoke-static {v0, v5}, Lcom/miui/fmradio/FMRadioMain;->access$1202(Lcom/miui/fmradio/FMRadioMain;Z)Z

    .line 1347
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioMain$14;->this$0:Lcom/miui/fmradio/FMRadioMain;

    #setter for: Lcom/miui/fmradio/FMRadioMain;->mIsSeekAllFininsh:Z
    invoke-static {v0, v3}, Lcom/miui/fmradio/FMRadioMain;->access$1302(Lcom/miui/fmradio/FMRadioMain;Z)Z

    .line 1348
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioMain$14;->this$0:Lcom/miui/fmradio/FMRadioMain;

    #getter for: Lcom/miui/fmradio/FMRadioMain;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/miui/fmradio/FMRadioMain;->access$200(Lcom/miui/fmradio/FMRadioMain;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1349
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioMain$14;->this$0:Lcom/miui/fmradio/FMRadioMain;

    #calls: Lcom/miui/fmradio/FMRadioMain;->enableUI(Z)V
    invoke-static {v0, v3}, Lcom/miui/fmradio/FMRadioMain;->access$1400(Lcom/miui/fmradio/FMRadioMain;Z)V

    .line 1350
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioMain$14;->this$0:Lcom/miui/fmradio/FMRadioMain;

    iget-object v1, p0, Lcom/miui/fmradio/FMRadioMain$14;->this$0:Lcom/miui/fmradio/FMRadioMain;

    const v2, 0x7f050012

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/miui/fmradio/FMRadioMain$14;->this$0:Lcom/miui/fmradio/FMRadioMain;

    #getter for: Lcom/miui/fmradio/FMRadioMain;->mSeekSaveCount:I
    invoke-static {v4}, Lcom/miui/fmradio/FMRadioMain;->access$1500(Lcom/miui/fmradio/FMRadioMain;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/miui/fmradio/FMRadioMain;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Lcom/miui/fmradio/FMRadioUtils;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1353
    return-void
.end method
