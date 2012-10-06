.class Lcom/miui/uac/SuRequest$3;
.super Ljava/lang/Object;
.source "SuRequest.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 43
    iput-object p1, p0, Lcom/miui/uac/SuRequest$3;->this$0:Lcom/miui/uac/SuRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 46
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/uac/SuRequest$3;->this$0:Lcom/miui/uac/SuRequest;

    const-class v2, Lcom/miui/uac/SuperuserPreference;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 47
    iget-object v1, p0, Lcom/miui/uac/SuRequest$3;->this$0:Lcom/miui/uac/SuRequest;

    invoke-virtual {v1, v0}, Lcom/miui/uac/SuRequest;->startActivity(Landroid/content/Intent;)V

    .line 48
    return-void
.end method
