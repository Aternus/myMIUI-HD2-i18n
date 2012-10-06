.class Lcom/android/settings/XiaomiAccountBind$1$1;
.super Ljava/lang/Object;
.source "XiaomiAccountBind.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/XiaomiAccountBind$1;->onPostExecute(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/XiaomiAccountBind$1;


# direct methods
.method constructor <init>(Lcom/android/settings/XiaomiAccountBind$1;)V
    .locals 0
    .parameter

    .prologue
    .line 133
    iput-object p1, p0, Lcom/android/settings/XiaomiAccountBind$1$1;->this$1:Lcom/android/settings/XiaomiAccountBind$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/settings/XiaomiAccountBind$1$1;->this$1:Lcom/android/settings/XiaomiAccountBind$1;

    iget-object v0, v0, Lcom/android/settings/XiaomiAccountBind$1;->this$0:Lcom/android/settings/XiaomiAccountBind;

    invoke-virtual {v0}, Lcom/android/settings/XiaomiAccountBind;->finish()V

    .line 137
    return-void
.end method
