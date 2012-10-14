.class Lcom/android/calendar/EventInfoActivity$2;
.super Ljava/lang/Object;
.source "EventInfoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/EventInfoActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/EventInfoActivity;


# direct methods
.method constructor <init>(Lcom/android/calendar/EventInfoActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 430
    iput-object p1, p0, Lcom/android/calendar/EventInfoActivity$2;->this$0:Lcom/android/calendar/EventInfoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 432
    iget-object v0, p0, Lcom/android/calendar/EventInfoActivity$2;->this$0:Lcom/android/calendar/EventInfoActivity;

    #calls: Lcom/android/calendar/EventInfoActivity;->addReminder()V
    invoke-static {v0}, Lcom/android/calendar/EventInfoActivity;->access$100(Lcom/android/calendar/EventInfoActivity;)V

    .line 433
    return-void
.end method
