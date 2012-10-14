.class Lcom/android/monitor/UidDetail$1;
.super Ljava/lang/Object;
.source "UidDetail.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/monitor/UidDetail;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/monitor/UidDetail;


# direct methods
.method constructor <init>(Lcom/android/monitor/UidDetail;)V
    .locals 0
    .parameter

    .prologue
    .line 82
    iput-object p1, p0, Lcom/android/monitor/UidDetail$1;->this$0:Lcom/android/monitor/UidDetail;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/monitor/UidDetail$1;->this$0:Lcom/android/monitor/UidDetail;

    #calls: Lcom/android/monitor/UidDetail;->killProcesses()V
    invoke-static {v0}, Lcom/android/monitor/UidDetail;->access$000(Lcom/android/monitor/UidDetail;)V

    .line 86
    return-void
.end method
