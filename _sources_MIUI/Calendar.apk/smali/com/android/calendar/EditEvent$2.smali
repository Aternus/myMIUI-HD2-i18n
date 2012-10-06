.class Lcom/android/calendar/EditEvent$2;
.super Ljava/lang/Object;
.source "EditEvent.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/EditEvent;->onCreate(Landroid/os/Bundle;)V
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
    .line 873
    iput-object p1, p0, Lcom/android/calendar/EditEvent$2;->this$0:Lcom/android/calendar/EditEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 875
    iget-object v0, p0, Lcom/android/calendar/EditEvent$2;->this$0:Lcom/android/calendar/EditEvent;

    #calls: Lcom/android/calendar/EditEvent;->addReminder()V
    invoke-static {v0}, Lcom/android/calendar/EditEvent;->access$2200(Lcom/android/calendar/EditEvent;)V

    .line 876
    return-void
.end method
