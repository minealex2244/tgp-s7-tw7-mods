.class Lcom/sec/android/app/camera/menu/BeautyListMenu$3;
.super Ljava/lang/Object;
.source "BeautyListMenu.java"

# interfaces
.implements Lcom/samsung/android/glview/GLSlider$SliderChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/menu/BeautyListMenu;->initSkinToneSliderMenu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/menu/BeautyListMenu;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/menu/BeautyListMenu;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/android/app/camera/menu/BeautyListMenu;

    .prologue
    .line 465
    iput-object p1, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu$3;->this$0:Lcom/sec/android/app/camera/menu/BeautyListMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStepChanged(I)V
    .locals 1
    .param p1, "step"    # I

    .prologue
    .line 468
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu$3;->this$0:Lcom/sec/android/app/camera/menu/BeautyListMenu;

    # invokes: Lcom/sec/android/app/camera/menu/BeautyListMenu;->updateSkinColorLevel(I)V
    invoke-static {v0, p1}, Lcom/sec/android/app/camera/menu/BeautyListMenu;->access$500(Lcom/sec/android/app/camera/menu/BeautyListMenu;I)V

    .line 469
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu$3;->this$0:Lcom/sec/android/app/camera/menu/BeautyListMenu;

    # invokes: Lcom/sec/android/app/camera/menu/BeautyListMenu;->restartSliderMenuTimer()V
    invoke-static {v0}, Lcom/sec/android/app/camera/menu/BeautyListMenu;->access$300(Lcom/sec/android/app/camera/menu/BeautyListMenu;)V

    .line 470
    return-void
.end method
