.class Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler$10;
.super Ljava/lang/Object;
.source "SmartBondingEnabler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->onWidgetChanged(Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;

    .prologue
    .line 366
    iput-object p1, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler$10;->this$0:Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v2, 0x1

    .line 368
    iget-object v0, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler$10;->this$0:Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;

    invoke-static {v0, v2}, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->-wrap1(Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;Z)V

    .line 369
    iget-object v0, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler$10;->this$0:Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;

    invoke-static {v0}, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->-get0(Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "smart_bonding"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 367
    return-void
.end method
