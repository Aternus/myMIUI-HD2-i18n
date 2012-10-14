.class Lcom/android/phone/ADNList$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "ADNList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/ADNList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/ADNList;


# direct methods
.method public constructor <init>(Lcom/android/phone/ADNList;Landroid/content/ContentResolver;)V
    .locals 1
    .parameter
    .parameter "cr"

    .prologue
    .line 220
    iput-object p1, p0, Lcom/android/phone/ADNList$QueryHandler;->this$0:Lcom/android/phone/ADNList;

    .line 221
    const/4 v0, 0x1

    invoke-direct {p0, p2, v0}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;Z)V

    .line 222
    return-void
.end method


# virtual methods
.method protected onDeleteComplete(ILjava/lang/Object;I)V
    .locals 2
    .parameter "token"
    .parameter "cookie"
    .parameter "result"

    .prologue
    .line 280
    if-lez p3, :cond_0

    .line 281
    iget-object v0, p0, Lcom/android/phone/ADNList$QueryHandler;->this$0:Lcom/android/phone/ADNList;

    const v1, 0x7f0c01c5

    invoke-virtual {v0, v1}, Lcom/android/phone/ADNList;->showToast(I)V

    .line 283
    :cond_0
    iget-object v0, p0, Lcom/android/phone/ADNList$QueryHandler;->this$0:Lcom/android/phone/ADNList;

    invoke-virtual {v0}, Lcom/android/phone/ADNList;->reQuery()V

    .line 284
    return-void
.end method

.method protected onInsertComplete(ILjava/lang/Object;Landroid/net/Uri;)V
    .locals 2
    .parameter "token"
    .parameter "cookie"
    .parameter "uri"

    .prologue
    .line 259
    if-eqz p3, :cond_0

    .line 260
    iget-object v0, p0, Lcom/android/phone/ADNList$QueryHandler;->this$0:Lcom/android/phone/ADNList;

    const v1, 0x7f0c01c3

    invoke-virtual {v0, v1}, Lcom/android/phone/ADNList;->showToast(I)V

    .line 263
    :cond_0
    iget-object v0, p0, Lcom/android/phone/ADNList$QueryHandler;->this$0:Lcom/android/phone/ADNList;

    invoke-virtual {v0}, Lcom/android/phone/ADNList;->reQuery()V

    .line 264
    return-void
.end method

.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 8
    .parameter "token"
    .parameter "cookie"
    .parameter "c"

    .prologue
    const/16 v7, 0x8

    const v6, 0x7f07001c

    const/4 v5, 0x0

    .line 226
    if-nez p3, :cond_0

    .line 252
    :goto_0
    return-void

    .line 230
    :cond_0
    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 232
    .local v0, count:I
    iget-object v3, p0, Lcom/android/phone/ADNList$QueryHandler;->this$0:Lcom/android/phone/ADNList;

    const v4, 0x7f07001a

    invoke-virtual {v3, v4}, Lcom/android/phone/ADNList;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 234
    .local v1, subHeader:Landroid/widget/TextView;
    iget-object v3, p0, Lcom/android/phone/ADNList$QueryHandler;->this$0:Lcom/android/phone/ADNList;

    invoke-virtual {v3}, Lcom/android/phone/ADNList;->resolveIntent()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    .line 235
    .local v2, uri:Ljava/lang/String;
    if-lez v0, :cond_2

    .line 236
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 237
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 239
    const-string v3, "content://icc/adn"

    invoke-static {v3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/phone/ADNList$QueryHandler;->this$0:Lcom/android/phone/ADNList;

    iget-boolean v3, v3, Lcom/android/phone/ADNList;->mIsViewSimContacts:Z

    if-nez v3, :cond_1

    .line 240
    iget-object v3, p0, Lcom/android/phone/ADNList$QueryHandler;->this$0:Lcom/android/phone/ADNList;

    invoke-virtual {v3, v6}, Lcom/android/phone/ADNList;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 249
    :goto_1
    iget-object v3, p0, Lcom/android/phone/ADNList$QueryHandler;->this$0:Lcom/android/phone/ADNList;

    iput-object p3, v3, Lcom/android/phone/ADNList;->mCursor:Landroid/database/Cursor;

    .line 250
    iget-object v3, p0, Lcom/android/phone/ADNList$QueryHandler;->this$0:Lcom/android/phone/ADNList;

    #calls: Lcom/android/phone/ADNList;->setAdapter()V
    invoke-static {v3}, Lcom/android/phone/ADNList;->access$000(Lcom/android/phone/ADNList;)V

    .line 251
    iget-object v3, p0, Lcom/android/phone/ADNList$QueryHandler;->this$0:Lcom/android/phone/ADNList;

    #calls: Lcom/android/phone/ADNList;->displayProgress(Z)V
    invoke-static {v3, v5}, Lcom/android/phone/ADNList;->access$100(Lcom/android/phone/ADNList;Z)V

    goto :goto_0

    .line 242
    :cond_1
    iget-object v3, p0, Lcom/android/phone/ADNList$QueryHandler;->this$0:Lcom/android/phone/ADNList;

    invoke-virtual {v3, v6}, Lcom/android/phone/ADNList;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 245
    :cond_2
    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 246
    iget-object v3, p0, Lcom/android/phone/ADNList$QueryHandler;->this$0:Lcom/android/phone/ADNList;

    invoke-virtual {v3, v6}, Lcom/android/phone/ADNList;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method protected onUpdateComplete(ILjava/lang/Object;I)V
    .locals 2
    .parameter "token"
    .parameter "cookie"
    .parameter "result"

    .prologue
    .line 270
    if-lez p3, :cond_0

    .line 271
    iget-object v0, p0, Lcom/android/phone/ADNList$QueryHandler;->this$0:Lcom/android/phone/ADNList;

    const v1, 0x7f0c01c4

    invoke-virtual {v0, v1}, Lcom/android/phone/ADNList;->showToast(I)V

    .line 273
    :cond_0
    iget-object v0, p0, Lcom/android/phone/ADNList$QueryHandler;->this$0:Lcom/android/phone/ADNList;

    invoke-virtual {v0}, Lcom/android/phone/ADNList;->reQuery()V

    .line 274
    return-void
.end method
