.class Lcom/android/phone/PreferedNetworkTypeListPreference$1;
.super Ljava/lang/Object;
.source "PreferedNetworkTypeListPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/PreferedNetworkTypeListPreference;->onPreferenceClick(Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/PreferedNetworkTypeListPreference;


# direct methods
.method constructor <init>(Lcom/android/phone/PreferedNetworkTypeListPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 136
    iput-object p1, p0, Lcom/android/phone/PreferedNetworkTypeListPreference$1;->this$0:Lcom/android/phone/PreferedNetworkTypeListPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/phone/PreferedNetworkTypeListPreference$1;->this$0:Lcom/android/phone/PreferedNetworkTypeListPreference;

    iget-object v1, p0, Lcom/android/phone/PreferedNetworkTypeListPreference$1;->this$0:Lcom/android/phone/PreferedNetworkTypeListPreference;

    #getter for: Lcom/android/phone/PreferedNetworkTypeListPreference;->mCurrentNetworkType:I
    invoke-static {v1}, Lcom/android/phone/PreferedNetworkTypeListPreference;->access$100(Lcom/android/phone/PreferedNetworkTypeListPreference;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/phone/PreferedNetworkTypeListPreference;->checkRadioPreference(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/PreferedNetworkTypeListPreference;->access$200(Lcom/android/phone/PreferedNetworkTypeListPreference;Ljava/lang/String;)V

    .line 140
    return-void
.end method
