.class public Lcom/sec/android/app/camera/widget/CameraToast;
.super Ljava/lang/Object;
.source "CameraToast.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    return-void
.end method

.method public static makeLocationToast(Lcom/sec/android/app/camera/interfaces/CameraContext;Ljava/lang/String;I)Landroid/widget/Toast;
    .locals 6
    .param p0, "cameraContext"    # Lcom/sec/android/app/camera/interfaces/CameraContext;
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "duration"    # I

    .prologue
    .line 49
    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 50
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v4, 0x7f04000d

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 51
    .local v1, "layout":Landroid/view/View;
    const v4, 0x7f100032

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 52
    .local v2, "text":Landroid/widget/TextView;
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    new-instance v3, Landroid/widget/Toast;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 55
    .local v3, "toast":Landroid/widget/Toast;
    invoke-static {p0, v3}, Lcom/sec/android/app/camera/widget/CameraToast;->setGravity(Lcom/sec/android/app/camera/interfaces/CameraContext;Landroid/widget/Toast;)V

    .line 56
    invoke-virtual {v3, p2}, Landroid/widget/Toast;->setDuration(I)V

    .line 57
    invoke-virtual {v3, v1}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 59
    return-object v3
.end method

.method public static makeText(Lcom/sec/android/app/camera/interfaces/CameraContext;II)Landroid/widget/Toast;
    .locals 2
    .param p0, "cameraContext"    # Lcom/sec/android/app/camera/interfaces/CameraContext;
    .param p1, "strId"    # I
    .param p2, "duration"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ShowToast"
        }
    .end annotation

    .prologue
    .line 64
    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 65
    .local v0, "toast":Landroid/widget/Toast;
    invoke-static {p0, v0}, Lcom/sec/android/app/camera/widget/CameraToast;->setGravity(Lcom/sec/android/app/camera/interfaces/CameraContext;Landroid/widget/Toast;)V

    .line 66
    return-object v0
.end method

.method public static makeText(Lcom/sec/android/app/camera/interfaces/CameraContext;Ljava/lang/String;I)Landroid/widget/Toast;
    .locals 2
    .param p0, "cameraContext"    # Lcom/sec/android/app/camera/interfaces/CameraContext;
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "duration"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ShowToast"
        }
    .end annotation

    .prologue
    .line 71
    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 72
    .local v0, "toast":Landroid/widget/Toast;
    invoke-static {p0, v0}, Lcom/sec/android/app/camera/widget/CameraToast;->setGravity(Lcom/sec/android/app/camera/interfaces/CameraContext;Landroid/widget/Toast;)V

    .line 73
    return-object v0
.end method

.method private static setGravity(Lcom/sec/android/app/camera/interfaces/CameraContext;Landroid/widget/Toast;)V
    .locals 4
    .param p0, "cameraContext"    # Lcom/sec/android/app/camera/interfaces/CameraContext;
    .param p1, "toast"    # Landroid/widget/Toast;

    .prologue
    const/16 v3, 0x50

    const/4 v2, 0x0

    .line 77
    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 78
    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isResizableCamera()Z

    move-result v0

    if-nez v0, :cond_0

    .line 79
    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getDisplayRotation()I

    move-result v0

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    .line 80
    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b021b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p1, v3, v2, v0}, Landroid/widget/Toast;->setGravity(III)V

    .line 86
    :cond_0
    :goto_0
    return-void

    .line 82
    :cond_1
    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b021a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p1, v3, v2, v0}, Landroid/widget/Toast;->setGravity(III)V

    goto :goto_0
.end method
