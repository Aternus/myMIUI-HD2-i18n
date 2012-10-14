.class Lcom/android/inputmethod/latin/LatinIME$7;
.super Landroid/content/BroadcastReceiver;
.source "LatinIME.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/latin/LatinIME;
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
    .line 2353
    iput-object p1, p0, Lcom/android/inputmethod/latin/LatinIME$7;->this$0:Lcom/android/inputmethod/latin/LatinIME;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 2356
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME$7;->this$0:Lcom/android/inputmethod/latin/LatinIME;

    #calls: Lcom/android/inputmethod/latin/LatinIME;->updateRingerMode()V
    invoke-static {v0}, Lcom/android/inputmethod/latin/LatinIME;->access$1200(Lcom/android/inputmethod/latin/LatinIME;)V

    .line 2357
    return-void
.end method
