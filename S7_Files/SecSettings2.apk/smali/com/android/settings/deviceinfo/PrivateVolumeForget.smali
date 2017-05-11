.class public Lcom/android/settings/deviceinfo/PrivateVolumeForget;
.super Lcom/android/settings/InstrumentedFragment;
.source "PrivateVolumeForget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/deviceinfo/PrivateVolumeForget$1;,
        Lcom/android/settings/deviceinfo/PrivateVolumeForget$ForgetConfirmFragment;
    }
.end annotation


# instance fields
.field private final mConfirmListener:Landroid/view/View$OnClickListener;

.field private mRecord:Landroid/os/storage/VolumeRecord;


# direct methods
.method static synthetic -get0(Lcom/android/settings/deviceinfo/PrivateVolumeForget;)Landroid/os/storage/VolumeRecord;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeForget;->mRecord:Landroid/os/storage/VolumeRecord;

    return-object v0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/settings/InstrumentedFragment;-><init>()V

    .line 71
    new-instance v0, Lcom/android/settings/deviceinfo/PrivateVolumeForget$1;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/PrivateVolumeForget$1;-><init>(Lcom/android/settings/deviceinfo/PrivateVolumeForget;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeForget;->mConfirmListener:Landroid/view/View$OnClickListener;

    .line 40
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 47
    const/16 v0, 0x2a

    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x0

    .line 53
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PrivateVolumeForget;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-class v6, Landroid/os/storage/StorageManager;

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/StorageManager;

    .line 54
    .local v3, "storage":Landroid/os/storage/StorageManager;
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PrivateVolumeForget;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string/jumbo v6, "android.os.storage.extra.FS_UUID"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 55
    .local v2, "fsUuid":Ljava/lang/String;
    invoke-virtual {v3, v2}, Landroid/os/storage/StorageManager;->findRecordByUuid(Ljava/lang/String;)Landroid/os/storage/VolumeRecord;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/deviceinfo/PrivateVolumeForget;->mRecord:Landroid/os/storage/VolumeRecord;

    .line 57
    const v5, 0x7f0402a3

    invoke-virtual {p1, v5, p2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 58
    .local v4, "view":Landroid/view/View;
    const v5, 0x7f11065a

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 59
    .local v0, "body":Landroid/widget/TextView;
    const v5, 0x7f11065b

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 64
    .local v1, "confirm":Landroid/widget/Button;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/settings/deviceinfo/PrivateVolumeForget;->mRecord:Landroid/os/storage/VolumeRecord;

    invoke-virtual {v6}, Landroid/os/storage/VolumeRecord;->getNickname()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    const v6, 0x7f0b13dd

    invoke-virtual {p0, v6, v5}, Lcom/android/settings/deviceinfo/PrivateVolumeForget;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    iget-object v5, p0, Lcom/android/settings/deviceinfo/PrivateVolumeForget;->mConfirmListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    return-object v4
.end method