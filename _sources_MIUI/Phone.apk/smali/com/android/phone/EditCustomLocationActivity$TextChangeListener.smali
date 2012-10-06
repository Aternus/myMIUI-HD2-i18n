.class Lcom/android/phone/EditCustomLocationActivity$TextChangeListener;
.super Ljava/lang/Object;
.source "EditCustomLocationActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/EditCustomLocationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TextChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/EditCustomLocationActivity;


# direct methods
.method private constructor <init>(Lcom/android/phone/EditCustomLocationActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 206
    iput-object p1, p0, Lcom/android/phone/EditCustomLocationActivity$TextChangeListener;->this$0:Lcom/android/phone/EditCustomLocationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/EditCustomLocationActivity;Lcom/android/phone/EditCustomLocationActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 206
    invoke-direct {p0, p1}, Lcom/android/phone/EditCustomLocationActivity$TextChangeListener;-><init>(Lcom/android/phone/EditCustomLocationActivity;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 220
    iget-object v0, p0, Lcom/android/phone/EditCustomLocationActivity$TextChangeListener;->this$0:Lcom/android/phone/EditCustomLocationActivity;

    #calls: Lcom/android/phone/EditCustomLocationActivity;->resetDoneButtonEnabled()V
    invoke-static {v0}, Lcom/android/phone/EditCustomLocationActivity;->access$100(Lcom/android/phone/EditCustomLocationActivity;)V

    .line 221
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 211
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 216
    return-void
.end method
