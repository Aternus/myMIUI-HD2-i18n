.class Lcom/android/phone/PreferedNetworkTypeListPreference$3;
.super Ljava/lang/Object;
.source "PreferedNetworkTypeListPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

.field final synthetic val$networkType:I


# direct methods
.method constructor <init>(Lcom/android/phone/PreferedNetworkTypeListPreference;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 126
    iput-object p1, p0, Lcom/android/phone/PreferedNetworkTypeListPreference$3;->this$0:Lcom/android/phone/PreferedNetworkTypeListPreference;

    iput p2, p0, Lcom/android/phone/PreferedNetworkTypeListPreference$3;->val$networkType:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/phone/PreferedNetworkTypeListPreference$3;->this$0:Lcom/android/phone/PreferedNetworkTypeListPreference;

    iget v1, p0, Lcom/android/phone/PreferedNetworkTypeListPreference$3;->val$networkType:I

    #calls: Lcom/android/phone/PreferedNetworkTypeListPreference;->handleClick(I)V
    invoke-static {v0, v1}, Lcom/android/phone/PreferedNetworkTypeListPreference;->access$300(Lcom/android/phone/PreferedNetworkTypeListPreference;I)V

    .line 130
    return-void
.end method
