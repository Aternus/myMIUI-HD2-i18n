.class Lcom/android/settings/cit/CitResetCheckActivity$1;
.super Ljava/lang/Object;
.source "CitResetCheckActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/cit/CitResetCheckActivity;->initResources()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/cit/CitResetCheckActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/cit/CitResetCheckActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 18
    iput-object p1, p0, Lcom/android/settings/cit/CitResetCheckActivity$1;->this$0:Lcom/android/settings/cit/CitResetCheckActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 22
    iget-object v1, p0, Lcom/android/settings/cit/CitResetCheckActivity$1;->this$0:Lcom/android/settings/cit/CitResetCheckActivity;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Lcom/android/settings/cit/CitResetCheckActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 23
    .local v0, pm:Landroid/os/PowerManager;
    const-string v1, "Finish cit test"

    invoke-virtual {v0, v1}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    .line 24
    return-void
.end method
