.class Lcom/samsung/android/settings/TRoamingSettings$5;
.super Landroid/os/Handler;
.source "TRoamingSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/TRoamingSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/TRoamingSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/TRoamingSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/TRoamingSettings;

    .prologue
    .line 839
    iput-object p1, p0, Lcom/samsung/android/settings/TRoamingSettings$5;->this$0:Lcom/samsung/android/settings/TRoamingSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x0

    .line 841
    iget-object v0, p0, Lcom/samsung/android/settings/TRoamingSettings$5;->this$0:Lcom/samsung/android/settings/TRoamingSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/TRoamingSettings;->-get4(Lcom/samsung/android/settings/TRoamingSettings;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 842
    iget-object v0, p0, Lcom/samsung/android/settings/TRoamingSettings$5;->this$0:Lcom/samsung/android/settings/TRoamingSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/TRoamingSettings;->-get4(Lcom/samsung/android/settings/TRoamingSettings;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 843
    iget-object v0, p0, Lcom/samsung/android/settings/TRoamingSettings$5;->this$0:Lcom/samsung/android/settings/TRoamingSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/TRoamingSettings;->-get4(Lcom/samsung/android/settings/TRoamingSettings;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 844
    iget-object v0, p0, Lcom/samsung/android/settings/TRoamingSettings$5;->this$0:Lcom/samsung/android/settings/TRoamingSettings;

    invoke-static {v0, v1}, Lcom/samsung/android/settings/TRoamingSettings;->-set0(Lcom/samsung/android/settings/TRoamingSettings;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 840
    :cond_0
    return-void
.end method
