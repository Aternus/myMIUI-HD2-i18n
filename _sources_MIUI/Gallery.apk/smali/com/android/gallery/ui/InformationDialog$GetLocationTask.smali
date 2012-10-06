.class Lcom/android/gallery/ui/InformationDialog$GetLocationTask;
.super Landroid/os/AsyncTask;
.source "InformationDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery/ui/InformationDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetLocationTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery/ui/InformationDialog;

.field private validAddress:Z


# direct methods
.method private constructor <init>(Lcom/android/gallery/ui/InformationDialog;)V
    .locals 1
    .parameter

    .prologue
    .line 161
    iput-object p1, p0, Lcom/android/gallery/ui/InformationDialog$GetLocationTask;->this$0:Lcom/android/gallery/ui/InformationDialog;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 162
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery/ui/InformationDialog$GetLocationTask;->validAddress:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/gallery/ui/InformationDialog;Lcom/android/gallery/ui/InformationDialog$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 161
    invoke-direct {p0, p1}, Lcom/android/gallery/ui/InformationDialog$GetLocationTask;-><init>(Lcom/android/gallery/ui/InformationDialog;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 161
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/gallery/ui/InformationDialog$GetLocationTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 8
    .parameter "v"

    .prologue
    const/4 v7, 0x1

    .line 174
    iget-object v2, p0, Lcom/android/gallery/ui/InformationDialog$GetLocationTask;->this$0:Lcom/android/gallery/ui/InformationDialog;

    iget-object v3, p0, Lcom/android/gallery/ui/InformationDialog$GetLocationTask;->this$0:Lcom/android/gallery/ui/InformationDialog;

    #getter for: Lcom/android/gallery/ui/InformationDialog;->mMeta:Lcom/android/gallery/data/BaseMeta;
    invoke-static {v3}, Lcom/android/gallery/ui/InformationDialog;->access$000(Lcom/android/gallery/ui/InformationDialog;)Lcom/android/gallery/data/BaseMeta;

    move-result-object v3

    iget-wide v3, v3, Lcom/android/gallery/data/BaseMeta;->mLatitude:D

    iget-object v5, p0, Lcom/android/gallery/ui/InformationDialog$GetLocationTask;->this$0:Lcom/android/gallery/ui/InformationDialog;

    #getter for: Lcom/android/gallery/ui/InformationDialog;->mMeta:Lcom/android/gallery/data/BaseMeta;
    invoke-static {v5}, Lcom/android/gallery/ui/InformationDialog;->access$000(Lcom/android/gallery/ui/InformationDialog;)Lcom/android/gallery/data/BaseMeta;

    move-result-object v5

    iget-wide v5, v5, Lcom/android/gallery/data/BaseMeta;->mLongitude:D

    #calls: Lcom/android/gallery/ui/InformationDialog;->getLocationKey(DD)Ljava/lang/String;
    invoke-static {v2, v3, v4, v5, v6}, Lcom/android/gallery/ui/InformationDialog;->access$400(Lcom/android/gallery/ui/InformationDialog;DD)Ljava/lang/String;

    move-result-object v0

    .line 175
    .local v0, key:Ljava/lang/String;
    invoke-static {}, Lcom/android/gallery/ui/InformationDialog;->access$500()Ljava/util/LinkedHashMap;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 176
    iput-boolean v7, p0, Lcom/android/gallery/ui/InformationDialog$GetLocationTask;->validAddress:Z

    .line 177
    invoke-static {}, Lcom/android/gallery/ui/InformationDialog;->access$500()Ljava/util/LinkedHashMap;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    move-object v2, p0

    .line 187
    :goto_0
    return-object v2

    .line 180
    .restart local p0
    :cond_0
    iget-object v2, p0, Lcom/android/gallery/ui/InformationDialog$GetLocationTask;->this$0:Lcom/android/gallery/ui/InformationDialog;

    invoke-virtual {v2}, Lcom/android/gallery/ui/InformationDialog;->lookupAddress()Ljava/lang/String;

    move-result-object v1

    .line 181
    .local v1, loc:Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 182
    iput-boolean v7, p0, Lcom/android/gallery/ui/InformationDialog$GetLocationTask;->validAddress:Z

    .line 183
    invoke-static {}, Lcom/android/gallery/ui/InformationDialog;->access$500()Ljava/util/LinkedHashMap;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v1

    .line 184
    goto :goto_0

    .line 187
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 161
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/gallery/ui/InformationDialog$GetLocationTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 192
    iget-object v0, p0, Lcom/android/gallery/ui/InformationDialog$GetLocationTask;->this$0:Lcom/android/gallery/ui/InformationDialog;

    const v1, 0x7f0c0037

    #calls: Lcom/android/gallery/ui/InformationDialog;->findView(I)Landroid/view/View;
    invoke-static {v0, v1}, Lcom/android/gallery/ui/InformationDialog;->access$200(Lcom/android/gallery/ui/InformationDialog;I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 193
    iget-boolean v0, p0, Lcom/android/gallery/ui/InformationDialog$GetLocationTask;->validAddress:Z

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/android/gallery/ui/InformationDialog$GetLocationTask;->this$0:Lcom/android/gallery/ui/InformationDialog;

    const v1, 0x7f0c0038

    #calls: Lcom/android/gallery/ui/InformationDialog;->setText(ILjava/lang/String;)V
    invoke-static {v0, v1, p1}, Lcom/android/gallery/ui/InformationDialog;->access$600(Lcom/android/gallery/ui/InformationDialog;ILjava/lang/String;)V

    .line 195
    iget-object v0, p0, Lcom/android/gallery/ui/InformationDialog$GetLocationTask;->this$0:Lcom/android/gallery/ui/InformationDialog;

    const/4 v1, -0x3

    invoke-virtual {v0, v1}, Lcom/android/gallery/ui/InformationDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 197
    :cond_0
    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/gallery/ui/InformationDialog$GetLocationTask;->this$0:Lcom/android/gallery/ui/InformationDialog;

    const v1, 0x7f0c0037

    #calls: Lcom/android/gallery/ui/InformationDialog;->findView(I)Landroid/view/View;
    invoke-static {v0, v1}, Lcom/android/gallery/ui/InformationDialog;->access$200(Lcom/android/gallery/ui/InformationDialog;I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 167
    iget-object v0, p0, Lcom/android/gallery/ui/InformationDialog$GetLocationTask;->this$0:Lcom/android/gallery/ui/InformationDialog;

    #getter for: Lcom/android/gallery/ui/InformationDialog;->mGeocoder:Landroid/location/Geocoder;
    invoke-static {v0}, Lcom/android/gallery/ui/InformationDialog;->access$300(Lcom/android/gallery/ui/InformationDialog;)Landroid/location/Geocoder;

    move-result-object v0

    if-nez v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/android/gallery/ui/InformationDialog$GetLocationTask;->this$0:Lcom/android/gallery/ui/InformationDialog;

    new-instance v1, Landroid/location/Geocoder;

    iget-object v2, p0, Lcom/android/gallery/ui/InformationDialog$GetLocationTask;->this$0:Lcom/android/gallery/ui/InformationDialog;

    invoke-virtual {v2}, Lcom/android/gallery/ui/InformationDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;)V

    #setter for: Lcom/android/gallery/ui/InformationDialog;->mGeocoder:Landroid/location/Geocoder;
    invoke-static {v0, v1}, Lcom/android/gallery/ui/InformationDialog;->access$302(Lcom/android/gallery/ui/InformationDialog;Landroid/location/Geocoder;)Landroid/location/Geocoder;

    .line 170
    :cond_0
    return-void
.end method
