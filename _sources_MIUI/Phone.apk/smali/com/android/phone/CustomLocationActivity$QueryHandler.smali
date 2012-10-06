.class Lcom/android/phone/CustomLocationActivity$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "CustomLocationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CustomLocationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CustomLocationActivity;


# direct methods
.method public constructor <init>(Lcom/android/phone/CustomLocationActivity;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    .line 179
    iput-object p1, p0, Lcom/android/phone/CustomLocationActivity$QueryHandler;->this$0:Lcom/android/phone/CustomLocationActivity;

    .line 180
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 181
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 1
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 185
    if-eqz p3, :cond_0

    .line 186
    iget-object v0, p0, Lcom/android/phone/CustomLocationActivity$QueryHandler;->this$0:Lcom/android/phone/CustomLocationActivity;

    #calls: Lcom/android/phone/CustomLocationActivity;->changeCursor(Landroid/database/Cursor;)V
    invoke-static {v0, p3}, Lcom/android/phone/CustomLocationActivity;->access$200(Lcom/android/phone/CustomLocationActivity;Landroid/database/Cursor;)V

    .line 188
    :cond_0
    return-void
.end method
