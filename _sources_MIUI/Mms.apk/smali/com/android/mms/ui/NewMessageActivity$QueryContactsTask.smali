.class Lcom/android/mms/ui/NewMessageActivity$QueryContactsTask;
.super Landroid/os/AsyncTask;
.source "NewMessageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/NewMessageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryContactsTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field mContacts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/data/Contact;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field mNumbers:[Ljava/lang/String;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field final synthetic this$0:Lcom/android/mms/ui/NewMessageActivity;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/NewMessageActivity;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "ctx"

    .prologue
    .line 930
    iput-object p1, p0, Lcom/android/mms/ui/NewMessageActivity$QueryContactsTask;->this$0:Lcom/android/mms/ui/NewMessageActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 931
    iput-object p2, p0, Lcom/android/mms/ui/NewMessageActivity$QueryContactsTask;->mContext:Landroid/content/Context;

    .line 932
    return-void
.end method

.method static synthetic access$2500(Lcom/android/mms/ui/NewMessageActivity$QueryContactsTask;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 924
    iget-object v0, p0, Lcom/android/mms/ui/NewMessageActivity$QueryContactsTask;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 924
    check-cast p1, [Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/NewMessageActivity$QueryContactsTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Void;
    .locals 7
    .parameter "params"

    .prologue
    const/4 v6, 0x1

    .line 952
    iget-object v4, p0, Lcom/android/mms/ui/NewMessageActivity$QueryContactsTask;->this$0:Lcom/android/mms/ui/NewMessageActivity;

    new-instance v5, Lcom/android/mms/ui/NewMessageActivity$QueryContactsTask$1;

    invoke-direct {v5, p0}, Lcom/android/mms/ui/NewMessageActivity$QueryContactsTask$1;-><init>(Lcom/android/mms/ui/NewMessageActivity$QueryContactsTask;)V

    invoke-virtual {v4, v5}, Lcom/android/mms/ui/NewMessageActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 958
    iput-object p1, p0, Lcom/android/mms/ui/NewMessageActivity$QueryContactsTask;->mNumbers:[Ljava/lang/String;

    .line 959
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/mms/ui/NewMessageActivity$QueryContactsTask;->mContacts:Ljava/util/ArrayList;

    .line 960
    iget-object v4, p0, Lcom/android/mms/ui/NewMessageActivity$QueryContactsTask;->mProgressDialog:Landroid/app/ProgressDialog;

    iget-object v5, p0, Lcom/android/mms/ui/NewMessageActivity$QueryContactsTask;->mNumbers:[Ljava/lang/String;

    array-length v5, v5

    invoke-virtual {v4, v5}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 961
    iget-object v0, p0, Lcom/android/mms/ui/NewMessageActivity$QueryContactsTask;->mNumbers:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 962
    .local v3, number:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/mms/ui/NewMessageActivity$QueryContactsTask;->mContacts:Ljava/util/ArrayList;

    invoke-static {v3, v6}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 963
    iget-object v4, p0, Lcom/android/mms/ui/NewMessageActivity$QueryContactsTask;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v4, v6}, Landroid/app/ProgressDialog;->incrementProgressBy(I)V

    .line 961
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 965
    .end local v3           #number:Ljava/lang/String;
    :cond_0
    const/4 v4, 0x0

    return-object v4
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 924
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/NewMessageActivity$QueryContactsTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 4
    .parameter "dummy"

    .prologue
    .line 936
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/mms/ui/NewMessageActivity$QueryContactsTask;->mNumbers:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 937
    iget-object v2, p0, Lcom/android/mms/ui/NewMessageActivity$QueryContactsTask;->this$0:Lcom/android/mms/ui/NewMessageActivity;

    iget-object v1, p0, Lcom/android/mms/ui/NewMessageActivity$QueryContactsTask;->mContacts:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/data/Contact;

    iget-object v3, p0, Lcom/android/mms/ui/NewMessageActivity$QueryContactsTask;->mNumbers:[Ljava/lang/String;

    aget-object v3, v3, v0

    #calls: Lcom/android/mms/ui/NewMessageActivity;->commitRecipient(Lcom/android/mms/data/Contact;Ljava/lang/String;)V
    invoke-static {v2, v1, v3}, Lcom/android/mms/ui/NewMessageActivity;->access$2400(Lcom/android/mms/ui/NewMessageActivity;Lcom/android/mms/data/Contact;Ljava/lang/String;)V

    .line 936
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 939
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/NewMessageActivity$QueryContactsTask;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 940
    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    .prologue
    .line 944
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/mms/ui/NewMessageActivity$QueryContactsTask;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/mms/ui/NewMessageActivity$QueryContactsTask;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 945
    iget-object v0, p0, Lcom/android/mms/ui/NewMessageActivity$QueryContactsTask;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 946
    iget-object v0, p0, Lcom/android/mms/ui/NewMessageActivity$QueryContactsTask;->mProgressDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/mms/ui/NewMessageActivity$QueryContactsTask;->mContext:Landroid/content/Context;

    const v2, 0x7f09016a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 947
    iget-object v0, p0, Lcom/android/mms/ui/NewMessageActivity$QueryContactsTask;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 948
    return-void
.end method
