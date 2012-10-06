.class Lcom/android/calendar/AgendaWindowAdapter$QueryHandler$1;
.super Ljava/lang/Object;
.source "AgendaWindowAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/AgendaWindowAdapter$QueryHandler;->onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/calendar/AgendaWindowAdapter$QueryHandler;


# direct methods
.method constructor <init>(Lcom/android/calendar/AgendaWindowAdapter$QueryHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 706
    iput-object p1, p0, Lcom/android/calendar/AgendaWindowAdapter$QueryHandler$1;->this$1:Lcom/android/calendar/AgendaWindowAdapter$QueryHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 708
    iget-object v0, p0, Lcom/android/calendar/AgendaWindowAdapter$QueryHandler$1;->this$1:Lcom/android/calendar/AgendaWindowAdapter$QueryHandler;

    iget-object v0, v0, Lcom/android/calendar/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/AgendaWindowAdapter;

    #getter for: Lcom/android/calendar/AgendaWindowAdapter;->mHeaderView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/calendar/AgendaWindowAdapter;->access$500(Lcom/android/calendar/AgendaWindowAdapter;)Landroid/widget/TextView;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 709
    iget-object v0, p0, Lcom/android/calendar/AgendaWindowAdapter$QueryHandler$1;->this$1:Lcom/android/calendar/AgendaWindowAdapter$QueryHandler;

    iget-object v0, v0, Lcom/android/calendar/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/AgendaWindowAdapter;

    new-instance v1, Lcom/android/calendar/AgendaWindowAdapter$QuerySpec;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/calendar/AgendaWindowAdapter$QuerySpec;-><init>(I)V

    #calls: Lcom/android/calendar/AgendaWindowAdapter;->queueQuery(Lcom/android/calendar/AgendaWindowAdapter$QuerySpec;)Z
    invoke-static {v0, v1}, Lcom/android/calendar/AgendaWindowAdapter;->access$600(Lcom/android/calendar/AgendaWindowAdapter;Lcom/android/calendar/AgendaWindowAdapter$QuerySpec;)Z

    .line 713
    :goto_0
    return-void

    .line 711
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/AgendaWindowAdapter$QueryHandler$1;->this$1:Lcom/android/calendar/AgendaWindowAdapter$QueryHandler;

    iget-object v0, v0, Lcom/android/calendar/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/AgendaWindowAdapter;

    new-instance v1, Lcom/android/calendar/AgendaWindowAdapter$QuerySpec;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/android/calendar/AgendaWindowAdapter$QuerySpec;-><init>(I)V

    #calls: Lcom/android/calendar/AgendaWindowAdapter;->queueQuery(Lcom/android/calendar/AgendaWindowAdapter$QuerySpec;)Z
    invoke-static {v0, v1}, Lcom/android/calendar/AgendaWindowAdapter;->access$600(Lcom/android/calendar/AgendaWindowAdapter;Lcom/android/calendar/AgendaWindowAdapter$QuerySpec;)Z

    goto :goto_0
.end method
