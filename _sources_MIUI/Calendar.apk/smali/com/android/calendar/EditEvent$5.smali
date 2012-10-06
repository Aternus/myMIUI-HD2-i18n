.class Lcom/android/calendar/EditEvent$5;
.super Ljava/lang/Object;
.source "EditEvent.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/EditEvent;->populateTimezone()V
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
    .line 1225
    iput-object p1, p0, Lcom/android/calendar/EditEvent$5;->this$0:Lcom/android/calendar/EditEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 1228
    iget-object v0, p0, Lcom/android/calendar/EditEvent$5;->this$0:Lcom/android/calendar/EditEvent;

    #calls: Lcom/android/calendar/EditEvent;->showTimezoneDialog()V
    invoke-static {v0}, Lcom/android/calendar/EditEvent;->access$2600(Lcom/android/calendar/EditEvent;)V

    .line 1229
    return-void
.end method
