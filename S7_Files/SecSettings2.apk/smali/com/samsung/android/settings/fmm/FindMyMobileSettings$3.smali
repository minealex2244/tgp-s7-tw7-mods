.class Lcom/samsung/android/settings/fmm/FindMyMobileSettings$3;
.super Landroid/content/BroadcastReceiver;
.source "FindMyMobileSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/fmm/FindMyMobileSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    .prologue
    .line 187
    iput-object p1, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$3;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 190
    iget-object v0, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$3;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->-wrap2(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)V

    .line 189
    return-void
.end method