.class Lcom/sec/android/app/camera/menu/BeautyLiteListMenu$2;
.super Ljava/lang/Object;
.source "BeautyLiteListMenu.java"

# interfaces
.implements Lcom/samsung/android/glview/GLSlider$SliderChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;->initSkinToneSliderMenu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;

    .prologue
    .line 335
    iput-object p1, p0, Lcom/sec/android/app/camera/menu/BeautyLiteListMenu$2;->this$0:Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStepChanged(I)V
    .locals 1
    .param p1, "step"    # I

    .prologue
    .line 338
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BeautyLiteListMenu$2;->this$0:Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;

    # invokes: Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;->updateSkinColorLevel(I)V
    invoke-static {v0, p1}, Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;->access$400(Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;I)V

    .line 339
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BeautyLiteListMenu$2;->this$0:Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;

    # invokes: Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;->restartSliderMenuTimer()V
    invoke-static {v0}, Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;->access$200(Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;)V

    .line 340
    return-void
.end method
