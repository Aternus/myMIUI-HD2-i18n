.class Lcom/miui/uac/AppDetailsActivity$2;
.super Ljava/lang/Object;
.source "AppDetailsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/uac/AppDetailsActivity;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/uac/AppDetailsActivity;


# direct methods
.method constructor <init>(Lcom/miui/uac/AppDetailsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 76
    iput-object p1, p0, Lcom/miui/uac/AppDetailsActivity$2;->this$0:Lcom/miui/uac/AppDetailsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/miui/uac/AppDetailsActivity$2;->this$0:Lcom/miui/uac/AppDetailsActivity;

    #setter for: Lcom/miui/uac/AppDetailsActivity;->mSelectValue:I
    invoke-static {v0, p2}, Lcom/miui/uac/AppDetailsActivity;->access$002(Lcom/miui/uac/AppDetailsActivity;I)I

    .line 80
    return-void
.end method
