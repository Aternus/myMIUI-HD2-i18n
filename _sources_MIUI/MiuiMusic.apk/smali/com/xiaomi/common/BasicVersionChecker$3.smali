.class Lcom/xiaomi/common/BasicVersionChecker$3;
.super Ljava/lang/Object;
.source "BasicVersionChecker.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/common/BasicVersionChecker;->startUpgrade(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/common/BasicVersionChecker;

.field final synthetic val$context:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/xiaomi/common/BasicVersionChecker;Landroid/app/Activity;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 186
    iput-object p1, p0, Lcom/xiaomi/common/BasicVersionChecker$3;->this$0:Lcom/xiaomi/common/BasicVersionChecker;

    iput-object p2, p0, Lcom/xiaomi/common/BasicVersionChecker$3;->val$context:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 188
    iget-object v0, p0, Lcom/xiaomi/common/BasicVersionChecker$3;->this$0:Lcom/xiaomi/common/BasicVersionChecker;

    const/4 v1, 0x0

    iput v1, v0, Lcom/xiaomi/common/BasicVersionChecker;->mRemoteAppVersion:I

    .line 189
    iget-object v0, p0, Lcom/xiaomi/common/BasicVersionChecker$3;->this$0:Lcom/xiaomi/common/BasicVersionChecker;

    iget-boolean v0, v0, Lcom/xiaomi/common/BasicVersionChecker;->mMustUpgrade:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/common/BasicVersionChecker$3;->this$0:Lcom/xiaomi/common/BasicVersionChecker;

    iget-wide v0, v0, Lcom/xiaomi/common/BasicVersionChecker;->mMustUpgradeDeadline:J

    invoke-static {}, Lcom/xiaomi/common/DateTimeHelper;->getCurrentTiemstamp()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/xiaomi/common/BasicVersionChecker$3;->val$context:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 194
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/common/BasicVersionChecker$3;->this$0:Lcom/xiaomi/common/BasicVersionChecker;

    invoke-virtual {v0}, Lcom/xiaomi/common/BasicVersionChecker;->onUpdateCanceled()V

    .line 197
    return-void
.end method
