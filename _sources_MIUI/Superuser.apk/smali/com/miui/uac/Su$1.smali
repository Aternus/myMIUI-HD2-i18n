.class Lcom/miui/uac/Su$1;
.super Ljava/lang/Object;
.source "Su.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/uac/Su;->maliciousAppFound(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/uac/Su;


# direct methods
.method constructor <init>(Lcom/miui/uac/Su;)V
    .locals 0
    .parameter

    .prologue
    .line 57
    iput-object p1, p0, Lcom/miui/uac/Su$1;->this$0:Lcom/miui/uac/Su;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 61
    new-instance v0, Lcom/miui/uac/Su$CheckForMaliciousApps;

    iget-object v1, p0, Lcom/miui/uac/Su$1;->this$0:Lcom/miui/uac/Su;

    invoke-direct {v0, v1}, Lcom/miui/uac/Su$CheckForMaliciousApps;-><init>(Lcom/miui/uac/Su;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/miui/uac/Su$CheckForMaliciousApps;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 62
    return-void
.end method
