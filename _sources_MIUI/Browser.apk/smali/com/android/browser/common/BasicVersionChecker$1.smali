.class Lcom/android/browser/common/BasicVersionChecker$1;
.super Ljava/lang/Object;
.source "BasicVersionChecker.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/common/BasicVersionChecker;->startUpgrade(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/common/BasicVersionChecker;

.field final synthetic val$context:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/android/browser/common/BasicVersionChecker;Landroid/app/Activity;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 146
    iput-object p1, p0, Lcom/android/browser/common/BasicVersionChecker$1;->this$0:Lcom/android/browser/common/BasicVersionChecker;

    iput-object p2, p0, Lcom/android/browser/common/BasicVersionChecker$1;->val$context:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/browser/common/BasicVersionChecker$1;->this$0:Lcom/android/browser/common/BasicVersionChecker;

    const/4 v1, 0x0

    iput v1, v0, Lcom/android/browser/common/BasicVersionChecker;->mRemoteAppVersion:I

    .line 149
    iget-object v0, p0, Lcom/android/browser/common/BasicVersionChecker$1;->this$0:Lcom/android/browser/common/BasicVersionChecker;

    iget-boolean v0, v0, Lcom/android/browser/common/BasicVersionChecker;->mMustUpgrade:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/browser/common/BasicVersionChecker$1;->this$0:Lcom/android/browser/common/BasicVersionChecker;

    iget-wide v0, v0, Lcom/android/browser/common/BasicVersionChecker;->mMustUpgradeDeadline:J

    invoke-static {}, Lcom/android/browser/common/DateTimeHelper;->getCurrentTiemstamp()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/android/browser/common/BasicVersionChecker$1;->val$context:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 152
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 154
    :cond_0
    return-void
.end method
