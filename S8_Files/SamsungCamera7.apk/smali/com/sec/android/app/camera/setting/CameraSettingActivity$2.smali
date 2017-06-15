.class Lcom/sec/android/app/camera/setting/CameraSettingActivity$2;
.super Ljava/lang/Object;
.source "CameraSettingActivity.java"

# interfaces
.implements Lcom/sec/android/app/camera/CameraExecutorManager$ExecutorCommandListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/setting/CameraSettingActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/setting/CameraSettingActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/setting/CameraSettingActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/android/app/camera/setting/CameraSettingActivity;

    .prologue
    .line 475
    iput-object p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity$2;->this$0:Lcom/sec/android/app/camera/setting/CameraSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onExecutorCommand(I)V
    .locals 7
    .param p1, "command"    # I

    .prologue
    const/4 v6, 0x1

    const v5, 0x7f090225

    .line 478
    const-string v2, "CameraSettingActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onExecutorCommand : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    sparse-switch p1, :sswitch_data_0

    .line 621
    :cond_0
    :goto_0
    return-void

    .line 481
    :sswitch_0
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity$2;->this$0:Lcom/sec/android/app/camera/setting/CameraSettingActivity;

    # getter for: Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mPreferenceFragment:Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;
    invoke-static {v2}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->access$100(Lcom/sec/android/app/camera/setting/CameraSettingActivity;)Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 482
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity$2;->this$0:Lcom/sec/android/app/camera/setting/CameraSettingActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v2

    if-lez v2, :cond_1

    .line 483
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity$2;->this$0:Lcom/sec/android/app/camera/setting/CameraSettingActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/app/ActionBar;->setTitle(I)V

    .line 484
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity$2;->this$0:Lcom/sec/android/app/camera/setting/CameraSettingActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->popBackStackImmediate()Z

    .line 487
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity$2;->this$0:Lcom/sec/android/app/camera/setting/CameraSettingActivity;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->onLaunchTimerFragment(I)V

    goto :goto_0

    .line 490
    :sswitch_1
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity$2;->this$0:Lcom/sec/android/app/camera/setting/CameraSettingActivity;

    # getter for: Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mPreferenceFragment:Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;
    invoke-static {v2}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->access$100(Lcom/sec/android/app/camera/setting/CameraSettingActivity;)Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 491
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity$2;->this$0:Lcom/sec/android/app/camera/setting/CameraSettingActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v2

    if-lez v2, :cond_2

    .line 492
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity$2;->this$0:Lcom/sec/android/app/camera/setting/CameraSettingActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/app/ActionBar;->setTitle(I)V

    .line 493
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity$2;->this$0:Lcom/sec/android/app/camera/setting/CameraSettingActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->popBackStackImmediate()Z

    .line 496
    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity$2;->this$0:Lcom/sec/android/app/camera/setting/CameraSettingActivity;

    invoke-virtual {v2, v6}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->onLaunchTimerFragment(I)V

    goto :goto_0

    .line 499
    :sswitch_2
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity$2;->this$0:Lcom/sec/android/app/camera/setting/CameraSettingActivity;

    # getter for: Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mPreferenceFragment:Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;
    invoke-static {v2}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->access$100(Lcom/sec/android/app/camera/setting/CameraSettingActivity;)Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 500
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity$2;->this$0:Lcom/sec/android/app/camera/setting/CameraSettingActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v2

    if-lez v2, :cond_3

    .line 501
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity$2;->this$0:Lcom/sec/android/app/camera/setting/CameraSettingActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/app/ActionBar;->setTitle(I)V

    .line 502
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity$2;->this$0:Lcom/sec/android/app/camera/setting/CameraSettingActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->popBackStackImmediate()Z

    .line 504
    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity$2;->this$0:Lcom/sec/android/app/camera/setting/CameraSettingActivity;

    # getter for: Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mPreferenceFragment:Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;
    invoke-static {v2}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->access$100(Lcom/sec/android/app/camera/setting/CameraSettingActivity;)Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;

    move-result-object v2

    const-string v3, "pref_camera_rear_resolution_key"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getResolutionMenuType(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_4

    .line 505
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity$2;->this$0:Lcom/sec/android/app/camera/setting/CameraSettingActivity;

    invoke-virtual {v2, v6}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->onLaunchListFragment(I)V

    goto/16 :goto_0

    .line 507
    :cond_4
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity$2;->this$0:Lcom/sec/android/app/camera/setting/CameraSettingActivity;

    # getter for: Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mPreferenceFragment:Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;
    invoke-static {v2}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->access$100(Lcom/sec/android/app/camera/setting/CameraSettingActivity;)Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;

    move-result-object v2

    const-string v3, "camera_resolution_rear_spinner"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->launchResolutionSpinnerMenu(Ljava/lang/String;)V

    .line 508
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity$2;->this$0:Lcom/sec/android/app/camera/setting/CameraSettingActivity;

    # getter for: Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mPreferenceFragment:Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;
    invoke-static {v2}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->access$100(Lcom/sec/android/app/camera/setting/CameraSettingActivity;)Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->refreshMenuForBixby()V

    goto/16 :goto_0

    .line 513
    :sswitch_3
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity$2;->this$0:Lcom/sec/android/app/camera/setting/CameraSettingActivity;

    # getter for: Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mPreferenceFragment:Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;
    invoke-static {v2}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->access$100(Lcom/sec/android/app/camera/setting/CameraSettingActivity;)Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 514
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity$2;->this$0:Lcom/sec/android/app/camera/setting/CameraSettingActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v2

    if-lez v2, :cond_5

    .line 515
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity$2;->this$0:Lcom/sec/android/app/camera/setting/CameraSettingActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/app/ActionBar;->setTitle(I)V

    .line 516
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity$2;->this$0:Lcom/sec/android/app/camera/setting/CameraSettingActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->popBackStackImmediate()Z

    .line 518
    :cond_5
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity$2;->this$0:Lcom/sec/android/app/camera/setting/CameraSettingActivity;

    # getter for: Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mPreferenceFragment:Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;
    invoke-static {v2}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->access$100(Lcom/sec/android/app/camera/setting/CameraSettingActivity;)Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;

    move-result-object v2

    const-string v3, "pref_camera_front_resolution_key"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getResolutionMenuType(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_6

    .line 519
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity$2;->this$0:Lcom/sec/android/app/camera/setting/CameraSettingActivity;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->onLaunchListFragment(I)V

    goto/16 :goto_0

    .line 521
    :cond_6
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity$2;->this$0:Lcom/sec/android/app/camera/setting/CameraSettingActivity;

    # getter for: Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mPreferenceFragment:Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;
    invoke-static {v2}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->access$100(Lcom/sec/android/app/camera/setting/CameraSettingActivity;)Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;

    move-result-object v2

    const-string v3, "camera_resolution_front_spinner"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->launchResolutionSpinnerMenu(Ljava/lang/String;)V

    .line 522
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity$2;->this$0:Lcom/sec/android/app/camera/setting/CameraSettingActivity;

    # getter for: Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mPreferenceFragment:Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;
    invoke-static {v2}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->access$100(Lcom/sec/android/app/camera/setting/CameraSettingActivity;)Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->refreshMenuForBixby()V

    goto/16 :goto_0

    .line 527
    :sswitch_4
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity$2;->this$0:Lcom/sec/android/app/camera/setting/CameraSettingActivity;

    # getter for: Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mPreferenceFragment:Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;
    invoke-static {v2}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->access$100(Lcom/sec/android/app/camera/setting/CameraSettingActivity;)Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 528
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity$2;->this$0:Lcom/sec/android/app/camera/setting/CameraSettingActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v2

    if-lez v2, :cond_7

    .line 529
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity$2;->this$0:Lcom/sec/android/app/camera/setting/CameraSettingActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/app/ActionBar;->setTitle(I)V

    .line 530
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity$2;->this$0:Lcom/sec/android/app/camera/setting/CameraSettingActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->popBackStackImmediate()Z

    .line 532
    :cond_7
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity$2;->this$0:Lcom/sec/android/app/camera/setting/CameraSettingActivity;

    # getter for: Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mPreferenceFragment:Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;
    invoke-static {v2}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->access$100(Lcom/sec/android/app/camera/setting/CameraSettingActivity;)Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;

    move-result-object v2

    const-string v3, "pref_camcorder_rear_resolution_key"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getResolutionMenuType(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_8

    .line 533
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity$2;->this$0:Lcom/sec/android/app/camera/setting/CameraSettingActivity;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->onLaunchListFragment(I)V

    goto/16 :goto_0

    .line 535
    :cond_8
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity$2;->this$0:Lcom/sec/android/app/camera/setting/CameraSettingActivity;

    # getter for: Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mPreferenceFragment:Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;
    invoke-static {v2}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->access$100(Lcom/sec/android/app/camera/setting/CameraSettingActivity;)Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;

    move-result-object v2

    const-string v3, "camcorder_rear_resolution_spinner"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->launchResolutionSpinnerMenu(Ljava/lang/String;)V

    .line 536
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity$2;->this$0:Lcom/sec/android/app/camera/setting/CameraSettingActivity;

    # getter for: Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mPreferenceFragment:Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;
    invoke-static {v2}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->access$100(Lcom/sec/android/app/camera/setting/CameraSettingActivity;)Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->refreshMenuForBixby()V

    goto/16 :goto_0

    .line 541
    :sswitch_5
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity$2;->this$0:Lcom/sec/android/app/camera/setting/CameraSettingActivity;

    # getter for: Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mPreferenceFragment:Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;
    invoke-static {v2}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->access$100(Lcom/sec/android/app/camera/setting/CameraSettingActivity;)Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 542
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity$2;->this$0:Lcom/sec/android/app/camera/setting/CameraSettingActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v2

    if-lez v2, :cond_9

    .line 543
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity$2;->this$0:Lcom/sec/android/app/camera/setting/CameraSettingActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/app/ActionBar;->setTitle(I)V

    .line 544
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity$2;->this$0:Lcom/sec/android/app/camera/setting/CameraSettingActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->popBackStackImmediate()Z

    .line 546
    :cond_9
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity$2;->this$0:Lcom/sec/android/app/camera/setting/CameraSettingActivity;

    # getter for: Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mPreferenceFragment:Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;
    invoke-static {v2}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->access$100(Lcom/sec/android/app/camera/setting/CameraSettingActivity;)Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;

    move-result-object v2

    const-string v3, "pref_camcorder_front_resolution_key"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getResolutionMenuType(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_a

    .line 547
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity$2;->this$0:Lcom/sec/android/app/camera/setting/CameraSettingActivity;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->onLaunchListFragment(I)V

    goto/16 :goto_0

    .line 549
    :cond_a
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity$2;->this$0:Lcom/sec/android/app/camera/setting/CameraSettingActivity;

    # getter for: Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mPreferenceFragment:Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;
    invoke-static {v2}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->access$100(Lcom/sec/android/app/camera/setting/CameraSettingActivity;)Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;

    move-result-object v2

    const-string v3, "camcorder_front_resolution_spinner"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->launchResolutionSpinnerMenu(Ljava/lang/String;)V

    .line 550
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity$2;->this$0:Lcom/sec/android/app/camera/setting/CameraSettingActivity;

    # getter for: Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mPreferenceFragment:Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;
    invoke-static {v2}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->access$100(Lcom/sec/android/app/camera/setting/CameraSettingActivity;)Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->refreshMenuForBixby()V

    goto/16 :goto_0

    .line 555
    :sswitch_6
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity$2;->this$0:Lcom/sec/android/app/camera/setting/CameraSettingActivity;

    # getter for: Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mPreferenceFragment:Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;
    invoke-static {v2}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->access$100(Lcom/sec/android/app/camera/setting/CameraSettingActivity;)Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;

    move-result-object v2

    if-eqz v2, :cond_b

    .line 556
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity$2;->this$0:Lcom/sec/android/app/camera/setting/CameraSettingActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v2

    if-lez v2, :cond_b

    .line 557
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity$2;->this$0:Lcom/sec/android/app/camera/setting/CameraSettingActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/app/ActionBar;->setTitle(I)V

    .line 558
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity$2;->this$0:Lcom/sec/android/app/camera/setting/CameraSettingActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->popBackStackImmediate()Z

    .line 561
    :cond_b
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity$2;->this$0:Lcom/sec/android/app/camera/setting/CameraSettingActivity;

    const v3, 0x7f070005

    const-string v4, "SHOOTING_METHOD"

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->addPreferenceFragment(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 564
    :sswitch_7
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity$2;->this$0:Lcom/sec/android/app/camera/setting/CameraSettingActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "LIST_FRAGMENT"

    invoke-virtual {v2, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/setting/ListSettingFragment;

    .line 565
    .local v0, "lf":Lcom/sec/android/app/camera/setting/ListSettingFragment;
    if-eqz v0, :cond_0

    .line 566
    invoke-virtual {v0}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->refreshMenu()V

    goto/16 :goto_0

    .line 569
    .end local v0    # "lf":Lcom/sec/android/app/camera/setting/ListSettingFragment;
    :sswitch_8
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity$2;->this$0:Lcom/sec/android/app/camera/setting/CameraSettingActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "TIMER_FRAGMENT"

    invoke-virtual {v2, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/setting/TimerSettingFragment;

    .line 570
    .local v1, "tf":Lcom/sec/android/app/camera/setting/TimerSettingFragment;
    if-eqz v1, :cond_0

    .line 571
    invoke-virtual {v1}, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->refreshMenu()V

    goto/16 :goto_0

    .line 574
    .end local v1    # "tf":Lcom/sec/android/app/camera/setting/TimerSettingFragment;
    :sswitch_9
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity$2;->this$0:Lcom/sec/android/app/camera/setting/CameraSettingActivity;

    # getter for: Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mPreferenceFragment:Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;
    invoke-static {v2}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->access$100(Lcom/sec/android/app/camera/setting/CameraSettingActivity;)Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 575
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity$2;->this$0:Lcom/sec/android/app/camera/setting/CameraSettingActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v2

    if-lez v2, :cond_c

    .line 576
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity$2;->this$0:Lcom/sec/android/app/camera/setting/CameraSettingActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/app/ActionBar;->setTitle(I)V

    .line 577
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity$2;->this$0:Lcom/sec/android/app/camera/setting/CameraSettingActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->popBackStackImmediate()Z

    .line 579
    :cond_c
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity$2;->this$0:Lcom/sec/android/app/camera/setting/CameraSettingActivity;

    # getter for: Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mPreferenceFragment:Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;
    invoke-static {v2}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->access$100(Lcom/sec/android/app/camera/setting/CameraSettingActivity;)Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->refreshMenuForBixby()V

    .line 580
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity$2;->this$0:Lcom/sec/android/app/camera/setting/CameraSettingActivity;

    # getter for: Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mPreferenceFragment:Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;
    invoke-static {v2}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->access$100(Lcom/sec/android/app/camera/setting/CameraSettingActivity;)Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;

    move-result-object v2

    const-string v3, "rear"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->scrollToRequestedCategory(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 584
    :sswitch_a
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity$2;->this$0:Lcom/sec/android/app/camera/setting/CameraSettingActivity;

    # getter for: Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mPreferenceFragment:Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;
    invoke-static {v2}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->access$100(Lcom/sec/android/app/camera/setting/CameraSettingActivity;)Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 585
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity$2;->this$0:Lcom/sec/android/app/camera/setting/CameraSettingActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v2

    if-lez v2, :cond_d

    .line 586
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity$2;->this$0:Lcom/sec/android/app/camera/setting/CameraSettingActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/app/ActionBar;->setTitle(I)V

    .line 587
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity$2;->this$0:Lcom/sec/android/app/camera/setting/CameraSettingActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->popBackStackImmediate()Z

    .line 589
    :cond_d
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity$2;->this$0:Lcom/sec/android/app/camera/setting/CameraSettingActivity;

    # getter for: Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mPreferenceFragment:Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;
    invoke-static {v2}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->access$100(Lcom/sec/android/app/camera/setting/CameraSettingActivity;)Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->refreshMenuForBixby()V

    .line 590
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity$2;->this$0:Lcom/sec/android/app/camera/setting/CameraSettingActivity;

    # getter for: Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mPreferenceFragment:Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;
    invoke-static {v2}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->access$100(Lcom/sec/android/app/camera/setting/CameraSettingActivity;)Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;

    move-result-object v2

    const-string v3, "front"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->scrollToRequestedCategory(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 594
    :sswitch_b
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity$2;->this$0:Lcom/sec/android/app/camera/setting/CameraSettingActivity;

    # getter for: Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mPreferenceFragment:Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;
    invoke-static {v2}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->access$100(Lcom/sec/android/app/camera/setting/CameraSettingActivity;)Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 595
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity$2;->this$0:Lcom/sec/android/app/camera/setting/CameraSettingActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v2

    if-lez v2, :cond_e

    .line 596
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity$2;->this$0:Lcom/sec/android/app/camera/setting/CameraSettingActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/app/ActionBar;->setTitle(I)V

    .line 597
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity$2;->this$0:Lcom/sec/android/app/camera/setting/CameraSettingActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->popBackStackImmediate()Z

    .line 599
    :cond_e
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity$2;->this$0:Lcom/sec/android/app/camera/setting/CameraSettingActivity;

    # getter for: Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mPreferenceFragment:Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;
    invoke-static {v2}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->access$100(Lcom/sec/android/app/camera/setting/CameraSettingActivity;)Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->refreshMenuForBixby()V

    .line 600
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity$2;->this$0:Lcom/sec/android/app/camera/setting/CameraSettingActivity;

    # getter for: Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mPreferenceFragment:Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;
    invoke-static {v2}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->access$100(Lcom/sec/android/app/camera/setting/CameraSettingActivity;)Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;

    move-result-object v2

    const-string v3, "common"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->scrollToRequestedCategory(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 604
    :sswitch_c
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity$2;->this$0:Lcom/sec/android/app/camera/setting/CameraSettingActivity;

    # getter for: Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mPreferenceFragment:Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;
    invoke-static {v2}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->access$100(Lcom/sec/android/app/camera/setting/CameraSettingActivity;)Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 605
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity$2;->this$0:Lcom/sec/android/app/camera/setting/CameraSettingActivity;

    # getter for: Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mPreferenceFragment:Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;
    invoke-static {v2}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->access$100(Lcom/sec/android/app/camera/setting/CameraSettingActivity;)Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;->CONFIRM_RESET:Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->showCameraDialog(Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;)V

    goto/16 :goto_0

    .line 609
    :sswitch_d
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity$2;->this$0:Lcom/sec/android/app/camera/setting/CameraSettingActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->startContactUsActivity()V

    goto/16 :goto_0

    .line 612
    :sswitch_e
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity$2;->this$0:Lcom/sec/android/app/camera/setting/CameraSettingActivity;

    # getter for: Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mPreferenceFragment:Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;
    invoke-static {v2}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->access$100(Lcom/sec/android/app/camera/setting/CameraSettingActivity;)Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;

    move-result-object v2

    if-eqz v2, :cond_f

    .line 613
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity$2;->this$0:Lcom/sec/android/app/camera/setting/CameraSettingActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v2

    if-lez v2, :cond_f

    .line 614
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity$2;->this$0:Lcom/sec/android/app/camera/setting/CameraSettingActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/app/ActionBar;->setTitle(I)V

    .line 615
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity$2;->this$0:Lcom/sec/android/app/camera/setting/CameraSettingActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->popBackStackImmediate()Z

    .line 618
    :cond_f
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity$2;->this$0:Lcom/sec/android/app/camera/setting/CameraSettingActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->onLaunchQuickLaunchFragment()V

    goto/16 :goto_0

    .line 479
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x6 -> :sswitch_5
        0x7 -> :sswitch_6
        0x8 -> :sswitch_c
        0x9 -> :sswitch_d
        0xa -> :sswitch_e
        0x64 -> :sswitch_9
        0x65 -> :sswitch_a
        0x66 -> :sswitch_b
        0x67 -> :sswitch_8
        0x68 -> :sswitch_7
    .end sparse-switch
.end method
