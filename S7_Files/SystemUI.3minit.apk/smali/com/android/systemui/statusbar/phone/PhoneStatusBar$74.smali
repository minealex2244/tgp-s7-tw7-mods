.class Lcom/android/systemui/statusbar/phone/PhoneStatusBar$74;
.super Ljava/lang/Object;
.source "PhoneStatusBar.java"

# interfaces
.implements Lcom/android/systemui/AutoReinflateContainer$InflateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setupOthers()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 8037
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$74;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInflated(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 8040
    const-string/jumbo v1, "PhoneStatusBar"

    const-string/jumbo v2, "desk panel onInflated"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8041
    const v1, 0x7f1302dd

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QSContainer;

    .line 8042
    .local v0, "qsContainer":Lcom/android/systemui/qs/QSContainer;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSContainer;->setDeskMode(Z)V

    .line 8043
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$74;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-get56(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/phone/QSTileHost;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSContainer;->setHost(Lcom/android/systemui/statusbar/phone/QSTileHost;)V

    .line 8044
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$74;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSContainer;->getQsPanel()Lcom/android/systemui/qs/QSPanel;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-set13(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Lcom/android/systemui/qs/QSPanel;)Lcom/android/systemui/qs/QSPanel;

    .line 8045
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$74;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$74;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-get39(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/qs/QSPanel;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->setQSPanel(Lcom/android/systemui/qs/QSPanel;)V

    .line 8046
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$74;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSContainer;->getHeader()Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;

    move-result-object v2

    iput-object v2, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDeskHeader:Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;

    .line 8047
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$74;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDeskHeader:Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$74;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;->setActivityStarter(Lcom/android/systemui/statusbar/phone/ActivityStarter;)V

    .line 8048
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$74;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSContainer;->getBarController()Lcom/android/systemui/qs/QSBarController;

    move-result-object v2

    iput-object v2, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQsDeskBarController:Lcom/android/systemui/qs/QSBarController;

    .line 8049
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$74;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQsDeskBarController:Lcom/android/systemui/qs/QSBarController;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$74;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/QSBarController;->setBrightnessMirror(Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;)V

    .line 8039
    return-void
.end method