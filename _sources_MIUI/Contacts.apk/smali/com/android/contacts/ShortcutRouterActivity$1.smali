.class Lcom/android/contacts/ShortcutRouterActivity$1;
.super Ljava/lang/Object;
.source "ShortcutRouterActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/ShortcutRouterActivity;->callOrSendSms(Landroid/content/Context;JZZ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/ShortcutRouterActivity;


# direct methods
.method constructor <init>(Lcom/android/contacts/ShortcutRouterActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 94
    iput-object p1, p0, Lcom/android/contacts/ShortcutRouterActivity$1;->this$0:Lcom/android/contacts/ShortcutRouterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/contacts/ShortcutRouterActivity$1;->this$0:Lcom/android/contacts/ShortcutRouterActivity;

    invoke-virtual {v0}, Lcom/android/contacts/ShortcutRouterActivity;->finish()V

    .line 98
    return-void
.end method
