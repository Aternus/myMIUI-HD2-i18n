.class public Lcom/miui/notes/ui/SearchActivity;
.super Landroid/app/ListActivity;
.source "SearchActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/notes/ui/SearchActivity$TextViewSnippet;
    }
.end annotation


# instance fields
.field private mQueryHandler:Landroid/content/AsyncQueryHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 37
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 12
    .parameter "icicle"

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 164
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 165
    const v0, 0x7f03000d

    invoke-virtual {p0, v0}, Lcom/miui/notes/ui/SearchActivity;->setContentView(I)V

    .line 167
    invoke-virtual {p0}, Lcom/miui/notes/ui/SearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "query"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 168
    .local v11, searchStringParameter:Ljava/lang/String;
    if-nez v11, :cond_0

    .line 169
    invoke-virtual {p0}, Lcom/miui/notes/ui/SearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "intent_extra_data_key"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 171
    :cond_0
    if-eqz v11, :cond_1

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    move-object v10, v0

    .line 173
    .local v10, searchString:Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Lcom/miui/notes/ui/SearchActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    .line 175
    .local v8, cr:Landroid/content/ContentResolver;
    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    .line 176
    invoke-virtual {p0}, Lcom/miui/notes/ui/SearchActivity;->getListView()Landroid/widget/ListView;

    move-result-object v9

    .line 177
    .local v9, listView:Landroid/widget/ListView;
    invoke-virtual {v9, v4}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 178
    invoke-virtual {v9, v4}, Landroid/widget/ListView;->setFocusable(Z)V

    .line 179
    invoke-virtual {v9, v4}, Landroid/widget/ListView;->setClickable(Z)V

    .line 186
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/miui/notes/ui/SearchActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 189
    new-instance v0, Lcom/miui/notes/ui/SearchActivity$1;

    invoke-direct {v0, p0, v8, v10, v9}, Lcom/miui/notes/ui/SearchActivity$1;-><init>(Lcom/miui/notes/ui/SearchActivity;Landroid/content/ContentResolver;Ljava/lang/String;Landroid/widget/ListView;)V

    iput-object v0, p0, Lcom/miui/notes/ui/SearchActivity;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    .line 253
    const-string v0, "content://notes/search"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "pattern"

    invoke-virtual {v0, v1, v10}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 257
    .local v3, uri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/miui/notes/ui/SearchActivity;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    const/4 v1, 0x0

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    return-void

    .end local v3           #uri:Landroid/net/Uri;
    .end local v8           #cr:Landroid/content/ContentResolver;
    .end local v9           #listView:Landroid/widget/ListView;
    .end local v10           #searchString:Ljava/lang/String;
    :cond_1
    move-object v10, v11

    .line 171
    goto :goto_0
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 158
    invoke-super {p0}, Landroid/app/ListActivity;->onStop()V

    .line 159
    return-void
.end method
