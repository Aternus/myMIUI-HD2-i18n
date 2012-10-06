.class Lcom/android/calendar/AgendaActivity$3;
.super Landroid/database/ContentObserver;
.source "AgendaActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/AgendaActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/AgendaActivity;


# direct methods
.method constructor <init>(Lcom/android/calendar/AgendaActivity;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 86
    iput-object p1, p0, Lcom/android/calendar/AgendaActivity$3;->this$0:Lcom/android/calendar/AgendaActivity;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x1

    return v0
.end method

.method public onChange(Z)V
    .locals 2
    .parameter "selfChange"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/calendar/AgendaActivity$3;->this$0:Lcom/android/calendar/AgendaActivity;

    #getter for: Lcom/android/calendar/AgendaActivity;->mAgendaListView:Lcom/android/calendar/AgendaListView;
    invoke-static {v0}, Lcom/android/calendar/AgendaActivity;->access$200(Lcom/android/calendar/AgendaActivity;)Lcom/android/calendar/AgendaListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/calendar/AgendaListView;->refresh(Z)V

    .line 95
    return-void
.end method
