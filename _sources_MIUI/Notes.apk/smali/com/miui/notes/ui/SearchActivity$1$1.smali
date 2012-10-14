.class Lcom/miui/notes/ui/SearchActivity$1$1;
.super Landroid/widget/CursorAdapter;
.source "SearchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/notes/ui/SearchActivity$1;->onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/notes/ui/SearchActivity$1;

.field final synthetic val$bodyPos:I

.field final synthetic val$noteIdPos:I


# direct methods
.method constructor <init>(Lcom/miui/notes/ui/SearchActivity$1;Landroid/content/Context;Landroid/database/Cursor;ZII)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter
    .parameter

    .prologue
    .line 210
    iput-object p1, p0, Lcom/miui/notes/ui/SearchActivity$1$1;->this$1:Lcom/miui/notes/ui/SearchActivity$1;

    iput p5, p0, Lcom/miui/notes/ui/SearchActivity$1$1;->val$noteIdPos:I

    iput p6, p0, Lcom/miui/notes/ui/SearchActivity$1$1;->val$bodyPos:I

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 5
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 213
    const v4, 0x7f0b003b

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 214
    .local v3, title:Landroid/widget/TextView;
    const v4, 0x7f0b003c

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/miui/notes/ui/SearchActivity$TextViewSnippet;

    .line 216
    .local v2, snippet:Lcom/miui/notes/ui/SearchActivity$TextViewSnippet;
    iget v4, p0, Lcom/miui/notes/ui/SearchActivity$1$1;->val$noteIdPos:I

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 217
    .local v1, noteId:Ljava/lang/String;
    iget v4, p0, Lcom/miui/notes/ui/SearchActivity$1$1;->val$bodyPos:I

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 218
    .local v0, body:Ljava/lang/String;
    invoke-static {v0}, Lcom/miui/notes/tool/DataUtils;->getFormattedSnippet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 219
    iget-object v4, p0, Lcom/miui/notes/ui/SearchActivity$1$1;->this$1:Lcom/miui/notes/ui/SearchActivity$1;

    iget-object v4, v4, Lcom/miui/notes/ui/SearchActivity$1;->val$searchString:Ljava/lang/String;

    invoke-virtual {v2, v0, v4}, Lcom/miui/notes/ui/SearchActivity$TextViewSnippet;->setText(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    new-instance v4, Lcom/miui/notes/ui/SearchActivity$1$1$1;

    invoke-direct {v4, p0, v1}, Lcom/miui/notes/ui/SearchActivity$1$1$1;-><init>(Lcom/miui/notes/ui/SearchActivity$1$1;Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 230
    return-void
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 234
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 235
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v2, 0x7f03000e

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 236
    .local v1, v:Landroid/view/View;
    return-object v1
.end method
