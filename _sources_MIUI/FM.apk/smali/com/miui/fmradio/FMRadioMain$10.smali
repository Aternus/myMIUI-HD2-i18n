.class Lcom/miui/fmradio/FMRadioMain$10;
.super Ljava/lang/Object;
.source "FMRadioMain.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/fmradio/FMRadioMain;->showSaveStationWithoutInputFreqDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/fmradio/FMRadioMain;

.field final synthetic val$dialog:Landroid/app/Dialog;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/miui/fmradio/FMRadioMain;Landroid/view/View;Landroid/app/Dialog;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1200
    iput-object p1, p0, Lcom/miui/fmradio/FMRadioMain$10;->this$0:Lcom/miui/fmradio/FMRadioMain;

    iput-object p2, p0, Lcom/miui/fmradio/FMRadioMain$10;->val$view:Landroid/view/View;

    iput-object p3, p0, Lcom/miui/fmradio/FMRadioMain$10;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .parameter "v"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 1203
    iget-object v3, p0, Lcom/miui/fmradio/FMRadioMain$10;->val$view:Landroid/view/View;

    const v4, 0x7f060001

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 1204
    .local v0, etInput:Landroid/widget/EditText;
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1205
    .local v2, input:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/miui/fmradio/FMRadioMain$10;->this$0:Lcom/miui/fmradio/FMRadioMain;

    iget-object v4, p0, Lcom/miui/fmradio/FMRadioMain$10;->this$0:Lcom/miui/fmradio/FMRadioMain;

    #getter for: Lcom/miui/fmradio/FMRadioMain;->mCounter:I
    invoke-static {v4}, Lcom/miui/fmradio/FMRadioMain;->access$600(Lcom/miui/fmradio/FMRadioMain;)I

    move-result v4

    invoke-static {v4}, Lcom/miui/fmradio/FMRadioUtils;->convertIntToFloatFreq(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v2, v4}, Lcom/miui/fmradio/FMRadioUtils;->isStationNameUsed(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1208
    iget-object v3, p0, Lcom/miui/fmradio/FMRadioMain$10;->this$0:Lcom/miui/fmradio/FMRadioMain;

    iget-object v4, p0, Lcom/miui/fmradio/FMRadioMain$10;->this$0:Lcom/miui/fmradio/FMRadioMain;

    const v5, 0x7f05001e

    invoke-virtual {v4, v5}, Lcom/miui/fmradio/FMRadioMain;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 1210
    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 1211
    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v3

    invoke-virtual {v0, v8, v3}, Landroid/widget/EditText;->setSelection(II)V

    .line 1226
    :goto_0
    return-void

    .line 1215
    :cond_0
    iget-object v3, p0, Lcom/miui/fmradio/FMRadioMain$10;->this$0:Lcom/miui/fmradio/FMRadioMain;

    #getter for: Lcom/miui/fmradio/FMRadioMain;->mCounter:I
    invoke-static {v3}, Lcom/miui/fmradio/FMRadioMain;->access$600(Lcom/miui/fmradio/FMRadioMain;)I

    move-result v3

    invoke-static {v3}, Lcom/miui/fmradio/FMRadioUtils;->convertIntToFloatFreq(I)Ljava/lang/String;

    move-result-object v1

    .line 1216
    .local v1, freq:Ljava/lang/String;
    iget-object v3, p0, Lcom/miui/fmradio/FMRadioMain$10;->this$0:Lcom/miui/fmradio/FMRadioMain;

    invoke-static {v3, v2, v1}, Lcom/miui/fmradio/FMRadioUtils;->addNewStation(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1217
    iget-object v3, p0, Lcom/miui/fmradio/FMRadioMain$10;->this$0:Lcom/miui/fmradio/FMRadioMain;

    iget-object v4, p0, Lcom/miui/fmradio/FMRadioMain$10;->this$0:Lcom/miui/fmradio/FMRadioMain;

    const v5, 0x7f050039

    new-array v6, v7, [Ljava/lang/Object;

    aput-object v1, v6, v8

    invoke-virtual {v4, v5, v6}, Lcom/miui/fmradio/FMRadioMain;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 1219
    iget-object v3, p0, Lcom/miui/fmradio/FMRadioMain$10;->this$0:Lcom/miui/fmradio/FMRadioMain;

    #calls: Lcom/miui/fmradio/FMRadioMain;->updateStationName()V
    invoke-static {v3}, Lcom/miui/fmradio/FMRadioMain;->access$1000(Lcom/miui/fmradio/FMRadioMain;)V

    .line 1225
    :goto_1
    iget-object v3, p0, Lcom/miui/fmradio/FMRadioMain$10;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0

    .line 1221
    :cond_1
    iget-object v3, p0, Lcom/miui/fmradio/FMRadioMain$10;->this$0:Lcom/miui/fmradio/FMRadioMain;

    iget-object v4, p0, Lcom/miui/fmradio/FMRadioMain$10;->this$0:Lcom/miui/fmradio/FMRadioMain;

    const v5, 0x7f050038

    invoke-virtual {v4, v5}, Lcom/miui/fmradio/FMRadioMain;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method
