.class Lcom/android/launcher3/allapps/view/AppsSearchBar$4;
.super Ljava/lang/Object;
.source "AppsSearchBar.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/allapps/view/AppsSearchBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/allapps/view/AppsSearchBar;


# direct methods
.method constructor <init>(Lcom/android/launcher3/allapps/view/AppsSearchBar;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/allapps/view/AppsSearchBar;

    .prologue
    .line 355
    iput-object p1, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar$4;->this$0:Lcom/android/launcher3/allapps/view/AppsSearchBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 358
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 359
    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar$4;->this$0:Lcom/android/launcher3/allapps/view/AppsSearchBar;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/view/AppsSearchBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08017f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar$4;->this$0:Lcom/android/launcher3/allapps/view/AppsSearchBar;

    .line 360
    invoke-virtual {v2}, Lcom/android/launcher3/allapps/view/AppsSearchBar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0800ed

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 359
    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/util/logging/SALogging;->insertEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar$4;->this$0:Lcom/android/launcher3/allapps/view/AppsSearchBar;

    # getter for: Lcom/android/launcher3/allapps/view/AppsSearchBar;->mSearchView:Landroid/widget/SearchView;
    invoke-static {v0}, Lcom/android/launcher3/allapps/view/AppsSearchBar;->access$100(Lcom/android/launcher3/allapps/view/AppsSearchBar;)Landroid/widget/SearchView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/SearchView;->clearFocus()V

    .line 362
    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar$4;->this$0:Lcom/android/launcher3/allapps/view/AppsSearchBar;

    # invokes: Lcom/android/launcher3/allapps/view/AppsSearchBar;->launchSfinder()Z
    invoke-static {v0}, Lcom/android/launcher3/allapps/view/AppsSearchBar;->access$400(Lcom/android/launcher3/allapps/view/AppsSearchBar;)Z

    .line 364
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
