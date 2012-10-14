.class Lcom/android/contacts/DialtactsActivity$1;
.super Ljava/lang/Object;
.source "DialtactsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/DialtactsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/DialtactsActivity;


# direct methods
.method constructor <init>(Lcom/android/contacts/DialtactsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 84
    iput-object p1, p0, Lcom/android/contacts/DialtactsActivity$1;->this$0:Lcom/android/contacts/DialtactsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/contacts/DialtactsActivity$1;->this$0:Lcom/android/contacts/DialtactsActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/contacts/DialtactsActivity$1;->this$0:Lcom/android/contacts/DialtactsActivity;

    const-class v3, Lcom/android/contacts/TwelveKeyDialer;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/android/contacts/DialtactsActivity;->startActivity(Landroid/content/Intent;)V

    .line 88
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/contacts/TwelveKeyDialer;->IS_SLIDE_DOWN:Z

    .line 89
    iget-object v0, p0, Lcom/android/contacts/DialtactsActivity$1;->this$0:Lcom/android/contacts/DialtactsActivity;

    const v1, 0x10a0036

    const v2, 0x10a0001

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/DialtactsActivity;->overridePendingTransition(II)V

    .line 90
    return-void
.end method
