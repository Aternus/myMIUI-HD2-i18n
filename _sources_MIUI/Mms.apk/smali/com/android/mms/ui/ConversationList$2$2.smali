.class Lcom/android/mms/ui/ConversationList$2$2;
.super Ljava/lang/Object;
.source "ConversationList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ConversationList$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/ConversationList$2;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ConversationList$2;)V
    .locals 0
    .parameter

    .prologue
    .line 223
    iput-object p1, p0, Lcom/android/mms/ui/ConversationList$2$2;->this$1:Lcom/android/mms/ui/ConversationList$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 225
    iget-object v1, p0, Lcom/android/mms/ui/ConversationList$2$2;->this$1:Lcom/android/mms/ui/ConversationList$2;

    iget-object v1, v1, Lcom/android/mms/ui/ConversationList$2;->this$0:Lcom/android/mms/ui/ConversationList;

    #getter for: Lcom/android/mms/ui/ConversationList;->mPrefs:Landroid/content/SharedPreferences;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationList;->access$200(Lcom/android/mms/ui/ConversationList;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 226
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_key_auto_delete"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 228
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 229
    return-void
.end method
