.class Lcom/miui/milk/ui/FindlostContactSelectActivity$FindlostTask$1;
.super Ljava/lang/Object;
.source "FindlostContactSelectActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/milk/ui/FindlostContactSelectActivity$FindlostTask;->onPreExecute()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/milk/ui/FindlostContactSelectActivity$FindlostTask;


# direct methods
.method constructor <init>(Lcom/miui/milk/ui/FindlostContactSelectActivity$FindlostTask;)V
    .locals 0
    .parameter

    .prologue
    .line 355
    iput-object p1, p0, Lcom/miui/milk/ui/FindlostContactSelectActivity$FindlostTask$1;->this$1:Lcom/miui/milk/ui/FindlostContactSelectActivity$FindlostTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 359
    iget-object v0, p0, Lcom/miui/milk/ui/FindlostContactSelectActivity$FindlostTask$1;->this$1:Lcom/miui/milk/ui/FindlostContactSelectActivity$FindlostTask;

    iget-object v0, v0, Lcom/miui/milk/ui/FindlostContactSelectActivity$FindlostTask;->this$0:Lcom/miui/milk/ui/FindlostContactSelectActivity;

    const/4 v1, 0x1

    #calls: Lcom/miui/milk/ui/FindlostContactSelectActivity;->notifyState(I)V
    invoke-static {v0, v1}, Lcom/miui/milk/ui/FindlostContactSelectActivity;->access$800(Lcom/miui/milk/ui/FindlostContactSelectActivity;I)V

    .line 360
    return-void
.end method
