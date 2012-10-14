.class Lcom/miui/fmradio/FMRadioMain$9;
.super Ljava/lang/Object;
.source "FMRadioMain.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/fmradio/FMRadioMain;->onContextItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/fmradio/FMRadioMain;

.field final synthetic val$freq:F


# direct methods
.method constructor <init>(Lcom/miui/fmradio/FMRadioMain;F)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1064
    iput-object p1, p0, Lcom/miui/fmradio/FMRadioMain$9;->this$0:Lcom/miui/fmradio/FMRadioMain;

    iput p2, p0, Lcom/miui/fmradio/FMRadioMain$9;->val$freq:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v6, 0x1

    .line 1067
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioMain$9;->this$0:Lcom/miui/fmradio/FMRadioMain;

    iget v1, p0, Lcom/miui/fmradio/FMRadioMain$9;->val$freq:F

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/fmradio/FMRadioUtils;->deleteStation(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 1069
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioMain$9;->this$0:Lcom/miui/fmradio/FMRadioMain;

    iget-object v1, p0, Lcom/miui/fmradio/FMRadioMain$9;->this$0:Lcom/miui/fmradio/FMRadioMain;

    const v2, 0x7f050035

    new-array v3, v6, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lcom/miui/fmradio/FMRadioMain$9;->val$freq:F

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/miui/fmradio/FMRadioMain;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1075
    :goto_0
    return-void

    .line 1072
    :cond_0
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioMain$9;->this$0:Lcom/miui/fmradio/FMRadioMain;

    iget-object v1, p0, Lcom/miui/fmradio/FMRadioMain$9;->this$0:Lcom/miui/fmradio/FMRadioMain;

    const v2, 0x7f050036

    invoke-virtual {v1, v2}, Lcom/miui/fmradio/FMRadioMain;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
