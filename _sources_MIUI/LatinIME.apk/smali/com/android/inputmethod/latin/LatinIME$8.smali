.class Lcom/android/inputmethod/latin/LatinIME$8;
.super Ljava/lang/Object;
.source "LatinIME.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/inputmethod/latin/LatinIME;->showOptionsMenu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/inputmethod/latin/LatinIME;


# direct methods
.method constructor <init>(Lcom/android/inputmethod/latin/LatinIME;)V
    .locals 0
    .parameter

    .prologue
    .line 2556
    iput-object p1, p0, Lcom/android/inputmethod/latin/LatinIME$8;->this$0:Lcom/android/inputmethod/latin/LatinIME;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "di"
    .parameter "position"

    .prologue
    .line 2559
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 2560
    packed-switch p2, :pswitch_data_0

    .line 2569
    .end local p0
    :goto_0
    return-void

    .line 2562
    .restart local p0
    :pswitch_0
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME$8;->this$0:Lcom/android/inputmethod/latin/LatinIME;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/LatinIME;->launchSettings()V

    goto :goto_0

    .line 2565
    :pswitch_1
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME$8;->this$0:Lcom/android/inputmethod/latin/LatinIME;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/latin/LatinIME;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->showInputMethodPicker()V

    goto :goto_0

    .line 2560
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
