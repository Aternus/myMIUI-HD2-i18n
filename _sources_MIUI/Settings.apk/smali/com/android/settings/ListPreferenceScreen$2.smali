.class Lcom/android/settings/ListPreferenceScreen$2;
.super Ljava/lang/Object;
.source "ListPreferenceScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/ListPreferenceScreen;->setupButtons(Landroid/app/Dialog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ListPreferenceScreen;


# direct methods
.method constructor <init>(Lcom/android/settings/ListPreferenceScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 133
    iput-object p1, p0, Lcom/android/settings/ListPreferenceScreen$2;->this$0:Lcom/android/settings/ListPreferenceScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/settings/ListPreferenceScreen$2;->this$0:Lcom/android/settings/ListPreferenceScreen;

    #calls: Lcom/android/settings/ListPreferenceScreen;->dismiss()V
    invoke-static {v0}, Lcom/android/settings/ListPreferenceScreen;->access$100(Lcom/android/settings/ListPreferenceScreen;)V

    .line 137
    return-void
.end method
