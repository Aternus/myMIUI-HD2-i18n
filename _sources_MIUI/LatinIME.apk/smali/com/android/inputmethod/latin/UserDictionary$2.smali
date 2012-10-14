.class Lcom/android/inputmethod/latin/UserDictionary$2;
.super Ljava/lang/Thread;
.source "UserDictionary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/inputmethod/latin/UserDictionary;->addWord(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/inputmethod/latin/UserDictionary;

.field final synthetic val$contentResolver:Landroid/content/ContentResolver;

.field final synthetic val$values:Landroid/content/ContentValues;


# direct methods
.method constructor <init>(Lcom/android/inputmethod/latin/UserDictionary;Ljava/lang/String;Landroid/content/ContentResolver;Landroid/content/ContentValues;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter
    .parameter

    .prologue
    .line 99
    iput-object p1, p0, Lcom/android/inputmethod/latin/UserDictionary$2;->this$0:Lcom/android/inputmethod/latin/UserDictionary;

    iput-object p3, p0, Lcom/android/inputmethod/latin/UserDictionary$2;->val$contentResolver:Landroid/content/ContentResolver;

    iput-object p4, p0, Lcom/android/inputmethod/latin/UserDictionary$2;->val$values:Landroid/content/ContentValues;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/inputmethod/latin/UserDictionary$2;->val$contentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/UserDictionary$Words;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/inputmethod/latin/UserDictionary$2;->val$values:Landroid/content/ContentValues;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 102
    return-void
.end method
