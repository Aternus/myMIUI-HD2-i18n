.class Lcom/android/phone/EditCustomLocationActivity$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "EditCustomLocationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/EditCustomLocationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/EditCustomLocationActivity;


# direct methods
.method public constructor <init>(Lcom/android/phone/EditCustomLocationActivity;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    .line 189
    iput-object p1, p0, Lcom/android/phone/EditCustomLocationActivity$QueryHandler;->this$0:Lcom/android/phone/EditCustomLocationActivity;

    .line 190
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 191
    return-void
.end method


# virtual methods
.method protected onInsertComplete(ILjava/lang/Object;Landroid/net/Uri;)V
    .locals 1
    .parameter "token"
    .parameter "cookie"
    .parameter "uri"

    .prologue
    .line 195
    invoke-super {p0, p1, p2, p3}, Landroid/content/AsyncQueryHandler;->onInsertComplete(ILjava/lang/Object;Landroid/net/Uri;)V

    .line 196
    iget-object v0, p0, Lcom/android/phone/EditCustomLocationActivity$QueryHandler;->this$0:Lcom/android/phone/EditCustomLocationActivity;

    invoke-virtual {v0}, Lcom/android/phone/EditCustomLocationActivity;->finish()V

    .line 197
    return-void
.end method

.method protected onUpdateComplete(ILjava/lang/Object;I)V
    .locals 1
    .parameter "token"
    .parameter "cookie"
    .parameter "result"

    .prologue
    .line 201
    invoke-super {p0, p1, p2, p3}, Landroid/content/AsyncQueryHandler;->onUpdateComplete(ILjava/lang/Object;I)V

    .line 202
    iget-object v0, p0, Lcom/android/phone/EditCustomLocationActivity$QueryHandler;->this$0:Lcom/android/phone/EditCustomLocationActivity;

    invoke-virtual {v0}, Lcom/android/phone/EditCustomLocationActivity;->finish()V

    .line 203
    return-void
.end method
