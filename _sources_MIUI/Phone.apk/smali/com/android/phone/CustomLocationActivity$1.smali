.class Lcom/android/phone/CustomLocationActivity$1;
.super Ljava/lang/Object;
.source "CustomLocationActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/CustomLocationActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CustomLocationActivity;


# direct methods
.method constructor <init>(Lcom/android/phone/CustomLocationActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 53
    iput-object p1, p0, Lcom/android/phone/CustomLocationActivity$1;->this$0:Lcom/android/phone/CustomLocationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 57
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/phone/CustomLocationActivity$1;->this$0:Lcom/android/phone/CustomLocationActivity;

    const-class v2, Lcom/android/phone/EditCustomLocationActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 58
    const-string v1, "action_add_custom_location"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 59
    iget-object v1, p0, Lcom/android/phone/CustomLocationActivity$1;->this$0:Lcom/android/phone/CustomLocationActivity;

    invoke-virtual {v1, v0}, Lcom/android/phone/CustomLocationActivity;->startActivity(Landroid/content/Intent;)V

    .line 60
    return-void
.end method
