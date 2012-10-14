.class Lcom/android/calendar/AlertActivity$1;
.super Ljava/lang/Object;
.source "AlertActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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
    .line 175
    iput-object p1, p0, Lcom/android/calendar/AlertActivity$1;->this$0:Lcom/android/calendar/AlertActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 13
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "i"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 179
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/android/calendar/AlertActivity$1;->this$0:Lcom/android/calendar/AlertActivity;

    .line 180
    .local v0, alertActivity:Lcom/android/calendar/AlertActivity;
    invoke-virtual {v0, p2}, Lcom/android/calendar/AlertActivity;->getItemForView(Landroid/view/View;)Landroid/database/Cursor;

    move-result-object v1

    .line 182
    .local v1, cursor:Landroid/database/Cursor;
    const/4 v10, 0x6

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    int-to-long v4, v10

    .line 183
    .local v4, id:J
    const/4 v10, 0x4

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 184
    .local v7, startMillis:J
    const/4 v10, 0x5

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 186
    .local v2, endMillis:J
    sget-object v10, Landroid/provider/Calendar$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v10, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v9

    .line 187
    .local v9, uri:Landroid/net/Uri;
    new-instance v6, Landroid/content/Intent;

    const-string v10, "android.intent.action.VIEW"

    invoke-direct {v6, v10, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 188
    .local v6, intent:Landroid/content/Intent;
    const-class v10, Lcom/android/calendar/EventInfoActivity;

    invoke-virtual {v6, v0, v10}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 189
    const-string v10, "beginTime"

    invoke-virtual {v6, v10, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 190
    const-string v10, "endTime"

    invoke-virtual {v6, v10, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 193
    iget-object v10, p0, Lcom/android/calendar/AlertActivity$1;->this$0:Lcom/android/calendar/AlertActivity;

    const/4 v11, 0x0

    invoke-interface {v1, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    #calls: Lcom/android/calendar/AlertActivity;->dismissAlarm(J)V
    invoke-static {v10, v11, v12}, Lcom/android/calendar/AlertActivity;->access$400(Lcom/android/calendar/AlertActivity;J)V

    .line 195
    iget-object v10, p0, Lcom/android/calendar/AlertActivity$1;->this$0:Lcom/android/calendar/AlertActivity;

    invoke-virtual {v10, v6}, Lcom/android/calendar/AlertActivity;->startActivity(Landroid/content/Intent;)V

    .line 196
    invoke-virtual {v0}, Lcom/android/calendar/AlertActivity;->finish()V

    .line 197
    return-void
.end method
