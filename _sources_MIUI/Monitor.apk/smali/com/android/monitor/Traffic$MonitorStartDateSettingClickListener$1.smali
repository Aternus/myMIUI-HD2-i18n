.class Lcom/android/monitor/Traffic$MonitorStartDateSettingClickListener$1;
.super Ljava/lang/Object;
.source "Traffic.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/monitor/Traffic$MonitorStartDateSettingClickListener;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/monitor/Traffic$MonitorStartDateSettingClickListener;

.field final synthetic val$date:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/android/monitor/Traffic$MonitorStartDateSettingClickListener;Landroid/widget/EditText;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 275
    iput-object p1, p0, Lcom/android/monitor/Traffic$MonitorStartDateSettingClickListener$1;->this$1:Lcom/android/monitor/Traffic$MonitorStartDateSettingClickListener;

    iput-object p2, p0, Lcom/android/monitor/Traffic$MonitorStartDateSettingClickListener$1;->val$date:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 6
    .parameter "s"

    .prologue
    const/16 v5, 0x1f

    .line 293
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v3

    iget-object v4, p0, Lcom/android/monitor/Traffic$MonitorStartDateSettingClickListener$1;->this$1:Lcom/android/monitor/Traffic$MonitorStartDateSettingClickListener;

    #getter for: Lcom/android/monitor/Traffic$MonitorStartDateSettingClickListener;->mBeforeChanged:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/monitor/Traffic$MonitorStartDateSettingClickListener;->access$1300(Lcom/android/monitor/Traffic$MonitorStartDateSettingClickListener;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 315
    :cond_0
    :goto_0
    return-void

    .line 298
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 300
    .local v0, afterValue:I
    if-nez v0, :cond_2

    .line 301
    iget-object v3, p0, Lcom/android/monitor/Traffic$MonitorStartDateSettingClickListener$1;->val$date:Landroid/widget/EditText;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 312
    .end local v0           #afterValue:I
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 313
    .local v2, e:Ljava/lang/NumberFormatException;
    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_0

    .line 303
    .end local v2           #e:Ljava/lang/NumberFormatException;
    .restart local v0       #afterValue:I
    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/android/monitor/Traffic$MonitorStartDateSettingClickListener$1;->this$1:Lcom/android/monitor/Traffic$MonitorStartDateSettingClickListener;

    #getter for: Lcom/android/monitor/Traffic$MonitorStartDateSettingClickListener;->mBeforeChanged:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/monitor/Traffic$MonitorStartDateSettingClickListener;->access$1300(Lcom/android/monitor/Traffic$MonitorStartDateSettingClickListener;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 304
    .local v1, beforeValue:I
    if-lez v0, :cond_3

    if-le v0, v5, :cond_0

    .line 305
    :cond_3
    if-lez v1, :cond_4

    if-gt v1, v5, :cond_4

    .line 306
    iget-object v3, p0, Lcom/android/monitor/Traffic$MonitorStartDateSettingClickListener$1;->val$date:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/android/monitor/Traffic$MonitorStartDateSettingClickListener$1;->this$1:Lcom/android/monitor/Traffic$MonitorStartDateSettingClickListener;

    #getter for: Lcom/android/monitor/Traffic$MonitorStartDateSettingClickListener;->mBeforeChanged:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/monitor/Traffic$MonitorStartDateSettingClickListener;->access$1300(Lcom/android/monitor/Traffic$MonitorStartDateSettingClickListener;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 308
    :cond_4
    iget-object v3, p0, Lcom/android/monitor/Traffic$MonitorStartDateSettingClickListener$1;->val$date:Landroid/widget/EditText;

    const-string v4, "1"

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 279
    iget-object v0, p0, Lcom/android/monitor/Traffic$MonitorStartDateSettingClickListener$1;->this$1:Lcom/android/monitor/Traffic$MonitorStartDateSettingClickListener;

    iget-object v1, p0, Lcom/android/monitor/Traffic$MonitorStartDateSettingClickListener$1;->val$date:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/android/monitor/Traffic$MonitorStartDateSettingClickListener;->mBeforeChanged:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/monitor/Traffic$MonitorStartDateSettingClickListener;->access$1302(Lcom/android/monitor/Traffic$MonitorStartDateSettingClickListener;Ljava/lang/String;)Ljava/lang/String;

    .line 280
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 286
    return-void
.end method
