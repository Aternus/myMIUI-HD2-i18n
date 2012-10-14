.class Lcom/android/calendar/EditEvent$4;
.super Ljava/lang/Object;
.source "EditEvent.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/EditEvent;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/EditEvent;


# direct methods
.method constructor <init>(Lcom/android/calendar/EditEvent;)V
    .locals 0
    .parameter

    .prologue
    .line 1052
    iput-object p1, p0, Lcom/android/calendar/EditEvent$4;->this$0:Lcom/android/calendar/EditEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 1054
    iget-object v0, p0, Lcom/android/calendar/EditEvent$4;->this$0:Lcom/android/calendar/EditEvent;

    invoke-virtual {v0}, Lcom/android/calendar/EditEvent;->finish()V

    .line 1055
    return-void
.end method
