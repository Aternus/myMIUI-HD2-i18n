.class Lcom/android/calendar/AlertActivity$3;
.super Ljava/lang/Object;
.source "AlertActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/AlertActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/AlertActivity;


# direct methods
.method constructor <init>(Lcom/android/calendar/AlertActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 298
    iput-object p1, p0, Lcom/android/calendar/AlertActivity$3;->this$0:Lcom/android/calendar/AlertActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 300
    iget-object v1, p0, Lcom/android/calendar/AlertActivity$3;->this$0:Lcom/android/calendar/AlertActivity;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Lcom/android/calendar/AlertActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 302
    .local v0, nm:Landroid/app/NotificationManager;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 304
    iget-object v1, p0, Lcom/android/calendar/AlertActivity$3;->this$0:Lcom/android/calendar/AlertActivity;

    #calls: Lcom/android/calendar/AlertActivity;->dismissFiredAlarms()V
    invoke-static {v1}, Lcom/android/calendar/AlertActivity;->access$700(Lcom/android/calendar/AlertActivity;)V

    .line 306
    iget-object v1, p0, Lcom/android/calendar/AlertActivity$3;->this$0:Lcom/android/calendar/AlertActivity;

    invoke-virtual {v1}, Lcom/android/calendar/AlertActivity;->finish()V

    .line 307
    return-void
.end method
