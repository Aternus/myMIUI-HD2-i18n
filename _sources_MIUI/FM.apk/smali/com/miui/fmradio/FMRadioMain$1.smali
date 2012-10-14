.class Lcom/miui/fmradio/FMRadioMain$1;
.super Ljava/lang/Object;
.source "FMRadioMain.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/fmradio/FMRadioMain;->checkIfCanStart()Z
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
    .line 216
    iput-object p1, p0, Lcom/miui/fmradio/FMRadioMain$1;->this$0:Lcom/miui/fmradio/FMRadioMain;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .parameter "classname"
    .parameter "obj"

    .prologue
    const/4 v2, 0x1

    .line 218
    const-string v0, "MainActivity"

    const-string v1, "FM radio java service Connected! "

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioMain$1;->this$0:Lcom/miui/fmradio/FMRadioMain;

    #setter for: Lcom/miui/fmradio/FMRadioMain;->mIsFMServiceBind:Z
    invoke-static {v0, v2}, Lcom/miui/fmradio/FMRadioMain;->access$102(Lcom/miui/fmradio/FMRadioMain;Z)Z

    .line 220
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioMain$1;->this$0:Lcom/miui/fmradio/FMRadioMain;

    #getter for: Lcom/miui/fmradio/FMRadioMain;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/miui/fmradio/FMRadioMain;->access$200(Lcom/miui/fmradio/FMRadioMain;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 221
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "classname"

    .prologue
    .line 223
    const-string v0, "MainActivity"

    const-string v1, "FM radio service layer disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioMain$1;->this$0:Lcom/miui/fmradio/FMRadioMain;

    const/4 v1, 0x0

    #setter for: Lcom/miui/fmradio/FMRadioMain;->mIsFMServiceBind:Z
    invoke-static {v0, v1}, Lcom/miui/fmradio/FMRadioMain;->access$102(Lcom/miui/fmradio/FMRadioMain;Z)Z

    .line 225
    return-void
.end method
