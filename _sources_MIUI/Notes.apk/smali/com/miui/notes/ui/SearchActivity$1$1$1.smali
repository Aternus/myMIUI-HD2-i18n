.class Lcom/miui/notes/ui/SearchActivity$1$1$1;
.super Ljava/lang/Object;
.source "SearchActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/notes/ui/SearchActivity$1$1;->bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/miui/notes/ui/SearchActivity$1$1;

.field final synthetic val$noteId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/miui/notes/ui/SearchActivity$1$1;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 220
    iput-object p1, p0, Lcom/miui/notes/ui/SearchActivity$1$1$1;->this$2:Lcom/miui/notes/ui/SearchActivity$1$1;

    iput-object p2, p0, Lcom/miui/notes/ui/SearchActivity$1$1$1;->val$noteId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 222
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/notes/ui/SearchActivity$1$1$1;->this$2:Lcom/miui/notes/ui/SearchActivity$1$1;

    iget-object v1, v1, Lcom/miui/notes/ui/SearchActivity$1$1;->this$1:Lcom/miui/notes/ui/SearchActivity$1;

    iget-object v1, v1, Lcom/miui/notes/ui/SearchActivity$1;->this$0:Lcom/miui/notes/ui/SearchActivity;

    const-class v2, Lcom/miui/notes/ui/NoteEditActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 224
    .local v0, onClickIntent:Landroid/content/Intent;
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 225
    const-string v1, "intent_extra_data_key"

    iget-object v2, p0, Lcom/miui/notes/ui/SearchActivity$1$1$1;->val$noteId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 226
    const-string v1, "user_query"

    iget-object v2, p0, Lcom/miui/notes/ui/SearchActivity$1$1$1;->this$2:Lcom/miui/notes/ui/SearchActivity$1$1;

    iget-object v2, v2, Lcom/miui/notes/ui/SearchActivity$1$1;->this$1:Lcom/miui/notes/ui/SearchActivity$1;

    iget-object v2, v2, Lcom/miui/notes/ui/SearchActivity$1;->val$searchString:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 227
    iget-object v1, p0, Lcom/miui/notes/ui/SearchActivity$1$1$1;->this$2:Lcom/miui/notes/ui/SearchActivity$1$1;

    iget-object v1, v1, Lcom/miui/notes/ui/SearchActivity$1$1;->this$1:Lcom/miui/notes/ui/SearchActivity$1;

    iget-object v1, v1, Lcom/miui/notes/ui/SearchActivity$1;->this$0:Lcom/miui/notes/ui/SearchActivity;

    invoke-virtual {v1, v0}, Lcom/miui/notes/ui/SearchActivity;->startActivity(Landroid/content/Intent;)V

    .line 228
    return-void
.end method
