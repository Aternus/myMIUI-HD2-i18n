.class Lcom/miui/fmradio/FMRadioMain$7;
.super Ljava/lang/Object;
.source "FMRadioMain.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/fmradio/FMRadioMain;->showEditStationDialog(I)V
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

.field final synthetic val$freq:I


# direct methods
.method constructor <init>(Lcom/miui/fmradio/FMRadioMain;Landroid/widget/EditText;Landroid/widget/EditText;ILandroid/app/Dialog;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 463
    iput-object p1, p0, Lcom/miui/fmradio/FMRadioMain$7;->this$0:Lcom/miui/fmradio/FMRadioMain;

    iput-object p2, p0, Lcom/miui/fmradio/FMRadioMain$7;->val$etStationName:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/miui/fmradio/FMRadioMain$7;->val$etStationFreq:Landroid/widget/EditText;

    iput p4, p0, Lcom/miui/fmradio/FMRadioMain$7;->val$freq:I

    iput-object p5, p0, Lcom/miui/fmradio/FMRadioMain$7;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 13
    .parameter "v"

    .prologue
    const v12, 0x1a5e0

    const v9, 0x155cc

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 466
    iget-object v5, p0, Lcom/miui/fmradio/FMRadioMain$7;->val$etStationName:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 467
    .local v1, nameInput:Ljava/lang/String;
    iget-object v5, p0, Lcom/miui/fmradio/FMRadioMain$7;->val$etStationFreq:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 470
    .local v0, freqInput:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 471
    iget-object v5, p0, Lcom/miui/fmradio/FMRadioMain$7;->this$0:Lcom/miui/fmradio/FMRadioMain;

    const v6, 0x7f050032

    invoke-static {v5, v6, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 472
    iget-object v5, p0, Lcom/miui/fmradio/FMRadioMain$7;->val$etStationFreq:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->requestFocus()Z

    .line 473
    iget-object v5, p0, Lcom/miui/fmradio/FMRadioMain$7;->val$etStationFreq:Landroid/widget/EditText;

    iget-object v6, p0, Lcom/miui/fmradio/FMRadioMain$7;->val$etStationFreq:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->length()I

    move-result v6

    invoke-virtual {v5, v11, v6}, Landroid/widget/EditText;->setSelection(II)V

    .line 523
    :goto_0
    return-void

    .line 478
    :cond_0
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    invoke-static {v5}, Lcom/miui/fmradio/FMRadioUtils;->convertFloatToIntFreq(F)I

    move-result v3

    .line 479
    .local v3, tempFreq:I
    if-lt v3, v9, :cond_1

    if-le v3, v12, :cond_2

    .line 480
    :cond_1
    iget-object v5, p0, Lcom/miui/fmradio/FMRadioMain$7;->this$0:Lcom/miui/fmradio/FMRadioMain;

    iget-object v6, p0, Lcom/miui/fmradio/FMRadioMain$7;->this$0:Lcom/miui/fmradio/FMRadioMain;

    const v7, 0x7f050033

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v9}, Lcom/miui/fmradio/FMRadioUtils;->convertIntToFloatFreq(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-static {v12}, Lcom/miui/fmradio/FMRadioUtils;->convertIntToFloatFreq(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-virtual {v6, v7, v8}, Lcom/miui/fmradio/FMRadioMain;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 484
    iget-object v5, p0, Lcom/miui/fmradio/FMRadioMain$7;->val$etStationFreq:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->requestFocus()Z

    .line 485
    iget-object v5, p0, Lcom/miui/fmradio/FMRadioMain$7;->val$etStationFreq:Landroid/widget/EditText;

    iget-object v6, p0, Lcom/miui/fmradio/FMRadioMain$7;->val$etStationFreq:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->length()I

    move-result v6

    invoke-virtual {v5, v11, v6}, Landroid/widget/EditText;->setSelection(II)V

    goto :goto_0

    .line 490
    :cond_2
    iget-object v5, p0, Lcom/miui/fmradio/FMRadioMain$7;->this$0:Lcom/miui/fmradio/FMRadioMain;

    #calls: Lcom/miui/fmradio/FMRadioMain;->formatUserInputStation(I)I
    invoke-static {v5, v3}, Lcom/miui/fmradio/FMRadioMain;->access$800(Lcom/miui/fmradio/FMRadioMain;I)I

    move-result v3

    .line 491
    iget-object v5, p0, Lcom/miui/fmradio/FMRadioMain$7;->this$0:Lcom/miui/fmradio/FMRadioMain;

    invoke-static {v3}, Lcom/miui/fmradio/FMRadioUtils;->convertIntToFloatFreq(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/miui/fmradio/FMRadioUtils;->isFreqExistInDatabase(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget v5, p0, Lcom/miui/fmradio/FMRadioMain$7;->val$freq:I

    if-eq v5, v3, :cond_3

    .line 493
    iget-object v5, p0, Lcom/miui/fmradio/FMRadioMain$7;->this$0:Lcom/miui/fmradio/FMRadioMain;

    const v6, 0x7f050034

    invoke-static {v5, v6, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 494
    iget-object v5, p0, Lcom/miui/fmradio/FMRadioMain$7;->val$etStationFreq:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->requestFocus()Z

    .line 495
    iget-object v5, p0, Lcom/miui/fmradio/FMRadioMain$7;->val$etStationFreq:Landroid/widget/EditText;

    iget-object v6, p0, Lcom/miui/fmradio/FMRadioMain$7;->val$etStationFreq:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->length()I

    move-result v6

    invoke-virtual {v5, v11, v6}, Landroid/widget/EditText;->setSelection(II)V

    goto :goto_0

    .line 500
    :cond_3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    iget-object v5, p0, Lcom/miui/fmradio/FMRadioMain$7;->this$0:Lcom/miui/fmradio/FMRadioMain;

    iget v6, p0, Lcom/miui/fmradio/FMRadioMain$7;->val$freq:I

    invoke-static {v6}, Lcom/miui/fmradio/FMRadioUtils;->convertIntToFloatFreq(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v1, v6}, Lcom/miui/fmradio/FMRadioUtils;->isStationNameUsed(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 502
    iget-object v5, p0, Lcom/miui/fmradio/FMRadioMain$7;->this$0:Lcom/miui/fmradio/FMRadioMain;

    iget-object v6, p0, Lcom/miui/fmradio/FMRadioMain$7;->this$0:Lcom/miui/fmradio/FMRadioMain;

    const v7, 0x7f05001e

    new-array v8, v10, [Ljava/lang/Object;

    aput-object v1, v8, v11

    invoke-virtual {v6, v7, v8}, Lcom/miui/fmradio/FMRadioMain;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 504
    iget-object v5, p0, Lcom/miui/fmradio/FMRadioMain$7;->val$etStationName:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->requestFocus()Z

    .line 505
    iget-object v5, p0, Lcom/miui/fmradio/FMRadioMain$7;->val$etStationName:Landroid/widget/EditText;

    iget-object v6, p0, Lcom/miui/fmradio/FMRadioMain$7;->val$etStationName:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->length()I

    move-result v6

    invoke-virtual {v5, v11, v6}, Landroid/widget/EditText;->setSelection(II)V

    goto/16 :goto_0

    .line 510
    :cond_4
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 511
    .local v4, values:Landroid/content/ContentValues;
    const-string v5, "CH_Name"

    invoke-virtual {v4, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    const-string v5, "CH_Freq"

    invoke-static {v3}, Lcom/miui/fmradio/FMRadioUtils;->convertIntToFloatFreq(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    iget-object v5, p0, Lcom/miui/fmradio/FMRadioMain$7;->this$0:Lcom/miui/fmradio/FMRadioMain;

    invoke-virtual {v5}, Lcom/miui/fmradio/FMRadioMain;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/miui/fmradio/FMRadioUtils;->CONTENT_URI:Landroid/net/Uri;

    const-string v7, "CH_Freq=?"

    new-array v8, v10, [Ljava/lang/String;

    iget v9, p0, Lcom/miui/fmradio/FMRadioMain$7;->val$freq:I

    invoke-static {v9}, Lcom/miui/fmradio/FMRadioUtils;->convertIntToFloatFreq(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-virtual {v5, v6, v4, v7, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 515
    .local v2, ret:I
    if-lez v2, :cond_5

    .line 516
    iget-object v5, p0, Lcom/miui/fmradio/FMRadioMain$7;->this$0:Lcom/miui/fmradio/FMRadioMain;

    const v6, 0x7f050037

    invoke-static {v5, v6, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 522
    :goto_1
    iget-object v5, p0, Lcom/miui/fmradio/FMRadioMain$7;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v5}, Landroid/app/Dialog;->dismiss()V

    goto/16 :goto_0

    .line 519
    :cond_5
    iget-object v5, p0, Lcom/miui/fmradio/FMRadioMain$7;->this$0:Lcom/miui/fmradio/FMRadioMain;

    const v6, 0x7f050038

    invoke-static {v5, v6, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method
