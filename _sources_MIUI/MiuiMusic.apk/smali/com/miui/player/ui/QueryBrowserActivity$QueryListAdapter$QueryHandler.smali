.class Lcom/miui/player/ui/QueryBrowserActivity$QueryListAdapter$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "QueryBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/ui/QueryBrowserActivity$QueryListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/ui/QueryBrowserActivity$QueryListAdapter;


# direct methods
.method constructor <init>(Lcom/miui/player/ui/QueryBrowserActivity$QueryListAdapter;Landroid/content/ContentResolver;)V
    .locals 0
    .parameter
    .parameter "res"

    .prologue
    .line 220
    iput-object p1, p0, Lcom/miui/player/ui/QueryBrowserActivity$QueryListAdapter$QueryHandler;->this$0:Lcom/miui/player/ui/QueryBrowserActivity$QueryListAdapter;

    .line 221
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 222
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 1
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 226
    iget-object v0, p0, Lcom/miui/player/ui/QueryBrowserActivity$QueryListAdapter$QueryHandler;->this$0:Lcom/miui/player/ui/QueryBrowserActivity$QueryListAdapter;

    #getter for: Lcom/miui/player/ui/QueryBrowserActivity$QueryListAdapter;->mActivity:Lcom/miui/player/ui/QueryBrowserActivity;
    invoke-static {v0}, Lcom/miui/player/ui/QueryBrowserActivity$QueryListAdapter;->access$000(Lcom/miui/player/ui/QueryBrowserActivity$QueryListAdapter;)Lcom/miui/player/ui/QueryBrowserActivity;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/miui/player/ui/QueryBrowserActivity;->init(Landroid/database/Cursor;)V

    .line 227
    return-void
.end method
