.class Lcom/miui/uac/SuRequest$1;
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
    .line 30
    iput-object p1, p0, Lcom/miui/uac/SuRequest$1;->this$0:Lcom/miui/uac/SuRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/miui/uac/SuRequest$1;->this$0:Lcom/miui/uac/SuRequest;

    invoke-virtual {v0}, Lcom/miui/uac/SuRequest;->finish()V

    .line 34
    return-void
.end method
