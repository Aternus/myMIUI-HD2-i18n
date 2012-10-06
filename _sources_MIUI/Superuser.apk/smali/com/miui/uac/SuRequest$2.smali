.class Lcom/miui/uac/SuRequest$2;
.super Ljava/lang/Object;
.source "SuRequest.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/uac/SuRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/uac/SuRequest;


# direct methods
.method constructor <init>(Lcom/miui/uac/SuRequest;)V
    .locals 0
    .parameter

    .prologue
    .line 36
    iput-object p1, p0, Lcom/miui/uac/SuRequest$2;->this$0:Lcom/miui/uac/SuRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/miui/uac/SuRequest$2;->this$0:Lcom/miui/uac/SuRequest;

    const/4 v1, 0x0

    #calls: Lcom/miui/uac/SuRequest;->rootPermissionOperation(I)V
    invoke-static {v0, v1}, Lcom/miui/uac/SuRequest;->access$000(Lcom/miui/uac/SuRequest;I)V

    .line 40
    iget-object v0, p0, Lcom/miui/uac/SuRequest$2;->this$0:Lcom/miui/uac/SuRequest;

    invoke-virtual {v0}, Lcom/miui/uac/SuRequest;->finish()V

    .line 41
    return-void
.end method
