.class Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;
.super Ljava/lang/Object;
.source "NetworkControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Config"
.end annotation


# instance fields
.field alwaysShowCdmaRssi:Z

.field hspaDataDistinguishable:Z

.field show4gForLte:Z

.field showAtLeast3G:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1566
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1567
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->showAtLeast3G:Z

    .line 1568
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->alwaysShowCdmaRssi:Z

    .line 1569
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->show4gForLte:Z

    .line 1566
    return-void
.end method

.method static readConfig(Landroid/content/Context;)Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1573
    new-instance v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;-><init>()V

    .line 1574
    .local v0, "config":Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1576
    .local v1, "res":Landroid/content/res/Resources;
    const v2, 0x7f12000d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->showAtLeast3G:Z

    .line 1578
    const v2, 0x1120068

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    .line 1577
    iput-boolean v2, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->alwaysShowCdmaRssi:Z

    .line 1579
    const v2, 0x7f120014

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->show4gForLte:Z

    .line 1581
    const v2, 0x7f12000a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    .line 1580
    iput-boolean v2, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->hspaDataDistinguishable:Z

    .line 1582
    return-object v0
.end method
