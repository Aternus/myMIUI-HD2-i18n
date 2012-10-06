.class Lcom/android/inputmethod/latin/ExpandableDictionary$LoadDictionaryTask;
.super Landroid/os/AsyncTask;
.source "ExpandableDictionary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/latin/ExpandableDictionary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadDictionaryTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/inputmethod/latin/ExpandableDictionary;


# direct methods
.method private constructor <init>(Lcom/android/inputmethod/latin/ExpandableDictionary;)V
    .locals 0
    .parameter

    .prologue
    .line 495
    iput-object p1, p0, Lcom/android/inputmethod/latin/ExpandableDictionary$LoadDictionaryTask;->this$0:Lcom/android/inputmethod/latin/ExpandableDictionary;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/inputmethod/latin/ExpandableDictionary;Lcom/android/inputmethod/latin/ExpandableDictionary$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 495
    invoke-direct {p0, p1}, Lcom/android/inputmethod/latin/ExpandableDictionary$LoadDictionaryTask;-><init>(Lcom/android/inputmethod/latin/ExpandableDictionary;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 495
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/inputmethod/latin/ExpandableDictionary$LoadDictionaryTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3
    .parameter "v"

    .prologue
    .line 498
    iget-object v0, p0, Lcom/android/inputmethod/latin/ExpandableDictionary$LoadDictionaryTask;->this$0:Lcom/android/inputmethod/latin/ExpandableDictionary;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/ExpandableDictionary;->loadDictionaryAsync()V

    .line 499
    iget-object v0, p0, Lcom/android/inputmethod/latin/ExpandableDictionary$LoadDictionaryTask;->this$0:Lcom/android/inputmethod/latin/ExpandableDictionary;

    #getter for: Lcom/android/inputmethod/latin/ExpandableDictionary;->mUpdatingLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/inputmethod/latin/ExpandableDictionary;->access$100(Lcom/android/inputmethod/latin/ExpandableDictionary;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 500
    :try_start_0
    iget-object v1, p0, Lcom/android/inputmethod/latin/ExpandableDictionary$LoadDictionaryTask;->this$0:Lcom/android/inputmethod/latin/ExpandableDictionary;

    const/4 v2, 0x0

    #setter for: Lcom/android/inputmethod/latin/ExpandableDictionary;->mUpdatingDictionary:Z
    invoke-static {v1, v2}, Lcom/android/inputmethod/latin/ExpandableDictionary;->access$202(Lcom/android/inputmethod/latin/ExpandableDictionary;Z)Z

    .line 501
    monitor-exit v0

    .line 502
    const/4 v0, 0x0

    return-object v0

    .line 501
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
