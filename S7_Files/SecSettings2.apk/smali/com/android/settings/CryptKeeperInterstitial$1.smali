.class Lcom/android/settings/CryptKeeperInterstitial$1;
.super Ljava/lang/Object;
.source "CryptKeeperInterstitial.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/CryptKeeperInterstitial;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/CryptKeeperInterstitial;


# direct methods
.method constructor <init>(Lcom/android/settings/CryptKeeperInterstitial;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/CryptKeeperInterstitial;

    .prologue
    .line 374
    iput-object p1, p0, Lcom/android/settings/CryptKeeperInterstitial$1;->this$0:Lcom/android/settings/CryptKeeperInterstitial;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 376
    iget-object v0, p0, Lcom/android/settings/CryptKeeperInterstitial$1;->this$0:Lcom/android/settings/CryptKeeperInterstitial;

    const/16 v1, 0x37

    invoke-static {v0, v1}, Lcom/android/settings/CryptKeeperInterstitial;->-wrap0(Lcom/android/settings/CryptKeeperInterstitial;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 377
    const-string/jumbo v0, "CryptKeeperInterstitial"

    const-string/jumbo v1, "Alert::Keyguard confirmation failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    :cond_0
    return-void
.end method