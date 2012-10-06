.class Lcom/miui/uac/Su$2;
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

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/miui/uac/Su;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 50
    iput-object p1, p0, Lcom/miui/uac/Su$2;->this$0:Lcom/miui/uac/Su;

    iput-object p2, p0, Lcom/miui/uac/Su$2;->val$packageName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/miui/uac/Su$2;->this$0:Lcom/miui/uac/Su;

    iget-object v1, p0, Lcom/miui/uac/Su$2;->val$packageName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/miui/uac/Util;->uninstallPkg(Landroid/content/Context;Ljava/lang/String;)V

    .line 55
    return-void
.end method
