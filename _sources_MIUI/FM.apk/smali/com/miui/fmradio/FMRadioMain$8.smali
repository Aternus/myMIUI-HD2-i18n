.class Lcom/miui/fmradio/FMRadioMain$8;
.super Ljava/lang/Object;
.source "FMRadioMain.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/fmradio/FMRadioMain;->showSetStationDialog()V
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
    .line 896
    iput-object p1, p0, Lcom/miui/fmradio/FMRadioMain$8;->this$0:Lcom/miui/fmradio/FMRadioMain;

    iput-object p2, p0, Lcom/miui/fmradio/FMRadioMain$8;->val$view:Landroid/view/View;

    iput-object p3, p0, Lcom/miui/fmradio/FMRadioMain$8;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 11
    .parameter "v"

    .prologue
    const v7, 0x1a5e0

    const v6, 0x155cc

    const/4 v10, 0x1

    .line 899
    iget-object v4, p0, Lcom/miui/fmradio/FMRadioMain$8;->val$view:Landroid/view/View;

    const v5, 0x7f060002

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 900
    .local v1, etInput:Landroid/widget/EditText;
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 901
    .local v2, input:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 903
    :try_start_0
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-static {v4}, Lcom/miui/fmradio/FMRadioUtils;->convertFloatToIntFreq(F)I

    move-result v3

    .line 904
    .local v3, inputFreq:I
    if-lt v3, v6, :cond_0

    if-le v3, v7, :cond_1

    .line 905
    :cond_0
    iget-object v4, p0, Lcom/miui/fmradio/FMRadioMain$8;->this$0:Lcom/miui/fmradio/FMRadioMain;

    iget-object v5, p0, Lcom/miui/fmradio/FMRadioMain$8;->this$0:Lcom/miui/fmradio/FMRadioMain;

    const v6, 0x7f050033

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const v9, 0x155cc

    invoke-static {v9}, Lcom/miui/fmradio/FMRadioUtils;->convertIntToFloatFreq(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const v9, 0x1a5e0

    invoke-static {v9}, Lcom/miui/fmradio/FMRadioUtils;->convertIntToFloatFreq(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Lcom/miui/fmradio/FMRadioMain;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 910
    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 911
    const/4 v4, 0x0

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v5

    invoke-virtual {v1, v4, v5}, Landroid/widget/EditText;->setSelection(II)V

    .line 923
    .end local v3           #inputFreq:I
    :goto_0
    return-void

    .line 914
    .restart local v3       #inputFreq:I
    :cond_1
    iget-object v4, p0, Lcom/miui/fmradio/FMRadioMain$8;->this$0:Lcom/miui/fmradio/FMRadioMain;

    iget-object v5, p0, Lcom/miui/fmradio/FMRadioMain$8;->this$0:Lcom/miui/fmradio/FMRadioMain;

    #calls: Lcom/miui/fmradio/FMRadioMain;->formatUserInputStation(I)I
    invoke-static {v5, v3}, Lcom/miui/fmradio/FMRadioMain;->access$800(Lcom/miui/fmradio/FMRadioMain;I)I

    move-result v5

    #setter for: Lcom/miui/fmradio/FMRadioMain;->mCounter:I
    invoke-static {v4, v5}, Lcom/miui/fmradio/FMRadioMain;->access$602(Lcom/miui/fmradio/FMRadioMain;I)I

    .line 915
    iget-object v4, p0, Lcom/miui/fmradio/FMRadioMain$8;->this$0:Lcom/miui/fmradio/FMRadioMain;

    #calls: Lcom/miui/fmradio/FMRadioMain;->updateDisplayPanel()V
    invoke-static {v4}, Lcom/miui/fmradio/FMRadioMain;->access$900(Lcom/miui/fmradio/FMRadioMain;)V

    .line 916
    iget-object v4, p0, Lcom/miui/fmradio/FMRadioMain$8;->this$0:Lcom/miui/fmradio/FMRadioMain;

    #getter for: Lcom/miui/fmradio/FMRadioMain;->mCounter:I
    invoke-static {v4}, Lcom/miui/fmradio/FMRadioMain;->access$600(Lcom/miui/fmradio/FMRadioMain;)I

    move-result v4

    invoke-static {v4}, Lcom/miui/fmradio/FMRadioUtils;->setFMRadioFrequency(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 922
    .end local v3           #inputFreq:I
    :cond_2
    :goto_1
    iget-object v4, p0, Lcom/miui/fmradio/FMRadioMain$8;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0

    .line 917
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 918
    .local v0, e:Ljava/lang/NumberFormatException;
    iget-object v4, p0, Lcom/miui/fmradio/FMRadioMain$8;->this$0:Lcom/miui/fmradio/FMRadioMain;

    const v5, 0x7f050031

    invoke-static {v4, v5, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method
