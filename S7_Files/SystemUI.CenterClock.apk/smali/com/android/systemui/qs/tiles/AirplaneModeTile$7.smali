.class Lcom/android/systemui/qs/tiles/AirplaneModeTile$7;
.super Ljava/lang/Object;
.source "AirplaneModeTile.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/AirplaneModeTile;->showConfirmCheckboxPopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    .prologue
    .line 550
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$7;->this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "unused"    # Landroid/content/DialogInterface;

    .prologue
    .line 553
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$7;->this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    invoke-virtual {v0}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->refreshState()V

    .line 552
    return-void
.end method
