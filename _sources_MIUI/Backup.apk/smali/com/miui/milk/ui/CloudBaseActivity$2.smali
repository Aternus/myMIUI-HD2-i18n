.class Lcom/miui/milk/ui/CloudBaseActivity$2;
.super Ljava/lang/Object;
.source "CloudBaseActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/milk/ui/CloudBaseActivity;->refreshUI(Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/milk/ui/CloudBaseActivity;


# direct methods
.method constructor <init>(Lcom/miui/milk/ui/CloudBaseActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 116
    iput-object p1, p0, Lcom/miui/milk/ui/CloudBaseActivity$2;->this$0:Lcom/miui/milk/ui/CloudBaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 119
    iget-object v0, p0, Lcom/miui/milk/ui/CloudBaseActivity$2;->this$0:Lcom/miui/milk/ui/CloudBaseActivity;

    invoke-virtual {v0}, Lcom/miui/milk/ui/CloudBaseActivity;->leave()V

    .line 120
    return-void
.end method
