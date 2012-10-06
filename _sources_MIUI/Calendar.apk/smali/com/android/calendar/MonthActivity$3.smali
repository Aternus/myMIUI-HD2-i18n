.class Lcom/android/calendar/MonthActivity$3;
.super Landroid/database/ContentObserver;
.source "MonthActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/MonthActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/MonthActivity;


# direct methods
.method constructor <init>(Lcom/android/calendar/MonthActivity;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 215
    iput-object p1, p0, Lcom/android/calendar/MonthActivity$3;->this$0:Lcom/android/calendar/MonthActivity;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .locals 1

    .prologue
    .line 218
    const/4 v0, 0x1

    return v0
.end method

.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/calendar/MonthActivity$3;->this$0:Lcom/android/calendar/MonthActivity;

    invoke-virtual {v0}, Lcom/android/calendar/MonthActivity;->eventsChanged()V

    .line 224
    return-void
.end method
