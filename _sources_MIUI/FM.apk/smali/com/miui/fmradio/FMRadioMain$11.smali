.class Lcom/miui/fmradio/FMRadioMain$11;
.super Ljava/lang/Object;
.source "FMRadioMain.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/fmradio/FMRadioMain;->showSaveStationDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/fmradio/FMRadioMain;

.field final synthetic val$dialog:Landroid/app/Dialog;

.field final synthetic val$etStationFreq:Landroid/widget/EditText;

.field final synthetic val$etStationName:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/miui/fmradio/FMRadioMain;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/app/Dialog;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1242
    iput-object p1, p0, Lcom/miui/fmradio/FMRadioMain$11;->this$0:Lcom/miui/fmradio/FMRadioMain;

    iput-object p2, p0, Lcom/miui/fmradio/FMRadioMain$11;->val$etStationName:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/miui/fmradio/FMRadioMain$11;->val$etStationFreq:Landroid/widget/EditText;

    iput-object p4, p0, Lcom/miui/fmradio/FMRadioMain$11;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 11
    .parameter "v"

    .prologue
    const v10, 0x1a5e0

    const v7, 0x155cc

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 1245
    iget-object v3, p0, Lcom/miui/fmradio/FMRadioMain$11;->val$etStationName:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1246
    .local v1, nameInput:Ljava/lang/String;
    iget-object v3, p0, Lcom/miui/fmradio/FMRadioMain$11;->val$etStationFreq:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1249
    .local v0, freqInput:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1250
    iget-object v3, p0, Lcom/miui/fmradio/FMRadioMain$11;->this$0:Lcom/miui/fmradio/FMRadioMain;

    const v4, 0x7f050032

    invoke-static {v3, v4, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 1251
    iget-object v3, p0, Lcom/miui/fmradio/FMRadioMain$11;->val$etStationFreq:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->requestFocus()Z

    .line 1252
    iget-object v3, p0, Lcom/miui/fmradio/FMRadioMain$11;->val$etStationFreq:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/miui/fmradio/FMRadioMain$11;->val$etStationFreq:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->length()I

    move-result v4

    invoke-virtual {v3, v9, v4}, Landroid/widget/EditText;->setSelection(II)V

    .line 1294
    :goto_0
    return-void

    .line 1257
    :cond_0
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    invoke-static {v3}, Lcom/miui/fmradio/FMRadioUtils;->convertFloatToIntFreq(F)I

    move-result v2

    .line 1258
    .local v2, tempFreq:I
    if-lt v2, v7, :cond_1

    if-le v2, v10, :cond_2

    .line 1259
    :cond_1
    iget-object v3, p0, Lcom/miui/fmradio/FMRadioMain$11;->this$0:Lcom/miui/fmradio/FMRadioMain;

    iget-object v4, p0, Lcom/miui/fmradio/FMRadioMain$11;->this$0:Lcom/miui/fmradio/FMRadioMain;

    const v5, 0x7f050033

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v7}, Lcom/miui/fmradio/FMRadioUtils;->convertIntToFloatFreq(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v10}, Lcom/miui/fmradio/FMRadioUtils;->convertIntToFloatFreq(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v4, v5, v6}, Lcom/miui/fmradio/FMRadioMain;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 1263
    iget-object v3, p0, Lcom/miui/fmradio/FMRadioMain$11;->val$etStationFreq:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->requestFocus()Z

    .line 1264
    iget-object v3, p0, Lcom/miui/fmradio/FMRadioMain$11;->val$etStationFreq:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/miui/fmradio/FMRadioMain$11;->val$etStationFreq:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->length()I

    move-result v4

    invoke-virtual {v3, v9, v4}, Landroid/widget/EditText;->setSelection(II)V

    goto :goto_0

    .line 1269
    :cond_2
    iget-object v3, p0, Lcom/miui/fmradio/FMRadioMain$11;->this$0:Lcom/miui/fmradio/FMRadioMain;

    #calls: Lcom/miui/fmradio/FMRadioMain;->formatUserInputStation(I)I
    invoke-static {v3, v2}, Lcom/miui/fmradio/FMRadioMain;->access$800(Lcom/miui/fmradio/FMRadioMain;I)I

    move-result v2

    .line 1270
    invoke-static {v2}, Lcom/miui/fmradio/FMRadioUtils;->convertIntToFloatFreq(I)Ljava/lang/String;

    move-result-object v0

    .line 1271
    iget-object v3, p0, Lcom/miui/fmradio/FMRadioMain$11;->this$0:Lcom/miui/fmradio/FMRadioMain;

    invoke-static {v3, v0}, Lcom/miui/fmradio/FMRadioUtils;->isFreqExistInDatabase(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1272
    iget-object v3, p0, Lcom/miui/fmradio/FMRadioMain$11;->this$0:Lcom/miui/fmradio/FMRadioMain;

    const v4, 0x7f050034

    invoke-static {v3, v4, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 1273
    iget-object v3, p0, Lcom/miui/fmradio/FMRadioMain$11;->val$etStationFreq:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->requestFocus()Z

    .line 1274
    iget-object v3, p0, Lcom/miui/fmradio/FMRadioMain$11;->val$etStationFreq:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/miui/fmradio/FMRadioMain$11;->val$etStationFreq:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->length()I

    move-result v4

    invoke-virtual {v3, v9, v4}, Landroid/widget/EditText;->setSelection(II)V

    goto :goto_0

    .line 1279
    :cond_3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/miui/fmradio/FMRadioMain$11;->this$0:Lcom/miui/fmradio/FMRadioMain;

    invoke-static {v3, v1, v0}, Lcom/miui/fmradio/FMRadioUtils;->isStationNameUsed(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1281
    iget-object v3, p0, Lcom/miui/fmradio/FMRadioMain$11;->this$0:Lcom/miui/fmradio/FMRadioMain;

    iget-object v4, p0, Lcom/miui/fmradio/FMRadioMain$11;->this$0:Lcom/miui/fmradio/FMRadioMain;

    const v5, 0x7f05001e

    new-array v6, v8, [Ljava/lang/Object;

    aput-object v1, v6, v9

    invoke-virtual {v4, v5, v6}, Lcom/miui/fmradio/FMRadioMain;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 1283
    iget-object v3, p0, Lcom/miui/fmradio/FMRadioMain$11;->val$etStationName:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->requestFocus()Z

    .line 1284
    iget-object v3, p0, Lcom/miui/fmradio/FMRadioMain$11;->val$etStationName:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/miui/fmradio/FMRadioMain$11;->val$etStationName:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->length()I

    move-result v4

    invoke-virtual {v3, v9, v4}, Landroid/widget/EditText;->setSelection(II)V

    goto/16 :goto_0

    .line 1288
    :cond_4
    iget-object v3, p0, Lcom/miui/fmradio/FMRadioMain$11;->this$0:Lcom/miui/fmradio/FMRadioMain;

    invoke-static {v3, v1, v0}, Lcom/miui/fmradio/FMRadioUtils;->addNewStation(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1289
    iget-object v3, p0, Lcom/miui/fmradio/FMRadioMain$11;->this$0:Lcom/miui/fmradio/FMRadioMain;

    iget-object v4, p0, Lcom/miui/fmradio/FMRadioMain$11;->this$0:Lcom/miui/fmradio/FMRadioMain;

    const v5, 0x7f050039

    new-array v6, v8, [Ljava/lang/Object;

    aput-object v0, v6, v9

    invoke-virtual {v4, v5, v6}, Lcom/miui/fmradio/FMRadioMain;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 1293
    :goto_1
    iget-object v3, p0, Lcom/miui/fmradio/FMRadioMain$11;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->dismiss()V

    goto/16 :goto_0

    .line 1291
    :cond_5
    iget-object v3, p0, Lcom/miui/fmradio/FMRadioMain$11;->this$0:Lcom/miui/fmradio/FMRadioMain;

    iget-object v4, p0, Lcom/miui/fmradio/FMRadioMain$11;->this$0:Lcom/miui/fmradio/FMRadioMain;

    const v5, 0x7f050038

    invoke-virtual {v4, v5}, Lcom/miui/fmradio/FMRadioMain;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method
