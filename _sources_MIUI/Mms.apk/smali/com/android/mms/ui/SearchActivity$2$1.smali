.class Lcom/android/mms/ui/SearchActivity$2$1;
.super Landroid/widget/CursorAdapter;
.source "SearchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/SearchActivity$2;->onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/SearchActivity$2;

.field final synthetic val$addressPos:I

.field final synthetic val$bodyPos:I

.field final synthetic val$rowidPos:I

.field final synthetic val$threadIdPos:I


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SearchActivity$2;Landroid/content/Context;Landroid/database/Cursor;ZIIII)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 252
    iput-object p1, p0, Lcom/android/mms/ui/SearchActivity$2$1;->this$1:Lcom/android/mms/ui/SearchActivity$2;

    iput p5, p0, Lcom/android/mms/ui/SearchActivity$2$1;->val$addressPos:I

    iput p6, p0, Lcom/android/mms/ui/SearchActivity$2$1;->val$bodyPos:I

    iput p7, p0, Lcom/android/mms/ui/SearchActivity$2$1;->val$threadIdPos:I

    iput p8, p0, Lcom/android/mms/ui/SearchActivity$2$1;->val$rowidPos:I

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 12
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 255
    const v1, 0x7f0d0016

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    move-object v0, v1

    check-cast v0, Landroid/widget/TextView;

    move-object v10, v0

    .line 256
    .local v10, title:Landroid/widget/TextView;
    const v1, 0x7f0d00d4

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/mms/ui/SearchActivity$TextViewSnippet;

    move-object v0, v1

    check-cast v0, Lcom/android/mms/ui/SearchActivity$TextViewSnippet;

    move-object v9, v0

    .line 258
    .local v9, snippet:Lcom/android/mms/ui/SearchActivity$TextViewSnippet;
    iget v1, p0, Lcom/android/mms/ui/SearchActivity$2$1;->val$addressPos:I

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 259
    .local v7, address:Ljava/lang/String;
    if-eqz v7, :cond_0

    const/4 v1, 0x0

    invoke-static {v7, v1}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v1

    move-object v8, v1

    .line 261
    .local v8, contact:Lcom/android/mms/data/Contact;
    :goto_0
    if-eqz v8, :cond_1

    invoke-virtual {v8}, Lcom/android/mms/data/Contact;->getNameAndNumber()Ljava/lang/String;

    move-result-object v1

    move-object v11, v1

    .line 262
    .local v11, titleString:Ljava/lang/String;
    :goto_1
    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 264
    iget v1, p0, Lcom/android/mms/ui/SearchActivity$2$1;->val$bodyPos:I

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/SearchActivity$2$1;->this$1:Lcom/android/mms/ui/SearchActivity$2;

    iget-object v2, v2, Lcom/android/mms/ui/SearchActivity$2;->val$searchString:Ljava/lang/String;

    invoke-virtual {v9, v1, v2}, Lcom/android/mms/ui/SearchActivity$TextViewSnippet;->setText(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    iget v1, p0, Lcom/android/mms/ui/SearchActivity$2$1;->val$threadIdPos:I

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 271
    .local v3, threadId:J
    iget v1, p0, Lcom/android/mms/ui/SearchActivity$2$1;->val$rowidPos:I

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 273
    .local v5, rowid:J
    new-instance v1, Lcom/android/mms/ui/SearchActivity$2$1$1;

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/mms/ui/SearchActivity$2$1$1;-><init>(Lcom/android/mms/ui/SearchActivity$2$1;JJ)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 281
    return-void

    .line 259
    .end local v3           #threadId:J
    .end local v5           #rowid:J
    .end local v8           #contact:Lcom/android/mms/data/Contact;
    .end local v11           #titleString:Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    move-object v8, v1

    goto :goto_0

    .line 261
    .restart local v8       #contact:Lcom/android/mms/data/Contact;
    :cond_1
    const-string v1, ""

    move-object v11, v1

    goto :goto_1
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 285
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 286
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v2, 0x7f03004b

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 287
    .local v1, v:Landroid/view/View;
    return-object v1
.end method
