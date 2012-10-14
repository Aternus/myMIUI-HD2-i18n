.class Lcom/miui/notes/ui/SearchActivity$1;
.super Landroid/content/AsyncQueryHandler;
.source "SearchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/notes/ui/SearchActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/notes/ui/SearchActivity;

.field final synthetic val$listView:Landroid/widget/ListView;

.field final synthetic val$searchString:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/miui/notes/ui/SearchActivity;Landroid/content/ContentResolver;Ljava/lang/String;Landroid/widget/ListView;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter
    .parameter

    .prologue
    .line 189
    iput-object p1, p0, Lcom/miui/notes/ui/SearchActivity$1;->this$0:Lcom/miui/notes/ui/SearchActivity;

    iput-object p3, p0, Lcom/miui/notes/ui/SearchActivity$1;->val$searchString:Ljava/lang/String;

    iput-object p4, p0, Lcom/miui/notes/ui/SearchActivity$1;->val$listView:Landroid/widget/ListView;

    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 10
    .parameter "token"
    .parameter "cookie"
    .parameter "c"

    .prologue
    const/4 v4, 0x0

    const/4 v9, 0x1

    .line 191
    if-nez p3, :cond_0

    .line 249
    :goto_0
    return-void

    .line 194
    :cond_0
    const-string v0, "suggest_intent_extra_data"

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 195
    .local v5, noteIdPos:I
    const-string v0, "suggest_text_1"

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 197
    .local v6, bodyPos:I
    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 198
    .local v7, cursorCount:I
    iget-object v0, p0, Lcom/miui/notes/ui/SearchActivity$1;->this$0:Lcom/miui/notes/ui/SearchActivity;

    iget-object v1, p0, Lcom/miui/notes/ui/SearchActivity$1;->this$0:Lcom/miui/notes/ui/SearchActivity;

    invoke-virtual {v1}, Lcom/miui/notes/ui/SearchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x7f09

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v3, v4

    iget-object v8, p0, Lcom/miui/notes/ui/SearchActivity$1;->val$searchString:Ljava/lang/String;

    aput-object v8, v3, v9

    invoke-virtual {v1, v2, v7, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/notes/ui/SearchActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 209
    iget-object v8, p0, Lcom/miui/notes/ui/SearchActivity$1;->this$0:Lcom/miui/notes/ui/SearchActivity;

    new-instance v0, Lcom/miui/notes/ui/SearchActivity$1$1;

    iget-object v2, p0, Lcom/miui/notes/ui/SearchActivity$1;->this$0:Lcom/miui/notes/ui/SearchActivity;

    move-object v1, p0

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/miui/notes/ui/SearchActivity$1$1;-><init>(Lcom/miui/notes/ui/SearchActivity$1;Landroid/content/Context;Landroid/database/Cursor;ZII)V

    invoke-virtual {v8, v0}, Lcom/miui/notes/ui/SearchActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 246
    iget-object v0, p0, Lcom/miui/notes/ui/SearchActivity$1;->val$listView:Landroid/widget/ListView;

    invoke-virtual {v0, v9}, Landroid/widget/ListView;->setFocusable(Z)V

    .line 247
    iget-object v0, p0, Lcom/miui/notes/ui/SearchActivity$1;->val$listView:Landroid/widget/ListView;

    invoke-virtual {v0, v9}, Landroid/widget/ListView;->setFocusableInTouchMode(Z)V

    .line 248
    iget-object v0, p0, Lcom/miui/notes/ui/SearchActivity$1;->val$listView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->requestFocus()Z

    goto :goto_0
.end method
