.class Lcom/miui/cloudservice/authenticator/AddAccountActivity$CreateClickListener;
.super Ljava/lang/Object;
.source "AddAccountActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/cloudservice/authenticator/AddAccountActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CreateClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/cloudservice/authenticator/AddAccountActivity;


# direct methods
.method private constructor <init>(Lcom/miui/cloudservice/authenticator/AddAccountActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 178
    iput-object p1, p0, Lcom/miui/cloudservice/authenticator/AddAccountActivity$CreateClickListener;->this$0:Lcom/miui/cloudservice/authenticator/AddAccountActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/cloudservice/authenticator/AddAccountActivity;Lcom/miui/cloudservice/authenticator/AddAccountActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 178
    invoke-direct {p0, p1}, Lcom/miui/cloudservice/authenticator/AddAccountActivity$CreateClickListener;-><init>(Lcom/miui/cloudservice/authenticator/AddAccountActivity;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 181
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 182
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/miui/cloudservice/authenticator/NewAccountActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 183
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 184
    return-void
.end method
