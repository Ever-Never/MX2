.class public Lcom/android/internal/policy/impl/PhoneWindowManager;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Landroid/view/WindowManagerPolicy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/PhoneWindowManager$DoubleKeyThread;,
        Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenLockTimeout;,
        Lcom/android/internal/policy/impl/PhoneWindowManager$HideNavInputEventReceiver;,
        Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;,
        Lcom/android/internal/policy/impl/PhoneWindowManager$SettingsObserver;,
        Lcom/android/internal/policy/impl/PhoneWindowManager$PolicyHandler;,
        Lcom/android/internal/policy/impl/PhoneWindowManager$PointerLocationInputEventReceiver;
    }
.end annotation


# static fields
.field static final APPLICATION_MEDIA_OVERLAY_SUBLAYER:I = -0x1

.field static final APPLICATION_MEDIA_SUBLAYER:I = -0x2

.field static final APPLICATION_PANEL_SUBLAYER:I = 0x1

.field static final APPLICATION_SUB_PANEL_SUBLAYER:I = 0x2

.field static final BACK_GESTURE_THRESHOLD:I = 0x78

.field public static final CLOSE_RECENTS_INTENT:Ljava/lang/String; = "com.android.systemui.recent.action.CLOSE"

.field static final DEBUG:Z = false

.field static final DEBUG_INPUT:Z = false

.field static final DEBUG_LAYOUT:Z = false

.field static final DEBUG_STARTING_WINDOW:Z = false

.field private static final DISABLE_RECENT_INTENT:Ljava/lang/String; = "com.mz.action.DISABLE_RECENT"

.field private static final DISMISS_KEYGUARD_CONTINUE:I = 0x2

.field private static final DISMISS_KEYGUARD_NONE:I = 0x0

.field private static final DISMISS_KEYGUARD_START:I = 0x1

.field private static final DRAWER_OPEN_POST_DELAYED:I = 0x64

.field private static final FACTORY_TEST_FILE:Ljava/lang/String; = "/data/app/factoryTest/"

.field private static final GESTURE_BACK_TRIGGER_DISTANCE:I = 0xa

.field private static final KEYGUARD_SCREENSHOT_CHORD_DELAY_MULTIPLIER:F = 2.5f

.field static final LONG_PRESS_HOME_NOTHING:I = 0x0

.field static final LONG_PRESS_HOME_RECENT_DIALOG:I = 0x1

.field static final LONG_PRESS_HOME_RECENT_SYSTEM_UI:I = 0x2

.field static final LONG_PRESS_POWER_GLOBAL_ACTIONS:I = 0x1

.field static final LONG_PRESS_POWER_NOTHING:I = 0x0

.field static final LONG_PRESS_POWER_SHUT_OFF:I = 0x2

.field static final LONG_PRESS_POWER_SHUT_OFF_NO_CONFIRM:I = 0x3

.field private static final MSG_DISABLE_POINTER_LOCATION:I = 0x2

.field private static final MSG_DISPATCH_MEDIA_KEY_REPEAT_WITH_WAKE_LOCK:I = 0x4

.field private static final MSG_DISPATCH_MEDIA_KEY_WITH_WAKE_LOCK:I = 0x3

.field private static final MSG_ENABLE_POINTER_LOCATION:I = 0x1

.field private static final MSG_NOTIFY_WINDOW_CHANGED:I = 0x5

.field private static final MSG_SEND_BACK_KEY:I = 0x6

.field private static final MZSCREENSHOT_CHORD_DEBOUNCE_DELAY_MILLIS:J = 0x320L

.field private static final NAVBAR_FLAG_DEPEND_BASE:I = 0x1

.field private static final NAVBAR_FLAG_DEPEND_IME:I = 0x2

.field private static final NAVBAR_FLAG_FULLSCREEN:I = 0x10

.field private static final NAVBAR_FLAG_KEEP_LAST_STATE:I = 0x4

.field private static final NAVBAR_FLAG_MEIZU:I = 0x8

.field private static final NAVBAR_MASK_VIS:I = 0xf0000

.field private static final NAVBAR_VIS_HIDE:I = 0x0

.field private static final NAVBAR_VIS_SHOW:I = 0x10000

.field public static final NOTIFY_KEYGUARD_WINDOW_CHANGED:Z = true

.field static final PRINT_ANIM:Z = false

.field private static final PROXIMITY_THRESHOLD:F = 5.0f

.field static final RECENT_APPS_BEHAVIOR_DISMISS:I = 0x2

.field static final RECENT_APPS_BEHAVIOR_DISMISS_AND_SWITCH:I = 0x3

.field static final RECENT_APPS_BEHAVIOR_EXIT_TOUCH_MODE_AND_SHOW:I = 0x1

.field static final RECENT_APPS_BEHAVIOR_SHOW_OR_DISMISS:I = 0x0

.field private static RECENT_DISMISS_DOWN_POS:I = 0x0

.field private static RECENT_OFFSET_NOT_PASSTOUSER:I = 0x0

.field static final RECENT_PANEL_LAND_WINDOW_TITLE:Ljava/lang/String; = "recentPanelLand"

.field static final RECENT_PANEL_WINDOW_TITLE:Ljava/lang/String; = "recentPanel"

.field private static final RECENT_VALID_BOTTOM_OFFSET:I = 0x46

.field private static final RECENT_VALID_DISTANCE:I = 0x1e

.field private static RECENT_VALID_DOWN_POS:I = 0x0

.field private static RECENT_VALID_POINT_MAX:I = 0x0

.field private static RECENT_VALID_POINT_MIN:I = 0x0

.field private static final RESET_RECENT_INTENT:Ljava/lang/String; = "com.mz.action.RESET_RECENT"

.field private static final SCREENSHOT_CHORD_DEBOUNCE_DELAY_MILLIS:J = 0x96L

.field private static final SCREENSHOT_CHORD_DEBOUNCE_DELAY_MILLIS_BY_MENU:J = 0x96L

.field private static final SCREEN_BRIGHT:I = 0x3

.field private static final SCREEN_BRIGHT_BIT:I = 0x2

.field private static final SCREEN_DIM:I = 0x1

.field private static final SCREEN_OFF:I = 0x0

.field private static final SCREEN_ON_BIT:I = 0x1

.field static final SHOW_PROCESSES_ON_ALT_MENU:Z = false

.field static final SHOW_STARTING_ANIMATIONS:Z = true

.field static final STATUSBAR_DRAG_WIDTH:I = 0x8c

.field public static final SYSTEM_DIALOG_REASON_ASSIST:Ljava/lang/String; = "assist"

.field public static final SYSTEM_DIALOG_REASON_GLOBAL_ACTIONS:Ljava/lang/String; = "globalactions"

.field public static final SYSTEM_DIALOG_REASON_HOME_KEY:Ljava/lang/String; = "homekey"

.field public static final SYSTEM_DIALOG_REASON_KEY:Ljava/lang/String; = "reason"

.field public static final SYSTEM_DIALOG_REASON_RECENT_APPS:Ljava/lang/String; = "recentapps"

.field static final SYSTEM_UI_CHANGING_LAYOUT:I = 0x6

.field static final TAG:Ljava/lang/String; = "WindowManager"

.field public static final TOGGLE_RECENTS_INTENT:Ljava/lang/String; = "com.android.systemui.recent.action.TOGGLE_RECENTS"

.field private static final WINDOW_TYPES_WHERE_HOME_DOESNT_WORK:[I

.field static final localLOGV:Z

.field static mCurRotation:I

.field static mForceChange:Z

.field private static mRecentPanelOpened:Z

.field static mRotationBeforeForceChange:I

.field static final mTmpContentFrame:Landroid/graphics/Rect;

.field static final mTmpDisplayFrame:Landroid/graphics/Rect;

.field static final mTmpNavigationFrame:Landroid/graphics/Rect;

.field static final mTmpParentFrame:Landroid/graphics/Rect;

.field static final mTmpVisibleFrame:Landroid/graphics/Rect;

.field static sApplicationLaunchKeyCategories:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static sHasPermanentKey:Z


# instance fields
.field dimissPos:I

.field private isLandOpen:Z

.field private isScreenDim:Z

.field mAM:Landroid/app/ActivityManager;

.field mAccelerometerDefault:Z

.field mAllowAllRotations:I

.field mAllowLockscreenWhenOn:Z

.field final mAllowSystemUiDelay:Ljava/lang/Runnable;

.field mAssistKeyLongPressed:Z

.field mAttached:Landroid/view/WindowManagerPolicy$WindowState;

.field mAttrs:Landroid/view/WindowManager$LayoutParams;

.field private mBackDownPos:F

.field mBackGesturePos:F

.field mBackMenuVisible:Z

.field mBootMsgDialog:Landroid/app/ProgressDialog;

.field mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

.field mBrowserNeedShowBackMenu:Z

.field mBrowserReceiver:Landroid/content/BroadcastReceiver;

.field mCanHideNavigationBar:Z

.field mCarDockEnablesAccelerometer:Z

.field mCarDockIntent:Landroid/content/Intent;

.field mCarDockRotation:I

.field mCheckLongPress:Ljava/lang/Runnable;

.field mConsumeSearchKeyUp:Z

.field mContentBottom:I

.field mContentLeft:I

.field mContentRight:I

.field mContentTop:I

.field mContext:Landroid/content/Context;

.field mCurBottom:I

.field mCurLeft:I

.field mCurRight:I

.field mCurTop:I

.field mCurrentAppOrientation:I

.field private mCurrentNavBarDependWindow:Landroid/view/WindowManagerPolicy$WindowState;

.field private mCurrentNavBarState:I

.field mDebugProximitySensor:Z

.field mDeskDockEnablesAccelerometer:Z

.field mDeskDockIntent:Landroid/content/Intent;

.field mDeskDockRotation:I

.field mDirectDrapNotiPanelInFullScreen:Z

.field mDisableHomeRunnable:Ljava/lang/Runnable;

.field mDisableProximityRunnable:Ljava/lang/Runnable;

.field mDismissKeyguard:I

.field mDisplay:Landroid/view/Display;

.field mDisplayRotation:I

.field mDockBottom:I

.field mDockLayer:I

.field mDockLeft:I

.field mDockMode:I

.field mDockReceiver:Landroid/content/BroadcastReceiver;

.field mDockRight:I

.field mDockTop:I

.field mDoubleKeyWait:Z

.field mDoubleKeyWaitAgain:Z

.field mDownEventAttrs:Landroid/view/WindowManager$LayoutParams;

.field private mDownInValidArea:Z

.field private mDownPos:F

.field mDownTime:J

.field mDreamReceiver:Landroid/content/BroadcastReceiver;

.field mDreamingLockscreen:Z

.field private mEnableHome:Z

.field mEnableShiftMenuBugReports:Z

.field mEndcallBehavior:I

.field private final mFallbackActions:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/KeyCharacterMap$FallbackAction;",
            ">;"
        }
    .end annotation
.end field

.field mFocusedApp:Landroid/view/IApplicationToken;

.field mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

.field mFocusedWindowUnderRecentPanel:Landroid/view/WindowManagerPolicy$WindowState;

.field mForceClearedSystemUiFlags:I

.field mForceHideBackMore:Z

.field mForceStatusBar:Z

.field mForceStatusBarFromKeyguard:Z

.field mGestureBar:Landroid/view/WindowManagerPolicy$WindowState;

.field mGlobalActions:Lcom/android/internal/policy/impl/GlobalActions;

.field mGotoSleep:Ljava/lang/Runnable;

.field mGotoSleepReceiver:Landroid/content/BroadcastReceiver;

.field mGuestBarShow:Z

.field private mHDMIObserver:Landroid/os/UEventObserver;

.field mHandler:Landroid/os/Handler;

.field mHasBackGesture:Z

.field mHasDoubleKey:Z

.field mHasNavigationBar:Z

.field mHasSoftInput:Z

.field mHasSystemNavBar:Z

.field mHaveBuiltInKeyboard:Z

.field mHavePendingMediaKeyRepeatWithWakeLock:Z

.field mHdmiPlugged:Z

.field mHdmiRotation:I

.field mHdmiRotationLock:Z

.field mHeadless:Z

.field mHideLockScreen:Z

.field mHideNavFakeWindow:Landroid/view/WindowManagerPolicy$FakeWindow;

.field final mHideNavInputEventReceiverFactory:Landroid/view/InputEventReceiver$Factory;

.field mHideStatusbarRunnable:Ljava/lang/Runnable;

.field private mHomeDisableTime:J

.field mHomeDoubleClick:Ljava/lang/Runnable;

.field mHomeIntent:Landroid/content/Intent;

.field mHomeKeyDown:Z

.field mHomeLongPress:Ljava/lang/Runnable;

.field mHomeLongPressed:Z

.field mHomePressed:Z

.field mInBrowserActivity:Z

.field mIncallPowerBehavior:I

.field mIsNoActionBar:Z

.field mIsShutDowning:Z

.field mKeyboardTapVibePattern:[J

.field mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

.field mKeyguardMediator:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

.field mLandscapeRotation:I

.field mLanguageSwitchKeyPressed:Z

.field mLastFocusNeedsMenu:Z

.field mLastInputMethodTargetWindow:Landroid/view/WindowManagerPolicy$WindowState;

.field private mLastInputMethodTargetWindowWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/WindowManagerPolicy$WindowState;",
            ">;"
        }
    .end annotation
.end field

.field mLastInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

.field private mLastNavBarState:I

.field mLastSystemUiFlags:I

.field mLastSystemUiFlagsIgnoreRecentPanel:I

.field mLidControlsSleep:Z

.field mLidKeyboardAccessibility:I

.field mLidNavigationAccessibility:I

.field mLidOpenRotation:I

.field mLidState:I

.field final mLock:Ljava/lang/Object;

.field mLockScreenTimeout:I

.field mLockScreenTimerActive:Z

.field private mLongPressOnHomeBehavior:I

.field mLongPressOnPowerBehavior:I

.field final mLongPressTime:J

.field mLongPressVibePattern:[J

.field mMX2WakeUpKeyCode:I

.field private mMeizuEnableFullScreenDrag:I

.field private mMeizuNavigationBarHeight:I

.field private mMenuDownKeyTriggered:Z

.field mMultiuserReceiver:Landroid/content/BroadcastReceiver;

.field mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

.field mNavigationBarCanMove:Z

.field mNavigationBarHeightForRotation:[I

.field mNavigationBarOnBottom:Z

.field mNavigationBarWidthForRotation:[I

.field private mNeedUpdateStatusBar:Z

.field mOrientationListener:Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;

.field mOrientationSensorEnabled:Z

.field mPM:Landroid/content/pm/PackageManager;

.field mPendingPowerKeyUpCanceled:Z

.field mPointerLocationInputChannel:Landroid/view/InputChannel;

.field mPointerLocationInputEventReceiver:Lcom/android/internal/policy/impl/PhoneWindowManager$PointerLocationInputEventReceiver;

.field mPointerLocationMode:I

.field mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

.field mPortraitRotation:I

.field volatile mPowerKeyHandled:Z

.field private mPowerKeyTime:J

.field private mPowerKeyTriggered:Z

.field private final mPowerLongPress:Ljava/lang/Runnable;

.field mPowerManager:Landroid/os/PowerManager;

.field mPreventHomekey:Z

.field mProximityListener:Landroid/hardware/SensorEventListener;

.field private mProximitySensor:Landroid/hardware/Sensor;

.field mProximitySensorEnabled:Z

.field mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

.field mReadyToLightScreen:Z

.field mRecentAppsDialog:Lcom/android/internal/policy/impl/RecentApplicationsDialog;

.field mRecentAppsDialogHeldModifiers:I

.field mRecentLandShow:Z

.field mRecentPortShow:Z

.field mRecentReceiver:Landroid/content/BroadcastReceiver;

.field mRecentShow:Z

.field mResettingSystemUiFlags:I

.field mRestrictedScreenHeight:I

.field mRestrictedScreenLeft:I

.field mRestrictedScreenTop:I

.field mRestrictedScreenWidth:I

.field private mReturnHome:Z

.field mSafeMode:Z

.field mSafeModeDisabledVibePattern:[J

.field mSafeModeEnabledVibePattern:[J

.field private mScreenDimByHome:Z

.field mScreenLockTimeout:Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenLockTimeout;

.field mScreenOnEarly:Z

.field mScreenOnFully:Z

.field private mScreenshotChordEnabled:Z

.field private final mScreenshotChordLongPress:Ljava/lang/Runnable;

.field mScreenshotConnection:Landroid/content/ServiceConnection;

.field final mScreenshotLock:Ljava/lang/Object;

.field final mScreenshotTimeout:Ljava/lang/Runnable;

.field mSearchKeyShortcutPending:Z

.field mSearchManager:Landroid/app/SearchManager;

.field mSeascapeRotation:I

.field private mSensorManager:Landroid/hardware/SensorManager;

.field final mServiceAquireLock:Ljava/lang/Object;

.field mSettingsObserver:Lcom/android/internal/policy/impl/PhoneWindowManager$SettingsObserver;

.field mShortcutManager:Lcom/android/internal/policy/impl/ShortcutManager;

.field private mShouldPassToUser:Z

.field private mShowBootMessage:Z

.field mShowStatusbarInFullScreen:Z

.field mShowingDream:Z

.field mShowingLockscreen:Z

.field mShutDownReceiver:Landroid/content/BroadcastReceiver;

.field private mSlideKeyUpTime:J

.field mStableBottom:I

.field mStableFullscreenBottom:I

.field mStableFullscreenLeft:I

.field mStableFullscreenRight:I

.field mStableFullscreenTop:I

.field mStableLeft:I

.field mStableRight:I

.field mStableTop:I

.field mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

.field mStatusBarBackgroundTrans:Z

.field mStatusBarHeight:I

.field mStatusBarLayer:I

.field mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field private mStatusbarExpanded:Z

.field mStatusbarHeight:I

.field mSupportsLongpress:Z

.field mSystemBooted:Z

.field mSystemBottom:I

.field mSystemLeft:I

.field mSystemReady:Z

.field mSystemRight:I

.field mSystemTop:I

.field mSystemUIAlreadyShownInFullScreen:Z

.field mTelephonyIsHooking:Z

.field mToastWindowState:Landroid/view/WindowManagerPolicy$WindowState;

.field private mToken:Landroid/os/IBinder;

.field mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

.field mTopIsFullscreen:Z

.field mUnrestrictedScreenHeight:I

.field mUnrestrictedScreenLeft:I

.field mUnrestrictedScreenTop:I

.field mUnrestrictedScreenWidth:I

.field mUpsideDownRotation:I

.field mUserRotation:I

.field mUserRotationMode:I

.field mVibrator:Landroid/os/Vibrator;

.field mVirtualKeyVibePattern:[J

.field private mVolumeDownKeyConsumedByScreenshotChord:Z

.field private mVolumeDownKeyTime:J

.field private mVolumeDownKeyTriggered:Z

.field private mVolumeUpKeyTriggered:Z

.field mWaitGestureBack:Z

.field mWaitToShowStatusbar:Z

.field private mWinDismissingKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

.field mWindowManager:Landroid/view/IWindowManager;

.field mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 235
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    .line 236
    sget-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    const/16 v1, 0x40

    const-string v2, "android.intent.category.APP_BROWSER"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 238
    sget-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    const/16 v1, 0x41

    const-string v2, "android.intent.category.APP_EMAIL"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 240
    sget-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    const/16 v1, 0xcf

    const-string v2, "android.intent.category.APP_CONTACTS"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 242
    sget-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    const/16 v1, 0xd0

    const-string v2, "android.intent.category.APP_CALENDAR"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 244
    sget-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    const/16 v1, 0xd1

    const-string v2, "android.intent.category.APP_MUSIC"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 246
    sget-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    const/16 v1, 0xd2

    const-string v2, "android.intent.category.APP_CALCULATOR"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 475
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpParentFrame:Landroid/graphics/Rect;

    .line 476
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpDisplayFrame:Landroid/graphics/Rect;

    .line 477
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpContentFrame:Landroid/graphics/Rect;

    .line 478
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpVisibleFrame:Landroid/graphics/Rect;

    .line 479
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    .line 567
    sget-object v0, Landroid/os/Build;->PERMANENTKEY:Ljava/lang/String;

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->sHasPermanentKey:Z

    .line 2087
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->WINDOW_TYPES_WHERE_HOME_DOESNT_WORK:[I

    .line 6704
    sput-boolean v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceChange:Z

    .line 6714
    const/16 v0, 0x1b0

    sput v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->RECENT_VALID_POINT_MAX:I

    .line 6715
    const/16 v0, 0x288

    sput v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->RECENT_VALID_POINT_MIN:I

    .line 6716
    sput-boolean v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRecentPanelOpened:Z

    .line 6717
    const/16 v0, 0x6c2

    sput v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->RECENT_VALID_DOWN_POS:I

    .line 6718
    const/16 v0, 0x5a0

    sput v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->RECENT_DISMISS_DOWN_POS:I

    .line 6720
    const/16 v0, 0x702

    sput v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->RECENT_OFFSET_NOT_PASSTOUSER:I

    return-void

    .line 2087
    :array_0
    .array-data 0x4
        0xd3t 0x7t 0x0t 0x0t
        0xdat 0x7t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 7

    .prologue
    const/high16 v6, -0x4080

    const/4 v5, -0x1

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 255
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLock:Ljava/lang/Object;

    .line 262
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mServiceAquireLock:Ljava/lang/Object;

    .line 282
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEnableShiftMenuBugReports:Z

    .line 286
    iput-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    .line 289
    iput-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    .line 290
    iput-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mGestureBar:Landroid/view/WindowManagerPolicy$WindowState;

    .line 291
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasNavigationBar:Z

    .line 292
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCanHideNavigationBar:Z

    .line 293
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarCanMove:Z

    .line 294
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarOnBottom:Z

    .line 295
    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarHeightForRotation:[I

    .line 296
    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarWidthForRotation:[I

    .line 298
    iput-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    .line 304
    iput-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    .line 305
    iput-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastInputMethodTargetWindow:Landroid/view/WindowManagerPolicy$WindowState;

    .line 316
    iput v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidState:I

    .line 322
    iput v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    .line 329
    iput v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUserRotationMode:I

    .line 330
    iput v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUserRotation:I

    .line 333
    iput v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAllowAllRotations:I

    .line 339
    iput v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressOnPowerBehavior:I

    .line 340
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOnEarly:Z

    .line 341
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOnFully:Z

    .line 342
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationSensorEnabled:Z

    .line 343
    iput v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentAppOrientation:I

    .line 344
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasSoftInput:Z

    .line 346
    iput v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationMode:I

    .line 353
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mReturnHome:Z

    .line 358
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBackMenuVisible:Z

    .line 362
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBrowserNeedShowBackMenu:Z

    .line 366
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mInBrowserActivity:Z

    .line 370
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsNoActionBar:Z

    .line 374
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceHideBackMore:Z

    .line 378
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShowStatusbarInFullScreen:Z

    .line 382
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressTime:J

    .line 386
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTelephonyIsHooking:Z

    .line 466
    iput v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mResettingSystemUiFlags:I

    .line 468
    iput v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceClearedSystemUiFlags:I

    .line 471
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastFocusNeedsMenu:Z

    .line 473
    iput-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideNavFakeWindow:Landroid/view/WindowManagerPolicy$FakeWindow;

    .line 492
    iput v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDismissKeyguard:I

    .line 524
    iput v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLandscapeRotation:I

    .line 525
    iput v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSeascapeRotation:I

    .line 526
    iput v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPortraitRotation:I

    .line 527
    iput v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUpsideDownRotation:I

    .line 530
    iput v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    .line 555
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFallbackActions:Landroid/util/SparseArray;

    .line 568
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWaitGestureBack:Z

    .line 569
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasBackGesture:Z

    .line 570
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSupportsLongpress:Z

    .line 572
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeKeyDown:Z

    .line 573
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPreventHomekey:Z

    .line 574
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenDimByHome:Z

    .line 575
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mReadyToLightScreen:Z

    .line 577
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->isScreenDim:Z

    .line 578
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBackGesturePos:F

    .line 590
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDoubleKeyWait:Z

    .line 591
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDoubleKeyWaitAgain:Z

    .line 592
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasDoubleKey:Z

    .line 594
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusbarExpanded:Z

    .line 596
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShowBootMessage:Z

    .line 598
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeDisableTime:J

    .line 600
    iput-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDownEventAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 640
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$1;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHDMIObserver:Landroid/os/UEventObserver;

    .line 711
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsShutDowning:Z

    .line 712
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$2;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$2;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShutDownReceiver:Landroid/content/BroadcastReceiver;

    .line 868
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$3;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$3;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerLongPress:Ljava/lang/Runnable;

    .line 911
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$4;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$4;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenshotChordLongPress:Ljava/lang/Runnable;

    .line 2691
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$7;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$7;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAllowSystemUiDelay:Ljava/lang/Runnable;

    .line 2760
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$8;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$8;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideNavInputEventReceiverFactory:Landroid/view/InputEventReceiver$Factory;

    .line 3170
    iput v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastNavBarState:I

    .line 3174
    iput v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentNavBarState:I

    .line 3182
    iput v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMeizuEnableFullScreenDrag:I

    .line 4192
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenshotLock:Ljava/lang/Object;

    .line 4193
    iput-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenshotConnection:Landroid/content/ServiceConnection;

    .line 4195
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$18;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$18;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenshotTimeout:Ljava/lang/Runnable;

    .line 4773
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSlideKeyUpTime:J

    .line 4842
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWaitToShowStatusbar:Z

    .line 4846
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDirectDrapNotiPanelInFullScreen:Z

    .line 4850
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemUIAlreadyShownInFullScreen:Z

    .line 4851
    iput v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusbarHeight:I

    .line 4852
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mToken:Landroid/os/IBinder;

    .line 4857
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$20;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$20;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideStatusbarRunnable:Ljava/lang/Runnable;

    .line 5291
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$22;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$22;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mGotoSleep:Ljava/lang/Runnable;

    .line 5348
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$23;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$23;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCheckLongPress:Ljava/lang/Runnable;

    .line 5509
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$25;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$25;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockReceiver:Landroid/content/BroadcastReceiver;

    .line 5520
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$26;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$26;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDreamReceiver:Landroid/content/BroadcastReceiver;

    .line 5535
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$27;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$27;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMultiuserReceiver:Landroid/content/BroadcastReceiver;

    .line 5553
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$28;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$28;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBrowserReceiver:Landroid/content/BroadcastReceiver;

    .line 5997
    iput-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBootMsgDialog:Landroid/app/ProgressDialog;

    .line 6102
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenLockTimeout;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenLockTimeout;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenLockTimeout;

    .line 6631
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$36;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$36;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeLongPress:Ljava/lang/Runnable;

    .line 6651
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$37;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$37;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeDoubleClick:Ljava/lang/Runnable;

    .line 6697
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRecentShow:Z

    .line 6698
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRecentPortShow:Z

    .line 6699
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRecentLandShow:Z

    .line 6700
    const/16 v0, 0x55a

    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->dimissPos:I

    .line 6701
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mGuestBarShow:Z

    .line 6705
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->isLandOpen:Z

    .line 6710
    iput v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDownPos:F

    .line 6711
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShouldPassToUser:Z

    .line 6712
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDownInValidArea:Z

    .line 6713
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNeedUpdateStatusBar:Z

    .line 6728
    iput v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBackDownPos:F

    .line 6766
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$38;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$38;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mGotoSleepReceiver:Landroid/content/BroadcastReceiver;

    .line 6775
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$39;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$39;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRecentReceiver:Landroid/content/BroadcastReceiver;

    .line 6819
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEnableHome:Z

    .line 6831
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$40;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$40;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDisableHomeRunnable:Ljava/lang/Runnable;

    .line 6894
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDebugProximitySensor:Z

    .line 6895
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mProximitySensorEnabled:Z

    .line 6900
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$41;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$41;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mProximityListener:Landroid/hardware/SensorEventListener;

    .line 6963
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$42;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$42;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDisableProximityRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 185
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->enablePointerLocation()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 185
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->disablePointerLocation()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/impl/PhoneWindowManager;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 185
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateGestureBar(Z)V

    return-void
.end method

.method static synthetic access$1102(Lcom/android/internal/policy/impl/PhoneWindowManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 185
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenDimByHome:Z

    return p1
.end method

.method static synthetic access$1202(Lcom/android/internal/policy/impl/PhoneWindowManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 185
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->isScreenDim:Z

    return p1
.end method

.method static synthetic access$1302(Lcom/android/internal/policy/impl/PhoneWindowManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 185
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mReturnHome:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/os/IBinder;Landroid/view/WindowManagerPolicy$ScreenOnListener;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 185
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->waitForKeyguardWindowDrawn(Landroid/os/IBinder;Landroid/view/WindowManagerPolicy$ScreenOnListener;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/view/WindowManagerPolicy$ScreenOnListener;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 185
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->finishScreenTurningOn(Landroid/view/WindowManagerPolicy$ScreenOnListener;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 185
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->disableRecentForFactory()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 185
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->resetRecentValid()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/internal/policy/impl/PhoneWindowManager;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 185
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->enableHomeButton(Z)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 185
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->finishedProximityTest()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 185
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->performAuditoryFeedbackForAccessibilityIfNeed()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 185
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->takeScreenshot()V

    return-void
.end method

.method static synthetic access$400()Z
    .locals 1

    .prologue
    .line 185
    sget-boolean v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRecentPanelOpened:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 185
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->onSmartBarConfigurationChanged()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 185
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->onEnableFullScreenDragSettingChanged()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/PhoneWindowManager;)Landroid/os/IBinder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mToken:Landroid/os/IBinder;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/internal/policy/impl/PhoneWindowManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 185
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusbarExpanded:Z

    return p1
.end method

.method private applyLidSwitchState()V
    .locals 3

    .prologue
    .line 6140
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidState:I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidControlsSleep:Z

    if-eqz v0, :cond_0

    .line 6141
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->goToSleep(J)V

    .line 6143
    :cond_0
    return-void
.end method

.method private applyStableConstraints(IILandroid/graphics/Rect;)V
    .locals 2
    .parameter "sysui"
    .parameter "fl"
    .parameter "r"

    .prologue
    .line 3070
    and-int/lit16 v0, p1, 0x100

    if-eqz v0, :cond_3

    .line 3073
    and-int/lit16 v0, p2, 0x400

    if-eqz v0, :cond_4

    .line 3074
    iget v0, p3, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenLeft:I

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenLeft:I

    iput v0, p3, Landroid/graphics/Rect;->left:I

    .line 3075
    :cond_0
    iget v0, p3, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenTop:I

    if-ge v0, v1, :cond_1

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenTop:I

    iput v0, p3, Landroid/graphics/Rect;->top:I

    .line 3076
    :cond_1
    iget v0, p3, Landroid/graphics/Rect;->right:I

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenRight:I

    if-le v0, v1, :cond_2

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenRight:I

    iput v0, p3, Landroid/graphics/Rect;->right:I

    .line 3077
    :cond_2
    iget v0, p3, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenBottom:I

    if-le v0, v1, :cond_3

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenBottom:I

    iput v0, p3, Landroid/graphics/Rect;->bottom:I

    .line 3085
    :cond_3
    :goto_0
    return-void

    .line 3079
    :cond_4
    iget v0, p3, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableLeft:I

    if-ge v0, v1, :cond_5

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableLeft:I

    iput v0, p3, Landroid/graphics/Rect;->left:I

    .line 3080
    :cond_5
    iget v0, p3, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableTop:I

    if-ge v0, v1, :cond_6

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableTop:I

    iput v0, p3, Landroid/graphics/Rect;->top:I

    .line 3081
    :cond_6
    iget v0, p3, Landroid/graphics/Rect;->right:I

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableRight:I

    if-le v0, v1, :cond_7

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableRight:I

    iput v0, p3, Landroid/graphics/Rect;->right:I

    .line 3082
    :cond_7
    iget v0, p3, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableBottom:I

    if-le v0, v1, :cond_3

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableBottom:I

    iput v0, p3, Landroid/graphics/Rect;->bottom:I

    goto :goto_0
.end method

.method private cancelBackGesture(Landroid/view/MotionEvent;)V
    .locals 6
    .parameter "event"

    .prologue
    const/4 v5, 0x0

    const/high16 v4, 0x4248

    .line 5357
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDisplay:Landroid/view/Display;

    invoke-virtual {v3}, Landroid/view/Display;->getRotation()I

    move-result v2

    .line 5358
    .local v2, rot:I
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isLandScape()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 5359
    .local v1, pos:F
    :goto_0
    const/4 v0, 0x0

    .line 5360
    .local v0, cancel:Z
    packed-switch v2, :pswitch_data_0

    .line 5385
    :cond_0
    :goto_1
    :pswitch_0
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasBackGesture:Z

    if-nez v3, :cond_1

    .line 5386
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateGestureBar(Z)V

    .line 5388
    :cond_1
    return-void

    .line 5358
    .end local v0           #cancel:Z
    .end local v1           #pos:F
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    goto :goto_0

    .line 5363
    .restart local v0       #cancel:Z
    .restart local v1       #pos:F
    :pswitch_1
    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBackGesturePos:F

    cmpg-float v3, v1, v3

    if-gez v3, :cond_3

    .line 5364
    iput v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBackGesturePos:F

    goto :goto_1

    .line 5366
    :cond_3
    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBackGesturePos:F

    add-float/2addr v3, v4

    cmpl-float v3, v1, v3

    if-lez v3, :cond_0

    .line 5367
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasBackGesture:Z

    goto :goto_1

    .line 5374
    :pswitch_2
    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBackGesturePos:F

    cmpl-float v3, v1, v3

    if-lez v3, :cond_4

    .line 5375
    iput v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBackGesturePos:F

    goto :goto_1

    .line 5377
    :cond_4
    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBackGesturePos:F

    sub-float/2addr v3, v4

    cmpg-float v3, v1, v3

    if-gez v3, :cond_0

    .line 5378
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasBackGesture:Z

    goto :goto_1

    .line 5360
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private cancelPendingPowerKeyAction()V
    .locals 2

    .prologue
    .line 824
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyHandled:Z

    if-nez v0, :cond_0

    .line 825
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerLongPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 827
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyTriggered:Z

    if-eqz v0, :cond_1

    .line 828
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPendingPowerKeyUpCanceled:Z

    .line 830
    :cond_1
    return-void
.end method

.method private cancelPendingScreenshotChordAction()V
    .locals 2

    .prologue
    .line 865
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenshotChordLongPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 866
    return-void
.end method

.method private checkFactoryState()V
    .locals 3

    .prologue
    .line 6799
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "appops"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    .line 6801
    .local v0, mAppOps:Landroid/app/AppOpsManager;
    if-eqz v0, :cond_0

    .line 6802
    invoke-virtual {v0}, Landroid/app/AppOpsManager;->getFactoryState()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6803
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->disableRecentForFactory()V

    .line 6806
    :cond_0
    return-void
.end method

.method private configureForMx2OrMx3()V
    .locals 9

    .prologue
    .line 1306
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 1307
    .local v3, point:Landroid/graphics/Point;
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDisplay:Landroid/view/Display;

    invoke-virtual {v5, v3}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 1308
    iget v4, v3, Landroid/graphics/Point;->x:I

    .line 1309
    .local v4, width:I
    iget v2, v3, Landroid/graphics/Point;->y:I

    .line 1310
    .local v2, height:I
    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1311
    .local v0, deviceHeight:I
    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1312
    .local v1, deviceWidth:I
    add-int/lit8 v5, v0, -0x46

    sput v5, Lcom/android/internal/policy/impl/PhoneWindowManager;->RECENT_VALID_DOWN_POS:I

    .line 1313
    int-to-double v5, v1

    const-wide v7, 0x3fd999999999999aL

    mul-double/2addr v5, v7

    double-to-int v5, v5

    sput v5, Lcom/android/internal/policy/impl/PhoneWindowManager;->RECENT_VALID_POINT_MAX:I

    .line 1314
    int-to-double v5, v1

    const-wide v7, 0x3fe3333333333333L

    mul-double/2addr v5, v7

    double-to-int v5, v5

    sput v5, Lcom/android/internal/policy/impl/PhoneWindowManager;->RECENT_VALID_POINT_MIN:I

    .line 1315
    add-int/lit8 v5, v0, -0x6

    sput v5, Lcom/android/internal/policy/impl/PhoneWindowManager;->RECENT_OFFSET_NOT_PASSTOUSER:I

    .line 1316
    sget-object v5, Landroid/os/Build;->IS_MX2:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1317
    const/16 v5, 0x3e0

    sput v5, Lcom/android/internal/policy/impl/PhoneWindowManager;->RECENT_DISMISS_DOWN_POS:I

    .line 1322
    :goto_0
    return-void

    .line 1319
    :cond_0
    const/16 v5, 0x5a0

    sput v5, Lcom/android/internal/policy/impl/PhoneWindowManager;->RECENT_DISMISS_DOWN_POS:I

    goto :goto_0
.end method

.method private disablePointerLocation()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1428
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationInputEventReceiver:Lcom/android/internal/policy/impl/PhoneWindowManager$PointerLocationInputEventReceiver;

    if-eqz v1, :cond_0

    .line 1429
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationInputEventReceiver:Lcom/android/internal/policy/impl/PhoneWindowManager$PointerLocationInputEventReceiver;

    invoke-virtual {v1}, Landroid/view/InputEventReceiver;->dispose()V

    .line 1430
    iput-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationInputEventReceiver:Lcom/android/internal/policy/impl/PhoneWindowManager$PointerLocationInputEventReceiver;

    .line 1433
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationInputChannel:Landroid/view/InputChannel;

    if-eqz v1, :cond_1

    .line 1434
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationInputChannel:Landroid/view/InputChannel;

    invoke-virtual {v1}, Landroid/view/InputChannel;->dispose()V

    .line 1435
    iput-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationInputChannel:Landroid/view/InputChannel;

    .line 1438
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    if-eqz v1, :cond_2

    .line 1439
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 1441
    .local v0, wm:Landroid/view/WindowManager;
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 1442
    iput-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    .line 1444
    .end local v0           #wm:Landroid/view/WindowManager;
    :cond_2
    return-void
.end method

.method private disableRecentForFactory()V
    .locals 1

    .prologue
    .line 6791
    const/16 v0, 0x708

    sput v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->RECENT_VALID_DOWN_POS:I

    .line 6792
    return-void
.end method

.method private enableHomeButton(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    .line 6822
    if-eqz p1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "button_brightness"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    .line 6823
    .local v0, brightness:I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v1, v0}, Landroid/os/PowerManager;->setButtonlightBrightness(I)V
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6828
    .end local v0           #brightness:I
    :goto_1
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEnableHome:Z

    .line 6829
    return-void

    .line 6822
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 6824
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method private enablePointerLocation()V
    .locals 6

    .prologue
    const/4 v4, -0x1

    .line 1395
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    if-nez v2, :cond_1

    .line 1396
    new-instance v2, Lcom/android/internal/widget/PointerLocationView;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/internal/widget/PointerLocationView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    .line 1397
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/PointerLocationView;->setPrintCoords(Z)V

    .line 1399
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/view/WindowManager$LayoutParams;-><init>(II)V

    .line 1402
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    const/16 v2, 0x7df

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 1403
    const/16 v2, 0x518

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1407
    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1408
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, 0x100

    or-int/2addr v2, v3

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1409
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 1412
    :cond_0
    const/4 v2, -0x3

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 1413
    const-string v2, "PointerLocation"

    invoke-virtual {v0, v2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 1414
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 1416
    .local v1, wm:Landroid/view/WindowManager;
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    .line 1417
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1419
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    const-string v3, "PointerLocationView"

    invoke-interface {v2, v3}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->monitorInput(Ljava/lang/String;)Landroid/view/InputChannel;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationInputChannel:Landroid/view/InputChannel;

    .line 1421
    new-instance v2, Lcom/android/internal/policy/impl/PhoneWindowManager$PointerLocationInputEventReceiver;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationInputChannel:Landroid/view/InputChannel;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/policy/impl/PhoneWindowManager$PointerLocationInputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;Lcom/android/internal/widget/PointerLocationView;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationInputEventReceiver:Lcom/android/internal/policy/impl/PhoneWindowManager$PointerLocationInputEventReceiver;

    .line 1425
    .end local v0           #lp:Landroid/view/WindowManager$LayoutParams;
    .end local v1           #wm:Landroid/view/WindowManager;
    :cond_1
    return-void
.end method

.method private findBaseWindowOf(Landroid/view/WindowManagerPolicy$WindowState;)Landroid/view/WindowManagerPolicy$WindowState;
    .locals 1
    .parameter "win"

    .prologue
    .line 3088
    if-nez p1, :cond_0

    .line 3089
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->getCurrentInputMethodTarget()Landroid/view/WindowManagerPolicy$WindowState;

    move-result-object p1

    .line 3090
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 3092
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {p1, v0}, Landroid/view/WindowManagerPolicy$WindowState;->getTopBaseWindowLw(Landroid/view/WindowManagerPolicy$WindowState;)Landroid/view/WindowManagerPolicy$WindowState;

    move-result-object v0

    goto :goto_0
.end method

.method private finishScreenTurningOn(Landroid/view/WindowManagerPolicy$ScreenOnListener;)V
    .locals 2
    .parameter "screenOnListener"

    .prologue
    .line 5660
    const-string v0, "WindowManager"

    const-string v1, "finishScreenTurningOn()"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5661
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 5662
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOnFully:Z

    .line 5663
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5666
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/IWindowManager;->setEventDispatching(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 5670
    :goto_0
    if-eqz p1, :cond_0

    .line 5671
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$ScreenOnListener;->onScreenOn()V

    .line 5673
    :cond_0
    return-void

    .line 5663
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 5667
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private finishedProximityTest()V
    .locals 4

    .prologue
    .line 6945
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mProximitySensorEnabled:Z

    if-eqz v2, :cond_2

    .line 6946
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDebugProximitySensor:Z

    if-eqz v2, :cond_0

    const-string v2, "WindowManager"

    const-string v3, "finishedProximityTest"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6948
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 6950
    .local v0, identity:J
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mProximityListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6952
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6955
    const-wide/16 v2, 0xa

    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 6958
    :goto_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 6959
    :cond_1
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mProximitySensorEnabled:Z

    .line 6961
    .end local v0           #identity:J
    :cond_2
    return-void

    .line 6952
    .restart local v0       #identity:J
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 6956
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method static getAudioService()Landroid/media/IAudioService;
    .locals 3

    .prologue
    .line 2075
    const-string v1, "audio"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v0

    .line 2077
    .local v0, audioService:Landroid/media/IAudioService;
    if-nez v0, :cond_0

    .line 2078
    const-string v1, "WindowManager"

    const-string v2, "Unable to find IAudioService interface."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2080
    :cond_0
    return-object v0
.end method

.method private getLastInputMethodTargetWindow()Landroid/view/WindowManagerPolicy$WindowState;
    .locals 2

    .prologue
    .line 3097
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v1}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->getCurrentInputMethodTarget()Landroid/view/WindowManagerPolicy$WindowState;

    move-result-object v0

    .line 3098
    .local v0, target:Landroid/view/WindowManagerPolicy$WindowState;
    if-nez v0, :cond_1

    .line 3099
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastInputMethodTargetWindowWeakReference:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    .line 3100
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastInputMethodTargetWindowWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #target:Landroid/view/WindowManagerPolicy$WindowState;
    check-cast v0, Landroid/view/WindowManagerPolicy$WindowState;

    .line 3104
    .restart local v0       #target:Landroid/view/WindowManagerPolicy$WindowState;
    :cond_0
    :goto_0
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleOrBehindKeyguardLw()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3107
    .end local v0           #target:Landroid/view/WindowManagerPolicy$WindowState;
    :goto_1
    return-object v0

    .line 3102
    .restart local v0       #target:Landroid/view/WindowManagerPolicy$WindowState;
    :cond_1
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastInputMethodTargetWindowWeakReference:Ljava/lang/ref/WeakReference;

    goto :goto_0

    .line 3107
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method static getLongIntArray(Landroid/content/res/Resources;I)[J
    .locals 5
    .parameter "r"
    .parameter "resid"

    .prologue
    .line 5956
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    .line 5957
    .local v0, ar:[I
    if-nez v0, :cond_1

    .line 5958
    const/4 v2, 0x0

    .line 5964
    :cond_0
    return-object v2

    .line 5960
    :cond_1
    array-length v3, v0

    new-array v2, v3, [J

    .line 5961
    .local v2, out:[J
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_0

    .line 5962
    aget v3, v0, v1

    int-to-long v3, v3

    aput-wide v3, v2, v1

    .line 5961
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private getScreenshotChordLongPressDelay()J
    .locals 3

    .prologue
    .line 855
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 857
    const/high16 v0, 0x4020

    invoke-static {}, Landroid/view/ViewConfiguration;->getGlobalActionKeyTimeout()J

    move-result-wide v1

    long-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-long v0, v0

    .line 860
    :goto_0
    return-wide v0

    :cond_0
    invoke-static {}, Landroid/view/ViewConfiguration;->getGlobalActionKeyTimeout()J

    move-result-wide v0

    goto :goto_0
.end method

.method private getSearchManager()Landroid/app/SearchManager;
    .locals 2

    .prologue
    .line 2647
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSearchManager:Landroid/app/SearchManager;

    if-nez v0, :cond_0

    .line 2648
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v1, "search"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSearchManager:Landroid/app/SearchManager;

    .line 2650
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSearchManager:Landroid/app/SearchManager;

    return-object v0
.end method

.method static getTelephonyService()Lcom/android/internal/telephony/ITelephony;
    .locals 1

    .prologue
    .line 2070
    const-string v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    return-object v0
.end method

.method private handleLongPressOnHome()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 938
    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    if-gez v2, :cond_1

    .line 939
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e0023

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    .line 941
    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    if-ltz v2, :cond_0

    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    if-le v2, v6, :cond_1

    .line 943
    :cond_0
    iput v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    .line 947
    :cond_1
    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    if-eqz v2, :cond_2

    .line 948
    invoke-virtual {p0, v7, v4, v4}, Lcom/android/internal/policy/impl/PhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 949
    const-string v2, "recentapps"

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->sendCloseSystemWindows(Ljava/lang/String;)V

    .line 953
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeLongPressed:Z

    .line 956
    :cond_2
    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    if-ne v2, v5, :cond_4

    .line 957
    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/PhoneWindowManager;->showOrHideRecentAppsDialog(I)V

    .line 970
    :cond_3
    :goto_0
    return-void

    .line 958
    :cond_4
    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    if-ne v2, v6, :cond_3

    .line 960
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    .line 961
    .local v1, statusbar:Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v1, :cond_3

    .line 962
    invoke-interface {v1}, Lcom/android/internal/statusbar/IStatusBarService;->toggleRecentApps()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 964
    .end local v1           #statusbar:Lcom/android/internal/statusbar/IStatusBarService;
    :catch_0
    move-exception v0

    .line 965
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "WindowManager"

    const-string v3, "RemoteException when showing recent apps"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 967
    iput-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    goto :goto_0
.end method

.method private interceptFallback(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)Z
    .locals 6
    .parameter "win"
    .parameter "fallbackEvent"
    .parameter "policyFlags"

    .prologue
    const/4 v3, 0x1

    .line 2599
    invoke-virtual {p0, p2, p3, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->interceptKeyBeforeQueueing(Landroid/view/KeyEvent;IZ)I

    move-result v0

    .line 2600
    .local v0, actions:I
    and-int/lit8 v4, v0, 0x1

    if-eqz v4, :cond_0

    .line 2601
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->interceptKeyBeforeDispatching(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)J

    move-result-wide v1

    .line 2603
    .local v1, delayMillis:J
    const-wide/16 v4, 0x0

    cmp-long v4, v1, v4

    if-nez v4, :cond_0

    .line 2607
    .end local v1           #delayMillis:J
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private interceptMzScreenshotChord()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x320

    .line 6426
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyTriggered:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeDownKeyTriggered:Z

    if-eqz v2, :cond_0

    .line 6427
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 6428
    .local v0, now:J
    const-string v2, "WindowManager"

    const-string v3, "interceptMzScreenshotChord"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6429
    iget-wide v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyTime:J

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    iget-wide v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeDownKeyTime:J

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    .line 6431
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPendingPowerKeyAction()V

    .line 6432
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeDownKeyConsumedByScreenshotChord:Z

    .line 6433
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenshotChordLongPress:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 6436
    .end local v0           #now:J
    :cond_0
    return-void
.end method

.method private interceptPowerKeyDown(Z)V
    .locals 6
    .parameter "handled"

    .prologue
    .line 809
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyHandled:Z

    .line 810
    if-nez p1, :cond_0

    .line 811
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerLongPress:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getGlobalActionKeyTimeout()J

    move-result-wide v2

    const-wide/16 v4, 0xfa

    add-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 813
    :cond_0
    return-void
.end method

.method private interceptPowerKeyUp(Z)Z
    .locals 3
    .parameter "canceled"

    .prologue
    const/4 v0, 0x0

    .line 816
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyHandled:Z

    if-nez v1, :cond_0

    .line 817
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerLongPress:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 818
    if-nez p1, :cond_0

    const/4 v0, 0x1

    .line 820
    :cond_0
    return v0
.end method

.method private interceptScreenshotChord()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x96

    .line 833
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenshotChordEnabled:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeDownKeyTriggered:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyTriggered:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeUpKeyTriggered:Z

    if-nez v2, :cond_0

    .line 835
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 836
    .local v0, now:J
    iget-wide v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeDownKeyTime:J

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    iget-wide v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyTime:J

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    .line 838
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeDownKeyConsumedByScreenshotChord:Z

    .line 839
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPendingPowerKeyAction()V

    .line 841
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenshotChordLongPress:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getScreenshotChordLongPressDelay()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 844
    .end local v0           #now:J
    :cond_0
    return-void
.end method

.method private interceptScreenshotChordByMenu()V
    .locals 4

    .prologue
    .line 847
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenshotChordEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMenuDownKeyTriggered:Z

    if-eqz v0, :cond_0

    .line 850
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenshotChordLongPress:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getScreenshotChordLongPressDelay()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 852
    :cond_0
    return-void
.end method

.method private isAnyPortrait(I)Z
    .locals 1
    .parameter "rotation"

    .prologue
    .line 5922
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPortraitRotation:I

    if-eq p1, v0, :cond_0

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUpsideDownRotation:I

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isBuiltInKeyboardVisible()Z
    .locals 1

    .prologue
    .line 1585
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHaveBuiltInKeyboard:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidKeyboardAccessibility:I

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isHidden(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isGlobalAccessibilityGestureEnabled()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 6232
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "enable_accessibility_global_gesture_enabled"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private isHidden(I)Z
    .locals 3
    .parameter "accessibilityMode"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1574
    packed-switch p1, :pswitch_data_0

    move v0, v1

    .line 1580
    :cond_0
    :goto_0
    return v0

    .line 1576
    :pswitch_0
    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidState:I

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 1578
    :pswitch_1
    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidState:I

    if-eq v2, v0, :cond_0

    move v0, v1

    goto :goto_0

    .line 1574
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private isInBackGesture(II)Z
    .locals 9
    .parameter "x"
    .parameter "y"

    .prologue
    const/16 v8, 0x78

    .line 5308
    const/4 v1, 0x0

    .line 5309
    .local v1, ret:Z
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDisplay:Landroid/view/Display;

    invoke-virtual {v5}, Landroid/view/Display;->getRotation()I

    move-result v2

    .line 5310
    .local v2, rot:I
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 5311
    .local v3, size:Landroid/graphics/Point;
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDisplay:Landroid/view/Display;

    invoke-virtual {v5, v3}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 5312
    iget v4, v3, Landroid/graphics/Point;->x:I

    .line 5313
    .local v4, width:I
    iget v0, v3, Landroid/graphics/Point;->y:I

    .line 5316
    .local v0, height:I
    const-string v5, "WindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "rot= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", width = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", height = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5318
    packed-switch v2, :pswitch_data_0

    .line 5343
    :cond_0
    :goto_0
    return v1

    .line 5320
    :pswitch_0
    add-int/lit8 v5, v0, -0x78

    if-le p2, v5, :cond_0

    div-int/lit8 v5, v4, 0x3

    if-le p1, v5, :cond_0

    mul-int/lit8 v5, v4, 0x2

    div-int/lit8 v5, v5, 0x3

    if-ge p1, v5, :cond_0

    .line 5321
    const/4 v1, 0x1

    goto :goto_0

    .line 5325
    :pswitch_1
    add-int/lit8 v5, v4, -0x78

    if-le p1, v5, :cond_0

    div-int/lit8 v5, v0, 0x3

    if-le p2, v5, :cond_0

    mul-int/lit8 v5, v0, 0x2

    div-int/lit8 v5, v5, 0x3

    if-ge p2, v5, :cond_0

    .line 5326
    const/4 v1, 0x1

    goto :goto_0

    .line 5330
    :pswitch_2
    if-ge p2, v8, :cond_0

    div-int/lit8 v5, v4, 0x3

    if-le p1, v5, :cond_0

    mul-int/lit8 v5, v4, 0x2

    div-int/lit8 v5, v5, 0x3

    if-ge p1, v5, :cond_0

    .line 5331
    const/4 v1, 0x1

    goto :goto_0

    .line 5335
    :pswitch_3
    if-ge p1, v8, :cond_0

    div-int/lit8 v5, v0, 0x3

    if-le p2, v5, :cond_0

    mul-int/lit8 v5, v0, 0x2

    div-int/lit8 v5, v5, 0x3

    if-ge p2, v5, :cond_0

    .line 5336
    const/4 v1, 0x1

    goto :goto_0

    .line 5318
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private isIncomingRing()Z
    .locals 6

    .prologue
    .line 6610
    const/4 v1, 0x0

    .line 6611
    .local v1, incomingRinging:Z
    const/4 v2, 0x0

    .line 6613
    .local v2, isOffHook:Z
    :try_start_0
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    .line 6614
    .local v3, telephonyService:Lcom/android/internal/telephony/ITelephony;
    if-eqz v3, :cond_0

    .line 6615
    invoke-interface {v3}, Lcom/android/internal/telephony/ITelephony;->isRinging()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Lcom/android/internal/telephony/ITelephony;->isRealIncomingCallAndFore()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v1, 0x1

    .line 6617
    :goto_0
    invoke-interface {v3}, Lcom/android/internal/telephony/ITelephony;->isOffhook()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 6628
    .end local v3           #telephonyService:Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_1
    return v1

    .line 6615
    .restart local v3       #telephonyService:Lcom/android/internal/telephony/ITelephony;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 6623
    .end local v3           #telephonyService:Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    .line 6624
    .local v0, ex:Landroid/os/RemoteException;
    const-string v4, "WindowManager"

    const-string v5, "RemoteException from getPhoneInterface()"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private isLandscapeOrSeascape(I)Z
    .locals 1
    .parameter "rotation"

    .prologue
    .line 5918
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLandscapeRotation:I

    if-eq p1, v0, :cond_0

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSeascapeRotation:I

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isMediaKey(I)Z
    .locals 1
    .parameter "code"

    .prologue
    .line 6740
    const/16 v0, 0x4f

    if-eq p0, v0, :cond_0

    const/16 v0, 0x55

    if-eq p0, v0, :cond_0

    const/16 v0, 0x56

    if-eq p0, v0, :cond_0

    const/16 v0, 0x57

    if-eq p0, v0, :cond_0

    const/16 v0, 0x58

    if-eq p0, v0, :cond_0

    const/16 v0, 0x59

    if-eq p0, v0, :cond_0

    const/16 v0, 0x5a

    if-ne p0, v0, :cond_1

    .line 6747
    :cond_0
    const/4 v0, 0x1

    .line 6749
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isTriggerGestureBack(Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "event"

    .prologue
    const/high16 v6, 0x4120

    .line 5391
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDisplay:Landroid/view/Display;

    invoke-virtual {v4}, Landroid/view/Display;->getRotation()I

    move-result v2

    .line 5392
    .local v2, rot:I
    const/4 v3, 0x0

    .line 5393
    .local v3, trigger:Z
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isLandScape()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 5394
    .local v1, pos:F
    :goto_0
    const/4 v0, 0x0

    .line 5395
    .local v0, cancel:Z
    packed-switch v2, :pswitch_data_0

    .line 5416
    :cond_0
    :goto_1
    return v3

    .line 5393
    .end local v0           #cancel:Z
    .end local v1           #pos:F
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    goto :goto_0

    .line 5398
    .restart local v0       #cancel:Z
    .restart local v1       #pos:F
    :pswitch_0
    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBackDownPos:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    sub-float/2addr v4, v5

    cmpl-float v4, v4, v6

    if-lez v4, :cond_0

    .line 5399
    const/4 v3, 0x1

    goto :goto_1

    .line 5403
    :pswitch_1
    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBackDownPos:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    sub-float/2addr v4, v5

    cmpl-float v4, v4, v6

    if-lez v4, :cond_0

    .line 5404
    const/4 v3, 0x1

    goto :goto_1

    .line 5408
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iget v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBackDownPos:F

    sub-float/2addr v4, v5

    cmpl-float v4, v4, v6

    if-lez v4, :cond_0

    .line 5409
    const/4 v3, 0x1

    goto :goto_1

    .line 5395
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private isWakeKeyWhenScreenOff(I)Z
    .locals 3
    .parameter "keyCode"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 4787
    sparse-switch p1, :sswitch_data_0

    .line 4812
    :cond_0
    :goto_0
    return v0

    .line 4792
    :sswitch_0
    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    :sswitch_1
    move v0, v1

    .line 4807
    goto :goto_0

    .line 4810
    :sswitch_2
    sget-object v2, Landroid/os/Build;->IS_MX3:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 4787
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_2
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0x1b -> :sswitch_1
        0x4f -> :sswitch_1
        0x55 -> :sswitch_1
        0x56 -> :sswitch_1
        0x57 -> :sswitch_1
        0x58 -> :sswitch_1
        0x59 -> :sswitch_1
        0x5a -> :sswitch_1
        0x5b -> :sswitch_1
        0x7e -> :sswitch_1
        0x7f -> :sswitch_1
        0x82 -> :sswitch_1
        0xa4 -> :sswitch_0
    .end sparse-switch
.end method

.method private static isWindowLayoutInScreen(Landroid/view/WindowManager$LayoutParams;)Z
    .locals 2
    .parameter "attrs"

    .prologue
    const/4 v1, -0x1

    .line 3111
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private keyguardIsShowingTq()Z
    .locals 1

    .prologue
    .line 5700
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 5701
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->isShowingAndNotHidden()Z

    move-result v0

    goto :goto_0
.end method

.method private launchAssistAction()V
    .locals 5

    .prologue
    const/4 v4, -0x2

    .line 2631
    const-string v2, "assist"

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->sendCloseSystemWindows(Ljava/lang/String;)V

    .line 2632
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v3, "search"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/SearchManager;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, v4}, Landroid/app/SearchManager;->getAssistIntent(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v1

    .line 2634
    .local v1, intent:Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 2635
    const/high16 v2, 0x3400

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2639
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/os/UserHandle;

    const/4 v4, -0x2

    invoke-direct {v3, v4}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2644
    :cond_0
    :goto_0
    return-void

    .line 2640
    :catch_0
    move-exception v0

    .line 2641
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v2, "WindowManager"

    const-string v3, "No activity to handle assist action."

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private launchAssistLongPressAction()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 2611
    const/4 v3, 0x0

    invoke-virtual {p0, v3, v4, v4}, Lcom/android/internal/policy/impl/PhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 2612
    const-string v3, "assist"

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->sendCloseSystemWindows(Ljava/lang/String;)V

    .line 2615
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.SEARCH_LONG_PRESS"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2616
    .local v1, intent:Landroid/content/Intent;
    const/high16 v3, 0x1000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2620
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getSearchManager()Landroid/app/SearchManager;

    move-result-object v2

    .line 2621
    .local v2, searchManager:Landroid/app/SearchManager;
    if-eqz v2, :cond_0

    .line 2622
    invoke-virtual {v2}, Landroid/app/SearchManager;->stopSearch()V

    .line 2624
    :cond_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/os/UserHandle;

    const/4 v5, -0x2

    invoke-direct {v4, v5}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2628
    .end local v2           #searchManager:Landroid/app/SearchManager;
    :goto_0
    return-void

    .line 2625
    :catch_0
    move-exception v0

    .line 2626
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v3, "WindowManager"

    const-string v4, "No activity to handle assist long press action."

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static mayWindowResizedByInputMethod(ILandroid/view/WindowManager$LayoutParams;)Z
    .locals 2
    .parameter "sysFlags"
    .parameter "attrs"

    .prologue
    .line 3281
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 3282
    const/4 v0, 0x0

    .line 3286
    :goto_0
    return v0

    .line 3283
    :cond_0
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7d5

    if-ne v0, v1, :cond_1

    .line 3284
    const/4 v0, 0x1

    goto :goto_0

    .line 3286
    :cond_1
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-static {v0}, Landroid/view/WindowManager$LayoutParams;->mayUseInputMethod(I)Z

    move-result v0

    goto :goto_0
.end method

.method private offsetInputMethodWindowLw(Landroid/view/WindowManagerPolicy$WindowState;)V
    .locals 2
    .parameter "win"

    .prologue
    .line 3700
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getContentFrameLw()Landroid/graphics/Rect;

    move-result-object v1

    iget v0, v1, Landroid/graphics/Rect;->top:I

    .line 3701
    .local v0, top:I
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getGivenContentInsetsLw()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    .line 3702
    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    if-le v1, v0, :cond_0

    .line 3703
    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    .line 3705
    :cond_0
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getVisibleFrameLw()Landroid/graphics/Rect;

    move-result-object v1

    iget v0, v1, Landroid/graphics/Rect;->top:I

    .line 3706
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getGivenVisibleInsetsLw()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    .line 3707
    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurBottom:I

    if-le v1, v0, :cond_1

    .line 3708
    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurBottom:I

    .line 3713
    :cond_1
    return-void
.end method

.method private onEnableFullScreenDragSettingChanged()V
    .locals 3

    .prologue
    .line 3226
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "enable_full_screen_drag"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMeizuEnableFullScreenDrag:I

    .line 3228
    return-void
.end method

.method private onSmartBarConfigurationChanged()V
    .locals 6

    .prologue
    .line 3184
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x105000d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 3186
    .local v0, maxHeight:I
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "mz_smartbar_height_value"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMeizuNavigationBarHeight:I

    .line 3188
    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMeizuNavigationBarHeight:I

    if-lez v1, :cond_0

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMeizuNavigationBarHeight:I

    if-le v1, v0, :cond_1

    .line 3189
    :cond_0
    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMeizuNavigationBarHeight:I

    .line 3191
    :cond_1
    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPortraitRotation:I

    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUpsideDownRotation:I

    if-eq v1, v2, :cond_2

    .line 3192
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarHeightForRotation:[I

    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPortraitRotation:I

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarHeightForRotation:[I

    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUpsideDownRotation:I

    iget v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMeizuNavigationBarHeight:I

    aput v5, v3, v4

    aput v5, v1, v2

    .line 3195
    :cond_2
    return-void
.end method

.method private performAuditoryFeedbackForAccessibilityIfNeed()V
    .locals 4

    .prologue
    .line 6218
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isGlobalAccessibilityGestureEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 6230
    :cond_0
    :goto_0
    return-void

    .line 6221
    :cond_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 6223
    .local v0, audioManager:Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->isSilentMode()Z

    move-result v2

    if-nez v2, :cond_0

    .line 6226
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    invoke-static {v2, v3}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v1

    .line 6228
    .local v1, ringTone:Landroid/media/Ringtone;
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/media/Ringtone;->setStreamType(I)V

    .line 6229
    invoke-virtual {v1}, Landroid/media/Ringtone;->play()V

    goto :goto_0
.end method

.method private readRotation(I)I
    .locals 2
    .parameter "resID"

    .prologue
    .line 1448
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getInteger(I)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1449
    .local v0, rotation:I
    sparse-switch v0, :sswitch_data_0

    .line 1462
    .end local v0           #rotation:I
    :goto_0
    const/4 v1, -0x1

    :goto_1
    return v1

    .line 1451
    .restart local v0       #rotation:I
    :sswitch_0
    const/4 v1, 0x0

    goto :goto_1

    .line 1453
    :sswitch_1
    const/4 v1, 0x1

    goto :goto_1

    .line 1455
    :sswitch_2
    const/4 v1, 0x2

    goto :goto_1

    .line 1457
    :sswitch_3
    const/4 v1, 0x3

    goto :goto_1

    .line 1459
    .end local v0           #rotation:I
    :catch_0
    move-exception v1

    goto :goto_0

    .line 1449
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method

.method private resetRecentValid()V
    .locals 1

    .prologue
    .line 6795
    const/16 v0, 0x6c2

    sput v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->RECENT_VALID_DOWN_POS:I

    .line 6796
    return-void
.end method

.method private resolveNavigationBarState(Landroid/view/WindowManagerPolicy$WindowState;ILandroid/view/WindowManager$LayoutParams;)I
    .locals 5
    .parameter "win"
    .parameter "sysUiFl"
    .parameter "attrs"

    .prologue
    const/high16 v4, 0xf

    const/4 v1, 0x0

    const/high16 v2, 0x1

    .line 3232
    sget-boolean v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->sHasPermanentKey:Z

    if-eqz v3, :cond_1

    .line 3271
    :cond_0
    :goto_0
    return v1

    .line 3234
    :cond_1
    iget v3, p3, Landroid/view/WindowManager$LayoutParams;->meizuFlags:I

    and-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_2

    .line 3235
    const/16 v1, 0x8

    goto :goto_0

    .line 3238
    :cond_2
    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentNavBarState:I

    and-int/2addr v3, v4

    if-ne v3, v2, :cond_3

    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentNavBarState:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_3

    .line 3240
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne p1, v3, :cond_3

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentNavBarDependWindow:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentNavBarDependWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v3}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3242
    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentNavBarState:I

    goto :goto_0

    .line 3246
    :cond_3
    and-int/lit8 v3, p2, 0x2

    if-nez v3, :cond_0

    .line 3250
    and-int/lit8 v1, p2, 0x4

    if-nez v1, :cond_4

    iget v1, p3, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_5

    iget v1, p3, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v1, v1, 0x800

    if-nez v1, :cond_5

    .line 3253
    :cond_4
    const/16 v1, 0x10

    goto :goto_0

    .line 3256
    :cond_5
    iget v1, p3, Landroid/view/WindowManager$LayoutParams;->meizuFlags:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_8

    .line 3257
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->findBaseWindowOf(Landroid/view/WindowManagerPolicy$WindowState;)Landroid/view/WindowManagerPolicy$WindowState;

    move-result-object v0

    .line 3258
    .local v0, base:Landroid/view/WindowManagerPolicy$WindowState;
    if-eqz v0, :cond_6

    if-eq v0, p1, :cond_6

    .line 3260
    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->getSystemUiVisibility()I

    move-result v1

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->resolveNavigationBarState(Landroid/view/WindowManagerPolicy$WindowState;ILandroid/view/WindowManager$LayoutParams;)I

    move-result v1

    or-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3264
    :cond_6
    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastNavBarState:I

    and-int/2addr v1, v4

    if-ne v1, v2, :cond_7

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastNavBarState:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_7

    .line 3266
    const/4 v1, 0x2

    goto :goto_0

    .line 3269
    :cond_7
    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastNavBarState:I

    or-int/lit8 v1, v1, 0x4

    goto :goto_0

    .end local v0           #base:Landroid/view/WindowManagerPolicy$WindowState;
    :cond_8
    move v1, v2

    .line 3271
    goto :goto_0
.end method

.method static sendCloseSystemWindows(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "reason"

    .prologue
    .line 5747
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5749
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityManager;->closeSystemDialogs(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5753
    :cond_0
    :goto_0
    return-void

    .line 5750
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private shouldHideNavigationBar(Landroid/view/WindowManagerPolicy$WindowState;ILandroid/view/WindowManager$LayoutParams;)Z
    .locals 2
    .parameter "win"
    .parameter "sysUiFl"
    .parameter "attrs"

    .prologue
    .line 3276
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->resolveNavigationBarState(Landroid/view/WindowManagerPolicy$WindowState;ILandroid/view/WindowManager$LayoutParams;)I

    move-result v0

    .line 3277
    .local v0, state:I
    const/high16 v1, 0xf

    and-int/2addr v1, v0

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private startProximityTest(I)V
    .locals 6
    .parameter "keyCode"

    .prologue
    .line 6924
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mProximitySensorEnabled:Z

    if-nez v2, :cond_2

    .line 6925
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDebugProximitySensor:Z

    if-eqz v2, :cond_0

    const-string v2, "WindowManager"

    const-string v3, "startProximityTest"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6926
    :cond_0
    iput p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMX2WakeUpKeyCode:I

    .line 6927
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mProximitySensorEnabled:Z

    .line 6928
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 6930
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 6932
    .local v0, identity:J
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mProximityListener:Landroid/hardware/SensorEventListener;

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mProximitySensor:Landroid/hardware/Sensor;

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6935
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6938
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDisableProximityRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x12c

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 6942
    .end local v0           #identity:J
    :cond_1
    :goto_0
    return-void

    .line 6935
    .restart local v0       #identity:J
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 6940
    .end local v0           #identity:J
    :cond_2
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDebugProximitySensor:Z

    if-eqz v2, :cond_1

    const-string v2, "WindowManager"

    const-string v3, "Proximity already enable"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private takeScreenshot()V
    .locals 8

    .prologue
    .line 4208
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenshotLock:Ljava/lang/Object;

    monitor-enter v4

    .line 4209
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenshotConnection:Landroid/content/ServiceConnection;

    if-eqz v3, :cond_0

    .line 4210
    monitor-exit v4

    .line 4259
    :goto_0
    return-void

    .line 4212
    :cond_0
    new-instance v0, Landroid/content/ComponentName;

    const-string v3, "com.android.systemui"

    const-string v5, "com.android.systemui.screenshot.TakeScreenshotService"

    invoke-direct {v0, v3, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4214
    .local v0, cn:Landroid/content/ComponentName;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 4215
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 4216
    new-instance v1, Lcom/android/internal/policy/impl/PhoneWindowManager$19;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$19;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    .line 4253
    .local v1, conn:Landroid/content/ServiceConnection;
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const/4 v5, 0x1

    const/4 v6, -0x2

    invoke-virtual {v3, v2, v1, v5, v6}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;II)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4255
    iput-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenshotConnection:Landroid/content/ServiceConnection;

    .line 4256
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenshotTimeout:Ljava/lang/Runnable;

    const-wide/16 v6, 0x2710

    invoke-virtual {v3, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4258
    :cond_1
    monitor-exit v4

    goto :goto_0

    .end local v0           #cn:Landroid/content/ComponentName;
    .end local v1           #conn:Landroid/content/ServiceConnection;
    .end local v2           #intent:Landroid/content/Intent;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private updateGestureBar(Z)V
    .locals 2
    .parameter "hide"

    .prologue
    .line 5420
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mGuestBarShow:Z

    if-ne p1, v0, :cond_0

    .line 5436
    :goto_0
    return-void

    .line 5423
    :cond_0
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mGuestBarShow:Z

    .line 5424
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/policy/impl/PhoneWindowManager$24;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager$24;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private updateInputMethodOffset(Landroid/view/WindowManager$LayoutParams;Landroid/view/WindowManagerPolicy$WindowState;)V
    .locals 4
    .parameter "imAttrs"
    .parameter "target"

    .prologue
    .line 3118
    invoke-interface {p2}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isWindowLayoutInScreen(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3119
    move-object v1, p2

    .line 3123
    .local v1, basewin:Landroid/view/WindowManagerPolicy$WindowState;
    :goto_0
    if-eqz v1, :cond_2

    .line 3124
    invoke-interface {v1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 3125
    .local v0, attrs:Landroid/view/WindowManager$LayoutParams;
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->imeOffset:I

    iput v2, p1, Landroid/view/WindowManager$LayoutParams;->imeOffset:I

    .line 3126
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->imeOffset:I

    if-gez v2, :cond_0

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->splitActionBarHeight:I

    if-lez v2, :cond_0

    .line 3127
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->splitActionBarHeight:I

    iput v2, p1, Landroid/view/WindowManager$LayoutParams;->imeOffset:I

    .line 3136
    .end local v0           #attrs:Landroid/view/WindowManager$LayoutParams;
    :cond_0
    :goto_1
    return-void

    .line 3121
    .end local v1           #basewin:Landroid/view/WindowManagerPolicy$WindowState;
    :cond_1
    invoke-direct {p0, p2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->findBaseWindowOf(Landroid/view/WindowManagerPolicy$WindowState;)Landroid/view/WindowManagerPolicy$WindowState;

    move-result-object v1

    .restart local v1       #basewin:Landroid/view/WindowManagerPolicy$WindowState;
    goto :goto_0

    .line 3130
    :cond_2
    invoke-interface {p2}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    .line 3133
    const/4 v2, -0x1

    iput v2, p1, Landroid/view/WindowManager$LayoutParams;->imeOffset:I

    goto :goto_1
.end method

.method private updateLockScreenTimeout()V
    .locals 6

    .prologue
    .line 6116
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenLockTimeout;

    monitor-enter v2

    .line 6117
    :try_start_0
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAllowLockscreenWhenOn:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOnEarly:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->isKeyguardSecure()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 6119
    .local v0, enable:Z
    :goto_0
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLockScreenTimerActive:Z

    if-eq v1, v0, :cond_0

    .line 6120
    if-eqz v0, :cond_2

    .line 6122
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenLockTimeout;

    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLockScreenTimeout:I

    int-to-long v4, v4

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 6127
    :goto_1
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLockScreenTimerActive:Z

    .line 6129
    :cond_0
    monitor-exit v2

    .line 6130
    return-void

    .line 6117
    .end local v0           #enable:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 6125
    .restart local v0       #enable:Z
    :cond_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenLockTimeout;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 6129
    .end local v0           #enable:Z
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private updateSystemUiVisibilityLw()I
    .locals 11

    .prologue
    const/high16 v10, 0xf

    const/4 v7, 0x0

    .line 6291
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    if-nez v8, :cond_0

    move v2, v7

    .line 6377
    :goto_0
    return v2

    .line 6294
    :cond_0
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v8}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 6295
    .local v0, attrs:Landroid/view/WindowManager$LayoutParams;
    iget v8, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v9, 0x7d4

    if-ne v8, v9, :cond_1

    iget-boolean v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideLockScreen:Z

    const/4 v9, 0x1

    if-ne v8, v9, :cond_1

    move v2, v7

    .line 6302
    goto :goto_0

    .line 6304
    :cond_1
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v8}, Landroid/view/WindowManagerPolicy$WindowState;->getSystemUiVisibility()I

    move-result v5

    .line 6305
    .local v5, sysFlags:I
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-direct {p0, v8, v5, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->resolveNavigationBarState(Landroid/view/WindowManagerPolicy$WindowState;ILandroid/view/WindowManager$LayoutParams;)I

    move-result v3

    .line 6307
    .local v3, navbarState:I
    iget v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mResettingSystemUiFlags:I

    xor-int/lit8 v8, v8, -0x1

    and-int/2addr v8, v5

    iget v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceClearedSystemUiFlags:I

    xor-int/lit8 v9, v9, -0x1

    and-int v6, v8, v9

    .line 6310
    .local v6, visibility:I
    iget v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastSystemUiFlags:I

    xor-int v2, v6, v8

    .line 6311
    .local v2, diff:I
    and-int v8, v3, v10

    iget v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastNavBarState:I

    and-int/2addr v9, v10

    if-eq v8, v9, :cond_2

    .line 6312
    or-int/lit8 v2, v2, 0x2

    .line 6314
    :cond_2
    iput v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastNavBarState:I

    .line 6317
    and-int v8, v3, v10

    const/high16 v9, 0x1

    if-ne v8, v9, :cond_8

    .line 6318
    and-int/lit8 v8, v3, 0x2

    if-eqz v8, :cond_3

    .line 6319
    const/4 v4, 0x0

    .line 6344
    .local v4, needsMenu:Z
    :goto_1
    if-nez v2, :cond_9

    iget-boolean v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastFocusNeedsMenu:Z

    if-ne v8, v4, :cond_9

    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFocusedApp:Landroid/view/IApplicationToken;

    iget-object v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v9}, Landroid/view/WindowManagerPolicy$WindowState;->getAppToken()Landroid/view/IApplicationToken;

    move-result-object v9

    if-ne v8, v9, :cond_9

    move v2, v7

    .line 6346
    goto :goto_0

    .line 6320
    .end local v4           #needsMenu:Z
    :cond_3
    and-int/lit8 v8, v3, 0x4

    if-eqz v8, :cond_4

    .line 6321
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastFocusNeedsMenu:Z

    .restart local v4       #needsMenu:Z
    goto :goto_1

    .line 6322
    .end local v4           #needsMenu:Z
    :cond_4
    invoke-static {v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isWindowLayoutInScreen(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 6323
    const/4 v4, 0x1

    .restart local v4       #needsMenu:Z
    goto :goto_1

    .line 6325
    .end local v4           #needsMenu:Z
    :cond_5
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-direct {p0, v8}, Lcom/android/internal/policy/impl/PhoneWindowManager;->findBaseWindowOf(Landroid/view/WindowManagerPolicy$WindowState;)Landroid/view/WindowManagerPolicy$WindowState;

    move-result-object v1

    .line 6326
    .local v1, base:Landroid/view/WindowManagerPolicy$WindowState;
    if-eqz v1, :cond_6

    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne v1, v8, :cond_7

    .line 6327
    :cond_6
    const/4 v4, 0x0

    .restart local v4       #needsMenu:Z
    goto :goto_1

    .line 6329
    .end local v4           #needsMenu:Z
    :cond_7
    invoke-interface {v1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v8

    invoke-static {v8}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isWindowLayoutInScreen(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v4

    .restart local v4       #needsMenu:Z
    goto :goto_1

    .line 6333
    .end local v1           #base:Landroid/view/WindowManagerPolicy$WindowState;
    .end local v4           #needsMenu:Z
    :cond_8
    const/4 v4, 0x0

    .restart local v4       #needsMenu:Z
    goto :goto_1

    .line 6349
    :cond_9
    const-string v7, "recentPanel"

    invoke-virtual {v0}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_a

    const-string v7, "recentPanelLand"

    invoke-virtual {v0}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 6355
    :cond_a
    iget v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastSystemUiFlags:I

    iput v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastSystemUiFlagsIgnoreRecentPanel:I

    .line 6360
    :goto_2
    iput v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastSystemUiFlags:I

    .line 6361
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastFocusNeedsMenu:Z

    .line 6362
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v7}, Landroid/view/WindowManagerPolicy$WindowState;->getAppToken()Landroid/view/IApplicationToken;

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFocusedApp:Landroid/view/IApplicationToken;

    .line 6363
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v8, Lcom/android/internal/policy/impl/PhoneWindowManager$35;

    invoke-direct {v8, p0, v6, v4}, Lcom/android/internal/policy/impl/PhoneWindowManager$35;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;IZ)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 6357
    :cond_b
    iput v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastSystemUiFlagsIgnoreRecentPanel:I

    goto :goto_2
.end method

.method private waitForKeyguard(Landroid/view/WindowManagerPolicy$ScreenOnListener;)V
    .locals 2
    .parameter "screenOnListener"

    .prologue
    .line 5616
    const-string v0, "WindowManager"

    const-string v1, "waitForKeyguard()"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5617
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    if-eqz v0, :cond_1

    .line 5618
    if-eqz p1, :cond_0

    .line 5619
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    new-instance v1, Lcom/android/internal/policy/impl/PhoneWindowManager$29;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager$29;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/view/WindowManagerPolicy$ScreenOnListener;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->onScreenTurnedOn(Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$ShowListener;)V

    .line 5633
    :goto_0
    return-void

    .line 5627
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->onScreenTurnedOn(Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$ShowListener;)V

    .line 5632
    :goto_1
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->finishScreenTurningOn(Landroid/view/WindowManagerPolicy$ScreenOnListener;)V

    goto :goto_0

    .line 5630
    :cond_1
    const-string v0, "WindowManager"

    const-string v1, "No keyguard mediator!"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private waitForKeyguardWindowDrawn(Landroid/os/IBinder;Landroid/view/WindowManagerPolicy$ScreenOnListener;)V
    .locals 2
    .parameter "windowToken"
    .parameter "screenOnListener"

    .prologue
    .line 5637
    const-string v0, "WindowManager"

    const-string v1, "waitForKeyguardWindowDrawn()"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5638
    if-eqz p1, :cond_0

    .line 5640
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    new-instance v1, Lcom/android/internal/policy/impl/PhoneWindowManager$30;

    invoke-direct {v1, p0, p2}, Lcom/android/internal/policy/impl/PhoneWindowManager$30;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/view/WindowManagerPolicy$ScreenOnListener;)V

    invoke-interface {v0, p1, v1}, Landroid/view/IWindowManager;->waitForWindowDrawn(Landroid/os/IBinder;Landroid/os/IRemoteCallback;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_0

    .line 5657
    :goto_0
    return-void

    .line 5650
    :catch_0
    move-exception v0

    .line 5655
    :cond_0
    const-string v0, "WindowManager"

    const-string v1, "No lock screen!"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5656
    invoke-direct {p0, p2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->finishScreenTurningOn(Landroid/view/WindowManagerPolicy$ScreenOnListener;)V

    goto :goto_0
.end method


# virtual methods
.method public addStartingWindow(Landroid/os/IBinder;Ljava/lang/String;ILandroid/content/res/CompatibilityInfo;Ljava/lang/CharSequence;III)Landroid/view/View;
    .locals 13
    .parameter "appToken"
    .parameter "packageName"
    .parameter "theme"
    .parameter "compatInfo"
    .parameter "nonLocalizedLabel"
    .parameter "labelRes"
    .parameter "icon"
    .parameter "windowFlags"

    .prologue
    .line 1810
    if-nez p2, :cond_1

    .line 1811
    const/4 v7, 0x0

    .line 1908
    :cond_0
    :goto_0
    return-object v7

    .line 1815
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 1819
    .local v2, context:Landroid/content/Context;
    invoke-virtual {v2}, Landroid/content/Context;->getThemeResId()I
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v10

    move/from16 v0, p3

    if-ne v0, v10, :cond_2

    if-eqz p6, :cond_3

    .line 1821
    :cond_2
    const/4 v10, 0x0

    :try_start_1
    invoke-virtual {v2, p2, v10}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v2

    .line 1822
    move/from16 v0, p3

    invoke-virtual {v2, v0}, Landroid/content/Context;->setTheme(I)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1828
    :cond_3
    :goto_1
    :try_start_2
    invoke-static {v2}, Lcom/android/internal/policy/PolicyManager;->makeNewWindow(Landroid/content/Context;)Landroid/view/Window;

    move-result-object v8

    .line 1829
    .local v8, win:Landroid/view/Window;
    invoke-virtual {v8}, Landroid/view/Window;->getWindowStyle()Landroid/content/res/TypedArray;

    move-result-object v6

    .line 1830
    .local v6, ta:Landroid/content/res/TypedArray;
    const/16 v10, 0xc

    const/4 v11, 0x0

    invoke-virtual {v6, v10, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    if-nez v10, :cond_4

    const/16 v10, 0xe

    const/4 v11, 0x0

    invoke-virtual {v6, v10, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 1834
    :cond_4
    const/4 v7, 0x0

    goto :goto_0

    .line 1837
    :cond_5
    const/16 v10, 0xb

    invoke-virtual {v8, v10}, Landroid/view/Window;->requestFeature(I)Z

    .line 1839
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 1840
    .local v5, r:Landroid/content/res/Resources;
    move/from16 v0, p6

    move-object/from16 v1, p5

    invoke-virtual {v5, v0, v1}, Landroid/content/res/Resources;->getText(ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/view/Window;->setTitle(Ljava/lang/CharSequence;)V

    .line 1842
    const/4 v10, 0x3

    invoke-virtual {v8, v10}, Landroid/view/Window;->setType(I)V

    .line 1848
    or-int/lit8 v10, p8, 0x10

    or-int/lit8 v10, v10, 0x8

    const/high16 v11, 0x2

    or-int/2addr v10, v11

    or-int/lit8 v11, p8, 0x10

    or-int/lit8 v11, v11, 0x8

    const/high16 v12, 0x2

    or-int/2addr v11, v12

    invoke-virtual {v8, v10, v11}, Landroid/view/Window;->setFlags(II)V

    .line 1858
    invoke-virtual/range {p4 .. p4}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    move-result v10

    if-nez v10, :cond_6

    .line 1859
    const/high16 v10, 0x2000

    invoke-virtual {v8, v10}, Landroid/view/Window;->addFlags(I)V

    .line 1862
    :cond_6
    const/4 v10, -0x1

    const/4 v11, -0x1

    invoke-virtual {v8, v10, v11}, Landroid/view/Window;->setLayout(II)V

    .line 1865
    invoke-virtual {v8}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    .line 1866
    .local v4, params:Landroid/view/WindowManager$LayoutParams;
    iput-object p1, v4, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 1867
    iput-object p2, v4, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 1868
    invoke-virtual {v8}, Landroid/view/Window;->getWindowStyle()Landroid/content/res/TypedArray;

    move-result-object v10

    const/16 v11, 0x8

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v10

    iput v10, v4, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 1870
    iget v10, v4, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v10, v10, 0x1

    iput v10, v4, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 1872
    iget v10, v4, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v10, v10, 0x10

    iput v10, v4, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 1873
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Starting "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 1875
    const-string v10, "window"

    invoke-virtual {v2, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/WindowManager;

    .line 1876
    .local v9, wm:Landroid/view/WindowManager;
    invoke-virtual {v8}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v7

    .line 1878
    .local v7, view:Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/Window;->isFloating()Z

    move-result v10

    if-eqz v10, :cond_7

    .line 1885
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 1893
    :cond_7
    invoke-interface {v9, v7, v4}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1897
    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;
    :try_end_2
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v10

    if-nez v10, :cond_0

    const/4 v7, 0x0

    goto/16 :goto_0

    .line 1898
    .end local v2           #context:Landroid/content/Context;
    .end local v4           #params:Landroid/view/WindowManager$LayoutParams;
    .end local v5           #r:Landroid/content/res/Resources;
    .end local v6           #ta:Landroid/content/res/TypedArray;
    .end local v7           #view:Landroid/view/View;
    .end local v8           #win:Landroid/view/Window;
    .end local v9           #wm:Landroid/view/WindowManager;
    :catch_0
    move-exception v3

    .line 1900
    .local v3, e:Landroid/view/WindowManager$BadTokenException;
    const-string v10, "WindowManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " already running, starting window not displayed"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1908
    .end local v3           #e:Landroid/view/WindowManager$BadTokenException;
    :goto_2
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 1901
    :catch_1
    move-exception v3

    .line 1905
    .local v3, e:Ljava/lang/RuntimeException;
    const-string v10, "WindowManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " failed creating starting window"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 1823
    .end local v3           #e:Ljava/lang/RuntimeException;
    .restart local v2       #context:Landroid/content/Context;
    :catch_2
    move-exception v10

    goto/16 :goto_1
.end method

.method public adjustConfigurationLw(Landroid/content/res/Configuration;II)V
    .locals 3
    .parameter "config"
    .parameter "keyboardPresence"
    .parameter "navigationPresence"

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 1591
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_4

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHaveBuiltInKeyboard:Z

    .line 1593
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->readLidState()V

    .line 1594
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->applyLidSwitchState()V

    .line 1596
    iget v0, p1, Landroid/content/res/Configuration;->keyboard:I

    if-eq v0, v1, :cond_0

    if-ne p2, v1, :cond_1

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidKeyboardAccessibility:I

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isHidden(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1599
    :cond_0
    iput v2, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    .line 1600
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasSoftInput:Z

    if-nez v0, :cond_1

    .line 1601
    iput v2, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    .line 1605
    :cond_1
    iget v0, p1, Landroid/content/res/Configuration;->navigation:I

    if-eq v0, v1, :cond_2

    if-ne p3, v1, :cond_3

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidNavigationAccessibility:I

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isHidden(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1608
    :cond_2
    iput v2, p1, Landroid/content/res/Configuration;->navigationHidden:I

    .line 1610
    :cond_3
    return-void

    .line 1591
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public adjustSystemUiVisibilityLw(I)I
    .locals 2
    .parameter "visibility"

    .prologue
    .line 2773
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mResettingSystemUiFlags:I

    and-int/2addr v0, p1

    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mResettingSystemUiFlags:I

    .line 2776
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mResettingSystemUiFlags:I

    xor-int/lit8 v0, v0, -0x1

    and-int/2addr v0, p1

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceClearedSystemUiFlags:I

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    return v0
.end method

.method public adjustWindowParamsLw(Landroid/view/WindowManager$LayoutParams;)V
    .locals 2
    .parameter "attrs"

    .prologue
    .line 1557
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    sparse-switch v0, :sswitch_data_0

    .line 1567
    :goto_0
    return-void

    .line 1562
    :sswitch_0
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v0, v0, 0x18

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1564
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v1, -0x40001

    and-int/2addr v0, v1

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0

    .line 1557
    nop

    :sswitch_data_0
    .sparse-switch
        0x7d5 -> :sswitch_0
        0x7d6 -> :sswitch_0
        0x7df -> :sswitch_0
    .end sparse-switch
.end method

.method public afterAMSReady()V
    .locals 1

    .prologue
    .line 6978
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    if-eqz v0, :cond_0

    .line 6979
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->afterAMSReady()V

    .line 6980
    :cond_0
    return-void
.end method

.method public afterDisplayReady()V
    .locals 2

    .prologue
    .line 1332
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1333
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x105000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarHeight:I

    .line 1335
    return-void
.end method

.method public allowAppAnimationsLw()Z
    .locals 1

    .prologue
    .line 4021
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->isAnimatingLw()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4024
    const/4 v0, 0x0

    .line 4026
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public applyPostLayoutPolicyLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)V
    .locals 6
    .parameter "win"
    .parameter "attrs"

    .prologue
    const/16 v4, 0x7d4

    const/4 v5, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 3741
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-nez v3, :cond_6

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleOrBehindKeyguardLw()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->isGoneForLayoutLw()Z

    move-result v3

    if-nez v3, :cond_6

    .line 3743
    iget v3, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v3, v3, 0x800

    if-eqz v3, :cond_0

    .line 3744
    iget v3, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne v3, v4, :cond_7

    .line 3745
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceStatusBarFromKeyguard:Z

    .line 3750
    :cond_0
    :goto_0
    iget v3, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne v3, v4, :cond_1

    .line 3751
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShowingLockscreen:Z

    .line 3753
    :cond_1
    iget v3, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    if-lt v3, v1, :cond_8

    iget v3, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x63

    if-gt v3, v4, :cond_8

    move v0, v1

    .line 3755
    .local v0, applyWindow:Z
    :goto_1
    iget v3, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7e7

    if-ne v3, v4, :cond_3

    .line 3758
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDreamingLockscreen:Z

    if-eqz v3, :cond_2

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->hasDrawnLw()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3760
    :cond_2
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShowingDream:Z

    .line 3761
    const/4 v0, 0x1

    .line 3764
    :cond_3
    if-eqz v0, :cond_6

    iget v3, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    if-nez v3, :cond_6

    iget v3, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    if-nez v3, :cond_6

    iget v3, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v3, v5, :cond_6

    iget v3, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v3, v5, :cond_6

    .line 3769
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    .line 3770
    iget v3, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v4, 0x8

    and-int/2addr v3, v4

    if-eqz v3, :cond_4

    .line 3772
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideLockScreen:Z

    .line 3773
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceStatusBarFromKeyguard:Z

    .line 3778
    iget v3, p2, Landroid/view/WindowManager$LayoutParams;->meizuFlags:I

    and-int/lit8 v3, v3, 0x40

    if-eqz v3, :cond_9

    .line 3779
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarBackgroundTrans:Z

    .line 3784
    :cond_4
    :goto_2
    iget v3, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v4, 0x40

    and-int/2addr v3, v4

    if-eqz v3, :cond_5

    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDismissKeyguard:I

    if-nez v3, :cond_5

    .line 3787
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWinDismissingKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne v3, p1, :cond_a

    const/4 v3, 0x2

    :goto_3
    iput v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDismissKeyguard:I

    .line 3789
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWinDismissingKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    .line 3790
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceStatusBarFromKeyguard:Z

    .line 3792
    :cond_5
    iget v2, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_6

    .line 3793
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAllowLockscreenWhenOn:Z

    .line 3797
    .end local v0           #applyWindow:Z
    :cond_6
    return-void

    .line 3747
    :cond_7
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceStatusBar:Z

    goto :goto_0

    :cond_8
    move v0, v2

    .line 3753
    goto :goto_1

    .line 3781
    .restart local v0       #applyWindow:Z
    :cond_9
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarBackgroundTrans:Z

    goto :goto_2

    :cond_a
    move v3, v1

    .line 3787
    goto :goto_3
.end method

.method public beginLayoutLw(ZIII)V
    .locals 13
    .parameter "isDefaultDisplay"
    .parameter "displayWidth"
    .parameter "displayHeight"
    .parameter "displayRotation"

    .prologue
    .line 2824
    const/4 v8, 0x0

    iput v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    iput v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    .line 2825
    iput p2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    .line 2826
    move/from16 v0, p3

    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    .line 2827
    move/from16 v0, p4

    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDisplayRotation:I

    .line 2828
    const/4 v8, 0x0

    iput v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenTop:I

    iput v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenLeft:I

    .line 2829
    iput p2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenWidth:I

    .line 2830
    move/from16 v0, p3

    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenHeight:I

    .line 2831
    const/4 v8, 0x0

    iput v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurLeft:I

    iput v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemLeft:I

    iput v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenLeft:I

    iput v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableLeft:I

    iput v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentLeft:I

    iput v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLeft:I

    .line 2833
    const/4 v8, 0x0

    iput v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurTop:I

    iput v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemTop:I

    iput v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenTop:I

    iput v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableTop:I

    iput v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentTop:I

    iput v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockTop:I

    .line 2835
    iput p2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurRight:I

    iput p2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemRight:I

    iput p2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenRight:I

    iput p2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableRight:I

    iput p2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentRight:I

    iput p2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockRight:I

    .line 2837
    move/from16 v0, p3

    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurBottom:I

    move/from16 v0, p3

    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemBottom:I

    move/from16 v0, p3

    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenBottom:I

    move/from16 v0, p3

    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableBottom:I

    move/from16 v0, p3

    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    move/from16 v0, p3

    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockBottom:I

    .line 2839
    const/high16 v8, 0x1000

    iput v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLayer:I

    .line 2840
    const/4 v8, -0x1

    iput v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarLayer:I

    .line 2843
    sget-object v4, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpParentFrame:Landroid/graphics/Rect;

    .line 2844
    .local v4, pf:Landroid/graphics/Rect;
    sget-object v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpDisplayFrame:Landroid/graphics/Rect;

    .line 2845
    .local v1, df:Landroid/graphics/Rect;
    sget-object v7, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpVisibleFrame:Landroid/graphics/Rect;

    .line 2846
    .local v7, vf:Landroid/graphics/Rect;
    iget v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLeft:I

    iput v8, v7, Landroid/graphics/Rect;->left:I

    iput v8, v1, Landroid/graphics/Rect;->left:I

    iput v8, v4, Landroid/graphics/Rect;->left:I

    .line 2847
    iget v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockTop:I

    iput v8, v7, Landroid/graphics/Rect;->top:I

    iput v8, v1, Landroid/graphics/Rect;->top:I

    iput v8, v4, Landroid/graphics/Rect;->top:I

    .line 2848
    iget v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockRight:I

    iput v8, v7, Landroid/graphics/Rect;->right:I

    iput v8, v1, Landroid/graphics/Rect;->right:I

    iput v8, v4, Landroid/graphics/Rect;->right:I

    .line 2849
    iget v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockBottom:I

    iput v8, v7, Landroid/graphics/Rect;->bottom:I

    iput v8, v1, Landroid/graphics/Rect;->bottom:I

    iput v8, v4, Landroid/graphics/Rect;->bottom:I

    .line 2851
    if-eqz p1, :cond_5

    .line 2854
    iget v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastNavBarState:I

    const/high16 v9, 0x1

    and-int/2addr v8, v9

    const/high16 v9, 0x1

    if-ne v8, v9, :cond_6

    const/4 v5, 0x1

    .line 2855
    .local v5, requestNavVisible:Z
    :goto_0
    if-eqz v5, :cond_7

    move/from16 v0, p3

    if-ge p2, v0, :cond_7

    const/4 v3, 0x1

    .line 2879
    .local v3, navVisible:Z
    :goto_1
    const/4 v8, 0x0

    iput v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentNavBarState:I

    .line 2880
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v8, :cond_2

    iget-boolean v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemUIAlreadyShownInFullScreen:Z

    if-nez v8, :cond_2

    .line 2886
    iget-boolean v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarCanMove:Z

    if-eqz v8, :cond_0

    move/from16 v0, p3

    if-ge p2, v0, :cond_8

    :cond_0
    const/4 v8, 0x1

    :goto_2
    iput-boolean v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarOnBottom:Z

    .line 2892
    iget-boolean v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarOnBottom:Z

    if-eqz v8, :cond_a

    .line 2894
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarHeightForRotation:[I

    aget v8, v8, p4

    sub-int v6, p3, v8

    .line 2895
    .local v6, top:I
    sget-object v8, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    const/4 v9, 0x0

    move/from16 v0, p3

    invoke-virtual {v8, v9, v6, p2, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 2897
    if-eqz v3, :cond_9

    .line 2898
    iget v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastNavBarState:I

    iput v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentNavBarState:I

    .line 2899
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    const/4 v9, 0x1

    invoke-interface {v8, v9}, Landroid/view/WindowManagerPolicy$WindowState;->showLw(Z)Z

    .line 2900
    sget-object v8, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    iput v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenBottom:I

    iput v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableBottom:I

    .line 2901
    sget-object v8, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    iput v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockBottom:I

    .line 2902
    iget v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockBottom:I

    iget v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockTop:I

    sub-int/2addr v8, v9

    iput v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenHeight:I

    .line 2910
    :goto_3
    if-eqz v3, :cond_1

    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v8}, Landroid/view/WindowManagerPolicy$WindowState;->isAnimatingLw()Z

    move-result v8

    if-nez v8, :cond_1

    .line 2914
    sget-object v8, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    iput v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemBottom:I

    .line 2942
    .end local v6           #top:I
    :cond_1
    :goto_4
    iget v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockTop:I

    iput v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurTop:I

    iput v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentTop:I

    .line 2943
    iget v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockBottom:I

    iput v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurBottom:I

    iput v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    .line 2944
    iget v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLeft:I

    iput v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurLeft:I

    iput v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentLeft:I

    .line 2945
    iget v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockRight:I

    iput v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurRight:I

    iput v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentRight:I

    .line 2946
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v8}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v8

    iput v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarLayer:I

    .line 2948
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    sget-object v9, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    sget-object v10, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    sget-object v11, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    sget-object v12, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    invoke-interface {v8, v9, v10, v11, v12}, Landroid/view/WindowManagerPolicy$WindowState;->computeFrameLw(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 2956
    :cond_2
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v8, :cond_5

    .line 2958
    iget v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    iput v8, v1, Landroid/graphics/Rect;->left:I

    iput v8, v4, Landroid/graphics/Rect;->left:I

    .line 2959
    iget v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    iput v8, v1, Landroid/graphics/Rect;->top:I

    iput v8, v4, Landroid/graphics/Rect;->top:I

    .line 2960
    iget v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    iget v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    sub-int/2addr v8, v9

    iput v8, v1, Landroid/graphics/Rect;->right:I

    iput v8, v4, Landroid/graphics/Rect;->right:I

    .line 2961
    iget v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    iget v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    sub-int/2addr v8, v9

    iput v8, v1, Landroid/graphics/Rect;->bottom:I

    iput v8, v4, Landroid/graphics/Rect;->bottom:I

    .line 2962
    iget v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableLeft:I

    iput v8, v7, Landroid/graphics/Rect;->left:I

    .line 2963
    iget v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableTop:I

    iput v8, v7, Landroid/graphics/Rect;->top:I

    .line 2964
    iget v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableRight:I

    iput v8, v7, Landroid/graphics/Rect;->right:I

    .line 2968
    iget v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    iget v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    sub-int/2addr v8, v9

    iput v8, v7, Landroid/graphics/Rect;->bottom:I

    .line 2970
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v8}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v8

    iput v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarLayer:I

    .line 2973
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v8, v4, v1, v7, v7}, Landroid/view/WindowManagerPolicy$WindowState;->computeFrameLw(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 2976
    iget v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    iget v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarHeight:I

    add-int/2addr v8, v9

    iput v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableTop:I

    .line 2980
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v8}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 2984
    iget v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastSystemUiFlags:I

    and-int/lit16 v8, v8, 0x400

    if-nez v8, :cond_3

    .line 2985
    iget v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    iget v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarHeight:I

    add-int/2addr v8, v9

    iput v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockTop:I

    .line 2988
    :cond_3
    iget v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockTop:I

    iput v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurTop:I

    iput v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentTop:I

    .line 2989
    iget v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockBottom:I

    iput v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurBottom:I

    iput v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    .line 2990
    iget v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLeft:I

    iput v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurLeft:I

    iput v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentLeft:I

    .line 2991
    iget v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockRight:I

    iput v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurRight:I

    iput v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentRight:I

    .line 3000
    :cond_4
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v8}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v8

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v8}, Landroid/view/WindowManagerPolicy$WindowState;->isAnimatingLw()Z

    move-result v8

    if-nez v8, :cond_5

    .line 3004
    iget v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    iget v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarHeight:I

    add-int/2addr v8, v9

    iput v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemTop:I

    .line 3008
    .end local v3           #navVisible:Z
    .end local v5           #requestNavVisible:Z
    :cond_5
    return-void

    .line 2854
    :cond_6
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 2855
    .restart local v5       #requestNavVisible:Z
    :cond_7
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 2886
    .restart local v3       #navVisible:Z
    :cond_8
    const/4 v8, 0x0

    goto/16 :goto_2

    .line 2905
    .restart local v6       #top:I
    :cond_9
    const/4 v8, 0x0

    iput v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentNavBarState:I

    .line 2906
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentNavBarDependWindow:Landroid/view/WindowManagerPolicy$WindowState;

    .line 2907
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    const/4 v9, 0x1

    invoke-interface {v8, v9}, Landroid/view/WindowManagerPolicy$WindowState;->hideLw(Z)Z

    .line 2908
    iget v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenBottom:I

    iput v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableBottom:I

    goto/16 :goto_3

    .line 2918
    .end local v6           #top:I
    :cond_a
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarWidthForRotation:[I

    aget v8, v8, p4

    sub-int v2, p2, v8

    .line 2919
    .local v2, left:I
    sget-object v8, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    const/4 v9, 0x0

    move/from16 v0, p3

    invoke-virtual {v8, v2, v9, p2, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 2921
    if-eqz v3, :cond_b

    .line 2922
    iget v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastNavBarState:I

    iput v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentNavBarState:I

    .line 2923
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    const/4 v9, 0x1

    invoke-interface {v8, v9}, Landroid/view/WindowManagerPolicy$WindowState;->showLw(Z)Z

    .line 2924
    sget-object v8, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    iput v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenRight:I

    iput v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableRight:I

    .line 2925
    sget-object v8, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    iput v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockRight:I

    .line 2926
    iget v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockRight:I

    iget v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLeft:I

    sub-int/2addr v8, v9

    iput v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenWidth:I

    .line 2933
    :goto_5
    if-eqz v3, :cond_1

    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v8}, Landroid/view/WindowManagerPolicy$WindowState;->isAnimatingLw()Z

    move-result v8

    if-nez v8, :cond_1

    .line 2937
    sget-object v8, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    iput v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemRight:I

    goto/16 :goto_4

    .line 2929
    :cond_b
    const/4 v8, 0x0

    iput v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentNavBarState:I

    .line 2930
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentNavBarDependWindow:Landroid/view/WindowManagerPolicy$WindowState;

    .line 2931
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    const/4 v9, 0x1

    invoke-interface {v8, v9}, Landroid/view/WindowManagerPolicy$WindowState;->hideLw(Z)Z

    goto :goto_5
.end method

.method public beginPostLayoutPolicyLw(II)V
    .locals 2
    .parameter "displayWidth"
    .parameter "displayHeight"

    .prologue
    const/4 v1, 0x0

    .line 3724
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    .line 3725
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceStatusBar:Z

    .line 3726
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceStatusBarFromKeyguard:Z

    .line 3728
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideLockScreen:Z

    .line 3729
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAllowLockscreenWhenOn:Z

    .line 3730
    iput v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDismissKeyguard:I

    .line 3731
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShowingLockscreen:Z

    .line 3732
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShowingDream:Z

    .line 3733
    return-void
.end method

.method public canBeForceHidden(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)Z
    .locals 1
    .parameter "win"
    .parameter "attrs"

    .prologue
    .line 1789
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    sparse-switch v0, :sswitch_data_0

    .line 1798
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 1796
    :sswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1789
    nop

    :sswitch_data_0
    .sparse-switch
        0x7d0 -> :sswitch_0
        0x7d4 -> :sswitch_0
        0x7dd -> :sswitch_0
        0x7e3 -> :sswitch_0
        0x7e7 -> :sswitch_0
        0x7e9 -> :sswitch_0
    .end sparse-switch
.end method

.method public canMagnifyWindowLw(Landroid/view/WindowManager$LayoutParams;)Z
    .locals 1
    .parameter "attrs"

    .prologue
    .line 6394
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    sparse-switch v0, :sswitch_data_0

    .line 6402
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 6399
    :sswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 6394
    nop

    :sswitch_data_0
    .sparse-switch
        0x7db -> :sswitch_0
        0x7dc -> :sswitch_0
        0x7e3 -> :sswitch_0
        0x7eb -> :sswitch_0
    .end sparse-switch
.end method

.method public checkAddPermission(Landroid/view/WindowManager$LayoutParams;[I)I
    .locals 4
    .parameter "attrs"
    .parameter "outAppOp"

    .prologue
    const/4 v2, 0x0

    .line 1468
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 1469
    .local v1, type:I
    const/4 v3, -0x1

    aput v3, p2, v2

    .line 1470
    const/16 v3, 0x7d0

    if-lt v1, v3, :cond_0

    const/16 v3, 0xbb7

    if-le v1, v3, :cond_1

    .line 1505
    :cond_0
    :goto_0
    return v2

    .line 1474
    :cond_1
    const/4 v0, 0x0

    .line 1475
    .local v0, permission:Ljava/lang/String;
    sparse-switch v1, :sswitch_data_0

    .line 1497
    const-string v0, "android.permission.INTERNAL_SYSTEM_WINDOW"

    .line 1499
    :goto_1
    :sswitch_0
    if-eqz v0, :cond_0

    .line 1500
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 1502
    const/4 v2, -0x8

    goto :goto_0

    .line 1493
    :sswitch_1
    const-string v0, "android.permission.SYSTEM_ALERT_WINDOW"

    .line 1494
    const/16 v3, 0x22

    aput v3, p2, v2

    goto :goto_1

    .line 1475
    :sswitch_data_0
    .sparse-switch
        0x7d2 -> :sswitch_1
        0x7d3 -> :sswitch_1
        0x7d5 -> :sswitch_0
        0x7d6 -> :sswitch_1
        0x7d7 -> :sswitch_1
        0x7da -> :sswitch_1
        0x7db -> :sswitch_0
        0x7dd -> :sswitch_0
        0x7e7 -> :sswitch_0
        0x7ee -> :sswitch_1
        0x7ef -> :sswitch_1
    .end sparse-switch
.end method

.method public checkShowToOwnerOnly(Landroid/view/WindowManager$LayoutParams;)Z
    .locals 3
    .parameter "attrs"

    .prologue
    const/4 v0, 0x1

    .line 1513
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    sparse-switch v1, :sswitch_data_0

    .line 1520
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit8 v1, v1, 0x10

    if-nez v1, :cond_1

    .line 1551
    :cond_0
    :goto_0
    return v0

    :cond_1
    :sswitch_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.INTERNAL_SYSTEM_WINDOW"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 1513
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x7d0 -> :sswitch_0
        0x7d1 -> :sswitch_0
        0x7d2 -> :sswitch_0
        0x7d4 -> :sswitch_0
        0x7d7 -> :sswitch_0
        0x7d8 -> :sswitch_0
        0x7d9 -> :sswitch_0
        0x7de -> :sswitch_0
        0x7e1 -> :sswitch_0
        0x7e2 -> :sswitch_0
        0x7e3 -> :sswitch_0
        0x7e4 -> :sswitch_0
        0x7e5 -> :sswitch_0
        0x7e6 -> :sswitch_0
        0x7e8 -> :sswitch_0
        0x7e9 -> :sswitch_0
        0x7ea -> :sswitch_0
        0x7eb -> :sswitch_0
        0x7ec -> :sswitch_0
    .end sparse-switch
.end method

.method public createForceHideEnterAnimation(Z)Landroid/view/animation/Animation;
    .locals 2
    .parameter "onWallpaper"

    .prologue
    .line 2064
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_0

    const v0, 0x10a0032

    :goto_0
    invoke-static {v1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0

    :cond_0
    const v0, 0x10a002f

    goto :goto_0
.end method

.method public disableHomeKey(J)V
    .locals 2
    .parameter "time"

    .prologue
    .line 6877
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 6878
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeDisableTime:J

    .line 6882
    :goto_0
    return-void

    .line 6880
    :cond_0
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeDisableTime:J

    goto :goto_0
.end method

.method public dismissKeyguardLw()V
    .locals 2

    .prologue
    .line 5723
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5724
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/policy/impl/PhoneWindowManager$31;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$31;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 5736
    :cond_0
    return-void
.end method

.method dispatchBackKeyWithWakeLock(Landroid/view/KeyEvent;)V
    .locals 2
    .parameter "event"

    .prologue
    .line 630
    const-wide/16 v0, 0x64

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 635
    :goto_0
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 637
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 638
    :cond_0
    return-void

    .line 631
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method dispatchMediaKeyRepeatWithWakeLock(Landroid/view/KeyEvent;)V
    .locals 5
    .parameter "event"

    .prologue
    .line 5484
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHavePendingMediaKeyRepeatWithWakeLock:Z

    .line 5486
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v4

    or-int/lit16 v4, v4, 0x80

    invoke-static {p1, v1, v2, v3, v4}, Landroid/view/KeyEvent;->changeTimeRepeat(Landroid/view/KeyEvent;JII)Landroid/view/KeyEvent;

    move-result-object v0

    .line 5492
    .local v0, repeatEvent:Landroid/view/KeyEvent;
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->dispatchMediaKeyWithWakeLockToAudioService(Landroid/view/KeyEvent;)V

    .line 5493
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 5494
    return-void
.end method

.method dispatchMediaKeyWithWakeLock(Landroid/view/KeyEvent;)V
    .locals 4
    .parameter "event"

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x1

    .line 5458
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHavePendingMediaKeyRepeatWithWakeLock:Z

    if-eqz v1, :cond_0

    .line 5463
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 5464
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHavePendingMediaKeyRepeatWithWakeLock:Z

    .line 5465
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 5468
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->dispatchMediaKeyWithWakeLockToAudioService(Landroid/view/KeyEvent;)V

    .line 5470
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 5472
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHavePendingMediaKeyRepeatWithWakeLock:Z

    .line 5474
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 5476
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0, v2}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 5477
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatTimeout()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 5481
    .end local v0           #msg:Landroid/os/Message;
    :goto_0
    return-void

    .line 5479
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0
.end method

.method dispatchMediaKeyWithWakeLockToAudioService(Landroid/view/KeyEvent;)V
    .locals 5
    .parameter "event"

    .prologue
    .line 5497
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5498
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getAudioService()Landroid/media/IAudioService;

    move-result-object v0

    .line 5499
    .local v0, audioService:Landroid/media/IAudioService;
    if-eqz v0, :cond_0

    .line 5501
    :try_start_0
    invoke-interface {v0, p1}, Landroid/media/IAudioService;->dispatchMediaKeyEventUnderWakelock(Landroid/view/KeyEvent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5507
    .end local v0           #audioService:Landroid/media/IAudioService;
    :cond_0
    :goto_0
    return-void

    .line 5502
    .restart local v0       #audioService:Landroid/media/IAudioService;
    :catch_0
    move-exception v1

    .line 5503
    .local v1, e:Landroid/os/RemoteException;
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dispatchMediaKeyEvent threw exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public dispatchUnhandledKey(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;
    .locals 23
    .parameter "win"
    .parameter "event"
    .parameter "policyFlags"

    .prologue
    .line 2544
    const/16 v18, 0x0

    .line 2545
    .local v18, fallbackEvent:Landroid/view/KeyEvent;
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v4

    and-int/lit16 v4, v4, 0x400

    if-nez v4, :cond_1

    .line 2546
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    move-result-object v20

    .line 2547
    .local v20, kcm:Landroid/view/KeyCharacterMap;
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v21

    .line 2548
    .local v21, keyCode:I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v22

    .line 2549
    .local v22, metaState:I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v4

    if-nez v4, :cond_2

    const/16 v19, 0x1

    .line 2554
    .local v19, initialDown:Z
    :goto_0
    if-eqz v19, :cond_3

    .line 2555
    invoke-virtual/range {v20 .. v22}, Landroid/view/KeyCharacterMap;->getFallbackAction(II)Landroid/view/KeyCharacterMap$FallbackAction;

    move-result-object v17

    .line 2560
    .local v17, fallbackAction:Landroid/view/KeyCharacterMap$FallbackAction;
    :goto_1
    if-eqz v17, :cond_1

    .line 2566
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v4

    or-int/lit16 v14, v4, 0x400

    .line 2567
    .local v14, flags:I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v4

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v6

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v8

    move-object/from16 v0, v17

    iget v9, v0, Landroid/view/KeyCharacterMap$FallbackAction;->keyCode:I

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v10

    move-object/from16 v0, v17

    iget v11, v0, Landroid/view/KeyCharacterMap$FallbackAction;->metaState:I

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v12

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v13

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getSource()I

    move-result v15

    const/16 v16, 0x0

    invoke-static/range {v4 .. v16}, Landroid/view/KeyEvent;->obtain(JJIIIIIIIILjava/lang/String;)Landroid/view/KeyEvent;

    move-result-object v18

    .line 2574
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    move/from16 v3, p3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->interceptFallback(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2575
    invoke-virtual/range {v18 .. v18}, Landroid/view/KeyEvent;->recycle()V

    .line 2576
    const/16 v18, 0x0

    .line 2579
    :cond_0
    if-eqz v19, :cond_4

    .line 2580
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFallbackActions:Landroid/util/SparseArray;

    move/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v4, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2595
    .end local v14           #flags:I
    .end local v17           #fallbackAction:Landroid/view/KeyCharacterMap$FallbackAction;
    .end local v19           #initialDown:Z
    .end local v20           #kcm:Landroid/view/KeyCharacterMap;
    .end local v21           #keyCode:I
    .end local v22           #metaState:I
    :cond_1
    :goto_2
    return-object v18

    .line 2549
    .restart local v20       #kcm:Landroid/view/KeyCharacterMap;
    .restart local v21       #keyCode:I
    .restart local v22       #metaState:I
    :cond_2
    const/16 v19, 0x0

    goto :goto_0

    .line 2557
    .restart local v19       #initialDown:Z
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFallbackActions:Landroid/util/SparseArray;

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/view/KeyCharacterMap$FallbackAction;

    .restart local v17       #fallbackAction:Landroid/view/KeyCharacterMap$FallbackAction;
    goto :goto_1

    .line 2581
    .restart local v14       #flags:I
    :cond_4
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 2582
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFallbackActions:Landroid/util/SparseArray;

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 2583
    invoke-virtual/range {v17 .. v17}, Landroid/view/KeyCharacterMap$FallbackAction;->recycle()V

    goto :goto_2
.end method

.method public doesForceHide(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)Z
    .locals 2
    .parameter "win"
    .parameter "attrs"

    .prologue
    .line 1784
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7d4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .parameter "prefix"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 6440
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSafeMode="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSafeMode:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 6441
    const-string v0, " mSystemReady="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemReady:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 6442
    const-string v0, " mSystemBooted="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemBooted:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 6443
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLidState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidState:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 6444
    const-string v0, " mLidOpenRotation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidOpenRotation:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 6445
    const-string v0, " mHdmiPlugged="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHdmiPlugged:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 6446
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastSystemUiFlags:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mResettingSystemUiFlags:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceClearedSystemUiFlags:I

    if-eqz v0, :cond_1

    .line 6448
    :cond_0
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLastSystemUiFlags=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6449
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastSystemUiFlags:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6450
    const-string v0, " mResettingSystemUiFlags=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6451
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mResettingSystemUiFlags:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6452
    const-string v0, " mForceClearedSystemUiFlags=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6453
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceClearedSystemUiFlags:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6455
    :cond_1
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastFocusNeedsMenu:Z

    if-eqz v0, :cond_2

    .line 6456
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLastFocusNeedsMenu="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6457
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastFocusNeedsMenu:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 6459
    :cond_2
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mDockMode="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 6460
    const-string v0, " mCarDockRotation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockRotation:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 6461
    const-string v0, " mDeskDockRotation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeskDockRotation:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 6462
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mUserRotationMode="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUserRotationMode:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 6463
    const-string v0, " mUserRotation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUserRotation:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 6464
    const-string v0, " mAllowAllRotations="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAllowAllRotations:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 6465
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mCurrentAppOrientation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentAppOrientation:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 6466
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mCarDockEnablesAccelerometer="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6467
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockEnablesAccelerometer:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 6468
    const-string v0, " mDeskDockEnablesAccelerometer="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6469
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeskDockEnablesAccelerometer:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 6470
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLidKeyboardAccessibility="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6471
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidKeyboardAccessibility:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 6472
    const-string v0, " mLidNavigationAccessibility="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidNavigationAccessibility:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 6473
    const-string v0, " mLidControlsSleep="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidControlsSleep:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 6474
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLongPressOnPowerBehavior="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6475
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressOnPowerBehavior:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 6476
    const-string v0, " mHasSoftInput="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasSoftInput:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 6477
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mScreenOnEarly="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOnEarly:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 6478
    const-string v0, " mScreenOnFully="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOnFully:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 6479
    const-string v0, " mOrientationSensorEnabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationSensorEnabled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 6480
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mUnrestrictedScreen=("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 6481
    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 6482
    const-string v0, ") "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 6483
    const-string v0, "x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 6484
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mRestrictedScreen=("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenLeft:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 6485
    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenTop:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 6486
    const-string v0, ") "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenWidth:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 6487
    const-string v0, "x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenHeight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 6488
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mStableFullscreen=("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenLeft:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 6489
    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenTop:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 6490
    const-string v0, ")-("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenRight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 6491
    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenBottom:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ")"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6492
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mStable=("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableLeft:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 6493
    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableTop:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 6494
    const-string v0, ")-("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableRight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 6495
    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableBottom:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ")"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6496
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSystem=("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemLeft:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 6497
    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemTop:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 6498
    const-string v0, ")-("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemRight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 6499
    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemBottom:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ")"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6500
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mCur=("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurLeft:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 6501
    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurTop:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 6502
    const-string v0, ")-("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurRight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 6503
    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurBottom:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ")"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6504
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mContent=("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentLeft:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 6505
    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentTop:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 6506
    const-string v0, ")-("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentRight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 6507
    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ")"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6508
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mDock=("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLeft:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 6509
    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockTop:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 6510
    const-string v0, ")-("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockRight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 6511
    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockBottom:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ")"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6512
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mDockLayer="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLayer:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 6513
    const-string v0, " mStatusBarLayer="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarLayer:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 6514
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mShowingLockscreen="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShowingLockscreen:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 6515
    const-string v0, " mShowingDream="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShowingDream:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 6516
    const-string v0, " mDreamingLockscreen="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDreamingLockscreen:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 6517
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_3

    .line 6518
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLastInputMethodWindow="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6519
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 6521
    :cond_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastInputMethodTargetWindow:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_4

    .line 6522
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLastInputMethodTargetWindow="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6523
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastInputMethodTargetWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 6525
    :cond_4
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_5

    .line 6526
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mStatusBar="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6527
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 6529
    :cond_5
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_6

    .line 6530
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mNavigationBar="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6531
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 6533
    :cond_6
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_7

    .line 6534
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mKeyguard="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6535
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 6537
    :cond_7
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_8

    .line 6538
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mFocusedWindow="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6539
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 6541
    :cond_8
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFocusedWindowUnderRecentPanel:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_9

    .line 6542
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mFocusedWindowUnderRecentPanel="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6543
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFocusedWindowUnderRecentPanel:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 6545
    :cond_9
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFocusedApp:Landroid/view/IApplicationToken;

    if-eqz v0, :cond_a

    .line 6546
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mFocusedApp="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6547
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFocusedApp:Landroid/view/IApplicationToken;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 6549
    :cond_a
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWinDismissingKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_b

    .line 6550
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mWinDismissingKeyguard="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6551
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWinDismissingKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 6553
    :cond_b
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_c

    .line 6554
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mTopFullscreenOpaqueWindowState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6555
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 6557
    :cond_c
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mTopIsFullscreen="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopIsFullscreen:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 6558
    const-string v0, " mHideLockScreen="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideLockScreen:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 6559
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mForceStatusBar="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceStatusBar:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 6560
    const-string v0, " mForceStatusBarFromKeyguard="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6561
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceStatusBarFromKeyguard:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 6562
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mDismissKeyguard="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDismissKeyguard:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 6563
    const-string v0, " mWinDismissingKeyguard="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWinDismissingKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 6564
    const-string v0, " mHomePressed="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomePressed:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 6565
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mAllowLockscreenWhenOn="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAllowLockscreenWhenOn:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 6566
    const-string v0, " mLockScreenTimeout="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLockScreenTimeout:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 6567
    const-string v0, " mLockScreenTimerActive="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLockScreenTimerActive:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 6568
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mEndcallBehavior="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEndcallBehavior:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 6569
    const-string v0, " mIncallPowerBehavior="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIncallPowerBehavior:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 6570
    const-string v0, " mLongPressOnHomeBehavior="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 6571
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLandscapeRotation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLandscapeRotation:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 6572
    const-string v0, " mSeascapeRotation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSeascapeRotation:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 6573
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mPortraitRotation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPortraitRotation:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 6574
    const-string v0, " mUpsideDownRotation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUpsideDownRotation:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 6575
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mHdmiRotation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHdmiRotation:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 6576
    const-string v0, " mHdmiRotationLock="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHdmiRotationLock:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 6578
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "isScreenDim="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->isScreenDim:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 6579
    const-string v0, " mScreenshotChordEnabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenshotChordEnabled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 6580
    const-string v0, " mPowerKeyHandled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyHandled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 6582
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mVolumeDownKeyTriggered="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeDownKeyTriggered:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 6583
    const-string v0, " mVolumeUpKeyTriggered="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeUpKeyTriggered:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 6584
    const-string v0, " mPowerKeyTriggered="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyTriggered:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 6586
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mVolumeDownKeyConsumedByScreenshotChord="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeDownKeyConsumedByScreenshotChord:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 6587
    const-string v0, " mPendingPowerKeyUpCanceled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPendingPowerKeyUpCanceled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 6588
    const-string v0, " mTelephonyIsHooking="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTelephonyIsHooking:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 6589
    return-void
.end method

.method public enableKeyguard(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 5687
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    if-eqz v0, :cond_0

    .line 5688
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->setKeyguardEnabled(Z)V

    .line 5690
    :cond_0
    return-void
.end method

.method public enableScreenAfterBoot()V
    .locals 1

    .prologue
    .line 6134
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->readLidState()V

    .line 6135
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->applyLidSwitchState()V

    .line 6136
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateRotation(Z)V

    .line 6137
    return-void
.end method

.method public exitKeyguardSecurely(Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;)V
    .locals 1
    .parameter "callback"

    .prologue
    .line 5694
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    if-eqz v0, :cond_0

    .line 5695
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->verifyUnlock(Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;)V

    .line 5697
    :cond_0
    return-void
.end method

.method public finishLayoutLw()V
    .locals 0

    .prologue
    .line 3718
    return-void
.end method

.method public finishPostLayoutPolicyLw()I
    .locals 14

    .prologue
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    .line 3802
    const/4 v0, 0x0

    .line 3803
    .local v0, changes:I
    const/4 v5, 0x0

    .line 3804
    .local v5, topIsFullscreen:Z
    const/4 v6, 0x0

    .line 3806
    .local v6, topIsFullscreenIgnoreRecentPanel:Z
    iget-object v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v12, :cond_8

    iget-object v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v12}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 3814
    .local v2, lp:Landroid/view/WindowManager$LayoutParams;
    :goto_0
    iget-boolean v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShowingDream:Z

    if-nez v12, :cond_0

    .line 3815
    iget-boolean v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShowingLockscreen:Z

    iput-boolean v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDreamingLockscreen:Z

    .line 3818
    :cond_0
    iget-object v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDisplay:Landroid/view/Display;

    invoke-virtual {v12}, Landroid/view/Display;->getRotation()I

    move-result v3

    .line 3819
    .local v3, rotation:I
    if-eq v3, v11, :cond_1

    const/4 v12, 0x3

    if-ne v3, v12, :cond_9

    :cond_1
    move v1, v11

    .line 3822
    .local v1, islandScape:Z
    :goto_1
    iget-object v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v12, :cond_4

    .line 3826
    iget-boolean v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceStatusBar:Z

    if-nez v12, :cond_2

    iget-boolean v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceStatusBarFromKeyguard:Z

    if-eqz v12, :cond_a

    .line 3828
    :cond_2
    iget-object v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v12, v11}, Landroid/view/WindowManagerPolicy$WindowState;->showLw(Z)Z

    move-result v12

    if-eqz v12, :cond_3

    or-int/lit8 v0, v0, 0x1

    .line 3829
    :cond_3
    iget-object v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v13, Lcom/android/internal/policy/impl/PhoneWindowManager$11;

    invoke-direct {v13, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$11;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    invoke-virtual {v12, v13}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3945
    :cond_4
    :goto_2
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopIsFullscreen:Z

    .line 3949
    iget-object v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v12, :cond_6

    .line 3952
    iget v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDismissKeyguard:I

    if-eqz v12, :cond_17

    iget-object v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    invoke-virtual {v12}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->isKeyguardSecure()Z

    move-result v12

    if-nez v12, :cond_17

    .line 3953
    iget-object v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v9, v11}, Landroid/view/WindowManagerPolicy$WindowState;->hideLw(Z)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 3954
    or-int/lit8 v0, v0, 0x7

    .line 3958
    :cond_5
    iget-object v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    invoke-virtual {v9}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->isShowing()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 3959
    iget-object v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v10, Lcom/android/internal/policy/impl/PhoneWindowManager$15;

    invoke-direct {v10, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$15;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4009
    :cond_6
    :goto_3
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateSystemUiVisibilityLw()I

    move-result v9

    and-int/lit8 v9, v9, 0x6

    if-eqz v9, :cond_7

    .line 4012
    or-int/lit8 v0, v0, 0x1

    .line 4016
    :cond_7
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateLockScreenTimeout()V

    .line 4017
    return v0

    .end local v1           #islandScape:Z
    .end local v2           #lp:Landroid/view/WindowManager$LayoutParams;
    .end local v3           #rotation:I
    :cond_8
    move-object v2, v9

    .line 3806
    goto :goto_0

    .restart local v2       #lp:Landroid/view/WindowManager$LayoutParams;
    .restart local v3       #rotation:I
    :cond_9
    move v1, v10

    .line 3819
    goto :goto_1

    .line 3844
    .restart local v1       #islandScape:Z
    :cond_a
    iget-object v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v12, :cond_4

    .line 3851
    iget v12, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v12, v12, 0x400

    if-nez v12, :cond_b

    iget v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastSystemUiFlags:I

    and-int/lit8 v12, v12, 0x4

    if-eqz v12, :cond_e

    :cond_b
    move v5, v11

    .line 3854
    :goto_4
    iget v12, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v12, v12, 0x400

    if-nez v12, :cond_c

    iget v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastSystemUiFlagsIgnoreRecentPanel:I

    and-int/lit8 v12, v12, 0x4

    if-eqz v12, :cond_f

    :cond_c
    move v6, v11

    .line 3871
    :goto_5
    iget v12, v2, Landroid/view/WindowManager$LayoutParams;->meizuFlags:I

    and-int/lit8 v12, v12, 0x6

    if-nez v12, :cond_10

    move v12, v11

    :goto_6
    iput-boolean v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsNoActionBar:Z

    .line 3873
    iget v12, v2, Landroid/view/WindowManager$LayoutParams;->meizuFlags:I

    and-int/lit16 v12, v12, 0x80

    if-eqz v12, :cond_11

    move v12, v11

    :goto_7
    iput-boolean v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceHideBackMore:Z

    .line 3875
    invoke-virtual {v2}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3876
    .local v4, titleString:Ljava/lang/String;
    const-string v12, "com.android.browser/com.android.browser.BrowserActivity"

    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    iput-boolean v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mInBrowserActivity:Z

    .line 3883
    if-eqz v1, :cond_12

    iget-boolean v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsNoActionBar:Z

    if-eqz v12, :cond_12

    move v7, v11

    .line 3884
    .local v7, visible1:Z
    :goto_8
    iget-boolean v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mInBrowserActivity:Z

    if-eqz v12, :cond_13

    if-eqz v1, :cond_13

    iget-boolean v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBrowserNeedShowBackMenu:Z

    if-eqz v12, :cond_13

    move v8, v11

    .line 3885
    .local v8, visible2:Z
    :goto_9
    if-nez v7, :cond_d

    if-eqz v8, :cond_14

    :cond_d
    iget-boolean v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceHideBackMore:Z

    if-nez v12, :cond_14

    move v12, v11

    :goto_a
    iput-boolean v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBackMenuVisible:Z

    .line 3886
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShowStatusbarInFullScreen:Z

    .line 3888
    iget-object v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v13, Lcom/android/internal/policy/impl/PhoneWindowManager$12;

    invoke-direct {v13, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$12;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    invoke-virtual {v12, v13}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3903
    if-eqz v6, :cond_15

    iget-boolean v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemUIAlreadyShownInFullScreen:Z

    if-nez v12, :cond_15

    .line 3905
    iget-object v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v12, v11}, Landroid/view/WindowManagerPolicy$WindowState;->hideLw(Z)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 3906
    or-int/lit8 v0, v0, 0x1

    .line 3908
    iget-object v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v13, Lcom/android/internal/policy/impl/PhoneWindowManager$13;

    invoke-direct {v13, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$13;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    invoke-virtual {v12, v13}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_2

    .end local v4           #titleString:Ljava/lang/String;
    .end local v7           #visible1:Z
    .end local v8           #visible2:Z
    :cond_e
    move v5, v10

    .line 3851
    goto :goto_4

    :cond_f
    move v6, v10

    .line 3854
    goto :goto_5

    :cond_10
    move v12, v10

    .line 3871
    goto :goto_6

    :cond_11
    move v12, v10

    .line 3873
    goto :goto_7

    .restart local v4       #titleString:Ljava/lang/String;
    :cond_12
    move v7, v10

    .line 3883
    goto :goto_8

    .restart local v7       #visible1:Z
    :cond_13
    move v8, v10

    .line 3884
    goto :goto_9

    .restart local v8       #visible2:Z
    :cond_14
    move v12, v10

    .line 3885
    goto :goto_a

    .line 3929
    :cond_15
    iget-object v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v12, v11}, Landroid/view/WindowManagerPolicy$WindowState;->showLw(Z)Z

    move-result v12

    if-eqz v12, :cond_16

    or-int/lit8 v0, v0, 0x1

    .line 3930
    :cond_16
    iget-object v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v13, Lcom/android/internal/policy/impl/PhoneWindowManager$14;

    invoke-direct {v13, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$14;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    invoke-virtual {v12, v13}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_2

    .line 3966
    .end local v4           #titleString:Ljava/lang/String;
    .end local v7           #visible1:Z
    .end local v8           #visible2:Z
    :cond_17
    iget-boolean v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideLockScreen:Z

    if-eqz v12, :cond_19

    .line 3967
    iget-object v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v9, v11}, Landroid/view/WindowManagerPolicy$WindowState;->hideLw(Z)Z

    move-result v9

    if-eqz v9, :cond_18

    .line 3968
    or-int/lit8 v0, v0, 0x7

    .line 3974
    iget-boolean v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarBackgroundTrans:Z

    invoke-virtual {p0, v9, v11}, Lcom/android/internal/policy/impl/PhoneWindowManager;->setStatusBarBackgroundTransparent(ZZ)V

    .line 3976
    :cond_18
    iget-object v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    invoke-virtual {v9, v11}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->setHidden(Z)V

    goto/16 :goto_3

    .line 3977
    :cond_19
    iget v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDismissKeyguard:I

    if-eqz v12, :cond_1b

    .line 3979
    iget v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDismissKeyguard:I

    if-ne v9, v11, :cond_6

    .line 3981
    iget-object v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v9, v11}, Landroid/view/WindowManagerPolicy$WindowState;->showLw(Z)Z

    move-result v9

    if-eqz v9, :cond_1a

    .line 3982
    or-int/lit8 v0, v0, 0x7

    .line 3988
    invoke-virtual {p0, v11, v10}, Lcom/android/internal/policy/impl/PhoneWindowManager;->setStatusBarBackgroundTransparent(ZZ)V

    .line 3990
    :cond_1a
    iget-object v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    invoke-virtual {v9, v10}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->setHidden(Z)V

    .line 3991
    iget-object v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v10, Lcom/android/internal/policy/impl/PhoneWindowManager$16;

    invoke-direct {v10, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$16;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_3

    .line 3999
    :cond_1b
    iput-object v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWinDismissingKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    .line 4000
    iget-object v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v9, v11}, Landroid/view/WindowManagerPolicy$WindowState;->showLw(Z)Z

    move-result v9

    if-eqz v9, :cond_1c

    .line 4001
    or-int/lit8 v0, v0, 0x7

    .line 4005
    :cond_1c
    iget-object v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    invoke-virtual {v9, v10}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->setHidden(Z)V

    goto/16 :goto_3
.end method

.method public focusChangedLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;)I
    .locals 3
    .parameter "lastFocus"
    .parameter "newFocus"

    .prologue
    .line 4031
    if-eqz p2, :cond_0

    .line 4032
    const-string v0, "recentPanel"

    invoke-interface {p2}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "recentPanelLand"

    invoke-interface {p2}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 4034
    iput-object p2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFocusedWindowUnderRecentPanel:Landroid/view/WindowManagerPolicy$WindowState;

    .line 4040
    :cond_0
    :goto_0
    iput-object p2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    .line 4041
    if-eqz p2, :cond_1

    .line 4042
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " new Focus"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p2}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4044
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateSystemUiVisibilityLw()I

    move-result v0

    and-int/lit8 v0, v0, 0x6

    if-eqz v0, :cond_3

    .line 4047
    const/4 v0, 0x1

    .line 4049
    :goto_1
    return v0

    .line 4036
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFocusedWindowUnderRecentPanel:Landroid/view/WindowManagerPolicy$WindowState;

    goto :goto_0

    .line 4049
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getAboveUniverseLayer()I
    .locals 1

    .prologue
    .line 1733
    const/16 v0, 0x7da

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->windowTypeToLayerLw(I)I

    move-result v0

    return v0
.end method

.method public getConfigDisplayHeight(III)I
    .locals 2
    .parameter "fullWidth"
    .parameter "fullHeight"
    .parameter "rotation"

    .prologue
    .line 1776
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasSystemNavBar:Z

    if-nez v0, :cond_0

    .line 1777
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getNonDecorDisplayHeight(III)I

    move-result v0

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarHeight:I

    sub-int/2addr v0, v1

    .line 1779
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getNonDecorDisplayHeight(III)I

    move-result v0

    goto :goto_0
.end method

.method public getConfigDisplayWidth(III)I
    .locals 1
    .parameter "fullWidth"
    .parameter "fullHeight"
    .parameter "rotation"

    .prologue
    .line 1767
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getNonDecorDisplayWidth(III)I

    move-result v0

    return v0
.end method

.method public getContentInsetHintLw(Landroid/view/WindowManager$LayoutParams;Landroid/graphics/Rect;)V
    .locals 8
    .parameter "attrs"
    .parameter "contentInset"

    .prologue
    const v6, 0x10100

    .line 2782
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2783
    .local v2, fl:I
    iget v4, p1, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    iget v5, p1, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    or-int v3, v4, v5

    .line 2785
    .local v3, systemUiVisibility:I
    and-int v4, v2, v6

    if-ne v4, v6, :cond_5

    .line 2788
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCanHideNavigationBar:Z

    if-eqz v4, :cond_0

    and-int/lit16 v4, v3, 0x200

    if-eqz v4, :cond_0

    .line 2790
    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    iget v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    add-int v1, v4, v5

    .line 2791
    .local v1, availRight:I
    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    iget v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    add-int v0, v4, v5

    .line 2796
    .local v0, availBottom:I
    :goto_0
    and-int/lit16 v4, v3, 0x100

    if-eqz v4, :cond_2

    .line 2797
    and-int/lit16 v4, v2, 0x400

    if-eqz v4, :cond_1

    .line 2798
    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenLeft:I

    iget v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenTop:I

    iget v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenRight:I

    sub-int v6, v1, v6

    iget v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenBottom:I

    sub-int v7, v0, v7

    invoke-virtual {p2, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 2818
    .end local v0           #availBottom:I
    .end local v1           #availRight:I
    :goto_1
    return-void

    .line 2793
    :cond_0
    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenLeft:I

    iget v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenWidth:I

    add-int v1, v4, v5

    .line 2794
    .restart local v1       #availRight:I
    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenTop:I

    iget v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenHeight:I

    add-int v0, v4, v5

    .restart local v0       #availBottom:I
    goto :goto_0

    .line 2802
    :cond_1
    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableLeft:I

    iget v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableTop:I

    iget v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableRight:I

    sub-int v6, v1, v6

    iget v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableBottom:I

    sub-int v7, v0, v7

    invoke-virtual {p2, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1

    .line 2805
    :cond_2
    and-int/lit16 v4, v2, 0x400

    if-eqz v4, :cond_3

    .line 2806
    invoke-virtual {p2}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_1

    .line 2807
    :cond_3
    and-int/lit16 v4, v3, 0x404

    if-nez v4, :cond_4

    .line 2809
    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurLeft:I

    iget v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurTop:I

    iget v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurRight:I

    sub-int v6, v1, v6

    iget v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurBottom:I

    sub-int v7, v0, v7

    invoke-virtual {p2, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1

    .line 2812
    :cond_4
    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurLeft:I

    iget v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurTop:I

    iget v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurRight:I

    sub-int v6, v1, v6

    iget v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurBottom:I

    sub-int v7, v0, v7

    invoke-virtual {p2, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1

    .line 2817
    .end local v0           #availBottom:I
    .end local v1           #availRight:I
    :cond_5
    invoke-virtual {p2}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_1
.end method

.method public getMaxWallpaperLayer()I
    .locals 1

    .prologue
    .line 1729
    const/16 v0, 0x7d0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->windowTypeToLayerLw(I)I

    move-result v0

    return v0
.end method

.method public getNonDecorDisplayHeight(III)I
    .locals 1
    .parameter "fullWidth"
    .parameter "fullHeight"
    .parameter "rotation"

    .prologue
    .line 1752
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasSystemNavBar:Z

    if-eqz v0, :cond_1

    .line 1754
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarHeightForRotation:[I

    aget v0, v0, p3

    sub-int/2addr p2, v0

    .line 1763
    .end local p2
    :cond_0
    :goto_0
    return p2

    .line 1756
    .restart local p2
    :cond_1
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasNavigationBar:Z

    if-eqz v0, :cond_0

    .line 1759
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarCanMove:Z

    if-eqz v0, :cond_2

    if-ge p1, p2, :cond_0

    .line 1760
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarHeightForRotation:[I

    aget v0, v0, p3

    sub-int/2addr p2, v0

    goto :goto_0
.end method

.method public getNonDecorDisplayWidth(III)I
    .locals 1
    .parameter "fullWidth"
    .parameter "fullHeight"
    .parameter "rotation"

    .prologue
    .line 1741
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasNavigationBar:Z

    if-eqz v0, :cond_0

    .line 1744
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarCanMove:Z

    if-eqz v0, :cond_0

    if-le p1, p2, :cond_0

    .line 1745
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarWidthForRotation:[I

    aget v0, v0, p3

    sub-int/2addr p1, v0

    .line 1748
    .end local p1
    :cond_0
    return p1
.end method

.method getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;
    .locals 2

    .prologue
    .line 723
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mServiceAquireLock:Ljava/lang/Object;

    monitor-enter v1

    .line 724
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-nez v0, :cond_0

    .line 725
    const-string v0, "statusbar"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 728
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    monitor-exit v1

    return-object v0

    .line 729
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getSystemDecorRectLw(Landroid/graphics/Rect;)I
    .locals 1
    .parameter "systemRect"

    .prologue
    .line 3012
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemLeft:I

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 3013
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemTop:I

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 3014
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemRight:I

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 3015
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemBottom:I

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 3016
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v0

    .line 3018
    :goto_0
    return v0

    .line 3017
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v0

    goto :goto_0

    .line 3018
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method goHome()Z
    .locals 15

    .prologue
    const/4 v13, 0x0

    const/4 v14, 0x1

    .line 6185
    :try_start_0
    const-string v0, "persist.sys.uts-test-mode"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v14, :cond_0

    .line 6187
    const-string v0, "WindowManager"

    const-string v1, "UTS-TEST-MODE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6192
    :goto_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeIntent:Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeIntent:Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, -0x2

    invoke-interface/range {v0 .. v11}, Landroid/app/IActivityManager;->startActivityAsUser(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILjava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/os/Bundle;I)I

    move-result v12

    .line 6198
    .local v12, result:I
    if-ne v12, v14, :cond_1

    move v0, v13

    .line 6205
    .end local v12           #result:I
    :goto_1
    return v0

    .line 6189
    :cond_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->stopAppSwitches()V

    .line 6190
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->sendCloseSystemWindows()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 6201
    :catch_0
    move-exception v0

    :cond_1
    move v0, v14

    .line 6205
    goto :goto_1
.end method

.method handleVolumeKey(II)V
    .locals 5
    .parameter "stream"
    .parameter "keycode"

    .prologue
    .line 4170
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getAudioService()Landroid/media/IAudioService;

    move-result-object v0

    .line 4171
    .local v0, audioService:Landroid/media/IAudioService;
    if-nez v0, :cond_0

    .line 4190
    :goto_0
    return-void

    .line 4179
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 4180
    const/16 v2, 0x18

    if-ne p2, v2, :cond_1

    const/4 v2, 0x1

    :goto_1
    const/4 v3, 0x0

    invoke-interface {v0, p1, v2, v3}, Landroid/media/IAudioService;->adjustStreamVolume(III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4188
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0

    .line 4180
    :cond_1
    const/4 v2, -0x1

    goto :goto_1

    .line 4185
    :catch_0
    move-exception v1

    .line 4186
    .local v1, e:Landroid/os/RemoteException;
    :try_start_1
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IAudioService.adjustStreamVolume() threw RemoteException "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4188
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0

    .end local v1           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v2
.end method

.method public hasNavigationBar()Z
    .locals 1

    .prologue
    .line 6383
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasNavigationBar:Z

    return v0
.end method

.method public hasSystemNavBar()Z
    .locals 1

    .prologue
    .line 1737
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasSystemNavBar:Z

    return v0
.end method

.method public hideBootMessages()V
    .locals 2

    .prologue
    .line 6050
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/policy/impl/PhoneWindowManager$34;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$34;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 6058
    return-void
.end method

.method public inKeyguardRestrictedAndNotHide()Z
    .locals 1

    .prologue
    .line 6736
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->isShowingAndNotHidden()Z

    move-result v0

    return v0
.end method

.method public inKeyguardRestrictedKeyInputMode()Z
    .locals 1

    .prologue
    .line 5718
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 5719
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->isInputRestricted()Z

    move-result v0

    goto :goto_0
.end method

.method public init(Landroid/content/Context;Landroid/view/IWindowManager;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)V
    .locals 12
    .parameter "context"
    .parameter "windowManager"
    .parameter "windowManagerFuncs"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/high16 v9, 0x1020

    const/4 v8, 0x0

    .line 1058
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 1059
    iput-object p2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    .line 1060
    iput-object p3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    .line 1061
    const-string v5, "1"

    const-string v6, "ro.config.headless"

    const-string v7, "0"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHeadless:Z

    .line 1062
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHeadless:Z

    if-nez v5, :cond_0

    .line 1064
    new-instance v5, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    invoke-direct {v5, p1, v8}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;-><init>(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    .line 1065
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    invoke-virtual {v5, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->setRealPhoneWindowManager(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    .line 1067
    :cond_0
    new-instance v5, Lcom/android/internal/policy/impl/PhoneWindowManager$PolicyHandler;

    invoke-direct {v5, p0, v8}, Lcom/android/internal/policy/impl/PhoneWindowManager$PolicyHandler;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Lcom/android/internal/policy/impl/PhoneWindowManager$1;)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    .line 1068
    new-instance v5, Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;

    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {v5, p0, v6}, Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationListener:Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;

    .line 1070
    :try_start_0
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationListener:Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;

    invoke-interface {p2}, Landroid/view/IWindowManager;->getRotation()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/WindowOrientationListener;->setCurrentRotation(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1072
    :goto_0
    new-instance v5, Lcom/android/internal/policy/impl/PhoneWindowManager$SettingsObserver;

    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v5, p0, v6}, Lcom/android/internal/policy/impl/PhoneWindowManager$SettingsObserver;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/os/Handler;)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSettingsObserver:Lcom/android/internal/policy/impl/PhoneWindowManager$SettingsObserver;

    .line 1073
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSettingsObserver:Lcom/android/internal/policy/impl/PhoneWindowManager$SettingsObserver;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/PhoneWindowManager$SettingsObserver;->observe()V

    .line 1074
    new-instance v5, Lcom/android/internal/policy/impl/ShortcutManager;

    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v5, p1, v6}, Lcom/android/internal/policy/impl/ShortcutManager;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShortcutManager:Lcom/android/internal/policy/impl/ShortcutManager;

    .line 1075
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShortcutManager:Lcom/android/internal/policy/impl/ShortcutManager;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/ShortcutManager;->observe()V

    .line 1076
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.MAIN"

    invoke-direct {v5, v6, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeIntent:Landroid/content/Intent;

    .line 1077
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeIntent:Landroid/content/Intent;

    const-string v6, "android.intent.category.HOME"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1078
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeIntent:Landroid/content/Intent;

    invoke-virtual {v5, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1080
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.MAIN"

    invoke-direct {v5, v6, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockIntent:Landroid/content/Intent;

    .line 1081
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockIntent:Landroid/content/Intent;

    const-string v6, "android.intent.category.CAR_DOCK"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1082
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockIntent:Landroid/content/Intent;

    invoke-virtual {v5, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1084
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.MAIN"

    invoke-direct {v5, v6, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeskDockIntent:Landroid/content/Intent;

    .line 1085
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeskDockIntent:Landroid/content/Intent;

    const-string v6, "android.intent.category.DESK_DOCK"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1086
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeskDockIntent:Landroid/content/Intent;

    invoke-virtual {v5, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1089
    const-string v5, "power"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/PowerManager;

    iput-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    .line 1090
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    const-string v6, "PhoneWindowManager.mBroadcastWakeLock"

    invoke-virtual {v5, v11, v6}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1092
    sget-object v5, Landroid/os/Build;->IS_MX2:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1093
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    const-string v6, "PhoneWindowManager.mProximityWakeLock"

    invoke-virtual {v5, v11, v6}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1094
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5, v10}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 1096
    :cond_1
    const-string v5, "1"

    const-string v6, "ro.debuggable"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEnableShiftMenuBugReports:Z

    .line 1097
    const v5, 0x10e000f

    invoke-direct {p0, v5}, Lcom/android/internal/policy/impl/PhoneWindowManager;->readRotation(I)I

    move-result v5

    iput v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidOpenRotation:I

    .line 1099
    const v5, 0x10e0011

    invoke-direct {p0, v5}, Lcom/android/internal/policy/impl/PhoneWindowManager;->readRotation(I)I

    move-result v5

    iput v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockRotation:I

    .line 1101
    const v5, 0x10e0010

    invoke-direct {p0, v5}, Lcom/android/internal/policy/impl/PhoneWindowManager;->readRotation(I)I

    move-result v5

    iput v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeskDockRotation:I

    .line 1103
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1110020

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockEnablesAccelerometer:Z

    .line 1105
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x111001f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeskDockEnablesAccelerometer:Z

    .line 1107
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10e0015

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    iput v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidKeyboardAccessibility:I

    .line 1109
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10e0016

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    iput v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidNavigationAccessibility:I

    .line 1111
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1110021

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidControlsSleep:Z

    .line 1114
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1115
    .local v0, filter:Landroid/content/IntentFilter;
    sget-object v5, Landroid/app/UiModeManager;->ACTION_ENTER_CAR_MODE:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1116
    sget-object v5, Landroid/app/UiModeManager;->ACTION_EXIT_CAR_MODE:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1117
    sget-object v5, Landroid/app/UiModeManager;->ACTION_ENTER_DESK_MODE:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1118
    sget-object v5, Landroid/app/UiModeManager;->ACTION_EXIT_DESK_MODE:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1119
    const-string v5, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1120
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v5, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    .line 1121
    .local v1, intent:Landroid/content/Intent;
    if-eqz v1, :cond_2

    .line 1123
    const-string v5, "android.intent.extra.DOCK_STATE"

    invoke-virtual {v1, v5, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    .line 1128
    :cond_2
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0           #filter:Landroid/content/IntentFilter;
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1129
    .restart local v0       #filter:Landroid/content/IntentFilter;
    const-string v5, "android.intent.action.DREAMING_STARTED"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1130
    const-string v5, "android.intent.action.DREAMING_STOPPED"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1131
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDreamReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v5, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1134
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0           #filter:Landroid/content/IntentFilter;
    const-string v5, "android.intent.action.USER_SWITCHED"

    invoke-direct {v0, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1135
    .restart local v0       #filter:Landroid/content/IntentFilter;
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMultiuserReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v5, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1138
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0           #filter:Landroid/content/IntentFilter;
    const-string v5, "com.meizu.browser.show_back_menu"

    invoke-direct {v0, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1139
    .restart local v0       #filter:Landroid/content/IntentFilter;
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBrowserReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v5, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1141
    const-string v5, "vibrator"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Vibrator;

    iput-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    .line 1142
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1070025

    invoke-static {v5, v6}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressVibePattern:[J

    .line 1144
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1070026

    invoke-static {v5, v6}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVirtualKeyVibePattern:[J

    .line 1146
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1070027

    invoke-static {v5, v6}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyboardTapVibePattern:[J

    .line 1148
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1070028

    invoke-static {v5, v6}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSafeModeDisabledVibePattern:[J

    .line 1150
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1070029

    invoke-static {v5, v6}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSafeModeEnabledVibePattern:[J

    .line 1153
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x111001c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenshotChordEnabled:Z

    .line 1157
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->initializeHdmiState()V

    .line 1160
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v5}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1161
    invoke-virtual {p0, v8}, Lcom/android/internal/policy/impl/PhoneWindowManager;->screenTurningOn(Landroid/view/WindowManagerPolicy$ScreenOnListener;)V

    .line 1167
    :goto_1
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 1168
    .local v4, shutFilter:Landroid/content/IntentFilter;
    const-string v5, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1169
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShutDownReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v5, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1173
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 1174
    .local v2, lockScreenFilter:Landroid/content/IntentFilter;
    const-string v5, "meizu.intent.action.GOTO_SLEEP_WHEN_HOLD_HOME"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1175
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mGotoSleepReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v5, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1179
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 1180
    .local v3, recentFilter:Landroid/content/IntentFilter;
    const-string v5, "com.mz.action.DISABLE_RECENT"

    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1181
    const-string v5, "com.mz.action.RESET_RECENT"

    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1182
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRecentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v5, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1186
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->registerSmartBarSettingObserver()V

    .line 1187
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->onSmartBarConfigurationChanged()V

    .line 1188
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->registerEnableFullScreenDragSettingObserver()V

    .line 1189
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->onEnableFullScreenDragSettingChanged()V

    .line 1190
    return-void

    .line 1163
    .end local v2           #lockScreenFilter:Landroid/content/IntentFilter;
    .end local v3           #recentFilter:Landroid/content/IntentFilter;
    .end local v4           #shutFilter:Landroid/content/IntentFilter;
    :cond_3
    const/4 v5, 0x2

    invoke-virtual {p0, v5}, Lcom/android/internal/policy/impl/PhoneWindowManager;->screenTurnedOff(I)V

    goto :goto_1

    .line 1071
    .end local v0           #filter:Landroid/content/IntentFilter;
    .end local v1           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v5

    goto/16 :goto_0
.end method

.method initializeHdmiState()V
    .locals 12

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 4116
    const/4 v4, 0x0

    .line 4119
    .local v4, plugged:Z
    new-instance v9, Ljava/io/File;

    const-string v10, "/sys/devices/virtual/switch/hdmi/state"

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 4120
    iget-object v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHDMIObserver:Landroid/os/UEventObserver;

    const-string v10, "DEVPATH=/devices/virtual/switch/hdmi"

    invoke-virtual {v9, v10}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 4121
    const-string v2, "/sys/class/switch/hdmi/state"

    .line 4122
    .local v2, filename:Ljava/lang/String;
    const/4 v5, 0x0

    .line 4124
    .local v5, reader:Ljava/io/FileReader;
    :try_start_0
    new-instance v6, Ljava/io/FileReader;

    const-string v9, "/sys/class/switch/hdmi/state"

    invoke-direct {v6, v9}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_2

    .line 4125
    .end local v5           #reader:Ljava/io/FileReader;
    .local v6, reader:Ljava/io/FileReader;
    const/16 v9, 0xf

    :try_start_1
    new-array v0, v9, [C

    .line 4126
    .local v0, buf:[C
    invoke-virtual {v6, v0}, Ljava/io/Reader;->read([C)I

    move-result v3

    .line 4127
    .local v3, n:I
    if-le v3, v7, :cond_0

    .line 4128
    new-instance v9, Ljava/lang/String;

    const/4 v10, 0x0

    add-int/lit8 v11, v3, -0x1

    invoke-direct {v9, v0, v10, v11}, Ljava/lang/String;-><init>([CII)V

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_6

    move-result v9

    if-eqz v9, :cond_2

    move v4, v7

    .line 4135
    :cond_0
    :goto_0
    if-eqz v6, :cond_1

    .line 4137
    :try_start_2
    invoke-virtual {v6}, Ljava/io/InputStreamReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    .line 4149
    .end local v0           #buf:[C
    .end local v2           #filename:Ljava/lang/String;
    .end local v3           #n:I
    .end local v6           #reader:Ljava/io/FileReader;
    :cond_1
    :goto_1
    if-nez v4, :cond_4

    move v9, v7

    :goto_2
    iput-boolean v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHdmiPlugged:Z

    .line 4150
    iget-boolean v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHdmiPlugged:Z

    if-nez v9, :cond_5

    :goto_3
    invoke-virtual {p0, v7}, Lcom/android/internal/policy/impl/PhoneWindowManager;->setHdmiPlugged(Z)V

    .line 4151
    return-void

    .restart local v0       #buf:[C
    .restart local v2       #filename:Ljava/lang/String;
    .restart local v3       #n:I
    .restart local v6       #reader:Ljava/io/FileReader;
    :cond_2
    move v4, v8

    .line 4128
    goto :goto_0

    .line 4130
    .end local v0           #buf:[C
    .end local v3           #n:I
    .end local v6           #reader:Ljava/io/FileReader;
    .restart local v5       #reader:Ljava/io/FileReader;
    :catch_0
    move-exception v1

    .line 4131
    .local v1, ex:Ljava/io/IOException;
    :goto_4
    :try_start_3
    const-string v9, "WindowManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Couldn\'t read hdmi state from /sys/class/switch/hdmi/state: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 4135
    if-eqz v5, :cond_1

    .line 4137
    :try_start_4
    invoke-virtual {v5}, Ljava/io/InputStreamReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 4138
    :catch_1
    move-exception v9

    goto :goto_1

    .line 4132
    .end local v1           #ex:Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 4133
    .local v1, ex:Ljava/lang/NumberFormatException;
    :goto_5
    :try_start_5
    const-string v9, "WindowManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Couldn\'t read hdmi state from /sys/class/switch/hdmi/state: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 4135
    if-eqz v5, :cond_1

    .line 4137
    :try_start_6
    invoke-virtual {v5}, Ljava/io/InputStreamReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_1

    .line 4138
    :catch_3
    move-exception v9

    goto :goto_1

    .line 4135
    .end local v1           #ex:Ljava/lang/NumberFormatException;
    :catchall_0
    move-exception v7

    :goto_6
    if-eqz v5, :cond_3

    .line 4137
    :try_start_7
    invoke-virtual {v5}, Ljava/io/InputStreamReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 4139
    :cond_3
    :goto_7
    throw v7

    .end local v2           #filename:Ljava/lang/String;
    .end local v5           #reader:Ljava/io/FileReader;
    :cond_4
    move v9, v8

    .line 4149
    goto :goto_2

    :cond_5
    move v7, v8

    .line 4150
    goto :goto_3

    .line 4138
    .restart local v0       #buf:[C
    .restart local v2       #filename:Ljava/lang/String;
    .restart local v3       #n:I
    .restart local v6       #reader:Ljava/io/FileReader;
    :catch_4
    move-exception v9

    goto :goto_1

    .end local v0           #buf:[C
    .end local v3           #n:I
    .end local v6           #reader:Ljava/io/FileReader;
    .restart local v5       #reader:Ljava/io/FileReader;
    :catch_5
    move-exception v8

    goto :goto_7

    .line 4135
    .end local v5           #reader:Ljava/io/FileReader;
    .restart local v6       #reader:Ljava/io/FileReader;
    :catchall_1
    move-exception v7

    move-object v5, v6

    .end local v6           #reader:Ljava/io/FileReader;
    .restart local v5       #reader:Ljava/io/FileReader;
    goto :goto_6

    .line 4132
    .end local v5           #reader:Ljava/io/FileReader;
    .restart local v6       #reader:Ljava/io/FileReader;
    :catch_6
    move-exception v1

    move-object v5, v6

    .end local v6           #reader:Ljava/io/FileReader;
    .restart local v5       #reader:Ljava/io/FileReader;
    goto :goto_5

    .line 4130
    .end local v5           #reader:Ljava/io/FileReader;
    .restart local v6       #reader:Ljava/io/FileReader;
    :catch_7
    move-exception v1

    move-object v5, v6

    .end local v6           #reader:Ljava/io/FileReader;
    .restart local v5       #reader:Ljava/io/FileReader;
    goto :goto_4
.end method

.method public interceptKeyBeforeDispatching(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)J
    .locals 40
    .parameter "win"
    .parameter "event"
    .parameter "policyFlags"

    .prologue
    .line 2096
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->keyguardOn()Z

    move-result v27

    .line 2097
    .local v27, keyguardOn:Z
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v26

    .line 2098
    .local v26, keyCode:I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v31

    .line 2099
    .local v31, repeatCount:I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v28

    .line 2100
    .local v28, metaState:I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v20

    .line 2101
    .local v20, flags:I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_0

    const/16 v18, 0x1

    .line 2102
    .local v18, down:Z
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v13

    .line 2109
    .local v13, canceled:Z
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsShutDowning:Z

    if-eqz v3, :cond_1

    .line 2110
    const-wide/16 v5, -0x1

    .line 2527
    :goto_1
    return-wide v5

    .line 2101
    .end local v13           #canceled:Z
    .end local v18           #down:Z
    :cond_0
    const/16 v18, 0x0

    goto :goto_0

    .line 2113
    .restart local v13       #canceled:Z
    .restart local v18       #down:Z
    :cond_1
    const/4 v3, 0x3

    move/from16 v0, v26

    if-ne v0, v3, :cond_4

    .line 2114
    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeDisableTime:J

    const-wide/16 v7, 0x0

    cmp-long v3, v5, v7

    if-lez v3, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeDisableTime:J

    cmp-long v3, v5, v7

    if-gez v3, :cond_2

    .line 2115
    const-wide/16 v5, -0x1

    goto :goto_1

    .line 2117
    :cond_2
    if-nez v18, :cond_3

    .line 2126
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeDoubleClick:Ljava/lang/Runnable;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2127
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPreventHomekey:Z

    if-eqz v3, :cond_6

    .line 2128
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDoubleKeyWait:Z

    .line 2138
    :cond_3
    :goto_2
    sget-boolean v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->sHasPermanentKey:Z

    if-nez v3, :cond_7

    if-eqz v18, :cond_7

    .line 2139
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeKeyDown:Z

    .line 2145
    :cond_4
    :goto_3
    if-eqz v18, :cond_5

    .line 2146
    if-eqz p1, :cond_8

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    :goto_4
    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDownEventAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 2151
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenshotChordEnabled:Z

    if-eqz v3, :cond_b

    move/from16 v0, v20

    and-int/lit16 v3, v0, 0x400

    if-nez v3, :cond_b

    .line 2152
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeDownKeyTriggered:Z

    if-eqz v3, :cond_9

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyTriggered:Z

    if-nez v3, :cond_9

    .line 2153
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v29

    .line 2154
    .local v29, now:J
    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeDownKeyTime:J

    const-wide/16 v7, 0x96

    add-long v35, v5, v7

    .line 2155
    .local v35, timeoutTime:J
    cmp-long v3, v29, v35

    if-gez v3, :cond_9

    .line 2156
    sub-long v5, v35, v29

    goto :goto_1

    .line 2131
    .end local v29           #now:J
    .end local v35           #timeoutTime:J
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeKeyDown:Z

    if-eqz v3, :cond_3

    .line 2133
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDoubleKeyWait:Z

    goto :goto_2

    .line 2141
    :cond_7
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeKeyDown:Z

    goto :goto_3

    .line 2146
    :cond_8
    const/4 v3, 0x0

    goto :goto_4

    .line 2159
    :cond_9
    const/16 v3, 0x19

    move/from16 v0, v26

    if-ne v0, v3, :cond_b

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeDownKeyConsumedByScreenshotChord:Z

    if-eqz v3, :cond_b

    .line 2161
    if-nez v18, :cond_a

    .line 2162
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeDownKeyConsumedByScreenshotChord:Z

    .line 2164
    :cond_a
    const-wide/16 v5, -0x1

    goto/16 :goto_1

    .line 2169
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDoubleKeyWait:Z

    if-eqz v3, :cond_c

    .line 2170
    new-instance v17, Lcom/android/internal/policy/impl/PhoneWindowManager$DoubleKeyThread;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager$DoubleKeyThread;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    .line 2172
    .local v17, dkThread:Lcom/android/internal/policy/impl/PhoneWindowManager$DoubleKeyThread;
    :try_start_0
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_4

    .line 2178
    .end local v17           #dkThread:Lcom/android/internal/policy/impl/PhoneWindowManager$DoubleKeyThread;
    :cond_c
    :goto_5
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDoubleKeyWait:Z

    .line 2179
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDoubleKeyWaitAgain:Z

    .line 2185
    const/4 v3, 0x3

    move/from16 v0, v26

    if-ne v0, v3, :cond_24

    .line 2186
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPreventHomekey:Z

    if-eqz v3, :cond_d

    .line 2187
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPreventHomekey:Z

    .line 2188
    const-wide/16 v5, -0x1

    goto/16 :goto_1

    .line 2191
    :cond_d
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasDoubleKey:Z

    if-eqz v3, :cond_e

    .line 2195
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasDoubleKey:Z

    .line 2196
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomePressed:Z

    .line 2197
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeKeyDown:Z

    .line 2198
    const-wide/16 v5, -0x1

    goto/16 :goto_1

    .line 2203
    :cond_e
    if-eqz p1, :cond_f

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v12

    .line 2209
    .local v12, attrs:Landroid/view/WindowManager$LayoutParams;
    :goto_6
    if-eqz v12, :cond_10

    iget v3, v12, Landroid/view/WindowManager$LayoutParams;->meizuFlags:I

    and-int/lit8 v3, v3, 0x20

    if-eqz v3, :cond_10

    .line 2212
    const-wide/16 v5, 0x0

    goto/16 :goto_1

    .line 2203
    .end local v12           #attrs:Landroid/view/WindowManager$LayoutParams;
    :cond_f
    const/4 v12, 0x0

    goto :goto_6

    .line 2217
    .restart local v12       #attrs:Landroid/view/WindowManager$LayoutParams;
    :cond_10
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEnableHome:Z

    if-eqz v3, :cond_19

    .line 2218
    if-nez v18, :cond_1a

    .line 2219
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeLongPressed:Z

    move/from16 v21, v0

    .line 2220
    .local v21, homeWasLongPressed:Z
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomePressed:Z

    .line 2221
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeLongPressed:Z

    .line 2222
    if-nez v21, :cond_1a

    .line 2224
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomePressed:Z

    .line 2225
    if-nez v13, :cond_12

    .line 2235
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isIncomingRing()Z

    move-result v23

    .line 2236
    .local v23, incomingRinging:Z
    sget-boolean v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->sHasPermanentKey:Z

    if-eqz v3, :cond_11

    if-eqz v23, :cond_11

    .line 2237
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v34

    .line 2239
    .local v34, telephonyService:Lcom/android/internal/telephony/ITelephony;
    :try_start_1
    invoke-interface/range {v34 .. v34}, Lcom/android/internal/telephony/ITelephony;->answerRingingCall()Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2247
    .end local v34           #telephonyService:Lcom/android/internal/telephony/ITelephony;
    :cond_11
    :goto_7
    if-eqz v23, :cond_13

    .line 2281
    .end local v23           #incomingRinging:Z
    :cond_12
    :goto_8
    const-wide/16 v5, -0x1

    goto/16 :goto_1

    .line 2240
    .restart local v23       #incomingRinging:Z
    .restart local v34       #telephonyService:Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v19

    .line 2241
    .local v19, ex:Landroid/os/RemoteException;
    const-string v3, "WindowManager"

    const-string v5, "RemoteException from getPhoneInterface()"

    move-object/from16 v0, v19

    invoke-static {v3, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    .line 2252
    .end local v19           #ex:Landroid/os/RemoteException;
    .end local v34           #telephonyService:Lcom/android/internal/telephony/ITelephony;
    :cond_13
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mReturnHome:Z

    if-eqz v3, :cond_18

    .line 2253
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasBackGesture:Z

    .line 2254
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWaitGestureBack:Z

    .line 2255
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v24

    .line 2256
    .local v24, isBackDefaultHomePage:Ljava/lang/Boolean;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDownEventAttrs:Landroid/view/WindowManager$LayoutParams;

    if-eqz v3, :cond_16

    .line 2257
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDownEventAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v38, v0

    .line 2258
    .local v38, type:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDownEventAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v3}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v37

    .line 2260
    .local v37, titleString:Ljava/lang/String;
    const/16 v3, 0x7d8

    move/from16 v0, v38

    if-eq v0, v3, :cond_14

    const/16 v3, 0x7d3

    move/from16 v0, v38

    if-ne v0, v3, :cond_15

    .line 2262
    :cond_14
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v24

    .line 2263
    :cond_15
    const-string v3, "com.android.launcher/com.android.launcher2.Launcher"

    move-object/from16 v0, v37

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_16

    .line 2265
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v24

    .line 2267
    .end local v37           #titleString:Ljava/lang/String;
    .end local v38           #type:I
    :cond_16
    invoke-virtual/range {v24 .. v24}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_17

    .line 2268
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeIntent:Landroid/content/Intent;

    const-string v5, "isBack"

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2272
    :goto_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->launchHomeFromHotKey()V

    goto :goto_8

    .line 2270
    :cond_17
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeIntent:Landroid/content/Intent;

    const-string v5, "isBack"

    const/4 v6, 0x1

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_9

    .line 2274
    .end local v24           #isBackDefaultHomePage:Ljava/lang/Boolean;
    :cond_18
    const-string v3, "homekey"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->sendCloseSystemWindows(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 2285
    .end local v21           #homeWasLongPressed:Z
    .end local v23           #incomingRinging:Z
    :cond_19
    if-nez v18, :cond_1a

    .line 2286
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->enableHomeButton(Z)V

    .line 2287
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDisableHomeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2288
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDisableHomeRunnable:Ljava/lang/Runnable;

    const-wide/16 v6, 0xbb8

    invoke-virtual {v3, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2292
    :cond_1a
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mReturnHome:Z

    .line 2297
    if-eqz v12, :cond_21

    .line 2298
    iget v0, v12, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v38, v0

    .line 2299
    .restart local v38       #type:I
    const/16 v3, 0x7d4

    move/from16 v0, v38

    if-eq v0, v3, :cond_1b

    const/16 v3, 0x7d9

    move/from16 v0, v38

    if-ne v0, v3, :cond_1d

    .line 2302
    :cond_1b
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mReturnHome:Z

    .line 2303
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenDimByHome:Z

    if-eqz v3, :cond_1c

    .line 2304
    const-wide/16 v5, -0x1

    goto/16 :goto_1

    .line 2306
    :cond_1c
    const-wide/16 v5, 0x0

    goto/16 :goto_1

    .line 2310
    :cond_1d
    const/16 v3, 0x7d0

    move/from16 v0, v38

    if-eq v0, v3, :cond_1e

    const/16 v3, 0x7de

    move/from16 v0, v38

    if-eq v0, v3, :cond_1e

    const/16 v3, 0x7e1

    move/from16 v0, v38

    if-eq v0, v3, :cond_1e

    const/16 v3, 0x7d8

    move/from16 v0, v38

    if-eq v0, v3, :cond_1e

    const/16 v3, 0x7e0

    move/from16 v0, v38

    if-ne v0, v3, :cond_1f

    .line 2315
    :cond_1e
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mReturnHome:Z

    .line 2318
    :cond_1f
    sget-object v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->WINDOW_TYPES_WHERE_HOME_DOESNT_WORK:[I

    array-length v0, v3

    move/from16 v39, v0

    .line 2319
    .local v39, typeCount:I
    const/16 v22, 0x0

    .local v22, i:I
    :goto_a
    move/from16 v0, v22

    move/from16 v1, v39

    if-ge v0, v1, :cond_21

    .line 2320
    sget-object v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->WINDOW_TYPES_WHERE_HOME_DOESNT_WORK:[I

    aget v3, v3, v22

    move/from16 v0, v38

    if-ne v0, v3, :cond_20

    .line 2322
    const-wide/16 v5, -0x1

    goto/16 :goto_1

    .line 2319
    :cond_20
    add-int/lit8 v22, v22, 0x1

    goto :goto_a

    .line 2326
    .end local v22           #i:I
    .end local v38           #type:I
    .end local v39           #typeCount:I
    :cond_21
    if-eqz v18, :cond_22

    .line 2339
    if-nez v31, :cond_23

    .line 2340
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomePressed:Z

    .line 2353
    :cond_22
    :goto_b
    const-wide/16 v5, -0x1

    goto/16 :goto_1

    .line 2341
    :cond_23
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v3

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_22

    .line 2342
    if-nez v27, :cond_22

    .line 2348
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomePressed:Z

    .line 2349
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeLongPressed:Z

    goto :goto_b

    .line 2354
    .end local v12           #attrs:Landroid/view/WindowManager$LayoutParams;
    :cond_24
    const/16 v3, 0x52

    move/from16 v0, v26

    if-ne v0, v3, :cond_25

    .line 2356
    const/4 v15, 0x1

    .line 2358
    .local v15, chordBug:I
    if-eqz v18, :cond_2f

    if-nez v31, :cond_2f

    .line 2359
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEnableShiftMenuBugReports:Z

    if-eqz v3, :cond_2f

    and-int/lit8 v3, v28, 0x1

    const/4 v5, 0x1

    if-ne v3, v5, :cond_2f

    .line 2360
    new-instance v4, Landroid/content/Intent;

    const-string v3, "android.intent.action.BUG_REPORT"

    invoke-direct {v4, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2361
    .local v4, intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v3 .. v11}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 2363
    const-wide/16 v5, -0x1

    goto/16 :goto_1

    .line 2381
    .end local v4           #intent:Landroid/content/Intent;
    .end local v15           #chordBug:I
    :cond_25
    const/16 v3, 0x54

    move/from16 v0, v26

    if-ne v0, v3, :cond_28

    .line 2382
    if-eqz v18, :cond_27

    .line 2383
    if-nez v31, :cond_26

    .line 2384
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSearchKeyShortcutPending:Z

    .line 2385
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mConsumeSearchKeyUp:Z

    .line 2394
    :cond_26
    const-wide/16 v5, 0x0

    goto/16 :goto_1

    .line 2388
    :cond_27
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSearchKeyShortcutPending:Z

    .line 2389
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mConsumeSearchKeyUp:Z

    if-eqz v3, :cond_26

    .line 2390
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mConsumeSearchKeyUp:Z

    .line 2391
    const-wide/16 v5, -0x1

    goto/16 :goto_1

    .line 2395
    :cond_28
    const/16 v3, 0xbb

    move/from16 v0, v26

    if-ne v0, v3, :cond_2a

    .line 2396
    if-nez v18, :cond_29

    if-nez v31, :cond_29

    if-nez v27, :cond_29

    .line 2397
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->showOrHideRecentAppsDialog(I)V

    .line 2399
    :cond_29
    const-wide/16 v5, -0x1

    goto/16 :goto_1

    .line 2400
    :cond_2a
    const/16 v3, 0xdb

    move/from16 v0, v26

    if-ne v0, v3, :cond_2f

    .line 2401
    if-eqz v18, :cond_2d

    .line 2402
    if-nez v31, :cond_2c

    .line 2403
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAssistKeyLongPressed:Z

    .line 2419
    :cond_2b
    :goto_c
    const-wide/16 v5, -0x1

    goto/16 :goto_1

    .line 2404
    :cond_2c
    const/4 v3, 0x1

    move/from16 v0, v31

    if-ne v0, v3, :cond_2b

    .line 2405
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAssistKeyLongPressed:Z

    .line 2406
    if-nez v27, :cond_2b

    .line 2407
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->launchAssistLongPressAction()V

    goto :goto_c

    .line 2411
    :cond_2d
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAssistKeyLongPressed:Z

    if-eqz v3, :cond_2e

    .line 2412
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAssistKeyLongPressed:Z

    goto :goto_c

    .line 2414
    :cond_2e
    if-nez v27, :cond_2b

    .line 2415
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->launchAssistAction()V

    goto :goto_c

    .line 2427
    :cond_2f
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSearchKeyShortcutPending:Z

    if-eqz v3, :cond_31

    .line 2428
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    move-result-object v25

    .line 2429
    .local v25, kcm:Landroid/view/KeyCharacterMap;
    invoke-virtual/range {v25 .. v26}, Landroid/view/KeyCharacterMap;->isPrintingKey(I)Z

    move-result v3

    if-eqz v3, :cond_31

    .line 2430
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mConsumeSearchKeyUp:Z

    .line 2431
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSearchKeyShortcutPending:Z

    .line 2432
    if-eqz v18, :cond_30

    if-nez v31, :cond_30

    if-nez v27, :cond_30

    .line 2433
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShortcutManager:Lcom/android/internal/policy/impl/ShortcutManager;

    move-object/from16 v0, v25

    move/from16 v1, v26

    move/from16 v2, v28

    invoke-virtual {v3, v0, v1, v2}, Lcom/android/internal/policy/impl/ShortcutManager;->getIntent(Landroid/view/KeyCharacterMap;II)Landroid/content/Intent;

    move-result-object v33

    .line 2434
    .local v33, shortcutIntent:Landroid/content/Intent;
    if-eqz v33, :cond_30

    .line 2435
    const/high16 v3, 0x1000

    move-object/from16 v0, v33

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2437
    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v0, v33

    invoke-virtual {v3, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    .line 2448
    .end local v33           #shortcutIntent:Landroid/content/Intent;
    :cond_30
    :goto_d
    const-wide/16 v5, -0x1

    goto/16 :goto_1

    .line 2438
    .restart local v33       #shortcutIntent:Landroid/content/Intent;
    :catch_1
    move-exception v19

    .line 2439
    .local v19, ex:Landroid/content/ActivityNotFoundException;
    const-string v3, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Dropping shortcut key combination because the activity to which it is registered was not found: SEARCH+"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {v26 .. v26}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v19

    invoke-static {v3, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d

    .line 2453
    .end local v19           #ex:Landroid/content/ActivityNotFoundException;
    .end local v25           #kcm:Landroid/view/KeyCharacterMap;
    .end local v33           #shortcutIntent:Landroid/content/Intent;
    :cond_31
    if-eqz v18, :cond_32

    if-nez v31, :cond_32

    if-nez v27, :cond_32

    const/high16 v3, 0x1

    and-int v3, v3, v28

    if-eqz v3, :cond_32

    .line 2455
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    move-result-object v25

    .line 2456
    .restart local v25       #kcm:Landroid/view/KeyCharacterMap;
    invoke-virtual/range {v25 .. v26}, Landroid/view/KeyCharacterMap;->isPrintingKey(I)Z

    move-result v3

    if-eqz v3, :cond_32

    .line 2457
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShortcutManager:Lcom/android/internal/policy/impl/ShortcutManager;

    const v5, -0x70001

    and-int v5, v5, v28

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v3, v0, v1, v5}, Lcom/android/internal/policy/impl/ShortcutManager;->getIntent(Landroid/view/KeyCharacterMap;II)Landroid/content/Intent;

    move-result-object v33

    .line 2460
    .restart local v33       #shortcutIntent:Landroid/content/Intent;
    if-eqz v33, :cond_32

    .line 2461
    const/high16 v3, 0x1000

    move-object/from16 v0, v33

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2463
    :try_start_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v0, v33

    invoke-virtual {v3, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3 .. :try_end_3} :catch_2

    .line 2469
    :goto_e
    const-wide/16 v5, -0x1

    goto/16 :goto_1

    .line 2464
    :catch_2
    move-exception v19

    .line 2465
    .restart local v19       #ex:Landroid/content/ActivityNotFoundException;
    const-string v3, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Dropping shortcut key combination because the activity to which it is registered was not found: META+"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {v26 .. v26}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v19

    invoke-static {v3, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_e

    .line 2475
    .end local v19           #ex:Landroid/content/ActivityNotFoundException;
    .end local v25           #kcm:Landroid/view/KeyCharacterMap;
    .end local v33           #shortcutIntent:Landroid/content/Intent;
    :cond_32
    if-eqz v18, :cond_33

    if-nez v31, :cond_33

    if-nez v27, :cond_33

    .line 2476
    sget-object v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    move/from16 v0, v26

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 2477
    .local v14, category:Ljava/lang/String;
    if-eqz v14, :cond_33

    .line 2478
    const-string v3, "android.intent.action.MAIN"

    invoke-static {v3, v14}, Landroid/content/Intent;->makeMainSelectorActivity(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    .line 2479
    .restart local v4       #intent:Landroid/content/Intent;
    const/high16 v3, 0x1000

    invoke-virtual {v4, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2481
    :try_start_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_4
    .catch Landroid/content/ActivityNotFoundException; {:try_start_4 .. :try_end_4} :catch_3

    .line 2487
    :goto_f
    const-wide/16 v5, -0x1

    goto/16 :goto_1

    .line 2482
    :catch_3
    move-exception v19

    .line 2483
    .restart local v19       #ex:Landroid/content/ActivityNotFoundException;
    const-string v3, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Dropping application launch key because the activity to which it is registered was not found: keyCode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", category="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v19

    invoke-static {v3, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_f

    .line 2492
    .end local v4           #intent:Landroid/content/Intent;
    .end local v14           #category:Ljava/lang/String;
    .end local v19           #ex:Landroid/content/ActivityNotFoundException;
    :cond_33
    if-eqz v18, :cond_35

    if-nez v31, :cond_35

    const/16 v3, 0x3d

    move/from16 v0, v26

    if-ne v0, v3, :cond_35

    .line 2493
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRecentAppsDialogHeldModifiers:I

    if-nez v3, :cond_36

    if-nez v27, :cond_36

    .line 2494
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getModifiers()I

    move-result v3

    and-int/lit16 v0, v3, -0xc2

    move/from16 v32, v0

    .line 2495
    .local v32, shiftlessModifiers:I
    const/4 v3, 0x2

    move/from16 v0, v32

    invoke-static {v0, v3}, Landroid/view/KeyEvent;->metaStateHasModifiers(II)Z

    move-result v3

    if-nez v3, :cond_34

    const/high16 v3, 0x1

    move/from16 v0, v32

    invoke-static {v0, v3}, Landroid/view/KeyEvent;->metaStateHasModifiers(II)Z

    move-result v3

    if-eqz v3, :cond_36

    .line 2498
    :cond_34
    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRecentAppsDialogHeldModifiers:I

    .line 2499
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->showOrHideRecentAppsDialog(I)V

    .line 2500
    const-wide/16 v5, -0x1

    goto/16 :goto_1

    .line 2503
    .end local v32           #shiftlessModifiers:I
    :cond_35
    if-nez v18, :cond_36

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRecentAppsDialogHeldModifiers:I

    if-eqz v3, :cond_36

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRecentAppsDialogHeldModifiers:I

    and-int v3, v3, v28

    if-nez v3, :cond_36

    .line 2505
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRecentAppsDialogHeldModifiers:I

    .line 2506
    if-eqz v27, :cond_38

    const/4 v3, 0x2

    :goto_10
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->showOrHideRecentAppsDialog(I)V

    .line 2511
    :cond_36
    if-eqz v18, :cond_3a

    if-nez v31, :cond_3a

    const/16 v3, 0xcc

    move/from16 v0, v26

    if-eq v0, v3, :cond_37

    const/16 v3, 0x3e

    move/from16 v0, v26

    if-ne v0, v3, :cond_3a

    move/from16 v0, v28

    and-int/lit16 v3, v0, 0x7000

    if-eqz v3, :cond_3a

    .line 2515
    :cond_37
    move/from16 v0, v28

    and-int/lit16 v3, v0, 0xc1

    if-eqz v3, :cond_39

    const/16 v16, -0x1

    .line 2516
    .local v16, direction:I
    :goto_11
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v5

    move/from16 v0, v16

    invoke-interface {v3, v5, v0}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->switchKeyboardLayout(II)V

    .line 2517
    const-wide/16 v5, -0x1

    goto/16 :goto_1

    .line 2506
    .end local v16           #direction:I
    :cond_38
    const/4 v3, 0x3

    goto :goto_10

    .line 2515
    :cond_39
    const/16 v16, 0x1

    goto :goto_11

    .line 2519
    :cond_3a
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLanguageSwitchKeyPressed:Z

    if-eqz v3, :cond_3c

    if-nez v18, :cond_3c

    const/16 v3, 0xcc

    move/from16 v0, v26

    if-eq v0, v3, :cond_3b

    const/16 v3, 0x3e

    move/from16 v0, v26

    if-ne v0, v3, :cond_3c

    .line 2522
    :cond_3b
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLanguageSwitchKeyPressed:Z

    .line 2523
    const-wide/16 v5, -0x1

    goto/16 :goto_1

    .line 2527
    :cond_3c
    const-wide/16 v5, 0x0

    goto/16 :goto_1

    .line 2173
    .restart local v17       #dkThread:Lcom/android/internal/policy/impl/PhoneWindowManager$DoubleKeyThread;
    :catch_4
    move-exception v3

    goto/16 :goto_5
.end method

.method public interceptKeyBeforeQueueing(Landroid/view/KeyEvent;IZ)I
    .locals 28
    .parameter "event"
    .parameter "policyFlags"
    .parameter "isScreenOn"

    .prologue
    .line 4264
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemBooted:Z

    move/from16 v23, v0

    if-eqz v23, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsShutDowning:Z

    move/from16 v23, v0

    if-eqz v23, :cond_1

    .line 4266
    :cond_0
    const/16 v19, 0x0

    .line 4770
    :goto_0
    return v19

    .line 4269
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v23

    if-nez v23, :cond_2

    const/4 v6, 0x1

    .line 4270
    .local v6, down:Z
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v5

    .line 4271
    .local v5, canceled:Z
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v14

    .line 4276
    .local v14, keyCode:I
    const/high16 v23, 0x100

    and-int v23, v23, p2

    if-eqz v23, :cond_3

    const/4 v11, 0x1

    .line 4282
    .local v11, isInjected:Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    move-object/from16 v23, v0

    if-nez v23, :cond_4

    const/4 v15, 0x0

    .line 4286
    .local v15, keyguardActive:Z
    :goto_3
    const/16 v23, 0x3

    move/from16 v0, v23

    if-ne v14, v0, :cond_6

    .line 4287
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeDisableTime:J

    move-wide/from16 v23, v0

    const-wide/16 v25, 0x0

    cmp-long v23, v23, v25

    if-lez v23, :cond_6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v23

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeDisableTime:J

    move-wide/from16 v25, v0

    cmp-long v23, v23, v25

    if-gez v23, :cond_6

    .line 4288
    const/16 v19, 0x0

    goto :goto_0

    .line 4269
    .end local v5           #canceled:Z
    .end local v6           #down:Z
    .end local v11           #isInjected:Z
    .end local v14           #keyCode:I
    .end local v15           #keyguardActive:Z
    :cond_2
    const/4 v6, 0x0

    goto :goto_1

    .line 4276
    .restart local v5       #canceled:Z
    .restart local v6       #down:Z
    .restart local v14       #keyCode:I
    :cond_3
    const/4 v11, 0x0

    goto :goto_2

    .line 4282
    .restart local v11       #isInjected:Z
    :cond_4
    if-eqz p3, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->isShowingAndNotHidden()Z

    move-result v15

    goto :goto_3

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->isShowing()Z

    move-result v15

    goto :goto_3

    .line 4292
    .restart local v15       #keyguardActive:Z
    :cond_6
    const/16 v23, 0x1a

    move/from16 v0, v23

    if-ne v14, v0, :cond_b

    .line 4293
    or-int/lit8 p2, p2, 0x1

    .line 4295
    const/16 v23, 0x22b8

    const/16 v24, 0x3

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    aput-object v26, v24, v25

    const/16 v25, 0x1

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v26

    invoke-static/range {v26 .. v26}, Landroid/view/KeyEvent;->actionToString(I)Ljava/lang/String;

    move-result-object v26

    aput-object v26, v24, v25

    const/16 v25, 0x2

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v26

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v26

    aput-object v26, v24, v25

    invoke-static/range {v23 .. v24}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 4301
    :cond_7
    :goto_4
    and-int/lit8 v23, p2, 0x3

    if-eqz v23, :cond_d

    const/4 v13, 0x1

    .line 4316
    .local v13, isWakeKey:Z
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/os/PowerManager;->isScreenDim()Z

    move-result v23

    if-eqz v23, :cond_8

    const/16 v23, 0x1a

    move/from16 v0, v23

    if-eq v14, v0, :cond_8

    invoke-static {v14}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isMediaKey(I)Z

    move-result v23

    if-nez v23, :cond_8

    .line 4317
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->isScreenDim:Z

    .line 4320
    :cond_8
    if-eqz v14, :cond_f

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->isScreenDim:Z

    move/from16 v23, v0

    if-eqz v23, :cond_f

    const-string v23, "persist.sys.meizu.dim.input"

    const-string v24, "false"

    invoke-static/range {v23 .. v24}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    const-string v24, "false"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_f

    .line 4321
    if-nez v6, :cond_9

    .line 4322
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->isScreenDim:Z

    .line 4325
    const/16 v23, 0x19

    move/from16 v0, v23

    if-ne v14, v0, :cond_e

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeDownKeyTriggered:Z

    move/from16 v23, v0

    if-eqz v23, :cond_e

    .line 4326
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeDownKeyTriggered:Z

    .line 4332
    :cond_9
    :goto_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->isScreenDim:Z

    move/from16 v23, v0

    if-eqz v23, :cond_a

    .line 4333
    const/16 v23, 0x0

    const/16 v24, 0x1

    const/16 v25, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 4335
    :cond_a
    const/16 v19, 0x1

    .line 4336
    .local v19, re:I
    and-int/lit8 v19, v19, -0x2

    .line 4337
    or-int/lit8 v19, v19, 0x2

    .line 4338
    goto/16 :goto_0

    .line 4297
    .end local v13           #isWakeKey:Z
    .end local v19           #re:I
    :cond_b
    const/16 v23, 0x19

    move/from16 v0, v23

    if-eq v14, v0, :cond_c

    const/16 v23, 0x18

    move/from16 v0, v23

    if-ne v14, v0, :cond_7

    .line 4298
    :cond_c
    const/16 v23, 0x22b8

    const/16 v24, 0x3

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    aput-object v26, v24, v25

    const/16 v25, 0x1

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v26

    invoke-static/range {v26 .. v26}, Landroid/view/KeyEvent;->actionToString(I)Ljava/lang/String;

    move-result-object v26

    aput-object v26, v24, v25

    const/16 v25, 0x2

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v26

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v26

    aput-object v26, v24, v25

    invoke-static/range {v23 .. v24}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    goto/16 :goto_4

    .line 4301
    :cond_d
    const/4 v13, 0x0

    goto/16 :goto_5

    .line 4327
    .restart local v13       #isWakeKey:Z
    :cond_e
    const/16 v23, 0x18

    move/from16 v0, v23

    if-ne v14, v0, :cond_9

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeUpKeyTriggered:Z

    move/from16 v23, v0

    if-eqz v23, :cond_9

    .line 4328
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeUpKeyTriggered:Z

    goto :goto_6

    .line 4342
    :cond_f
    if-eqz v6, :cond_10

    move/from16 v0, p2

    and-int/lit16 v0, v0, 0x100

    move/from16 v23, v0

    if-eqz v23, :cond_10

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v23

    if-nez v23, :cond_10

    .line 4351
    :cond_10
    if-eqz v6, :cond_12

    const/16 v23, 0x3

    move/from16 v0, v23

    if-ne v14, v0, :cond_12

    sget-object v23, Landroid/os/Build;->IS_MX3:Ljava/lang/Boolean;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v23

    if-nez v23, :cond_11

    sget-object v23, Landroid/os/Build;->IS_MX2:Ljava/lang/Boolean;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v23

    if-eqz v23, :cond_12

    :cond_11
    if-eqz p3, :cond_12

    .line 4352
    const/16 v23, 0x0

    const/16 v24, 0x1

    const/16 v25, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 4363
    :cond_12
    const/16 v20, 0x0

    .line 4364
    .local v20, result:I
    const/16 v23, 0xdd

    move/from16 v0, v23

    if-ne v14, v0, :cond_16

    if-eqz v15, :cond_16

    if-eqz v6, :cond_16

    .line 4366
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->onWakeKeyWhenKeyguardShowingTq(I)V

    .line 4388
    :cond_13
    :goto_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDoubleKeyWait:Z

    move/from16 v23, v0

    if-eqz v23, :cond_14

    .line 4389
    const/16 v23, 0x3

    move/from16 v0, v23

    if-ne v14, v0, :cond_1e

    .line 4390
    if-nez v6, :cond_1d

    .line 4391
    and-int/lit8 v20, v20, -0x2

    .line 4392
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasDoubleKey:Z

    .line 4393
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDoubleKeyWait:Z

    .line 4394
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDoubleKeyWaitAgain:Z

    .line 4409
    :cond_14
    :goto_8
    sparse-switch v14, :sswitch_data_0

    :cond_15
    :goto_9
    move/from16 v19, v20

    .line 4770
    goto/16 :goto_0

    .line 4367
    :cond_16
    if-eqz p3, :cond_17

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHeadless:Z

    move/from16 v23, v0

    if-eqz v23, :cond_18

    :cond_17
    if-eqz v11, :cond_19

    if-nez v13, :cond_19

    .line 4369
    :cond_18
    const/16 v20, 0x1

    goto :goto_7

    .line 4373
    :cond_19
    const/16 v20, 0x0

    .line 4374
    if-eqz v6, :cond_13

    if-eqz v13, :cond_13

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isWakeKeyWhenScreenOff(I)Z

    move-result v23

    if-eqz v23, :cond_13

    .line 4375
    if-eqz v15, :cond_1c

    .line 4376
    sget-object v23, Landroid/os/Build;->IS_MX2:Ljava/lang/Boolean;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v23

    if-eqz v23, :cond_1b

    const/16 v23, 0x3

    move/from16 v0, v23

    if-eq v14, v0, :cond_1a

    const/16 v23, 0xdc

    move/from16 v0, v23

    if-ne v14, v0, :cond_1b

    .line 4377
    :cond_1a
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/internal/policy/impl/PhoneWindowManager;->startProximityTest(I)V

    goto :goto_7

    .line 4380
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->onWakeKeyWhenKeyguardShowingTq(I)V

    goto :goto_7

    .line 4384
    :cond_1c
    or-int/lit8 v20, v20, 0x2

    goto :goto_7

    .line 4396
    :cond_1d
    and-int/lit8 v20, v20, -0x2

    .line 4397
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDoubleKeyWaitAgain:Z

    .line 4398
    const-string v23, "WindowManager"

    const-string v24, "mDoubleKeyWaitAgain = true"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 4401
    :cond_1e
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDoubleKeyWait:Z

    .line 4402
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDoubleKeyWaitAgain:Z

    .line 4403
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeKeyDown:Z

    goto :goto_8

    .line 4415
    :sswitch_0
    if-eqz v6, :cond_22

    .line 4416
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v23

    move/from16 v0, v23

    and-int/lit16 v0, v0, 0x400

    move/from16 v23, v0

    if-nez v23, :cond_1f

    .line 4417
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPendingPowerKeyAction()V

    .line 4418
    sget-boolean v23, Lcom/android/internal/policy/impl/PhoneWindowManager;->sHasPermanentKey:Z

    if-nez v23, :cond_1f

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenDimByHome:Z

    move/from16 v23, v0

    if-nez v23, :cond_1f

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isIncomingRing()Z

    move-result v23

    if-nez v23, :cond_1f

    .line 4419
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeLongPress:Ljava/lang/Runnable;

    move-object/from16 v24, v0

    const-wide/16 v25, 0x3e8

    invoke-virtual/range {v23 .. v26}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4439
    :cond_1f
    :goto_a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->isScreenDim:Z

    move/from16 v23, v0

    if-eqz v23, :cond_15

    const-string v23, "persist.sys.meizu.dim.input"

    const-string v24, "true"

    invoke-static/range {v23 .. v24}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    const-string v24, "false"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_15

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenDimByHome:Z

    move/from16 v23, v0

    if-nez v23, :cond_15

    .line 4440
    if-nez v6, :cond_20

    .line 4441
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->isScreenDim:Z

    .line 4444
    :cond_20
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->isScreenDim:Z

    move/from16 v23, v0

    if-eqz v23, :cond_21

    .line 4445
    const/16 v23, 0x0

    const/16 v24, 0x1

    const/16 v25, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 4447
    :cond_21
    const/16 v19, 0x1

    .line 4448
    .restart local v19       #re:I
    and-int/lit8 v19, v19, -0x2

    .line 4449
    or-int/lit8 v19, v19, 0x2

    .line 4450
    goto/16 :goto_0

    .line 4424
    .end local v19           #re:I
    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeLongPress:Ljava/lang/Runnable;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4425
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenDimByHome:Z

    move/from16 v23, v0

    if-eqz v23, :cond_1f

    .line 4426
    const-string v23, "WindowManager"

    const-string v24, "mScreenDimByHome = true"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4427
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mGotoSleep:Ljava/lang/Runnable;

    move-object/from16 v24, v0

    const-wide/16 v25, 0x32

    invoke-virtual/range {v23 .. v26}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_a

    .line 4457
    :sswitch_1
    const/16 v23, 0x19

    move/from16 v0, v23

    if-ne v14, v0, :cond_26

    .line 4458
    if-eqz v6, :cond_25

    .line 4459
    if-eqz p3, :cond_23

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeDownKeyTriggered:Z

    move/from16 v23, v0

    if-nez v23, :cond_23

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v23

    move/from16 v0, v23

    and-int/lit16 v0, v0, 0x400

    move/from16 v23, v0

    if-nez v23, :cond_23

    .line 4461
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeDownKeyTriggered:Z

    .line 4462
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v23

    move-wide/from16 v0, v23

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeDownKeyTime:J

    .line 4463
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeDownKeyConsumedByScreenshotChord:Z

    .line 4464
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPendingPowerKeyAction()V

    .line 4466
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->interceptMzScreenshotChord()V

    .line 4485
    :cond_23
    :goto_b
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v22

    .line 4486
    .local v22, telephonyService:Lcom/android/internal/telephony/ITelephony;
    if-eqz v6, :cond_2c

    .line 4487
    if-eqz v22, :cond_29

    .line 4489
    :try_start_0
    invoke-interface/range {v22 .. v22}, Lcom/android/internal/telephony/ITelephony;->isRinging()Z

    move-result v23

    if-eqz v23, :cond_28

    .line 4496
    const-string v23, "WindowManager"

    const-string v24, "interceptKeyBeforeQueueing: VOLUME key-down while ringing: Silence ringer!"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4499
    const/16 v23, 0x18

    move/from16 v0, v23

    if-ne v14, v0, :cond_24

    .line 4500
    if-eqz v6, :cond_24

    .line 4501
    invoke-interface/range {v22 .. v22}, Lcom/android/internal/telephony/ITelephony;->answerRingingCallWithAnimate()Z

    .line 4507
    :cond_24
    invoke-interface/range {v22 .. v22}, Lcom/android/internal/telephony/ITelephony;->silenceRinger()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4511
    and-int/lit8 v20, v20, -0x2

    goto/16 :goto_9

    .line 4469
    .end local v22           #telephonyService:Lcom/android/internal/telephony/ITelephony;
    :cond_25
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeDownKeyTriggered:Z

    .line 4470
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPendingScreenshotChordAction()V

    goto :goto_b

    .line 4472
    :cond_26
    const/16 v23, 0x18

    move/from16 v0, v23

    if-ne v14, v0, :cond_23

    .line 4473
    if-eqz v6, :cond_27

    .line 4474
    if-eqz p3, :cond_23

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeUpKeyTriggered:Z

    move/from16 v23, v0

    if-nez v23, :cond_23

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v23

    move/from16 v0, v23

    and-int/lit16 v0, v0, 0x400

    move/from16 v23, v0

    if-nez v23, :cond_23

    .line 4476
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeUpKeyTriggered:Z

    .line 4477
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPendingPowerKeyAction()V

    .line 4478
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPendingScreenshotChordAction()V

    goto :goto_b

    .line 4481
    :cond_27
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeUpKeyTriggered:Z

    .line 4482
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPendingScreenshotChordAction()V

    goto :goto_b

    .line 4514
    .restart local v22       #telephonyService:Lcom/android/internal/telephony/ITelephony;
    :cond_28
    :try_start_1
    invoke-interface/range {v22 .. v22}, Lcom/android/internal/telephony/ITelephony;->isOffhook()Z

    move-result v23

    if-eqz v23, :cond_29

    and-int/lit8 v23, v20, 0x1

    if-nez v23, :cond_29

    .line 4518
    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1, v14}, Lcom/android/internal/policy/impl/PhoneWindowManager;->handleVolumeKey(II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_9

    .line 4521
    :catch_0
    move-exception v8

    .line 4522
    .local v8, ex:Landroid/os/RemoteException;
    const-string v23, "WindowManager"

    const-string v24, "ITelephony threw RemoteException"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v0, v1, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4526
    .end local v8           #ex:Landroid/os/RemoteException;
    :cond_29
    invoke-static {}, Landroid/hardware/Camera;->flashLightChangingEnabled()Z

    move-result v23

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_2b

    const/16 v23, 0x5b

    move/from16 v0, v23

    if-eq v14, v0, :cond_2b

    .line 4528
    const/16 v23, 0x18

    move/from16 v0, v23

    if-ne v14, v0, :cond_2a

    const/16 v23, 0x1

    :goto_c
    invoke-static/range {v23 .. v23}, Landroid/hardware/Camera;->changingFlashLightVolume(Z)V

    .line 4529
    and-int/lit8 v20, v20, -0x2

    .line 4530
    goto/16 :goto_9

    .line 4528
    :cond_2a
    const/16 v23, 0x0

    goto :goto_c

    .line 4533
    :cond_2b
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isMusicActive()Z

    move-result v23

    if-eqz v23, :cond_15

    and-int/lit8 v23, v20, 0x1

    if-nez v23, :cond_15

    .line 4536
    const/16 v23, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1, v14}, Lcom/android/internal/policy/impl/PhoneWindowManager;->handleVolumeKey(II)V

    goto/16 :goto_9

    .line 4541
    :cond_2c
    const/16 v23, 0x18

    move/from16 v0, v23

    if-ne v14, v0, :cond_15

    if-eqz v22, :cond_15

    :try_start_2
    invoke-interface/range {v22 .. v22}, Lcom/android/internal/telephony/ITelephony;->isRinging()Z

    move-result v23

    if-eqz v23, :cond_15

    .line 4542
    const-string v23, "WindowManager"

    const-string v24, "telephonyService.cancelRingingCall(); "

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4543
    invoke-interface/range {v22 .. v22}, Lcom/android/internal/telephony/ITelephony;->cancelAnswerRingCall()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_9

    .line 4545
    :catch_1
    move-exception v7

    .line 4547
    .local v7, e:Landroid/os/RemoteException;
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_9

    .line 4554
    .end local v7           #e:Landroid/os/RemoteException;
    .end local v22           #telephonyService:Lcom/android/internal/telephony/ITelephony;
    :sswitch_2
    and-int/lit8 v20, v20, -0x2

    .line 4555
    if-eqz v6, :cond_30

    .line 4556
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v22

    .line 4557
    .restart local v22       #telephonyService:Lcom/android/internal/telephony/ITelephony;
    const/4 v10, 0x0

    .line 4558
    .local v10, hungUp:Z
    if-eqz v22, :cond_2d

    .line 4560
    :try_start_3
    invoke-interface/range {v22 .. v22}, Lcom/android/internal/telephony/ITelephony;->endCall()Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    move-result v10

    .line 4565
    :cond_2d
    :goto_d
    if-eqz p3, :cond_2e

    if-eqz v10, :cond_2f

    :cond_2e
    const/16 v23, 0x1

    :goto_e
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->interceptPowerKeyDown(Z)V

    goto/16 :goto_9

    .line 4561
    :catch_2
    move-exception v8

    .line 4562
    .restart local v8       #ex:Landroid/os/RemoteException;
    const-string v23, "WindowManager"

    const-string v24, "ITelephony threw RemoteException"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v0, v1, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d

    .line 4565
    .end local v8           #ex:Landroid/os/RemoteException;
    :cond_2f
    const/16 v23, 0x0

    goto :goto_e

    .line 4567
    .end local v10           #hungUp:Z
    .end local v22           #telephonyService:Lcom/android/internal/telephony/ITelephony;
    :cond_30
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/internal/policy/impl/PhoneWindowManager;->interceptPowerKeyUp(Z)Z

    move-result v23

    if-eqz v23, :cond_15

    .line 4568
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEndcallBehavior:I

    move/from16 v23, v0

    and-int/lit8 v23, v23, 0x1

    if-eqz v23, :cond_31

    .line 4570
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->goHome()Z

    move-result v23

    if-nez v23, :cond_15

    .line 4574
    :cond_31
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEndcallBehavior:I

    move/from16 v23, v0

    and-int/lit8 v23, v23, 0x2

    if-eqz v23, :cond_15

    .line 4576
    and-int/lit8 v23, v20, -0x3

    or-int/lit8 v20, v23, 0x4

    goto/16 :goto_9

    .line 4584
    :sswitch_3
    and-int/lit8 v20, v20, -0x2

    .line 4585
    if-eqz v6, :cond_36

    .line 4586
    if-eqz p3, :cond_34

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyTriggered:Z

    move/from16 v23, v0

    if-nez v23, :cond_34

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v23

    move/from16 v0, v23

    and-int/lit16 v0, v0, 0x400

    move/from16 v23, v0

    if-nez v23, :cond_34

    .line 4588
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyTriggered:Z

    .line 4589
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v23

    move-wide/from16 v0, v23

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyTime:J

    .line 4590
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->interceptMzScreenshotChord()V

    .line 4605
    :goto_f
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v22

    .line 4606
    .restart local v22       #telephonyService:Lcom/android/internal/telephony/ITelephony;
    const/4 v12, 0x0

    .line 4607
    .local v12, isOffHook:Z
    if-eqz v22, :cond_32

    .line 4609
    :try_start_4
    invoke-interface/range {v22 .. v22}, Lcom/android/internal/telephony/ITelephony;->isOffhook()Z
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4

    move-result v23

    if-eqz v23, :cond_32

    .line 4610
    const/4 v12, 0x1

    .line 4617
    :cond_32
    :goto_10
    const-string v23, "WindowManager"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, " isScreenOn "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " isOffHook "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " VmDownKeyTriggered"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeDownKeyTriggered:Z

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " VmupKeyTriggered"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeDownKeyTriggered:Z

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4618
    if-eqz p3, :cond_33

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeDownKeyTriggered:Z

    move/from16 v23, v0

    if-nez v23, :cond_33

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeUpKeyTriggered:Z

    move/from16 v23, v0

    if-eqz v23, :cond_35

    :cond_33
    const/16 v23, 0x1

    :goto_11
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->interceptPowerKeyDown(Z)V

    .line 4620
    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTelephonyIsHooking:Z

    goto/16 :goto_9

    .line 4593
    .end local v12           #isOffHook:Z
    .end local v22           #telephonyService:Lcom/android/internal/telephony/ITelephony;
    :cond_34
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v21

    .line 4595
    .local v21, statusbar:Lcom/android/internal/statusbar/IStatusBarService;
    const/16 v23, 0x0

    const/16 v24, 0x0

    :try_start_5
    move-object/from16 v0, v21

    move-object/from16 v1, p1

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/statusbar/IStatusBarService;->toggleHomeKey(Landroid/view/KeyEvent;ZZ)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_3

    goto/16 :goto_f

    .line 4596
    :catch_3
    move-exception v7

    .line 4598
    .restart local v7       #e:Landroid/os/RemoteException;
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_f

    .line 4612
    .end local v7           #e:Landroid/os/RemoteException;
    .end local v21           #statusbar:Lcom/android/internal/statusbar/IStatusBarService;
    .restart local v12       #isOffHook:Z
    .restart local v22       #telephonyService:Lcom/android/internal/telephony/ITelephony;
    :catch_4
    move-exception v8

    .line 4613
    .restart local v8       #ex:Landroid/os/RemoteException;
    const-string v23, "WindowManager"

    const-string v24, "ITelephony threw RemoteException"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v0, v1, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_10

    .line 4618
    .end local v8           #ex:Landroid/os/RemoteException;
    :cond_35
    const/16 v23, 0x0

    goto :goto_11

    .line 4622
    .end local v12           #isOffHook:Z
    .end local v22           #telephonyService:Lcom/android/internal/telephony/ITelephony;
    :cond_36
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyTriggered:Z

    .line 4623
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPendingScreenshotChordAction()V

    .line 4624
    if-nez v5, :cond_37

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPendingPowerKeyUpCanceled:Z

    move/from16 v23, v0

    if-eqz v23, :cond_3c

    :cond_37
    const/16 v23, 0x1

    :goto_12
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->interceptPowerKeyUp(Z)Z

    move-result v23

    if-nez v23, :cond_38

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTelephonyIsHooking:Z

    move/from16 v23, v0

    if-eqz v23, :cond_3b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPendingPowerKeyUpCanceled:Z

    move/from16 v23, v0

    if-nez v23, :cond_3b

    .line 4625
    :cond_38
    const/4 v9, 0x0

    .line 4626
    .local v9, handled:Z
    const/4 v10, 0x0

    .line 4627
    .restart local v10       #hungUp:Z
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v17

    .line 4628
    .local v17, phoneServ:Lcom/android/internal/telephony/ITelephony;
    if-eqz v17, :cond_3f

    .line 4630
    :try_start_6
    move-object/from16 v0, v17

    invoke-interface {v0, v14}, Lcom/android/internal/telephony/ITelephony;->processKeyEvent(I)I
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_5

    move-result v18

    .line 4631
    .local v18, proceResult:I
    and-int/lit8 v23, v18, 0x1

    if-eqz v23, :cond_3d

    const/4 v9, 0x1

    .line 4632
    :goto_13
    and-int/lit8 v23, v18, 0x10

    if-eqz v23, :cond_3e

    const/4 v10, 0x1

    .line 4641
    .end local v18           #proceResult:I
    :goto_14
    if-nez v9, :cond_39

    .line 4643
    :try_start_7
    const-string v23, "alarm"

    invoke-static/range {v23 .. v23}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Landroid/app/IAlarmManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IAlarmManager;

    move-result-object v4

    .line 4647
    .local v4, almMgr:Landroid/app/IAlarmManager;
    if-nez v4, :cond_40

    .line 4648
    const-string v23, "WindowManager"

    const-string v24, "Unable to find alarm manager service interface."

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_6

    .line 4660
    .end local v4           #almMgr:Landroid/app/IAlarmManager;
    :cond_39
    :goto_15
    const-string v23, "WindowManager"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "handled "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " isScreenOn "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " keyguardActive "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4661
    if-nez v9, :cond_3b

    if-nez v5, :cond_3a

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPendingPowerKeyUpCanceled:Z

    move/from16 v23, v0

    if-eqz v23, :cond_41

    :cond_3a
    const/16 v23, 0x1

    :goto_16
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->interceptPowerKeyUp(Z)Z

    move-result v23

    if-eqz v23, :cond_3b

    .line 4662
    if-eqz p3, :cond_3b

    .line 4663
    const-string v23, "WindowManager"

    const-string v24, "ACTION_GO_TO_SLEEP"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4664
    and-int/lit8 v23, v20, -0x3

    or-int/lit8 v20, v23, 0x4

    .line 4669
    .end local v9           #handled:Z
    .end local v10           #hungUp:Z
    .end local v17           #phoneServ:Lcom/android/internal/telephony/ITelephony;
    :cond_3b
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPendingPowerKeyUpCanceled:Z

    goto/16 :goto_9

    .line 4624
    :cond_3c
    const/16 v23, 0x0

    goto/16 :goto_12

    .line 4631
    .restart local v9       #handled:Z
    .restart local v10       #hungUp:Z
    .restart local v17       #phoneServ:Lcom/android/internal/telephony/ITelephony;
    .restart local v18       #proceResult:I
    :cond_3d
    const/4 v9, 0x0

    goto/16 :goto_13

    .line 4632
    :cond_3e
    const/4 v10, 0x0

    goto :goto_14

    .line 4634
    .end local v18           #proceResult:I
    :catch_5
    move-exception v8

    .line 4635
    .restart local v8       #ex:Landroid/os/RemoteException;
    const-string v23, "WindowManager"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "ITelephony threw RemoteException"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_14

    .line 4638
    .end local v8           #ex:Landroid/os/RemoteException;
    :cond_3f
    const-string v23, "WindowManager"

    const-string v24, "!!! Unable to find ITelephony interface !!!"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_14

    .line 4651
    .restart local v4       #almMgr:Landroid/app/IAlarmManager;
    :cond_40
    :try_start_8
    invoke-interface {v4}, Landroid/app/IAlarmManager;->performPowerKeyClick()Z
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_6

    move-result v9

    goto/16 :goto_15

    .line 4653
    .end local v4           #almMgr:Landroid/app/IAlarmManager;
    :catch_6
    move-exception v8

    .line 4654
    .restart local v8       #ex:Landroid/os/RemoteException;
    const-string v23, "WindowManager"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "AlarmManagerService threw RemoteException"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_15

    .line 4661
    .end local v8           #ex:Landroid/os/RemoteException;
    :cond_41
    const/16 v23, 0x0

    goto :goto_16

    .line 4677
    .end local v9           #handled:Z
    .end local v10           #hungUp:Z
    .end local v17           #phoneServ:Lcom/android/internal/telephony/ITelephony;
    :sswitch_4
    if-eqz v6, :cond_42

    .line 4678
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v22

    .line 4679
    .restart local v22       #telephonyService:Lcom/android/internal/telephony/ITelephony;
    if-eqz v22, :cond_42

    .line 4681
    :try_start_9
    invoke-interface/range {v22 .. v22}, Lcom/android/internal/telephony/ITelephony;->isIdle()Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_7

    move-result v23

    if-eqz v23, :cond_15

    .line 4699
    .end local v22           #telephonyService:Lcom/android/internal/telephony/ITelephony;
    :cond_42
    :goto_17
    :sswitch_5
    and-int/lit8 v23, v20, 0x1

    if-nez v23, :cond_15

    .line 4705
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 4706
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v23, v0

    const/16 v24, 0x3

    new-instance v25, Landroid/view/KeyEvent;

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/view/KeyEvent;-><init>(Landroid/view/KeyEvent;)V

    invoke-virtual/range {v23 .. v25}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v16

    .line 4708
    .local v16, msg:Landroid/os/Message;
    const/16 v23, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 4709
    invoke-virtual/range {v16 .. v16}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_9

    .line 4686
    .end local v16           #msg:Landroid/os/Message;
    .restart local v22       #telephonyService:Lcom/android/internal/telephony/ITelephony;
    :catch_7
    move-exception v8

    .line 4687
    .restart local v8       #ex:Landroid/os/RemoteException;
    const-string v23, "WindowManager"

    const-string v24, "ITelephony threw RemoteException"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v0, v1, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_17

    .line 4715
    .end local v8           #ex:Landroid/os/RemoteException;
    .end local v22           #telephonyService:Lcom/android/internal/telephony/ITelephony;
    :sswitch_6
    if-eqz v6, :cond_15

    .line 4716
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v22

    .line 4717
    .restart local v22       #telephonyService:Lcom/android/internal/telephony/ITelephony;
    if-eqz v22, :cond_15

    .line 4719
    :try_start_a
    invoke-interface/range {v22 .. v22}, Lcom/android/internal/telephony/ITelephony;->isRinging()Z

    move-result v23

    if-eqz v23, :cond_15

    .line 4720
    const-string v23, "WindowManager"

    const-string v24, "interceptKeyBeforeQueueing: CALL key-down while ringing: Answer the call!"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4722
    invoke-interface/range {v22 .. v22}, Lcom/android/internal/telephony/ITelephony;->answerRingingCall()Z
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_8

    .line 4726
    and-int/lit8 v20, v20, -0x2

    goto/16 :goto_9

    .line 4728
    :catch_8
    move-exception v8

    .line 4729
    .restart local v8       #ex:Landroid/os/RemoteException;
    const-string v23, "WindowManager"

    const-string v24, "ITelephony threw RemoteException"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v0, v1, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_9

    .line 4736
    .end local v8           #ex:Landroid/os/RemoteException;
    .end local v22           #telephonyService:Lcom/android/internal/telephony/ITelephony;
    :sswitch_7
    if-eqz v6, :cond_43

    .line 4737
    const-string v23, "WindowManager"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "intecept KEYCODE_SLIDE down, keyguardActive is "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4738
    if-nez v15, :cond_15

    .line 4741
    or-int/lit8 v20, v20, 0x1

    goto/16 :goto_9

    .line 4744
    :cond_43
    const-string v23, "WindowManager"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "intecept KEYCODE_SLIDE up, keyguardActive is "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4745
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLock:Ljava/lang/Object;

    move-object/from16 v24, v0

    monitor-enter v24

    .line 4746
    :try_start_b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v25

    move-wide/from16 v0, v25

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSlideKeyUpTime:J

    .line 4747
    monitor-exit v24

    goto/16 :goto_9

    :catchall_0
    move-exception v23

    monitor-exit v24
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    throw v23

    .line 4752
    :sswitch_8
    if-eqz v6, :cond_15

    .line 4753
    const-string v23, "WindowManager"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "intecept KEYCODE_UNLOCK down, keyguardActive is "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4754
    if-nez v15, :cond_15

    .line 4757
    or-int/lit8 v20, v20, 0x1

    goto/16 :goto_9

    .line 4765
    :sswitch_9
    sget-boolean v23, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRecentPanelOpened:Z

    if-eqz v23, :cond_15

    .line 4766
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    new-instance v24, Landroid/content/Intent;

    const-string v25, "com.android.systemui.recent.action.CLOSE"

    invoke-direct/range {v24 .. v25}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v25, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual/range {v23 .. v25}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_9

    .line 4409
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x5 -> :sswitch_6
        0x6 -> :sswitch_2
        0x18 -> :sswitch_1
        0x19 -> :sswitch_1
        0x1a -> :sswitch_3
        0x4f -> :sswitch_5
        0x55 -> :sswitch_4
        0x56 -> :sswitch_5
        0x57 -> :sswitch_5
        0x58 -> :sswitch_5
        0x59 -> :sswitch_5
        0x5a -> :sswitch_5
        0x5b -> :sswitch_5
        0x6f -> :sswitch_9
        0x7e -> :sswitch_4
        0x7f -> :sswitch_4
        0x82 -> :sswitch_5
        0xa4 -> :sswitch_1
        0xdc -> :sswitch_7
        0xdd -> :sswitch_8
    .end sparse-switch
.end method

.method public interceptMotionBeforeQueueing(Landroid/view/MotionEvent;I)I
    .locals 13
    .parameter "event"
    .parameter "policyFlags"

    .prologue
    .line 4882
    const/4 v5, 0x1

    .line 4887
    .local v5, result:I
    iget-boolean v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemBooted:Z

    if-eqz v9, :cond_0

    iget-boolean v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsShutDowning:Z

    if-eqz v9, :cond_1

    .line 4889
    :cond_0
    const/4 v9, 0x0

    .line 5272
    :goto_0
    return v9

    .line 4895
    :cond_1
    iget-boolean v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopIsFullscreen:Z

    if-eqz v9, :cond_3

    iget v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMeizuEnableFullScreenDrag:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_3

    .line 4900
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 4901
    .local v3, point:Landroid/graphics/Point;
    iget-object v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDisplay:Landroid/view/Display;

    invoke-virtual {v9, v3}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 4902
    iget v6, v3, Landroid/graphics/Point;->x:I

    .line 4903
    .local v6, screenWidth:I
    add-int/lit16 v9, v6, -0x8c

    div-int/lit8 v0, v9, 0x2

    .line 4904
    .local v0, dragLeft:I
    add-int/lit16 v1, v0, 0x8c

    .line 4906
    .local v1, dragRight:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    .line 4908
    .local v8, x:F
    iget v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusbarHeight:I

    if-nez v9, :cond_2

    .line 4909
    iget-object v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 4910
    .local v4, res:Landroid/content/res/Resources;
    const v9, 0x105000c

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    iput v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusbarHeight:I

    .line 4913
    .end local v4           #res:Landroid/content/res/Resources;
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    if-nez v9, :cond_b

    .line 4918
    iget-boolean v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemUIAlreadyShownInFullScreen:Z

    if-nez v9, :cond_a

    .line 4919
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    iget v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusbarHeight:I

    int-to-float v10, v10

    cmpg-float v9, v9, v10

    if-gez v9, :cond_3

    .line 4920
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWaitToShowStatusbar:Z

    .line 4925
    int-to-float v9, v0

    cmpl-float v9, v8, v9

    if-lez v9, :cond_9

    int-to-float v9, v1

    cmpg-float v9, v8, v9

    if-gez v9, :cond_9

    .line 4926
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDirectDrapNotiPanelInFullScreen:Z

    .line 4931
    :goto_1
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v7

    .line 4933
    .local v7, statusbar:Lcom/android/internal/statusbar/IStatusBarService;
    :try_start_0
    iget-boolean v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDirectDrapNotiPanelInFullScreen:Z

    if-eqz v9, :cond_3

    .line 4934
    invoke-interface {v7, p1}, Lcom/android/internal/statusbar/IStatusBarService;->updateStatusbarPos(Landroid/view/MotionEvent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5021
    .end local v0           #dragLeft:I
    .end local v1           #dragRight:I
    .end local v3           #point:Landroid/graphics/Point;
    .end local v6           #screenWidth:I
    .end local v7           #statusbar:Lcom/android/internal/statusbar/IStatusBarService;
    .end local v8           #x:F
    :cond_3
    :goto_2
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v7

    .line 5023
    .restart local v7       #statusbar:Lcom/android/internal/statusbar/IStatusBarService;
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isKeyguardLocked()Z

    move-result v9

    if-nez v9, :cond_5

    iget-boolean v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWaitGestureBack:Z

    if-nez v9, :cond_5

    iget-boolean v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeKeyDown:Z

    if-nez v9, :cond_5

    .line 5024
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isTaskPanelEnabled()Z

    move-result v9

    if-eqz v9, :cond_14

    iget-boolean v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNeedUpdateStatusBar:Z

    if-eqz v9, :cond_14

    iget-boolean v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDownInValidArea:Z

    if-eqz v9, :cond_14

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_14

    .line 5027
    :try_start_1
    iget-boolean v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShouldPassToUser:Z

    if-eqz v9, :cond_4

    iget v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDownPos:F

    sget v10, Lcom/android/internal/policy/impl/PhoneWindowManager;->RECENT_VALID_DOWN_POS:I

    int-to-float v10, v10

    cmpl-float v9, v9, v10

    if-lez v9, :cond_4

    .line 5028
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isLandScape()Z

    move-result v9

    if-eqz v9, :cond_13

    .line 5029
    sget-boolean v9, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRecentPanelOpened:Z

    if-nez v9, :cond_4

    iget v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDownPos:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v10

    sub-float/2addr v9, v10

    const/high16 v10, 0x41f0

    cmpl-float v9, v9, v10

    if-lez v9, :cond_4

    .line 5030
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShouldPassToUser:Z

    .line 5038
    :cond_4
    :goto_3
    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-interface {v7, p1, v9, v10}, Lcom/android/internal/statusbar/IStatusBarService;->updateRecentPanel(Landroid/view/MotionEvent;ZZ)V

    .line 5039
    iget-boolean v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShouldPassToUser:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_4

    if-nez v9, :cond_5

    .line 5040
    and-int/lit8 v5, v5, -0x2

    .line 5107
    :cond_5
    :goto_4
    sget-boolean v9, Lcom/android/internal/policy/impl/PhoneWindowManager;->sHasPermanentKey:Z

    if-nez v9, :cond_8

    .line 5108
    iget-boolean v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasBackGesture:Z

    if-eqz v9, :cond_27

    .line 5109
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_24

    .line 5114
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasBackGesture:Z

    .line 5116
    iget-object v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v10, Lcom/android/internal/policy/impl/PhoneWindowManager$21;

    invoke-direct {v10, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$21;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    const-wide/16 v11, 0x32

    invoke-virtual {v9, v10, v11, v12}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 5125
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isTriggerGestureBack(Landroid/view/MotionEvent;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 5126
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    iput-wide v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDownTime:J

    .line 5128
    const/4 v9, 0x0

    const/4 v10, 0x0

    iget-wide v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDownTime:J

    invoke-virtual {p0, v9, v10, v11, v12}, Lcom/android/internal/policy/impl/PhoneWindowManager;->sendEvent(IIJ)V

    .line 5129
    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    invoke-virtual {p0, v9, v10, v11, v12}, Lcom/android/internal/policy/impl/PhoneWindowManager;->sendEvent(IIJ)V

    .line 5136
    :cond_6
    iget-boolean v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSupportsLongpress:Z

    if-eqz v9, :cond_7

    .line 5137
    iget-object v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCheckLongPress:Ljava/lang/Runnable;

    invoke-virtual {v9, v10}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5182
    :cond_7
    :goto_5
    and-int/lit8 v5, v5, -0x2

    :cond_8
    :goto_6
    move v9, v5

    .line 5272
    goto/16 :goto_0

    .line 4928
    .end local v7           #statusbar:Lcom/android/internal/statusbar/IStatusBarService;
    .restart local v0       #dragLeft:I
    .restart local v1       #dragRight:I
    .restart local v3       #point:Landroid/graphics/Point;
    .restart local v6       #screenWidth:I
    .restart local v8       #x:F
    :cond_9
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDirectDrapNotiPanelInFullScreen:Z

    goto/16 :goto_1

    .line 4936
    .restart local v7       #statusbar:Lcom/android/internal/statusbar/IStatusBarService;
    :catch_0
    move-exception v2

    .line 4937
    .local v2, e:Landroid/os/RemoteException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_2

    .line 4945
    .end local v2           #e:Landroid/os/RemoteException;
    .end local v7           #statusbar:Lcom/android/internal/statusbar/IStatusBarService;
    :cond_a
    iget-object v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideStatusbarRunnable:Ljava/lang/Runnable;

    invoke-virtual {v9, v10}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4946
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    iget v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusbarHeight:I

    int-to-float v10, v10

    cmpl-float v9, v9, v10

    if-lez v9, :cond_3

    .line 4947
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v7

    .line 4948
    .restart local v7       #statusbar:Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v7, :cond_3

    .line 4950
    :try_start_2
    iget-boolean v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusbarExpanded:Z

    if-nez v9, :cond_3

    iget-boolean v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemUIAlreadyShownInFullScreen:Z

    if-eqz v9, :cond_3

    .line 4951
    invoke-interface {v7}, Lcom/android/internal/statusbar/IStatusBarService;->collapsePanels()V

    .line 4952
    iget-object v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideStatusbarRunnable:Ljava/lang/Runnable;

    invoke-virtual {v9, v10}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4953
    const/high16 v9, 0x1

    iget-object v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mToken:Landroid/os/IBinder;

    iget-object v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v7, v9, v10, v11}, Lcom/android/internal/statusbar/IStatusBarService;->disable(ILandroid/os/IBinder;Ljava/lang/String;)V

    .line 4956
    iget-object v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    const/4 v10, 0x1

    invoke-interface {v9, v10}, Landroid/view/WindowManagerPolicy$WindowState;->hideLw(Z)Z

    .line 4957
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDirectDrapNotiPanelInFullScreen:Z

    .line 4958
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWaitToShowStatusbar:Z

    .line 4959
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemUIAlreadyShownInFullScreen:Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_2

    .line 4962
    :catch_1
    move-exception v9

    goto/16 :goto_2

    .line 4968
    .end local v7           #statusbar:Lcom/android/internal/statusbar/IStatusBarService;
    :cond_b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_10

    .line 4970
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    const/high16 v10, 0x42c8

    cmpl-float v9, v9, v10

    if-lez v9, :cond_3

    iget-boolean v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWaitToShowStatusbar:Z

    if-nez v9, :cond_c

    iget-boolean v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDirectDrapNotiPanelInFullScreen:Z

    if-eqz v9, :cond_3

    .line 4975
    :cond_c
    iget-object v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v9}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v9

    if-nez v9, :cond_d

    .line 4976
    iget-object v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    const/4 v10, 0x1

    invoke-interface {v9, v10}, Landroid/view/WindowManagerPolicy$WindowState;->showLw(Z)Z

    .line 4979
    :cond_d
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v7

    .line 4980
    .restart local v7       #statusbar:Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v7, :cond_e

    .line 4982
    const/4 v9, 0x0

    :try_start_3
    iget-object v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mToken:Landroid/os/IBinder;

    iget-object v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v7, v9, v10, v11}, Lcom/android/internal/statusbar/IStatusBarService;->disable(ILandroid/os/IBinder;Ljava/lang/String;)V

    .line 4984
    iget-boolean v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemUIAlreadyShownInFullScreen:Z

    if-eqz v9, :cond_f

    .line 4985
    invoke-interface {v7, p1}, Lcom/android/internal/statusbar/IStatusBarService;->updateStatusbarPos(Landroid/view/MotionEvent;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    .line 4999
    :cond_e
    :goto_7
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemUIAlreadyShownInFullScreen:Z

    .line 5000
    and-int/lit8 v5, v5, -0x2

    .line 5001
    goto/16 :goto_2

    .line 4986
    :cond_f
    :try_start_4
    iget-boolean v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDirectDrapNotiPanelInFullScreen:Z

    if-nez v9, :cond_e

    .line 4991
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWaitToShowStatusbar:Z

    .line 4992
    iget-object v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideStatusbarRunnable:Ljava/lang/Runnable;

    const-wide/16 v11, 0xbb8

    invoke-virtual {v9, v10, v11, v12}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_7

    .line 4994
    :catch_2
    move-exception v9

    goto :goto_7

    .line 5002
    .end local v7           #statusbar:Lcom/android/internal/statusbar/IStatusBarService;
    :cond_10
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_3

    .line 5003
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v7

    .line 5004
    .restart local v7       #statusbar:Lcom/android/internal/statusbar/IStatusBarService;
    iget-boolean v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDirectDrapNotiPanelInFullScreen:Z

    if-eqz v9, :cond_12

    .line 5006
    :try_start_5
    invoke-interface {v7, p1}, Lcom/android/internal/statusbar/IStatusBarService;->updateStatusbarPos(Landroid/view/MotionEvent;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_3

    .line 5016
    :cond_11
    :goto_8
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWaitToShowStatusbar:Z

    .line 5017
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDirectDrapNotiPanelInFullScreen:Z

    goto/16 :goto_2

    .line 5009
    :catch_3
    move-exception v2

    .line 5010
    .restart local v2       #e:Landroid/os/RemoteException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_8

    .line 5012
    .end local v2           #e:Landroid/os/RemoteException;
    :cond_12
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    iget v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusbarHeight:I

    int-to-float v10, v10

    cmpg-float v9, v9, v10

    if-gez v9, :cond_11

    .line 5013
    iget-object v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideStatusbarRunnable:Ljava/lang/Runnable;

    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_8

    .line 5033
    .end local v0           #dragLeft:I
    .end local v1           #dragRight:I
    .end local v3           #point:Landroid/graphics/Point;
    .end local v6           #screenWidth:I
    .end local v8           #x:F
    :cond_13
    :try_start_6
    sget-boolean v9, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRecentPanelOpened:Z

    if-nez v9, :cond_4

    iget v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDownPos:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v10

    sub-float/2addr v9, v10

    const/high16 v10, 0x41f0

    cmpl-float v9, v9, v10

    if-lez v9, :cond_4

    .line 5034
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShouldPassToUser:Z
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_4

    goto/16 :goto_3

    .line 5042
    :catch_4
    move-exception v2

    .line 5044
    .restart local v2       #e:Landroid/os/RemoteException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_4

    .line 5046
    .end local v2           #e:Landroid/os/RemoteException;
    :cond_14
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    const/4 v10, 0x1

    if-eq v9, v10, :cond_15

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    const/4 v10, 0x3

    if-ne v9, v10, :cond_17

    .line 5048
    :cond_15
    iget-boolean v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDownInValidArea:Z

    if-eqz v9, :cond_16

    iget-boolean v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNeedUpdateStatusBar:Z

    if-eqz v9, :cond_16

    .line 5050
    const/4 v9, 0x0

    const/4 v10, 0x0

    :try_start_7
    invoke-interface {v7, p1, v9, v10}, Lcom/android/internal/statusbar/IStatusBarService;->updateRecentPanel(Landroid/view/MotionEvent;ZZ)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_5

    .line 5055
    :goto_9
    iget-boolean v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShouldPassToUser:Z

    if-nez v9, :cond_16

    .line 5056
    and-int/lit8 v5, v5, -0x2

    .line 5059
    :cond_16
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShouldPassToUser:Z

    .line 5060
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDownInValidArea:Z

    .line 5061
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNeedUpdateStatusBar:Z

    goto/16 :goto_4

    .line 5051
    :catch_5
    move-exception v2

    .line 5053
    .restart local v2       #e:Landroid/os/RemoteException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_9

    .line 5062
    .end local v2           #e:Landroid/os/RemoteException;
    :cond_17
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isTaskPanelEnabled()Z

    move-result v9

    if-nez v9, :cond_18

    sget-boolean v9, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRecentPanelOpened:Z

    if-eqz v9, :cond_5

    :cond_18
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    if-nez v9, :cond_5

    .line 5063
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isLandScape()Z

    move-result v9

    if-nez v9, :cond_1c

    .line 5064
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v9

    sget v10, Lcom/android/internal/policy/impl/PhoneWindowManager;->RECENT_VALID_DOWN_POS:I

    int-to-float v10, v10

    cmpl-float v9, v9, v10

    if-gtz v9, :cond_19

    sget-boolean v9, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRecentPanelOpened:Z

    if-eqz v9, :cond_1b

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v9

    sget v10, Lcom/android/internal/policy/impl/PhoneWindowManager;->RECENT_DISMISS_DOWN_POS:I

    int-to-float v10, v10

    cmpg-float v9, v9, v10

    if-gez v9, :cond_1b

    :cond_19
    const/4 v9, 0x1

    :goto_a
    iput-boolean v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNeedUpdateStatusBar:Z

    .line 5073
    :goto_b
    iget-boolean v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNeedUpdateStatusBar:Z

    if-eqz v9, :cond_5

    .line 5074
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isLandScape()Z

    move-result v9

    if-eqz v9, :cond_20

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v9

    sget v10, Lcom/android/internal/policy/impl/PhoneWindowManager;->RECENT_VALID_POINT_MAX:I

    int-to-float v10, v10

    cmpg-float v9, v9, v10

    if-ltz v9, :cond_1a

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v9

    sget v10, Lcom/android/internal/policy/impl/PhoneWindowManager;->RECENT_VALID_POINT_MIN:I

    int-to-float v10, v10

    cmpl-float v9, v9, v10

    if-lez v9, :cond_1f

    :cond_1a
    const/4 v9, 0x1

    :goto_c
    iput-boolean v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDownInValidArea:Z

    .line 5081
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isLandScape()Z

    move-result v9

    if-eqz v9, :cond_23

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v9

    :goto_d
    iput v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDownPos:F

    .line 5089
    const/4 v9, 0x0

    const/4 v10, 0x0

    :try_start_8
    invoke-interface {v7, p1, v9, v10}, Lcom/android/internal/statusbar/IStatusBarService;->updateRecentPanel(Landroid/view/MotionEvent;ZZ)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_6

    .line 5099
    :goto_e
    iget-boolean v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShouldPassToUser:Z

    if-nez v9, :cond_5

    .line 5100
    and-int/lit8 v5, v5, -0x2

    goto/16 :goto_4

    .line 5064
    :cond_1b
    const/4 v9, 0x0

    goto :goto_a

    .line 5067
    :cond_1c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v9

    sget v10, Lcom/android/internal/policy/impl/PhoneWindowManager;->RECENT_VALID_DOWN_POS:I

    int-to-float v10, v10

    cmpl-float v9, v9, v10

    if-gtz v9, :cond_1d

    sget-boolean v9, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRecentPanelOpened:Z

    if-eqz v9, :cond_1e

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v9

    sget v10, Lcom/android/internal/policy/impl/PhoneWindowManager;->RECENT_DISMISS_DOWN_POS:I

    int-to-float v10, v10

    cmpg-float v9, v9, v10

    if-gez v9, :cond_1e

    :cond_1d
    const/4 v9, 0x1

    :goto_f
    iput-boolean v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNeedUpdateStatusBar:Z

    goto :goto_b

    :cond_1e
    const/4 v9, 0x0

    goto :goto_f

    .line 5074
    :cond_1f
    const/4 v9, 0x0

    goto :goto_c

    :cond_20
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v9

    sget v10, Lcom/android/internal/policy/impl/PhoneWindowManager;->RECENT_VALID_POINT_MAX:I

    int-to-float v10, v10

    cmpg-float v9, v9, v10

    if-ltz v9, :cond_21

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v9

    sget v10, Lcom/android/internal/policy/impl/PhoneWindowManager;->RECENT_VALID_POINT_MIN:I

    int-to-float v10, v10

    cmpl-float v9, v9, v10

    if-lez v9, :cond_22

    :cond_21
    const/4 v9, 0x1

    goto :goto_c

    :cond_22
    const/4 v9, 0x0

    goto :goto_c

    .line 5081
    :cond_23
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v9

    goto :goto_d

    .line 5090
    :catch_6
    move-exception v2

    .line 5092
    .restart local v2       #e:Landroid/os/RemoteException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_e

    .line 5140
    .end local v2           #e:Landroid/os/RemoteException;
    :cond_24
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    const/4 v10, 0x3

    if-ne v9, v10, :cond_25

    .line 5144
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasBackGesture:Z

    .line 5145
    const/4 v9, 0x1

    const/16 v10, 0x20

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    invoke-virtual {p0, v9, v10, v11, v12}, Lcom/android/internal/policy/impl/PhoneWindowManager;->sendEvent(IIJ)V

    .line 5146
    const/4 v9, 0x1

    invoke-direct {p0, v9}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateGestureBar(Z)V

    .line 5147
    iget-boolean v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSupportsLongpress:Z

    if-eqz v9, :cond_7

    .line 5148
    iget-object v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCheckLongPress:Ljava/lang/Runnable;

    invoke-virtual {v9, v10}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto/16 :goto_5

    .line 5151
    :cond_25
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_7

    .line 5174
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelBackGesture(Landroid/view/MotionEvent;)V

    .line 5175
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isTriggerGestureBack(Landroid/view/MotionEvent;)Z

    move-result v9

    if-eqz v9, :cond_26

    iget-boolean v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasBackGesture:Z

    if-eqz v9, :cond_26

    .line 5176
    const/4 v9, 0x0

    invoke-direct {p0, v9}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateGestureBar(Z)V

    goto/16 :goto_5

    .line 5178
    :cond_26
    const/4 v9, 0x1

    invoke-direct {p0, v9}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateGestureBar(Z)V

    goto/16 :goto_5

    .line 5184
    :cond_27
    iget-boolean v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWaitGestureBack:Z

    if-eqz v9, :cond_2b

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_2b

    .line 5189
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWaitGestureBack:Z

    .line 5191
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPreventHomekey:Z

    .line 5193
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    iput-wide v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDownTime:J

    .line 5194
    iget-boolean v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mReadyToLightScreen:Z

    if-eqz v9, :cond_29

    .line 5197
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mReadyToLightScreen:Z

    .line 5198
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->isScreenDim:Z

    .line 5226
    :goto_10
    iget-boolean v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSupportsLongpress:Z

    if-eqz v9, :cond_28

    .line 5227
    iget-object v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCheckLongPress:Ljava/lang/Runnable;

    invoke-virtual {v9, v10}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5228
    iget-object v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCheckLongPress:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v11

    int-to-long v11, v11

    invoke-virtual {v9, v10, v11, v12}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 5232
    :cond_28
    and-int/lit8 v5, v5, -0x2

    goto/16 :goto_6

    .line 5206
    :cond_29
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isLandScape()Z

    move-result v9

    if-eqz v9, :cond_2a

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    :goto_11
    iput v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBackGesturePos:F

    .line 5208
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasBackGesture:Z

    .line 5212
    const-string v9, "WindowManager"

    const-string v10, "mGestureBar.showLw(true);"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    .line 5206
    :cond_2a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    goto :goto_11

    .line 5233
    :cond_2b
    iget-boolean v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDoubleKeyWait:Z

    if-nez v9, :cond_2c

    iget-boolean v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeKeyDown:Z

    if-eqz v9, :cond_30

    .line 5235
    :cond_2c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    if-nez v9, :cond_8

    .line 5238
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isLandScape()Z

    move-result v9

    if-eqz v9, :cond_2d

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    :goto_12
    iput v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBackDownPos:F

    .line 5239
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    float-to-int v9, v9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    float-to-int v10, v10

    invoke-direct {p0, v9, v10}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isInBackGesture(II)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 5240
    iget-boolean v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenDimByHome:Z

    if-eqz v9, :cond_2e

    .line 5241
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWaitGestureBack:Z

    .line 5242
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeKeyDown:Z

    .line 5243
    iget-object v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mGotoSleep:Ljava/lang/Runnable;

    invoke-virtual {v9, v10}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5244
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenDimByHome:Z

    .line 5245
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mReadyToLightScreen:Z

    .line 5246
    and-int/lit8 v5, v5, -0x2

    goto/16 :goto_6

    .line 5238
    :cond_2d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    goto :goto_12

    .line 5248
    :cond_2e
    iget-object v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    invoke-virtual {v9}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->isShowingAndNotHidden()Z

    move-result v9

    if-nez v9, :cond_2f

    .line 5250
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWaitGestureBack:Z

    .line 5251
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeKeyDown:Z

    .line 5252
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPreventHomekey:Z

    .line 5253
    and-int/lit8 v5, v5, -0x2

    goto/16 :goto_6

    :cond_2f
    move v9, v5

    .line 5256
    goto/16 :goto_0

    .line 5263
    :cond_30
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPreventHomekey:Z

    .line 5264
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasBackGesture:Z

    .line 5265
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWaitGestureBack:Z

    .line 5266
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeKeyDown:Z

    .line 5267
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    const/4 v10, 0x3

    if-eq v9, v10, :cond_31

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_8

    .line 5268
    :cond_31
    const/4 v9, 0x1

    invoke-direct {p0, v9}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateGestureBar(Z)V

    goto/16 :goto_6
.end method

.method public interceptMotionBeforeQueueingWhenScreenOff(I)I
    .locals 3
    .parameter "policyFlags"

    .prologue
    .line 4819
    const/4 v1, 0x0

    .line 4821
    .local v1, result:I
    and-int/lit8 v2, p1, 0x3

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    .line 4823
    .local v0, isWakeMotion:Z
    :goto_0
    if-eqz v0, :cond_0

    .line 4824
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4826
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->onWakeMotionWhenKeyguardShowingTq()V

    .line 4832
    :cond_0
    :goto_1
    return v1

    .line 4821
    .end local v0           #isWakeMotion:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 4829
    .restart local v0       #isWakeMotion:Z
    :cond_2
    or-int/lit8 v1, v1, 0x2

    goto :goto_1
.end method

.method isDeviceProvisioned()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 932
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "device_provisioned"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isKeyguardLocked()Z
    .locals 1

    .prologue
    .line 5707
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->keyguardOn()Z

    move-result v0

    return v0
.end method

.method public isKeyguardSecure()Z
    .locals 1

    .prologue
    .line 5712
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 5713
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->isKeyguardSecure()Z

    move-result v0

    goto :goto_0
.end method

.method isLandScape()Z
    .locals 3

    .prologue
    .line 5279
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 5280
    .local v0, size:Landroid/graphics/Point;
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 5281
    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v2, v0, Landroid/graphics/Point;->y:I

    if-le v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method isLandScapeExtra()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 5285
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v0, v2, Landroid/content/res/Configuration;->orientation:I

    .line 5286
    .local v0, or:I
    sget v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurRotation:I

    if-eq v2, v1, :cond_0

    sget v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurRotation:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    :cond_0
    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method isMusicActive()Z
    .locals 3

    .prologue
    .line 4157
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 4158
    .local v0, am:Landroid/media/AudioManager;
    if-nez v0, :cond_0

    .line 4159
    const-string v1, "WindowManager"

    const-string v2, "isMusicActive: couldn\'t get AudioManager reference"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4160
    const/4 v1, 0x0

    .line 4162
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v1

    goto :goto_0
.end method

.method public declared-synchronized isScreenOnBecauseOfSlideKey()Z
    .locals 4

    .prologue
    .line 4775
    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSlideKeyUpTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isScreenOnEarly()Z
    .locals 1

    .prologue
    .line 5677
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOnEarly:Z

    return v0
.end method

.method public isScreenOnFully()Z
    .locals 1

    .prologue
    .line 5682
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOnFully:Z

    return v0
.end method

.method isTaskPanelEnabled()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 5276
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopIsFullscreen:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMeizuEnableFullScreenDrag:I

    if-ne v1, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public keepScreenOnStartedLw()V
    .locals 0

    .prologue
    .line 6277
    return-void
.end method

.method public keepScreenOnStoppedLw()V
    .locals 4

    .prologue
    .line 6281
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->isShowingAndNotHidden()Z

    move-result v2

    if-nez v2, :cond_0

    .line 6282
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 6283
    .local v0, curTime:J
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v1, v3}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 6285
    .end local v0           #curTime:J
    :cond_0
    return-void
.end method

.method keyguardOn()Z
    .locals 1

    .prologue
    .line 2084
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->keyguardIsShowingTq()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->inKeyguardRestrictedKeyInputMode()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method launchHomeFromHotKey()V
    .locals 2

    .prologue
    .line 2658
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->isShowingAndNotHidden()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2684
    :goto_0
    return-void

    .line 2660
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideLockScreen:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->isInputRestricted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2663
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    new-instance v1, Lcom/android/internal/policy/impl/PhoneWindowManager$6;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$6;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->verifyUnlock(Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;)V

    goto :goto_0

    .line 2678
    :cond_1
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->stopAppSwitches()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2681
    :goto_1
    const-string v0, "homekey"

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->sendCloseSystemWindows(Ljava/lang/String;)V

    .line 2682
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->startDockOrHome()V

    goto :goto_0

    .line 2679
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public layoutWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;Landroid/view/WindowManagerPolicy$WindowState;)V
    .locals 25
    .parameter "win"
    .parameter "attrs"
    .parameter "attached"

    .prologue
    .line 3294
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v0, p1

    if-eq v0, v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v0, p1

    if-ne v0, v4, :cond_1

    .line 3697
    :cond_0
    :goto_0
    return-void

    .line 3297
    :cond_1
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->isDefaultDisplay()Z

    move-result v17

    .line 3298
    .local v17, isDefaultDisplay:Z
    if-eqz v17, :cond_5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastInputMethodTargetWindow:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v0, p1

    if-ne v0, v4, :cond_5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v4, :cond_5

    const/16 v20, 0x1

    .line 3300
    .local v20, needsToOffsetInputMethodTarget:Z
    :goto_1
    if-eqz v20, :cond_2

    .line 3304
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/internal/policy/impl/PhoneWindowManager;->offsetInputMethodWindowLw(Landroid/view/WindowManagerPolicy$WindowState;)V

    .line 3307
    :cond_2
    move-object/from16 v0, p2

    iget v6, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 3308
    .local v6, fl:I
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    move/from16 v21, v0

    .line 3309
    .local v21, sim:I
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getSystemUiVisibility()I

    move-result v23

    .line 3311
    .local v23, sysUiFl:I
    sget-object v10, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpParentFrame:Landroid/graphics/Rect;

    .line 3312
    .local v10, pf:Landroid/graphics/Rect;
    sget-object v11, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpDisplayFrame:Landroid/graphics/Rect;

    .line 3313
    .local v11, df:Landroid/graphics/Rect;
    sget-object v12, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpContentFrame:Landroid/graphics/Rect;

    .line 3314
    .local v12, cf:Landroid/graphics/Rect;
    sget-object v13, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpVisibleFrame:Landroid/graphics/Rect;

    .line 3316
    .local v13, vf:Landroid/graphics/Rect;
    if-eqz v17, :cond_6

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentNavBarState:I

    const/high16 v5, 0xf

    and-int/2addr v4, v5

    const/high16 v5, 0x1

    if-ne v4, v5, :cond_6

    const/16 v16, 0x1

    .line 3318
    .local v16, hasNavBar:Z
    :goto_2
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    if-ge v4, v5, :cond_7

    const/16 v18, 0x1

    .line 3320
    .local v18, isLandspace:Z
    :goto_3
    move/from16 v0, v21

    and-int/lit16 v7, v0, 0xf0

    .line 3321
    .local v7, adjust:I
    if-nez v17, :cond_9

    .line 3322
    if-eqz p3, :cond_8

    .line 3325
    const/4 v9, 0x1

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v8, p3

    invoke-virtual/range {v4 .. v13}, Lcom/android/internal/policy/impl/PhoneWindowManager;->setAttachedWindowFrames(Landroid/view/WindowManagerPolicy$WindowState;IILandroid/view/WindowManagerPolicy$WindowState;ZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 3661
    :goto_4
    and-int/lit16 v4, v6, 0x200

    if-eqz v4, :cond_3

    .line 3662
    const/16 v4, -0x2710

    iput v4, v13, Landroid/graphics/Rect;->top:I

    iput v4, v13, Landroid/graphics/Rect;->left:I

    iput v4, v12, Landroid/graphics/Rect;->top:I

    iput v4, v12, Landroid/graphics/Rect;->left:I

    iput v4, v11, Landroid/graphics/Rect;->top:I

    iput v4, v11, Landroid/graphics/Rect;->left:I

    .line 3663
    const/16 v4, 0x2710

    iput v4, v13, Landroid/graphics/Rect;->bottom:I

    iput v4, v13, Landroid/graphics/Rect;->right:I

    iput v4, v12, Landroid/graphics/Rect;->bottom:I

    iput v4, v12, Landroid/graphics/Rect;->right:I

    iput v4, v11, Landroid/graphics/Rect;->bottom:I

    iput v4, v11, Landroid/graphics/Rect;->right:I

    .line 3666
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mGestureBar:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v0, p1

    if-ne v0, v4, :cond_4

    .line 3667
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    add-int/2addr v4, v5

    iput v4, v10, Landroid/graphics/Rect;->bottom:I

    iput v4, v11, Landroid/graphics/Rect;->bottom:I

    iput v4, v13, Landroid/graphics/Rect;->bottom:I

    iput v4, v12, Landroid/graphics/Rect;->bottom:I

    .line 3677
    :cond_4
    move-object/from16 v0, p1

    invoke-interface {v0, v10, v11, v12, v13}, Landroid/view/WindowManagerPolicy$WindowState;->computeFrameLw(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 3681
    move-object/from16 v0, p2

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v5, 0x7db

    if-ne v4, v5, :cond_3e

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleOrBehindKeyguardLw()Z

    move-result v4

    if-eqz v4, :cond_3e

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getGivenInsetsPendingLw()Z

    move-result v4

    if-nez v4, :cond_3e

    .line 3683
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/android/internal/policy/impl/PhoneWindowManager;->setLastInputMethodWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;)V

    .line 3684
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->offsetInputMethodWindowLw(Landroid/view/WindowManagerPolicy$WindowState;)V

    .line 3688
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mToastWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v4, :cond_0

    .line 3689
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mToastWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAttached:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v8}, Lcom/android/internal/policy/impl/PhoneWindowManager;->layoutWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;Landroid/view/WindowManagerPolicy$WindowState;)V

    goto/16 :goto_0

    .line 3298
    .end local v6           #fl:I
    .end local v7           #adjust:I
    .end local v10           #pf:Landroid/graphics/Rect;
    .end local v11           #df:Landroid/graphics/Rect;
    .end local v12           #cf:Landroid/graphics/Rect;
    .end local v13           #vf:Landroid/graphics/Rect;
    .end local v16           #hasNavBar:Z
    .end local v18           #isLandspace:Z
    .end local v20           #needsToOffsetInputMethodTarget:Z
    .end local v21           #sim:I
    .end local v23           #sysUiFl:I
    :cond_5
    const/16 v20, 0x0

    goto/16 :goto_1

    .line 3316
    .restart local v6       #fl:I
    .restart local v10       #pf:Landroid/graphics/Rect;
    .restart local v11       #df:Landroid/graphics/Rect;
    .restart local v12       #cf:Landroid/graphics/Rect;
    .restart local v13       #vf:Landroid/graphics/Rect;
    .restart local v20       #needsToOffsetInputMethodTarget:Z
    .restart local v21       #sim:I
    .restart local v23       #sysUiFl:I
    :cond_6
    const/16 v16, 0x0

    goto/16 :goto_2

    .line 3318
    .restart local v16       #hasNavBar:Z
    :cond_7
    const/16 v18, 0x0

    goto/16 :goto_3

    .line 3328
    .restart local v7       #adjust:I
    .restart local v18       #isLandspace:Z
    :cond_8
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    iput v4, v12, Landroid/graphics/Rect;->left:I

    iput v4, v11, Landroid/graphics/Rect;->left:I

    iput v4, v10, Landroid/graphics/Rect;->left:I

    .line 3329
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    iput v4, v12, Landroid/graphics/Rect;->top:I

    iput v4, v11, Landroid/graphics/Rect;->top:I

    iput v4, v10, Landroid/graphics/Rect;->top:I

    .line 3330
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    add-int/2addr v4, v5

    iput v4, v12, Landroid/graphics/Rect;->right:I

    iput v4, v11, Landroid/graphics/Rect;->right:I

    iput v4, v10, Landroid/graphics/Rect;->right:I

    .line 3332
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    add-int/2addr v4, v5

    iput v4, v12, Landroid/graphics/Rect;->bottom:I

    iput v4, v11, Landroid/graphics/Rect;->bottom:I

    iput v4, v10, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_4

    .line 3335
    :cond_9
    move-object/from16 v0, p2

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v5, 0x7db

    if-ne v4, v5, :cond_10

    .line 3337
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getLastInputMethodTargetWindow()Landroid/view/WindowManagerPolicy$WindowState;

    move-result-object v24

    .line 3338
    .local v24, target:Landroid/view/WindowManagerPolicy$WindowState;
    if-eqz v18, :cond_b

    .line 3339
    const/4 v4, 0x0

    move-object/from16 v0, p2

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->imeOffset:I

    .line 3340
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockBottom:I

    .line 3377
    .local v14, bottom:I
    :cond_a
    :goto_5
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLeft:I

    iput v4, v13, Landroid/graphics/Rect;->left:I

    iput v4, v12, Landroid/graphics/Rect;->left:I

    iput v4, v11, Landroid/graphics/Rect;->left:I

    iput v4, v10, Landroid/graphics/Rect;->left:I

    .line 3378
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockTop:I

    iput v4, v13, Landroid/graphics/Rect;->top:I

    iput v4, v12, Landroid/graphics/Rect;->top:I

    iput v4, v11, Landroid/graphics/Rect;->top:I

    iput v4, v10, Landroid/graphics/Rect;->top:I

    .line 3379
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockRight:I

    iput v4, v13, Landroid/graphics/Rect;->right:I

    iput v4, v12, Landroid/graphics/Rect;->right:I

    iput v4, v11, Landroid/graphics/Rect;->right:I

    iput v4, v10, Landroid/graphics/Rect;->right:I

    .line 3380
    iput v14, v13, Landroid/graphics/Rect;->bottom:I

    iput v14, v12, Landroid/graphics/Rect;->bottom:I

    iput v14, v11, Landroid/graphics/Rect;->bottom:I

    iput v14, v10, Landroid/graphics/Rect;->bottom:I

    .line 3382
    const/16 v4, 0x50

    move-object/from16 v0, p2

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 3383
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLayer:I

    goto/16 :goto_4

    .line 3341
    .end local v14           #bottom:I
    :cond_b
    if-nez v24, :cond_d

    .line 3342
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v15

    .line 3343
    .local v15, frame:Landroid/graphics/Rect;
    invoke-virtual {v15}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 3344
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarHeightForRotation:[I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDisplayRotation:I

    aget v5, v5, v8

    sub-int v14, v4, v5

    .restart local v14       #bottom:I
    goto :goto_5

    .line 3347
    .end local v14           #bottom:I
    :cond_c
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v4

    iget v14, v4, Landroid/graphics/Rect;->bottom:I

    .restart local v14       #bottom:I
    goto :goto_5

    .line 3350
    .end local v14           #bottom:I
    .end local v15           #frame:Landroid/graphics/Rect;
    :cond_d
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateInputMethodOffset(Landroid/view/WindowManager$LayoutParams;Landroid/view/WindowManagerPolicy$WindowState;)V

    .line 3351
    move-object/from16 v0, p2

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->imeOffset:I

    if-gez v4, :cond_f

    .line 3352
    sget-boolean v4, Lcom/android/internal/policy/impl/PhoneWindowManager;->sHasPermanentKey:Z

    if-nez v4, :cond_e

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v4, :cond_e

    .line 3353
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarHeightForRotation:[I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDisplayRotation:I

    aget v5, v5, v8

    sub-int v14, v4, v5

    .line 3355
    .restart local v14       #bottom:I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentNavBarState:I

    const/high16 v5, 0xf

    and-int/2addr v4, v5

    if-nez v4, :cond_a

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v0, v24

    if-ne v0, v4, :cond_a

    .line 3357
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentNavBarDependWindow:Landroid/view/WindowManagerPolicy$WindowState;

    .line 3358
    const v4, 0x10002

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentNavBarState:I

    .line 3359
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Landroid/view/WindowManagerPolicy$WindowState;->showLw(Z)Z

    goto/16 :goto_5

    .line 3362
    .end local v14           #bottom:I
    :cond_e
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockBottom:I

    .restart local v14       #bottom:I
    goto/16 :goto_5

    .line 3365
    .end local v14           #bottom:I
    :cond_f
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    move-object/from16 v0, p2

    iget v5, v0, Landroid/view/WindowManager$LayoutParams;->imeOffset:I

    sub-int v14, v4, v5

    .restart local v14       #bottom:I
    goto/16 :goto_5

    .line 3384
    .end local v14           #bottom:I
    .end local v24           #target:Landroid/view/WindowManagerPolicy$WindowState;
    :cond_10
    move-object/from16 v0, p2

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v5, 0x7e0

    if-ne v4, v5, :cond_11

    .line 3386
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    iput v4, v12, Landroid/graphics/Rect;->left:I

    iput v4, v11, Landroid/graphics/Rect;->left:I

    iput v4, v10, Landroid/graphics/Rect;->left:I

    .line 3387
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    iput v4, v12, Landroid/graphics/Rect;->top:I

    iput v4, v11, Landroid/graphics/Rect;->top:I

    iput v4, v10, Landroid/graphics/Rect;->top:I

    .line 3388
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    add-int/2addr v4, v5

    iput v4, v12, Landroid/graphics/Rect;->right:I

    iput v4, v11, Landroid/graphics/Rect;->right:I

    iput v4, v10, Landroid/graphics/Rect;->right:I

    .line 3389
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    add-int/2addr v4, v5

    iput v4, v12, Landroid/graphics/Rect;->bottom:I

    iput v4, v11, Landroid/graphics/Rect;->bottom:I

    iput v4, v10, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_4

    .line 3392
    :cond_11
    move/from16 v0, v23

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->mayWindowResizedByInputMethod(ILandroid/view/WindowManager$LayoutParams;)Z

    move-result v19

    .line 3394
    .local v19, mayWindowResizedByInputMethod:Z
    const v4, 0x10500

    and-int/2addr v4, v6

    const v5, 0x10100

    if-ne v4, v5, :cond_22

    and-int/lit8 v4, v23, 0x4

    if-nez v4, :cond_22

    .line 3404
    if-eqz p3, :cond_12

    .line 3407
    const/4 v9, 0x1

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v8, p3

    invoke-virtual/range {v4 .. v13}, Lcom/android/internal/policy/impl/PhoneWindowManager;->setAttachedWindowFrames(Landroid/view/WindowManagerPolicy$WindowState;IILandroid/view/WindowManagerPolicy$WindowState;ZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto/16 :goto_4

    .line 3409
    :cond_12
    move-object/from16 v0, p2

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v5, 0x7de

    if-eq v4, v5, :cond_13

    move-object/from16 v0, p2

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v5, 0x7e1

    if-ne v4, v5, :cond_17

    .line 3418
    :cond_13
    if-eqz v16, :cond_14

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLeft:I

    :goto_6
    iput v4, v11, Landroid/graphics/Rect;->left:I

    iput v4, v10, Landroid/graphics/Rect;->left:I

    .line 3419
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    iput v4, v11, Landroid/graphics/Rect;->top:I

    iput v4, v10, Landroid/graphics/Rect;->top:I

    .line 3420
    if-eqz v16, :cond_15

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenLeft:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenWidth:I

    add-int/2addr v4, v5

    :goto_7
    iput v4, v11, Landroid/graphics/Rect;->right:I

    iput v4, v10, Landroid/graphics/Rect;->right:I

    .line 3423
    if-eqz v16, :cond_16

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenHeight:I

    add-int/2addr v4, v5

    :goto_8
    iput v4, v11, Landroid/graphics/Rect;->bottom:I

    iput v4, v10, Landroid/graphics/Rect;->bottom:I

    .line 3457
    :goto_9
    if-eqz v19, :cond_1d

    const/16 v4, 0x10

    if-ne v7, v4, :cond_1d

    .line 3458
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentLeft:I

    iput v4, v12, Landroid/graphics/Rect;->left:I

    .line 3459
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentTop:I

    iput v4, v12, Landroid/graphics/Rect;->top:I

    .line 3460
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentRight:I

    iput v4, v12, Landroid/graphics/Rect;->right:I

    .line 3461
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockBottom:I

    if-ne v4, v5, :cond_1c

    .line 3462
    iget v4, v11, Landroid/graphics/Rect;->bottom:I

    iput v4, v12, Landroid/graphics/Rect;->bottom:I

    .line 3475
    :goto_a
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1, v6, v12}, Lcom/android/internal/policy/impl/PhoneWindowManager;->applyStableConstraints(IILandroid/graphics/Rect;)V

    .line 3476
    if-eqz v19, :cond_21

    const/16 v4, 0x30

    if-eq v7, v4, :cond_21

    .line 3477
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurLeft:I

    iput v4, v13, Landroid/graphics/Rect;->left:I

    .line 3478
    move-object/from16 v0, p2

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->meizuFlags:I

    and-int/lit8 v4, v4, 0x40

    if-eqz v4, :cond_1f

    .line 3479
    iget v4, v12, Landroid/graphics/Rect;->top:I

    iput v4, v13, Landroid/graphics/Rect;->top:I

    .line 3483
    :goto_b
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurRight:I

    iput v4, v13, Landroid/graphics/Rect;->right:I

    .line 3484
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurBottom:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockBottom:I

    if-ne v4, v5, :cond_20

    .line 3485
    iget v4, v11, Landroid/graphics/Rect;->bottom:I

    iput v4, v13, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_4

    .line 3418
    :cond_14
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    goto/16 :goto_6

    .line 3420
    :cond_15
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    add-int/2addr v4, v5

    goto :goto_7

    .line 3423
    :cond_16
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    add-int/2addr v4, v5

    goto :goto_8

    .line 3432
    :cond_17
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v23

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->shouldHideNavigationBar(Landroid/view/WindowManagerPolicy$WindowState;ILandroid/view/WindowManager$LayoutParams;)Z

    move-result v4

    if-nez v4, :cond_18

    move/from16 v0, v23

    and-int/lit16 v4, v0, 0x600

    if-eqz v4, :cond_19

    move-object/from16 v0, p2

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v5, 0x1

    if-lt v4, v5, :cond_19

    move-object/from16 v0, p2

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v5, 0x7cf

    if-gt v4, v5, :cond_19

    .line 3441
    :cond_18
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    iput v4, v11, Landroid/graphics/Rect;->left:I

    iput v4, v10, Landroid/graphics/Rect;->left:I

    .line 3442
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    iput v4, v11, Landroid/graphics/Rect;->top:I

    iput v4, v10, Landroid/graphics/Rect;->top:I

    .line 3443
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    add-int/2addr v4, v5

    iput v4, v11, Landroid/graphics/Rect;->right:I

    iput v4, v10, Landroid/graphics/Rect;->right:I

    .line 3444
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    add-int/2addr v4, v5

    iput v4, v11, Landroid/graphics/Rect;->bottom:I

    iput v4, v10, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_9

    .line 3446
    :cond_19
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenLeft:I

    iput v4, v11, Landroid/graphics/Rect;->left:I

    iput v4, v10, Landroid/graphics/Rect;->left:I

    .line 3447
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenTop:I

    iput v4, v11, Landroid/graphics/Rect;->top:I

    iput v4, v10, Landroid/graphics/Rect;->top:I

    .line 3448
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenLeft:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenWidth:I

    add-int/2addr v4, v5

    iput v4, v11, Landroid/graphics/Rect;->right:I

    iput v4, v10, Landroid/graphics/Rect;->right:I

    .line 3449
    if-nez v16, :cond_1a

    if-eqz v18, :cond_1b

    .line 3450
    :cond_1a
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenHeight:I

    add-int/2addr v4, v5

    iput v4, v11, Landroid/graphics/Rect;->bottom:I

    iput v4, v10, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_9

    .line 3452
    :cond_1b
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    add-int/2addr v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarHeightForRotation:[I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDisplayRotation:I

    aget v5, v5, v8

    sub-int/2addr v4, v5

    iput v4, v11, Landroid/graphics/Rect;->bottom:I

    iput v4, v10, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_9

    .line 3464
    :cond_1c
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    iput v4, v12, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_a

    .line 3466
    :cond_1d
    move-object/from16 v0, p2

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->meizuFlags:I

    and-int/lit8 v4, v4, 0x40

    if-eqz v4, :cond_1e

    .line 3467
    invoke-virtual {v12, v11}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_a

    .line 3469
    :cond_1e
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLeft:I

    iput v4, v12, Landroid/graphics/Rect;->left:I

    .line 3470
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockTop:I

    iput v4, v12, Landroid/graphics/Rect;->top:I

    .line 3471
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockRight:I

    iput v4, v12, Landroid/graphics/Rect;->right:I

    .line 3472
    iget v4, v11, Landroid/graphics/Rect;->bottom:I

    iput v4, v12, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_a

    .line 3481
    :cond_1f
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurTop:I

    iput v4, v13, Landroid/graphics/Rect;->top:I

    goto/16 :goto_b

    .line 3487
    :cond_20
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurBottom:I

    iput v4, v13, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_4

    .line 3490
    :cond_21
    invoke-virtual {v13, v12}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_4

    .line 3493
    :cond_22
    and-int/lit16 v4, v6, 0x100

    if-nez v4, :cond_23

    move/from16 v0, v23

    and-int/lit16 v4, v0, 0x600

    if-eqz v4, :cond_36

    .line 3500
    :cond_23
    move-object/from16 v0, p2

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v5, 0x7de

    if-eq v4, v5, :cond_24

    move-object/from16 v0, p2

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v5, 0x7e1

    if-ne v4, v5, :cond_28

    .line 3502
    :cond_24
    if-eqz v16, :cond_25

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLeft:I

    :goto_c
    iput v4, v12, Landroid/graphics/Rect;->left:I

    iput v4, v11, Landroid/graphics/Rect;->left:I

    iput v4, v10, Landroid/graphics/Rect;->left:I

    .line 3503
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    iput v4, v12, Landroid/graphics/Rect;->top:I

    iput v4, v11, Landroid/graphics/Rect;->top:I

    iput v4, v10, Landroid/graphics/Rect;->top:I

    .line 3504
    if-eqz v16, :cond_26

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenLeft:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenWidth:I

    add-int/2addr v4, v5

    :goto_d
    iput v4, v12, Landroid/graphics/Rect;->right:I

    iput v4, v11, Landroid/graphics/Rect;->right:I

    iput v4, v10, Landroid/graphics/Rect;->right:I

    .line 3507
    if-eqz v16, :cond_27

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenHeight:I

    add-int/2addr v4, v5

    :goto_e
    iput v4, v12, Landroid/graphics/Rect;->bottom:I

    iput v4, v11, Landroid/graphics/Rect;->bottom:I

    iput v4, v10, Landroid/graphics/Rect;->bottom:I

    .line 3574
    :goto_f
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1, v6, v12}, Lcom/android/internal/policy/impl/PhoneWindowManager;->applyStableConstraints(IILandroid/graphics/Rect;)V

    .line 3576
    if-eqz v19, :cond_35

    const/16 v4, 0x30

    if-eq v7, v4, :cond_35

    .line 3582
    and-int/lit16 v4, v6, 0x400

    if-eqz v4, :cond_33

    .line 3583
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    iput v4, v13, Landroid/graphics/Rect;->top:I

    .line 3587
    :goto_10
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurLeft:I

    iput v4, v13, Landroid/graphics/Rect;->left:I

    .line 3588
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurRight:I

    iput v4, v13, Landroid/graphics/Rect;->right:I

    .line 3589
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurBottom:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockBottom:I

    if-ne v4, v5, :cond_34

    .line 3590
    iget v4, v12, Landroid/graphics/Rect;->bottom:I

    iput v4, v13, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_4

    .line 3502
    :cond_25
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    goto :goto_c

    .line 3504
    :cond_26
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    add-int/2addr v4, v5

    goto :goto_d

    .line 3507
    :cond_27
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    add-int/2addr v4, v5

    goto :goto_e

    .line 3515
    :cond_28
    move-object/from16 v0, p2

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v5, 0x7e3

    if-eq v4, v5, :cond_29

    move-object/from16 v0, p2

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v5, 0x7e8

    if-ne v4, v5, :cond_2a

    .line 3518
    :cond_29
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    iput v4, v11, Landroid/graphics/Rect;->left:I

    iput v4, v10, Landroid/graphics/Rect;->left:I

    .line 3519
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    iput v4, v11, Landroid/graphics/Rect;->top:I

    iput v4, v10, Landroid/graphics/Rect;->top:I

    .line 3520
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    add-int/2addr v4, v5

    iput v4, v11, Landroid/graphics/Rect;->right:I

    iput v4, v10, Landroid/graphics/Rect;->right:I

    .line 3521
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    add-int/2addr v4, v5

    iput v4, v11, Landroid/graphics/Rect;->bottom:I

    iput v4, v10, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_f

    .line 3527
    :cond_2a
    move-object/from16 v0, p2

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v5, 0x7df

    if-eq v4, v5, :cond_2b

    move-object/from16 v0, p2

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v5, 0x7e5

    if-ne v4, v5, :cond_2c

    :cond_2b
    and-int/lit16 v4, v6, 0x400

    if-eqz v4, :cond_2c

    .line 3531
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    iput v4, v11, Landroid/graphics/Rect;->left:I

    iput v4, v10, Landroid/graphics/Rect;->left:I

    .line 3532
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    iput v4, v11, Landroid/graphics/Rect;->top:I

    iput v4, v10, Landroid/graphics/Rect;->top:I

    .line 3533
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    add-int/2addr v4, v5

    iput v4, v11, Landroid/graphics/Rect;->right:I

    iput v4, v10, Landroid/graphics/Rect;->right:I

    .line 3534
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    add-int/2addr v4, v5

    iput v4, v11, Landroid/graphics/Rect;->bottom:I

    iput v4, v10, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_f

    .line 3535
    :cond_2c
    move-object/from16 v0, p2

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v5, 0x7e5

    if-eq v4, v5, :cond_2d

    move-object/from16 v0, p2

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v5, 0x7e9

    if-ne v4, v5, :cond_2e

    .line 3538
    :cond_2d
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    iput v4, v12, Landroid/graphics/Rect;->left:I

    iput v4, v11, Landroid/graphics/Rect;->left:I

    iput v4, v10, Landroid/graphics/Rect;->left:I

    .line 3539
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    iput v4, v12, Landroid/graphics/Rect;->top:I

    iput v4, v11, Landroid/graphics/Rect;->top:I

    iput v4, v10, Landroid/graphics/Rect;->top:I

    .line 3540
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    add-int/2addr v4, v5

    iput v4, v12, Landroid/graphics/Rect;->right:I

    iput v4, v11, Landroid/graphics/Rect;->right:I

    iput v4, v10, Landroid/graphics/Rect;->right:I

    .line 3541
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    add-int/2addr v4, v5

    iput v4, v12, Landroid/graphics/Rect;->bottom:I

    iput v4, v11, Landroid/graphics/Rect;->bottom:I

    iput v4, v10, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_f

    .line 3543
    :cond_2e
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v23

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->shouldHideNavigationBar(Landroid/view/WindowManagerPolicy$WindowState;ILandroid/view/WindowManager$LayoutParams;)Z

    move-result v4

    if-nez v4, :cond_2f

    move/from16 v0, v23

    and-int/lit16 v4, v0, 0x600

    if-eqz v4, :cond_30

    move-object/from16 v0, p2

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v5, 0x1

    if-lt v4, v5, :cond_30

    move-object/from16 v0, p2

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v5, 0x7cf

    if-gt v4, v5, :cond_30

    .line 3555
    :cond_2f
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    iput v4, v12, Landroid/graphics/Rect;->left:I

    iput v4, v11, Landroid/graphics/Rect;->left:I

    iput v4, v10, Landroid/graphics/Rect;->left:I

    .line 3556
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    iput v4, v12, Landroid/graphics/Rect;->top:I

    iput v4, v11, Landroid/graphics/Rect;->top:I

    iput v4, v10, Landroid/graphics/Rect;->top:I

    .line 3557
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    add-int/2addr v4, v5

    iput v4, v12, Landroid/graphics/Rect;->right:I

    iput v4, v11, Landroid/graphics/Rect;->right:I

    iput v4, v10, Landroid/graphics/Rect;->right:I

    .line 3558
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    add-int/2addr v4, v5

    iput v4, v12, Landroid/graphics/Rect;->bottom:I

    iput v4, v11, Landroid/graphics/Rect;->bottom:I

    iput v4, v10, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_f

    .line 3561
    :cond_30
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenLeft:I

    iput v4, v12, Landroid/graphics/Rect;->left:I

    iput v4, v11, Landroid/graphics/Rect;->left:I

    iput v4, v10, Landroid/graphics/Rect;->left:I

    .line 3562
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenTop:I

    iput v4, v12, Landroid/graphics/Rect;->top:I

    iput v4, v11, Landroid/graphics/Rect;->top:I

    iput v4, v10, Landroid/graphics/Rect;->top:I

    .line 3563
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenLeft:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenWidth:I

    add-int/2addr v4, v5

    iput v4, v12, Landroid/graphics/Rect;->right:I

    iput v4, v11, Landroid/graphics/Rect;->right:I

    iput v4, v10, Landroid/graphics/Rect;->right:I

    .line 3564
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenHeight:I

    add-int/2addr v4, v5

    iput v4, v12, Landroid/graphics/Rect;->bottom:I

    iput v4, v11, Landroid/graphics/Rect;->bottom:I

    iput v4, v10, Landroid/graphics/Rect;->bottom:I

    .line 3566
    if-nez v16, :cond_31

    if-eqz v18, :cond_32

    .line 3567
    :cond_31
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenHeight:I

    add-int/2addr v4, v5

    iput v4, v12, Landroid/graphics/Rect;->bottom:I

    iput v4, v11, Landroid/graphics/Rect;->bottom:I

    iput v4, v10, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_f

    .line 3569
    :cond_32
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    add-int/2addr v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarHeightForRotation:[I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDisplayRotation:I

    aget v5, v5, v8

    sub-int/2addr v4, v5

    iput v4, v12, Landroid/graphics/Rect;->bottom:I

    iput v4, v11, Landroid/graphics/Rect;->bottom:I

    iput v4, v10, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_f

    .line 3585
    :cond_33
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurTop:I

    iput v4, v13, Landroid/graphics/Rect;->top:I

    goto/16 :goto_10

    .line 3592
    :cond_34
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurBottom:I

    iput v4, v13, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_4

    .line 3595
    :cond_35
    invoke-virtual {v13, v12}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_4

    .line 3597
    :cond_36
    if-eqz p3, :cond_37

    .line 3602
    const/4 v9, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v8, p3

    invoke-virtual/range {v4 .. v13}, Lcom/android/internal/policy/impl/PhoneWindowManager;->setAttachedWindowFrames(Landroid/view/WindowManagerPolicy$WindowState;IILandroid/view/WindowManagerPolicy$WindowState;ZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto/16 :goto_4

    .line 3608
    :cond_37
    if-eqz v19, :cond_3a

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockBottom:I

    if-ge v4, v5, :cond_3a

    .line 3609
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentLeft:I

    iput v4, v10, Landroid/graphics/Rect;->left:I

    .line 3610
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentTop:I

    iput v4, v10, Landroid/graphics/Rect;->top:I

    .line 3611
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentRight:I

    iput v4, v10, Landroid/graphics/Rect;->right:I

    .line 3612
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    iput v4, v10, Landroid/graphics/Rect;->bottom:I

    .line 3613
    const/16 v4, 0x10

    if-ne v7, v4, :cond_38

    .line 3614
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentLeft:I

    iput v4, v12, Landroid/graphics/Rect;->left:I

    iput v4, v11, Landroid/graphics/Rect;->left:I

    .line 3615
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentTop:I

    iput v4, v12, Landroid/graphics/Rect;->top:I

    iput v4, v11, Landroid/graphics/Rect;->top:I

    .line 3616
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentRight:I

    iput v4, v12, Landroid/graphics/Rect;->right:I

    iput v4, v11, Landroid/graphics/Rect;->right:I

    .line 3617
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    iput v4, v12, Landroid/graphics/Rect;->bottom:I

    iput v4, v11, Landroid/graphics/Rect;->bottom:I

    .line 3624
    :goto_11
    const/16 v4, 0x30

    if-eq v7, v4, :cond_39

    .line 3625
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurLeft:I

    iput v4, v13, Landroid/graphics/Rect;->left:I

    .line 3626
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurTop:I

    iput v4, v13, Landroid/graphics/Rect;->top:I

    .line 3627
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurRight:I

    iput v4, v13, Landroid/graphics/Rect;->right:I

    .line 3628
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurBottom:I

    iput v4, v13, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_4

    .line 3619
    :cond_38
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLeft:I

    iput v4, v12, Landroid/graphics/Rect;->left:I

    iput v4, v11, Landroid/graphics/Rect;->left:I

    .line 3620
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockTop:I

    iput v4, v12, Landroid/graphics/Rect;->top:I

    iput v4, v11, Landroid/graphics/Rect;->top:I

    .line 3621
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockRight:I

    iput v4, v12, Landroid/graphics/Rect;->right:I

    iput v4, v11, Landroid/graphics/Rect;->right:I

    .line 3622
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockBottom:I

    iput v4, v12, Landroid/graphics/Rect;->bottom:I

    iput v4, v11, Landroid/graphics/Rect;->bottom:I

    goto :goto_11

    .line 3630
    :cond_39
    invoke-virtual {v13, v12}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_4

    .line 3632
    :cond_3a
    move-object/from16 v0, p2

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v5, 0x7de

    if-ne v4, v5, :cond_3b

    .line 3637
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenLeft:I

    iput v4, v12, Landroid/graphics/Rect;->left:I

    iput v4, v11, Landroid/graphics/Rect;->left:I

    iput v4, v10, Landroid/graphics/Rect;->left:I

    .line 3638
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenTop:I

    iput v4, v12, Landroid/graphics/Rect;->top:I

    iput v4, v11, Landroid/graphics/Rect;->top:I

    iput v4, v10, Landroid/graphics/Rect;->top:I

    .line 3639
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenLeft:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenWidth:I

    add-int/2addr v4, v5

    iput v4, v12, Landroid/graphics/Rect;->right:I

    iput v4, v11, Landroid/graphics/Rect;->right:I

    iput v4, v10, Landroid/graphics/Rect;->right:I

    .line 3640
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenHeight:I

    add-int/2addr v4, v5

    iput v4, v12, Landroid/graphics/Rect;->bottom:I

    iput v4, v11, Landroid/graphics/Rect;->bottom:I

    iput v4, v10, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_4

    .line 3642
    :cond_3b
    move-object/from16 v0, p2

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v5, 0x7d5

    if-ne v4, v5, :cond_3d

    .line 3644
    const/16 v22, 0x0

    .line 3645
    .local v22, smartbarHeight:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    if-eqz v4, :cond_3c

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1050227

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v22

    .line 3646
    :cond_3c
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    iput v4, v12, Landroid/graphics/Rect;->left:I

    iput v4, v11, Landroid/graphics/Rect;->left:I

    iput v4, v10, Landroid/graphics/Rect;->left:I

    .line 3647
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    iput v4, v12, Landroid/graphics/Rect;->top:I

    iput v4, v11, Landroid/graphics/Rect;->top:I

    iput v4, v10, Landroid/graphics/Rect;->top:I

    .line 3648
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    add-int/2addr v4, v5

    iput v4, v12, Landroid/graphics/Rect;->right:I

    iput v4, v11, Landroid/graphics/Rect;->right:I

    iput v4, v10, Landroid/graphics/Rect;->right:I

    .line 3649
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    add-int/2addr v4, v5

    sub-int v4, v4, v22

    iput v4, v12, Landroid/graphics/Rect;->bottom:I

    iput v4, v11, Landroid/graphics/Rect;->bottom:I

    iput v4, v10, Landroid/graphics/Rect;->bottom:I

    .line 3651
    invoke-virtual {v13, v12}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_4

    .line 3653
    .end local v22           #smartbarHeight:I
    :cond_3d
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLeft:I

    iput v4, v13, Landroid/graphics/Rect;->left:I

    iput v4, v12, Landroid/graphics/Rect;->left:I

    iput v4, v11, Landroid/graphics/Rect;->left:I

    iput v4, v10, Landroid/graphics/Rect;->left:I

    .line 3654
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockTop:I

    iput v4, v13, Landroid/graphics/Rect;->top:I

    iput v4, v12, Landroid/graphics/Rect;->top:I

    iput v4, v11, Landroid/graphics/Rect;->top:I

    iput v4, v10, Landroid/graphics/Rect;->top:I

    .line 3655
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockRight:I

    iput v4, v13, Landroid/graphics/Rect;->right:I

    iput v4, v12, Landroid/graphics/Rect;->right:I

    iput v4, v11, Landroid/graphics/Rect;->right:I

    iput v4, v10, Landroid/graphics/Rect;->right:I

    .line 3656
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockBottom:I

    iput v4, v13, Landroid/graphics/Rect;->bottom:I

    iput v4, v12, Landroid/graphics/Rect;->bottom:I

    iput v4, v11, Landroid/graphics/Rect;->bottom:I

    iput v4, v10, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_4

    .line 3691
    .end local v19           #mayWindowResizedByInputMethod:Z
    :cond_3e
    move-object/from16 v0, p2

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v5, 0x7d5

    if-ne v4, v5, :cond_0

    move-object/from16 v0, p2

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->meizuFlags:I

    and-int/lit8 v4, v4, 0x10

    if-eqz v4, :cond_0

    .line 3692
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mToastWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    .line 3693
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAttached:Landroid/view/WindowManagerPolicy$WindowState;

    .line 3694
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    goto/16 :goto_0
.end method

.method public lockNow(Landroid/os/Bundle;)V
    .locals 3
    .parameter "options"

    .prologue
    .line 6105
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DEVICE_POWER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 6106
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenLockTimeout;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6107
    if-eqz p1, :cond_0

    .line 6110
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenLockTimeout;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenLockTimeout;->setLockOptions(Landroid/os/Bundle;)V

    .line 6112
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenLockTimeout;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 6113
    return-void
.end method

.method needSensorRunningLp()Z
    .locals 4

    .prologue
    const/4 v3, 0x4

    const/4 v0, 0x1

    .line 738
    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentAppOrientation:I

    if-eq v1, v3, :cond_0

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentAppOrientation:I

    const/16 v2, 0xa

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentAppOrientation:I

    const/4 v2, 0x7

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentAppOrientation:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_1

    .line 765
    :cond_0
    :goto_0
    return v0

    .line 746
    :cond_1
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockEnablesAccelerometer:Z

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    :cond_2
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeskDockEnablesAccelerometer:Z

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    if-eq v1, v0, :cond_0

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    if-eq v1, v3, :cond_0

    .line 754
    :cond_3
    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUserRotationMode:I

    if-ne v1, v0, :cond_0

    .line 763
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notifyLidSwitchChanged(JZ)V
    .locals 5
    .parameter "whenNanos"
    .parameter "lidOpen"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 4055
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHeadless:Z

    if-eqz v3, :cond_1

    .line 4076
    :cond_0
    :goto_0
    return-void

    .line 4058
    :cond_1
    if-eqz p3, :cond_2

    move v0, v1

    .line 4059
    .local v0, newLidState:I
    :goto_1
    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidState:I

    if-eq v0, v3, :cond_0

    .line 4063
    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidState:I

    .line 4064
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->applyLidSwitchState()V

    .line 4065
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateRotation(Z)V

    .line 4067
    if-eqz p3, :cond_4

    .line 4068
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->keyguardIsShowingTq()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4069
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    const/16 v2, 0x1a

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->onWakeKeyWhenKeyguardShowingTq(I)V

    goto :goto_0

    .end local v0           #newLidState:I
    :cond_2
    move v0, v2

    .line 4058
    goto :goto_1

    .line 4071
    .restart local v0       #newLidState:I
    :cond_3
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->wakeUp(J)V

    goto :goto_0

    .line 4073
    :cond_4
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidControlsSleep:Z

    if-nez v1, :cond_0

    .line 4074
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4, v2}, Landroid/os/PowerManager;->userActivity(JZ)V

    goto :goto_0
.end method

.method public onWindowChangedLw()V
    .locals 4

    .prologue
    const/4 v3, 0x5

    .line 6815
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 6816
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 6817
    return-void
.end method

.method public performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z
    .locals 7
    .parameter "win"
    .parameter "effectId"
    .parameter "always"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 6237
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v4}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v4

    if-nez v4, :cond_1

    .line 6272
    :cond_0
    :goto_0
    return v2

    .line 6240
    :cond_1
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "haptic_feedback_enabled"

    const/4 v6, -0x2

    invoke-static {v4, v5, v2, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    if-nez v4, :cond_3

    move v0, v3

    .line 6242
    .local v0, hapticsDisabled:Z
    :goto_1
    if-nez p3, :cond_2

    if-nez v0, :cond_0

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->isShowingAndNotHidden()Z

    move-result v4

    if-nez v4, :cond_0

    .line 6245
    :cond_2
    const/4 v1, 0x0

    .line 6246
    .local v1, pattern:[J
    sparse-switch p2, :sswitch_data_0

    goto :goto_0

    .line 6248
    :sswitch_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressVibePattern:[J

    .line 6265
    :goto_2
    array-length v4, v1

    if-ne v4, v3, :cond_4

    .line 6267
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    aget-wide v5, v1, v2

    invoke-virtual {v4, v5, v6}, Landroid/os/Vibrator;->vibrate(J)V

    :goto_3
    move v2, v3

    .line 6272
    goto :goto_0

    .end local v0           #hapticsDisabled:Z
    .end local v1           #pattern:[J
    :cond_3
    move v0, v2

    .line 6240
    goto :goto_1

    .line 6251
    .restart local v0       #hapticsDisabled:Z
    .restart local v1       #pattern:[J
    :sswitch_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVirtualKeyVibePattern:[J

    .line 6252
    goto :goto_2

    .line 6254
    :sswitch_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyboardTapVibePattern:[J

    .line 6255
    goto :goto_2

    .line 6257
    :sswitch_3
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSafeModeDisabledVibePattern:[J

    .line 6258
    goto :goto_2

    .line 6260
    :sswitch_4
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSafeModeEnabledVibePattern:[J

    .line 6261
    goto :goto_2

    .line 6270
    :cond_4
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    const/4 v4, -0x1

    invoke-virtual {v2, v1, v4}, Landroid/os/Vibrator;->vibrate([JI)V

    goto :goto_3

    .line 6246
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x3 -> :sswitch_2
        0x2710 -> :sswitch_3
        0x2711 -> :sswitch_4
    .end sparse-switch
.end method

.method public prepareAddWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I
    .locals 4
    .parameter "win"
    .parameter "attrs"

    .prologue
    const/4 v0, -0x7

    .line 1941
    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    sparse-switch v1, :sswitch_data_0

    .line 1996
    :goto_0
    const/4 v0, 0x0

    :cond_0
    return v0

    .line 1943
    :sswitch_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.STATUS_BAR_SERVICE"

    const-string v3, "PhoneWindowManager"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1946
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v1, :cond_1

    .line 1947
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v1}, Landroid/view/WindowManagerPolicy$WindowState;->isAlive()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1951
    :cond_1
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    goto :goto_0

    .line 1954
    :sswitch_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.STATUS_BAR_SERVICE"

    const-string v3, "PhoneWindowManager"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1957
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v1, :cond_2

    .line 1958
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v1}, Landroid/view/WindowManagerPolicy$WindowState;->isAlive()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1962
    :cond_2
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    goto :goto_0

    .line 1966
    :sswitch_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.STATUS_BAR_SERVICE"

    const-string v2, "PhoneWindowManager"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1971
    :sswitch_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.STATUS_BAR_SERVICE"

    const-string v2, "PhoneWindowManager"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1976
    :sswitch_4
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.STATUS_BAR_SERVICE"

    const-string v2, "PhoneWindowManager"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1981
    :sswitch_5
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    if-nez v1, :cond_0

    .line 1984
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    goto :goto_0

    .line 1988
    :sswitch_6
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mGestureBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v1, :cond_3

    .line 1989
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mGestureBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v1}, Landroid/view/WindowManagerPolicy$WindowState;->isAlive()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1993
    :cond_3
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mGestureBar:Landroid/view/WindowManagerPolicy$WindowState;

    goto :goto_0

    .line 1941
    :sswitch_data_0
    .sparse-switch
        0x7d0 -> :sswitch_0
        0x7d4 -> :sswitch_5
        0x7de -> :sswitch_3
        0x7e1 -> :sswitch_4
        0x7e3 -> :sswitch_1
        0x7e8 -> :sswitch_2
        0x7ed -> :sswitch_6
    .end sparse-switch
.end method

.method readLidState()V
    .locals 1

    .prologue
    .line 1570
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->getLidState()I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidState:I

    .line 1571
    return-void
.end method

.method public registerEnableFullScreenDragSettingObserver()V
    .locals 5

    .prologue
    .line 3213
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 3214
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v1, "enable_full_screen_drag"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    new-instance v3, Lcom/android/internal/policy/impl/PhoneWindowManager$10;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-direct {v3, p0, v4}, Lcom/android/internal/policy/impl/PhoneWindowManager$10;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 3223
    return-void
.end method

.method public registerSmartBarSettingObserver()V
    .locals 5

    .prologue
    .line 3199
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 3200
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v1, "mz_smartbar_height_value"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    new-instance v3, Lcom/android/internal/policy/impl/PhoneWindowManager$9;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-direct {v3, p0, v4}, Lcom/android/internal/policy/impl/PhoneWindowManager$9;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 3209
    return-void
.end method

.method public removeStartingWindow(Landroid/os/IBinder;Landroid/view/View;)V
    .locals 3
    .parameter "appToken"
    .parameter "window"

    .prologue
    .line 1919
    if-eqz p2, :cond_0

    .line 1920
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 1921
    .local v0, wm:Landroid/view/WindowManager;
    invoke-interface {v0, p2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 1923
    .end local v0           #wm:Landroid/view/WindowManager;
    :cond_0
    return-void
.end method

.method public removeWindowLw(Landroid/view/WindowManagerPolicy$WindowState;)V
    .locals 2
    .parameter "win"

    .prologue
    const/4 v1, 0x0

    .line 2001
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne v0, p1, :cond_1

    .line 2002
    iput-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    .line 2017
    :cond_0
    :goto_0
    return-void

    .line 2003
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne v0, p1, :cond_2

    .line 2004
    iput-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    goto :goto_0

    .line 2005
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne v0, p1, :cond_3

    .line 2006
    iput-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    goto :goto_0

    .line 2007
    :cond_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mGestureBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne v0, p1, :cond_4

    .line 2008
    iput-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mGestureBar:Landroid/view/WindowManagerPolicy$WindowState;

    goto :goto_0

    .line 2011
    :cond_4
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mToastWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne v0, p1, :cond_0

    .line 2012
    iput-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mToastWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    .line 2013
    iput-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAttached:Landroid/view/WindowManagerPolicy$WindowState;

    .line 2014
    iput-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    goto :goto_0
.end method

.method public requestWakeTouchWhenKeyguardShowing()V
    .locals 1

    .prologue
    .line 6760
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->onWakeTouchWhenKeyguardShowingTq()V

    .line 6762
    return-void
.end method

.method public rotationForOrientationLw(II)I
    .locals 10
    .parameter "orientation"
    .parameter "lastRotation"

    .prologue
    const/16 v9, 0xa

    const/4 v8, 0x4

    const/4 v2, 0x0

    const/4 v7, 0x2

    const/4 v4, 0x1

    .line 5766
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 5767
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationListener:Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;

    invoke-virtual {v3}, Landroid/view/WindowOrientationListener;->getProposedRotation()I

    move-result v1

    .line 5768
    .local v1, sensorRotation:I
    if-gez v1, :cond_0

    .line 5769
    move v1, p2

    .line 5773
    :cond_0
    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidState:I

    if-ne v3, v4, :cond_1

    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidOpenRotation:I

    if-ltz v3, :cond_1

    .line 5775
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidOpenRotation:I

    .line 5834
    .local v0, preferredRotation:I
    :goto_0
    packed-switch p1, :pswitch_data_0

    .line 5886
    :pswitch_0
    if-ltz v0, :cond_19

    .line 5887
    monitor-exit v5

    .line 5889
    .end local v0           #preferredRotation:I
    :goto_1
    return v0

    .line 5776
    :cond_1
    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    if-ne v3, v7, :cond_4

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockEnablesAccelerometer:Z

    if-nez v3, :cond_2

    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockRotation:I

    if-ltz v3, :cond_4

    .line 5781
    :cond_2
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockEnablesAccelerometer:Z

    if-eqz v3, :cond_3

    move v0, v1

    .restart local v0       #preferredRotation:I
    :goto_2
    goto :goto_0

    .end local v0           #preferredRotation:I
    :cond_3
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockRotation:I

    goto :goto_2

    .line 5783
    :cond_4
    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    if-eq v3, v4, :cond_5

    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    const/4 v6, 0x3

    if-eq v3, v6, :cond_5

    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    if-ne v3, v8, :cond_8

    :cond_5
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeskDockEnablesAccelerometer:Z

    if-nez v3, :cond_6

    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeskDockRotation:I

    if-ltz v3, :cond_8

    .line 5790
    :cond_6
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeskDockEnablesAccelerometer:Z

    if-eqz v3, :cond_7

    move v0, v1

    .restart local v0       #preferredRotation:I
    :goto_3
    goto :goto_0

    .end local v0           #preferredRotation:I
    :cond_7
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeskDockRotation:I

    goto :goto_3

    .line 5798
    :cond_8
    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUserRotationMode:I

    if-nez v3, :cond_9

    if-eq p1, v7, :cond_a

    const/4 v3, -0x1

    if-eq p1, v3, :cond_a

    :cond_9
    if-eq p1, v8, :cond_a

    if-eq p1, v9, :cond_a

    const/4 v3, 0x6

    if-eq p1, v3, :cond_a

    const/4 v3, 0x7

    if-ne p1, v3, :cond_f

    .line 5807
    :cond_a
    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAllowAllRotations:I

    if-gez v3, :cond_b

    .line 5811
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x111001d

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_d

    move v3, v4

    :goto_4
    iput v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAllowAllRotations:I

    .line 5814
    :cond_b
    if-ne v1, v7, :cond_c

    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAllowAllRotations:I

    if-eq v3, v4, :cond_c

    if-ne p1, v9, :cond_e

    .line 5817
    :cond_c
    move v0, v1

    .restart local v0       #preferredRotation:I
    goto :goto_0

    .end local v0           #preferredRotation:I
    :cond_d
    move v3, v2

    .line 5811
    goto :goto_4

    .line 5819
    :cond_e
    move v0, p2

    .restart local v0       #preferredRotation:I
    goto :goto_0

    .line 5821
    .end local v0           #preferredRotation:I
    :cond_f
    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUserRotationMode:I

    if-ne v3, v4, :cond_10

    const/4 v3, 0x5

    if-eq p1, v3, :cond_10

    .line 5827
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUserRotation:I

    .restart local v0       #preferredRotation:I
    goto :goto_0

    .line 5831
    .end local v0           #preferredRotation:I
    :cond_10
    const/4 v0, -0x1

    .restart local v0       #preferredRotation:I
    goto :goto_0

    .line 5837
    :pswitch_1
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isAnyPortrait(I)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 5838
    monitor-exit v5

    goto :goto_1

    .line 5891
    .end local v0           #preferredRotation:I
    .end local v1           #sensorRotation:I
    :catchall_0
    move-exception v2

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 5840
    .restart local v0       #preferredRotation:I
    .restart local v1       #sensorRotation:I
    :cond_11
    :try_start_1
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPortraitRotation:I

    .end local v0           #preferredRotation:I
    monitor-exit v5

    goto/16 :goto_1

    .line 5844
    .restart local v0       #preferredRotation:I
    :pswitch_2
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isLandscapeOrSeascape(I)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 5845
    monitor-exit v5

    goto/16 :goto_1

    .line 5847
    :cond_12
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLandscapeRotation:I

    .end local v0           #preferredRotation:I
    monitor-exit v5

    goto/16 :goto_1

    .line 5851
    .restart local v0       #preferredRotation:I
    :pswitch_3
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isAnyPortrait(I)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 5852
    monitor-exit v5

    goto/16 :goto_1

    .line 5854
    :cond_13
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUpsideDownRotation:I

    .end local v0           #preferredRotation:I
    monitor-exit v5

    goto/16 :goto_1

    .line 5858
    .restart local v0       #preferredRotation:I
    :pswitch_4
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isLandscapeOrSeascape(I)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 5859
    monitor-exit v5

    goto/16 :goto_1

    .line 5861
    :cond_14
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSeascapeRotation:I

    .end local v0           #preferredRotation:I
    monitor-exit v5

    goto/16 :goto_1

    .line 5865
    .restart local v0       #preferredRotation:I
    :pswitch_5
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isLandscapeOrSeascape(I)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 5866
    monitor-exit v5

    goto/16 :goto_1

    .line 5868
    :cond_15
    invoke-direct {p0, p2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isLandscapeOrSeascape(I)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 5869
    monitor-exit v5

    move v0, p2

    goto/16 :goto_1

    .line 5871
    :cond_16
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLandscapeRotation:I

    .end local v0           #preferredRotation:I
    monitor-exit v5

    goto/16 :goto_1

    .line 5875
    .restart local v0       #preferredRotation:I
    :pswitch_6
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isAnyPortrait(I)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 5876
    monitor-exit v5

    goto/16 :goto_1

    .line 5878
    :cond_17
    invoke-direct {p0, p2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isAnyPortrait(I)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 5879
    monitor-exit v5

    move v0, p2

    goto/16 :goto_1

    .line 5881
    :cond_18
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPortraitRotation:I

    .end local v0           #preferredRotation:I
    monitor-exit v5

    goto/16 :goto_1

    .line 5889
    .restart local v0       #preferredRotation:I
    :cond_19
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v2

    goto/16 :goto_1

    .line 5834
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public rotationHasCompatibleMetricsLw(II)Z
    .locals 1
    .parameter "orientation"
    .parameter "rotation"

    .prologue
    .line 5896
    packed-switch p1, :pswitch_data_0

    .line 5908
    :pswitch_0
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 5900
    :pswitch_1
    invoke-direct {p0, p2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isAnyPortrait(I)Z

    move-result v0

    goto :goto_0

    .line 5905
    :pswitch_2
    invoke-direct {p0, p2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isLandscapeOrSeascape(I)Z

    move-result v0

    goto :goto_0

    .line 5896
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public screenTurnedOff(I)V
    .locals 2
    .parameter "why"

    .prologue
    const/4 v1, 0x0

    .line 5583
    const v0, 0x11170

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(II)I

    .line 5584
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 5585
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOnEarly:Z

    .line 5586
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOnFully:Z

    .line 5587
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5588
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    if-eqz v0, :cond_0

    .line 5589
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->onScreenTurnedOff(I)V

    .line 5591
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 5592
    :try_start_1
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateOrientationListenerLp()V

    .line 5593
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateLockScreenTimeout()V

    .line 5594
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 5595
    return-void

    .line 5587
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 5594
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public screenTurningOn(Landroid/view/WindowManagerPolicy$ScreenOnListener;)V
    .locals 2
    .parameter "screenOnListener"

    .prologue
    const/4 v1, 0x1

    .line 5599
    const v0, 0x11170

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(II)I

    .line 5606
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 5607
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOnEarly:Z

    .line 5608
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateOrientationListenerLp()V

    .line 5609
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateLockScreenTimeout()V

    .line 5610
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5612
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->waitForKeyguard(Landroid/view/WindowManagerPolicy$ScreenOnListener;)V

    .line 5613
    return-void

    .line 5610
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public screenshotBehindKeyguard(Landroid/graphics/Bitmap;)Z
    .locals 1
    .parameter "dstBitmap"

    .prologue
    .line 6871
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v0, p1}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->screenshotBehindKeyguard(Landroid/graphics/Bitmap;)Z

    move-result v0

    return v0
.end method

.method public selectAnimationLw(Landroid/view/WindowManagerPolicy$WindowState;I)I
    .locals 6
    .parameter "win"
    .parameter "transit"

    .prologue
    const/16 v5, 0x2004

    const/16 v4, 0x2002

    const/16 v2, 0x1003

    const/4 v0, 0x0

    const/16 v3, 0x1001

    .line 2025
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne p1, v1, :cond_4

    .line 2026
    if-eq p2, v4, :cond_0

    if-ne p2, v5, :cond_2

    .line 2027
    :cond_0
    const v0, 0x10a001b

    .line 2060
    :cond_1
    :goto_0
    return v0

    .line 2028
    :cond_2
    if-eq p2, v3, :cond_3

    if-ne p2, v2, :cond_5

    .line 2029
    :cond_3
    const v0, 0x10a001a

    goto :goto_0

    .line 2031
    :cond_4
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne p1, v1, :cond_5

    .line 2033
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarOnBottom:Z

    if-eqz v1, :cond_6

    .line 2034
    if-eq p2, v4, :cond_1

    if-eq p2, v5, :cond_1

    .line 2036
    if-eq p2, v3, :cond_1

    if-eq p2, v2, :cond_1

    .line 2046
    :cond_5
    const/4 v1, 0x5

    if-ne p2, v1, :cond_a

    .line 2047
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->hasAppShownWindows()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2049
    const v0, 0x10a0011

    goto :goto_0

    .line 2040
    :cond_6
    if-eq p2, v4, :cond_7

    if-ne p2, v5, :cond_8

    .line 2041
    :cond_7
    const v0, 0x10a0019

    goto :goto_0

    .line 2042
    :cond_8
    if-eq p2, v3, :cond_9

    if-ne p2, v2, :cond_5

    .line 2043
    :cond_9
    const v0, 0x10a0018

    goto :goto_0

    .line 2051
    :cond_a
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v2, 0x7e7

    if-ne v1, v2, :cond_1

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDreamingLockscreen:Z

    if-eqz v1, :cond_1

    if-ne p2, v3, :cond_1

    .line 2057
    const/4 v0, -0x1

    goto :goto_0
.end method

.method sendCloseSystemWindows()V
    .locals 2

    .prologue
    .line 5739
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->sendCloseSystemWindows(Landroid/content/Context;Ljava/lang/String;)V

    .line 5740
    return-void
.end method

.method sendCloseSystemWindows(Ljava/lang/String;)V
    .locals 1
    .parameter "reason"

    .prologue
    .line 5743
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->sendCloseSystemWindows(Landroid/content/Context;Ljava/lang/String;)V

    .line 5744
    return-void
.end method

.method sendEvent(IIJ)V
    .locals 15
    .parameter "action"
    .parameter "flags"
    .parameter "when"

    .prologue
    .line 5439
    move/from16 v0, p2

    and-int/lit16 v2, v0, 0x80

    if-eqz v2, :cond_0

    const/4 v8, 0x1

    .line 5440
    .local v8, repeatCount:I
    :goto_0
    new-instance v1, Landroid/view/KeyEvent;

    iget-wide v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDownTime:J

    const/4 v7, 0x4

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x0

    or-int/lit8 v12, p2, 0x8

    const/16 v13, 0x101

    move-wide/from16 v4, p3

    move/from16 v6, p1

    invoke-direct/range {v1 .. v13}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 5445
    .local v1, ev:Landroid/view/KeyEvent;
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 5446
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " ev"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5447
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x6

    new-instance v4, Landroid/view/KeyEvent;

    invoke-direct {v4, v1}, Landroid/view/KeyEvent;-><init>(Landroid/view/KeyEvent;)V

    invoke-virtual {v2, v3, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v14

    .line 5449
    .local v14, msg:Landroid/os/Message;
    const/4 v2, 0x1

    invoke-virtual {v14, v2}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 5450
    invoke-virtual {v14}, Landroid/os/Message;->sendToTarget()V

    .line 5451
    return-void

    .line 5439
    .end local v1           #ev:Landroid/view/KeyEvent;
    .end local v8           #repeatCount:I
    .end local v14           #msg:Landroid/os/Message;
    :cond_0
    const/4 v8, 0x0

    goto :goto_0
.end method

.method setAttachedWindowFrames(Landroid/view/WindowManagerPolicy$WindowState;IILandroid/view/WindowManagerPolicy$WindowState;ZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 2
    .parameter "win"
    .parameter "fl"
    .parameter "adjust"
    .parameter "attached"
    .parameter "insetDecors"
    .parameter "pf"
    .parameter "df"
    .parameter "cf"
    .parameter "vf"

    .prologue
    .line 3023
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v0

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLayer:I

    if-le v0, v1, :cond_1

    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v0

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLayer:I

    if-ge v0, v1, :cond_1

    .line 3031
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLeft:I

    iput v0, p9, Landroid/graphics/Rect;->left:I

    iput v0, p8, Landroid/graphics/Rect;->left:I

    iput v0, p7, Landroid/graphics/Rect;->left:I

    .line 3032
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockTop:I

    iput v0, p9, Landroid/graphics/Rect;->top:I

    iput v0, p8, Landroid/graphics/Rect;->top:I

    iput v0, p7, Landroid/graphics/Rect;->top:I

    .line 3033
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockRight:I

    iput v0, p9, Landroid/graphics/Rect;->right:I

    iput v0, p8, Landroid/graphics/Rect;->right:I

    iput v0, p7, Landroid/graphics/Rect;->right:I

    .line 3034
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockBottom:I

    iput v0, p9, Landroid/graphics/Rect;->bottom:I

    iput v0, p8, Landroid/graphics/Rect;->bottom:I

    iput v0, p7, Landroid/graphics/Rect;->bottom:I

    .line 3065
    .end local p8
    :goto_0
    and-int/lit16 v0, p2, 0x100

    if-nez v0, :cond_0

    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object p7

    .end local p7
    :cond_0
    invoke-virtual {p6, p7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 3067
    return-void

    .line 3042
    .restart local p7
    .restart local p8
    :cond_1
    const/16 v0, 0x10

    if-eq p3, v0, :cond_4

    .line 3043
    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->getDisplayFrameLw()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p8, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 3059
    :cond_2
    :goto_1
    if-eqz p5, :cond_3

    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->getDisplayFrameLw()Landroid/graphics/Rect;

    move-result-object p8

    .end local p8
    :cond_3
    invoke-virtual {p7, p8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 3060
    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->getVisibleFrameLw()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p9, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 3051
    .restart local p8
    :cond_4
    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->getContentFrameLw()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p8, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 3052
    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v0

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLayer:I

    if-ge v0, v1, :cond_2

    .line 3053
    iget v0, p8, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentLeft:I

    if-ge v0, v1, :cond_5

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentLeft:I

    iput v0, p8, Landroid/graphics/Rect;->left:I

    .line 3054
    :cond_5
    iget v0, p8, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentTop:I

    if-ge v0, v1, :cond_6

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentTop:I

    iput v0, p8, Landroid/graphics/Rect;->top:I

    .line 3055
    :cond_6
    iget v0, p8, Landroid/graphics/Rect;->right:I

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentRight:I

    if-le v0, v1, :cond_7

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentRight:I

    iput v0, p8, Landroid/graphics/Rect;->right:I

    .line 3056
    :cond_7
    iget v0, p8, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    if-le v0, v1, :cond_2

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    iput v0, p8, Landroid/graphics/Rect;->bottom:I

    goto :goto_1
.end method

.method public setCurrentOrientationLw(I)V
    .locals 2
    .parameter "newOrientation"

    .prologue
    .line 6209
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 6210
    :try_start_0
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentAppOrientation:I

    if-eq p1, v0, :cond_0

    .line 6211
    iput p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentAppOrientation:I

    .line 6212
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateOrientationListenerLp()V

    .line 6214
    :cond_0
    monitor-exit v1

    .line 6215
    return-void

    .line 6214
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setCurrentUserLw(I)V
    .locals 2
    .parameter "newUserId"

    .prologue
    const/4 v1, 0x0

    .line 6407
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    if-eqz v0, :cond_0

    .line 6408
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->setCurrentUser(I)V

    .line 6410
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-eqz v0, :cond_1

    .line 6412
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v0, p1}, Lcom/android/internal/statusbar/IStatusBarService;->setCurrentUser(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6417
    :cond_1
    :goto_0
    invoke-virtual {p0, v1, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->setLastInputMethodWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;)V

    .line 6418
    return-void

    .line 6413
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method setHdmiPlugged(Z)V
    .locals 9
    .parameter "plugged"

    .prologue
    const/high16 v8, 0x800

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 4079
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHdmiPlugged:Z

    if-eq v3, p1, :cond_0

    .line 4080
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHdmiPlugged:Z

    .line 4082
    if-eqz p1, :cond_1

    move v3, v4

    :goto_0
    invoke-static {v3}, Landroid/os/MeizuDeviceContorl;->set_hdmi_cable_status(I)I

    .line 4084
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    iget-boolean v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHdmiPlugged:Z

    invoke-interface {v3, v6}, Landroid/view/IWindowManager;->disableRotationAnim(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4088
    :goto_1
    invoke-virtual {p0, v4, v4}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateRotation(ZZ)V

    .line 4089
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.HDMI_PLUGGED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4090
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {v2, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4091
    const-string v3, "state"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4092
    const-string v3, "WindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "video hdmi sendStickyBroadcastAsUser plugged: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4093
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v2, v6}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 4096
    const-string v3, "hdmi"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "hdmi state change.. avail = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4097
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.MEIZU_SPDIF_STATE_CHANGED"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4098
    .local v1, in:Landroid/content/Intent;
    invoke-virtual {v1, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4099
    const-string v6, "android.intent.extra.MEIZU_SPDIF_STATE"

    if-eqz p1, :cond_2

    move v3, v4

    :goto_2
    invoke-virtual {v1, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4100
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v1, v6}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 4102
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "sound_spdif"

    if-eqz p1, :cond_3

    :goto_3
    invoke-static {v3, v6, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 4104
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/internal/policy/impl/PhoneWindowManager$17;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$17;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    const-wide/16 v5, 0x1f4

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4113
    .end local v1           #in:Landroid/content/Intent;
    .end local v2           #intent:Landroid/content/Intent;
    :cond_0
    return-void

    :cond_1
    move v3, v5

    .line 4082
    goto/16 :goto_0

    .line 4085
    :catch_0
    move-exception v0

    .line 4086
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "WindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "video hdmi Pluged Exception : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #in:Landroid/content/Intent;
    .restart local v2       #intent:Landroid/content/Intent;
    :cond_2
    move v3, v5

    .line 4099
    goto :goto_2

    :cond_3
    move v4, v5

    .line 4102
    goto :goto_3
.end method

.method public setInitialDisplaySize(Landroid/view/Display;III)V
    .locals 19
    .parameter "display"
    .parameter "width"
    .parameter "height"
    .parameter "density"

    .prologue
    .line 1193
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDisplay:Landroid/view/Display;

    .line 1196
    move/from16 v0, p2

    move/from16 v1, p3

    if-le v0, v1, :cond_3

    .line 1197
    move/from16 v7, p3

    .line 1198
    .local v7, shortSize:I
    move/from16 v4, p2

    .line 1199
    .local v4, longSize:I
    const/4 v9, 0x0

    move-object/from16 v0, p0

    iput v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLandscapeRotation:I

    .line 1200
    const/4 v9, 0x2

    move-object/from16 v0, p0

    iput v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSeascapeRotation:I

    .line 1201
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x111001e

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1203
    const/4 v9, 0x1

    move-object/from16 v0, p0

    iput v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPortraitRotation:I

    .line 1204
    const/4 v9, 0x3

    move-object/from16 v0, p0

    iput v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUpsideDownRotation:I

    .line 1224
    :goto_0
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x105000c

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    move-object/from16 v0, p0

    iput v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarHeight:I

    .line 1228
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarHeightForRotation:[I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPortraitRotation:I

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarHeightForRotation:[I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUpsideDownRotation:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMeizuNavigationBarHeight:I

    aput v13, v11, v12

    aput v13, v9, v10

    .line 1232
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarHeightForRotation:[I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLandscapeRotation:I

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarHeightForRotation:[I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSeascapeRotation:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x105000e

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    aput v13, v11, v12

    aput v13, v9, v10

    .line 1238
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarWidthForRotation:[I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPortraitRotation:I

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarWidthForRotation:[I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUpsideDownRotation:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarWidthForRotation:[I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLandscapeRotation:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarWidthForRotation:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSeascapeRotation:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x105000f

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v17

    aput v17, v15, v16

    aput v17, v13, v14

    aput v17, v11, v12

    aput v17, v9, v10

    .line 1246
    mul-int/lit16 v9, v7, 0xa0

    div-int v8, v9, p4

    .line 1248
    .local v8, shortSizeDp:I
    const/16 v9, 0x258

    if-ge v8, v9, :cond_5

    .line 1250
    const/4 v9, 0x0

    move-object/from16 v0, p0

    iput-boolean v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasSystemNavBar:Z

    .line 1251
    const/4 v9, 0x1

    move-object/from16 v0, p0

    iput-boolean v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarCanMove:Z

    .line 1258
    :cond_0
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasSystemNavBar:Z

    if-nez v9, :cond_7

    .line 1259
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x111003b

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v9

    move-object/from16 v0, p0

    iput-boolean v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasNavigationBar:Z

    .line 1263
    const-string v9, "qemu.hw.mainkeys"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1264
    .local v6, navBarOverride:Ljava/lang/String;
    const-string v9, ""

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 1265
    const-string v9, "1"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iput-boolean v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasNavigationBar:Z

    .line 1272
    .end local v6           #navBarOverride:Ljava/lang/String;
    :cond_1
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasSystemNavBar:Z

    if-eqz v9, :cond_9

    .line 1276
    mul-int/lit16 v9, v4, 0xa0

    div-int v5, v9, p4

    .line 1277
    .local v5, longSizeDp:I
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarHeightForRotation:[I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLandscapeRotation:I

    aget v9, v9, v10

    mul-int/lit16 v9, v9, 0xa0

    div-int v3, v9, p4

    .line 1279
    .local v3, barHeightDp:I
    sub-int v9, v8, v3

    mul-int/lit8 v9, v9, 0x10

    div-int v2, v9, v5

    .line 1284
    .local v2, aspect:I
    const/16 v9, 0x9

    if-ge v2, v9, :cond_8

    const/4 v9, 0x1

    :goto_3
    move-object/from16 v0, p0

    iput-boolean v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCanHideNavigationBar:Z

    .line 1295
    .end local v2           #aspect:I
    .end local v3           #barHeightDp:I
    .end local v5           #longSizeDp:I
    :goto_4
    const-string v9, "portrait"

    const-string v10, "persist.demo.hdmirotation"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 1296
    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPortraitRotation:I

    move-object/from16 v0, p0

    iput v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHdmiRotation:I

    .line 1300
    :goto_5
    const-string v9, "persist.demo.hdmirotationlock"

    const/4 v10, 0x1

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    move-object/from16 v0, p0

    iput-boolean v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHdmiRotationLock:Z

    .line 1301
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->configureForMx2OrMx3()V

    .line 1302
    return-void

    .line 1206
    .end local v8           #shortSizeDp:I
    :cond_2
    const/4 v9, 0x3

    move-object/from16 v0, p0

    iput v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPortraitRotation:I

    .line 1207
    const/4 v9, 0x1

    move-object/from16 v0, p0

    iput v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUpsideDownRotation:I

    goto/16 :goto_0

    .line 1210
    .end local v4           #longSize:I
    .end local v7           #shortSize:I
    :cond_3
    move/from16 v7, p2

    .line 1211
    .restart local v7       #shortSize:I
    move/from16 v4, p3

    .line 1212
    .restart local v4       #longSize:I
    const/4 v9, 0x0

    move-object/from16 v0, p0

    iput v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPortraitRotation:I

    .line 1213
    const/4 v9, 0x2

    move-object/from16 v0, p0

    iput v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUpsideDownRotation:I

    .line 1214
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x111001e

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1216
    const/4 v9, 0x3

    move-object/from16 v0, p0

    iput v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLandscapeRotation:I

    .line 1217
    const/4 v9, 0x1

    move-object/from16 v0, p0

    iput v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSeascapeRotation:I

    goto/16 :goto_0

    .line 1219
    :cond_4
    const/4 v9, 0x1

    move-object/from16 v0, p0

    iput v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLandscapeRotation:I

    .line 1220
    const/4 v9, 0x3

    move-object/from16 v0, p0

    iput v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSeascapeRotation:I

    goto/16 :goto_0

    .line 1252
    .restart local v8       #shortSizeDp:I
    :cond_5
    const/16 v9, 0x2d0

    if-ge v8, v9, :cond_0

    .line 1254
    const/4 v9, 0x0

    move-object/from16 v0, p0

    iput-boolean v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasSystemNavBar:Z

    .line 1255
    const/4 v9, 0x0

    move-object/from16 v0, p0

    iput-boolean v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarCanMove:Z

    goto/16 :goto_1

    .line 1266
    .restart local v6       #navBarOverride:Ljava/lang/String;
    :cond_6
    const-string v9, "0"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/4 v9, 0x1

    move-object/from16 v0, p0

    iput-boolean v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasNavigationBar:Z

    goto/16 :goto_2

    .line 1269
    .end local v6           #navBarOverride:Ljava/lang/String;
    :cond_7
    const/4 v9, 0x0

    move-object/from16 v0, p0

    iput-boolean v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasNavigationBar:Z

    goto/16 :goto_2

    .line 1284
    .restart local v2       #aspect:I
    .restart local v3       #barHeightDp:I
    .restart local v5       #longSizeDp:I
    :cond_8
    const/4 v9, 0x0

    goto/16 :goto_3

    .line 1285
    .end local v2           #aspect:I
    .end local v3           #barHeightDp:I
    .end local v5           #longSizeDp:I
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasNavigationBar:Z

    if-eqz v9, :cond_a

    .line 1288
    const/4 v9, 0x1

    move-object/from16 v0, p0

    iput-boolean v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCanHideNavigationBar:Z

    goto/16 :goto_4

    .line 1290
    :cond_a
    const/4 v9, 0x0

    move-object/from16 v0, p0

    iput-boolean v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCanHideNavigationBar:Z

    goto/16 :goto_4

    .line 1298
    :cond_b
    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLandscapeRotation:I

    move-object/from16 v0, p0

    iput v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHdmiRotation:I

    goto/16 :goto_5
.end method

.method public setLastInputMethodWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;)V
    .locals 0
    .parameter "ime"
    .parameter "target"

    .prologue
    .line 6388
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    .line 6389
    iput-object p2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastInputMethodTargetWindow:Landroid/view/WindowManagerPolicy$WindowState;

    .line 6390
    return-void
.end method

.method public setRecentPanelState(Z)V
    .locals 0
    .parameter "opened"

    .prologue
    .line 6887
    sput-boolean p1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRecentPanelOpened:Z

    .line 6888
    return-void
.end method

.method public setRotationLw(I)V
    .locals 1
    .parameter "rotation"

    .prologue
    .line 5914
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationListener:Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;

    invoke-virtual {v0, p1}, Landroid/view/WindowOrientationListener;->setCurrentRotation(I)V

    .line 5915
    return-void
.end method

.method public setSafeMode(Z)V
    .locals 3
    .parameter "safeMode"

    .prologue
    .line 5949
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSafeMode:Z

    .line 5950
    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/16 v0, 0x2711

    :goto_0
    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 5953
    return-void

    .line 5950
    :cond_0
    const/16 v0, 0x2710

    goto :goto_0
.end method

.method public setStatusBarBackgroundTransparent(ZZ)V
    .locals 2
    .parameter "transparent"
    .parameter "animate"

    .prologue
    .line 6862
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    .line 6863
    .local v1, statusbar:Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v1, :cond_0

    .line 6864
    invoke-interface {v1, p1, p2}, Lcom/android/internal/statusbar/IStatusBarService;->setStatusBarBackgroundTransparent(ZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6868
    .end local v1           #statusbar:Lcom/android/internal/statusbar/IStatusBarService;
    :cond_0
    :goto_0
    return-void

    .line 6865
    :catch_0
    move-exception v0

    .line 6866
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public setStatusbarExpanded(Z)V
    .locals 2
    .parameter "expanded"

    .prologue
    .line 6597
    if-eqz p1, :cond_0

    .line 6598
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusbarExpanded:Z

    .line 6599
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideStatusbarRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6607
    :goto_0
    return-void

    .line 6601
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemUIAlreadyShownInFullScreen:Z

    if-eqz v0, :cond_1

    .line 6602
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideStatusbarRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 6604
    :cond_1
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusbarExpanded:Z

    goto :goto_0
.end method

.method public setUserRotationMode(II)V
    .locals 4
    .parameter "mode"
    .parameter "rot"

    .prologue
    const/4 v2, 0x1

    const/4 v3, -0x2

    .line 5928
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 5931
    .local v0, res:Landroid/content/ContentResolver;
    if-ne p1, v2, :cond_0

    .line 5932
    const-string v1, "user_rotation"

    invoke-static {v0, v1, p2, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 5936
    const-string v1, "accelerometer_rotation"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 5946
    :goto_0
    return-void

    .line 5941
    :cond_0
    const-string v1, "accelerometer_rotation"

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_0
.end method

.method public showAssistant()V
    .locals 1

    .prologue
    .line 6422
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->showAssistant()V

    .line 6423
    return-void
.end method

.method public showBootMessage(Ljava/lang/CharSequence;Z)V
    .locals 2
    .parameter "msg"
    .parameter "always"

    .prologue
    .line 6001
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHeadless:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShowBootMessage:Z

    if-nez v0, :cond_1

    .line 6046
    :cond_0
    :goto_0
    return-void

    .line 6002
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/policy/impl/PhoneWindowManager$33;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager$33;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method showGlobalActionsDialog()V
    .locals 4

    .prologue
    .line 919
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mGlobalActions:Lcom/android/internal/policy/impl/GlobalActions;

    if-nez v1, :cond_0

    .line 920
    new-instance v1, Lcom/android/internal/policy/impl/GlobalActions;

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    invoke-direct {v1, v2, v3}, Lcom/android/internal/policy/impl/GlobalActions;-><init>(Landroid/content/Context;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mGlobalActions:Lcom/android/internal/policy/impl/GlobalActions;

    .line 922
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->keyguardIsShowingTq()Z

    move-result v0

    .line 923
    .local v0, keyguardShowing:Z
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mGlobalActions:Lcom/android/internal/policy/impl/GlobalActions;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isDeviceProvisioned()Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/android/internal/policy/impl/GlobalActions;->showDialog(ZZ)V

    .line 924
    if-eqz v0, :cond_1

    .line 927
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->userActivity()V

    .line 929
    :cond_1
    return-void
.end method

.method showOrHideRecentAppsDialog(I)V
    .locals 2
    .parameter "behavior"

    .prologue
    .line 977
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/policy/impl/PhoneWindowManager$5;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager$5;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1053
    return-void
.end method

.method startDockOrHome()V
    .locals 3

    .prologue
    .line 6165
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeIntent:Landroid/content/Intent;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 6166
    return-void
.end method

.method public subWindowTypeToLayerLw(I)I
    .locals 3
    .parameter "type"

    .prologue
    .line 1713
    packed-switch p1, :pswitch_data_0

    .line 1724
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown sub-window type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1725
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1716
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 1718
    :pswitch_1
    const/4 v0, -0x2

    goto :goto_0

    .line 1720
    :pswitch_2
    const/4 v0, -0x1

    goto :goto_0

    .line 1722
    :pswitch_3
    const/4 v0, 0x2

    goto :goto_0

    .line 1713
    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public systemBooted()V
    .locals 2

    .prologue
    .line 5992
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 5993
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemBooted:Z

    .line 5994
    monitor-exit v1

    .line 5995
    return-void

    .line 5994
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public systemReady()V
    .locals 3

    .prologue
    .line 5969
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    if-eqz v0, :cond_0

    .line 5971
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->onSystemReady()V

    .line 5973
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 5974
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateOrientationListenerLp()V

    .line 5975
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemReady:Z

    .line 5976
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/internal/policy/impl/PhoneWindowManager$32;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$32;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 5981
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5983
    sget-object v0, Landroid/os/Build;->IS_MX2:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5984
    new-instance v0, Landroid/hardware/SystemSensorManager;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/hardware/SystemSensorManager;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSensorManager:Landroid/hardware/SensorManager;

    .line 5985
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mProximitySensor:Landroid/hardware/Sensor;

    .line 5988
    :cond_1
    return-void

    .line 5981
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public updateKeyguardStatusBar(Z)V
    .locals 2
    .parameter "isKeyguardShow"

    .prologue
    .line 6846
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    .line 6847
    .local v1, statusbar:Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v1, :cond_0

    .line 6848
    invoke-interface {v1, p1}, Lcom/android/internal/statusbar/IStatusBarService;->updateKeyguardStatusBar(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6852
    .end local v1           #statusbar:Lcom/android/internal/statusbar/IStatusBarService;
    :cond_0
    :goto_0
    return-void

    .line 6849
    :catch_0
    move-exception v0

    .line 6850
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method updateOrientationListenerLp()V
    .locals 2

    .prologue
    .line 779
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationListener:Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;

    invoke-virtual {v1}, Landroid/view/WindowOrientationListener;->canDetectOrientation()Z

    move-result v1

    if-nez v1, :cond_1

    .line 806
    :cond_0
    :goto_0
    return-void

    .line 788
    :cond_1
    const/4 v0, 0x1

    .line 789
    .local v0, disable:Z
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOnEarly:Z

    if-eqz v1, :cond_2

    .line 790
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->needSensorRunningLp()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 791
    const/4 v0, 0x0

    .line 793
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationSensorEnabled:Z

    if-nez v1, :cond_2

    .line 794
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationListener:Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;

    invoke-virtual {v1}, Landroid/view/WindowOrientationListener;->enable()V

    .line 796
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationSensorEnabled:Z

    .line 801
    :cond_2
    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationSensorEnabled:Z

    if-eqz v1, :cond_0

    .line 802
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationListener:Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;

    invoke-virtual {v1}, Landroid/view/WindowOrientationListener;->disable()V

    .line 804
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationSensorEnabled:Z

    goto :goto_0
.end method

.method updateRotation(Z)V
    .locals 2
    .parameter "alwaysSendConfiguration"

    .prologue
    .line 6148
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/view/IWindowManager;->updateRotation(ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6152
    :goto_0
    return-void

    .line 6149
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method updateRotation(ZZ)V
    .locals 1
    .parameter "alwaysSendConfiguration"
    .parameter "forceRelayout"

    .prologue
    .line 6157
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v0, p1, p2}, Landroid/view/IWindowManager;->updateRotation(ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6161
    :goto_0
    return-void

    .line 6158
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public updateSettings()V
    .locals 13

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v0, 0x0

    .line 1338
    iget-object v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 1339
    .local v3, resolver:Landroid/content/ContentResolver;
    const/4 v4, 0x0

    .line 1340
    .local v4, updateRotation:Z
    iget-object v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v9

    .line 1341
    :try_start_0
    const-string v10, "end_button_behavior"

    const/4 v11, 0x2

    const/4 v12, -0x2

    invoke-static {v3, v10, v11, v12}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v10

    iput v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEndcallBehavior:I

    .line 1345
    const-string v10, "incall_power_button_behavior"

    const/4 v11, 0x1

    const/4 v12, -0x2

    invoke-static {v3, v10, v11, v12}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v10

    iput v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIncallPowerBehavior:I

    .line 1351
    const-string v10, "user_rotation"

    const/4 v11, 0x0

    const/4 v12, -0x2

    invoke-static {v3, v10, v11, v12}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    .line 1354
    .local v5, userRotation:I
    iget v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUserRotation:I

    if-eq v10, v5, :cond_0

    .line 1355
    iput v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUserRotation:I

    .line 1356
    const/4 v4, 0x1

    .line 1358
    :cond_0
    const-string v10, "accelerometer_rotation"

    const/4 v11, 0x0

    const/4 v12, -0x2

    invoke-static {v3, v10, v11, v12}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v10

    if-eqz v10, :cond_7

    move v6, v0

    .line 1362
    .local v6, userRotationMode:I
    :goto_0
    iget v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUserRotationMode:I

    if-eq v10, v6, :cond_1

    .line 1363
    iput v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUserRotationMode:I

    .line 1364
    const/4 v4, 0x1

    .line 1365
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateOrientationListenerLp()V

    .line 1368
    :cond_1
    iget-boolean v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemReady:Z

    if-eqz v10, :cond_3

    .line 1369
    const-string v10, "pointer_location"

    const/4 v11, 0x0

    const/4 v12, -0x2

    invoke-static {v3, v10, v11, v12}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    .line 1371
    .local v2, pointerLocation:I
    iget v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationMode:I

    if-eq v10, v2, :cond_3

    .line 1372
    iput v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationMode:I

    .line 1373
    iget-object v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    if-eqz v2, :cond_2

    move v8, v7

    :cond_2
    invoke-virtual {v10, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1378
    .end local v2           #pointerLocation:I
    :cond_3
    const-string v8, "screen_off_timeout"

    const/4 v10, 0x0

    const/4 v11, -0x2

    invoke-static {v3, v8, v10, v11}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v8

    iput v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLockScreenTimeout:I

    .line 1380
    const-string v8, "default_input_method"

    const/4 v10, -0x2

    invoke-static {v3, v8, v10}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 1382
    .local v1, imId:Ljava/lang/String;
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_4

    move v0, v7

    .line 1383
    .local v0, hasSoftInput:Z
    :cond_4
    iget-boolean v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasSoftInput:Z

    if-eq v8, v0, :cond_5

    .line 1384
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasSoftInput:Z

    .line 1385
    const/4 v4, 0x1

    .line 1387
    :cond_5
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1389
    if-eqz v4, :cond_6

    .line 1390
    invoke-virtual {p0, v7}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateRotation(Z)V

    .line 1392
    :cond_6
    return-void

    .end local v0           #hasSoftInput:Z
    .end local v1           #imId:Ljava/lang/String;
    .end local v6           #userRotationMode:I
    :cond_7
    move v6, v7

    .line 1358
    goto :goto_0

    .line 1387
    .end local v5           #userRotation:I
    :catchall_0
    move-exception v7

    :try_start_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v7
.end method

.method public userActivity()V
    .locals 5

    .prologue
    .line 6073
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenLockTimeout;

    monitor-enter v1

    .line 6074
    :try_start_0
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLockScreenTimerActive:Z

    if-eqz v0, :cond_0

    .line 6076
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenLockTimeout;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6077
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenLockTimeout;

    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLockScreenTimeout:I

    int-to-long v3, v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 6079
    :cond_0
    monitor-exit v1

    .line 6080
    return-void

    .line 6079
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public windowTypeToLayerLw(I)I
    .locals 5
    .parameter "type"

    .prologue
    const/16 v3, 0xd

    const/4 v2, 0x3

    const/4 v1, 0x1

    const/4 v0, 0x2

    .line 1614
    if-lt p1, v1, :cond_0

    const/16 v4, 0x63

    if-gt p1, v4, :cond_0

    .line 1708
    :goto_0
    :pswitch_0
    return v0

    .line 1617
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 1707
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown window type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_1
    move v0, v1

    .line 1619
    goto :goto_0

    :pswitch_2
    move v0, v2

    .line 1624
    goto :goto_0

    .line 1626
    :pswitch_3
    const/4 v0, 0x4

    goto :goto_0

    .line 1629
    :pswitch_4
    const/4 v0, 0x5

    goto :goto_0

    .line 1632
    :pswitch_5
    const/4 v0, 0x6

    goto :goto_0

    .line 1635
    :pswitch_6
    const/4 v0, 0x7

    goto :goto_0

    .line 1638
    :pswitch_7
    const/16 v0, 0x8

    goto :goto_0

    .line 1641
    :pswitch_8
    const/16 v0, 0x9

    goto :goto_0

    :pswitch_9
    move v0, v2

    .line 1644
    goto :goto_0

    .line 1647
    :pswitch_a
    const/16 v0, 0xa

    goto :goto_0

    .line 1650
    :pswitch_b
    const/16 v0, 0xb

    goto :goto_0

    .line 1654
    :pswitch_c
    const/16 v0, 0xc

    goto :goto_0

    :pswitch_d
    move v0, v3

    .line 1658
    goto :goto_0

    :pswitch_e
    move v0, v3

    .line 1660
    goto :goto_0

    .line 1663
    :pswitch_f
    const/16 v0, 0xe

    goto :goto_0

    .line 1666
    :pswitch_10
    const/16 v0, 0xf

    goto :goto_0

    .line 1668
    :pswitch_11
    const/16 v0, 0x10

    goto :goto_0

    .line 1670
    :pswitch_12
    const/16 v0, 0x11

    goto :goto_0

    .line 1672
    :pswitch_13
    const/16 v0, 0x12

    goto :goto_0

    .line 1676
    :pswitch_14
    const/16 v0, 0x13

    goto :goto_0

    .line 1680
    :pswitch_15
    const/16 v0, 0x14

    goto :goto_0

    .line 1683
    :pswitch_16
    const/16 v0, 0x15

    goto :goto_0

    .line 1686
    :pswitch_17
    const/16 v0, 0x16

    goto :goto_0

    .line 1689
    :pswitch_18
    const/16 v0, 0x17

    goto :goto_0

    .line 1693
    :pswitch_19
    const/16 v0, 0x18

    goto :goto_0

    .line 1695
    :pswitch_1a
    const/16 v0, 0x19

    goto :goto_0

    .line 1697
    :pswitch_1b
    const/16 v0, 0x1a

    goto :goto_0

    .line 1700
    :pswitch_1c
    const/16 v0, 0x1b

    goto :goto_0

    .line 1702
    :pswitch_1d
    const/16 v0, 0x1c

    goto :goto_0

    .line 1704
    :pswitch_1e
    const/16 v0, 0x1d

    goto :goto_0

    .line 1617
    nop

    :pswitch_data_0
    .packed-switch 0x7d0
        :pswitch_12
        :pswitch_3
        :pswitch_2
        :pswitch_8
        :pswitch_c
        :pswitch_5
        :pswitch_15
        :pswitch_6
        :pswitch_4
        :pswitch_e
        :pswitch_16
        :pswitch_a
        :pswitch_b
        :pswitch_0
        :pswitch_13
        :pswitch_1a
        :pswitch_19
        :pswitch_11
        :pswitch_1c
        :pswitch_f
        :pswitch_14
        :pswitch_1b
        :pswitch_1d
        :pswitch_7
        :pswitch_10
        :pswitch_1
        :pswitch_18
        :pswitch_17
        :pswitch_4
        :pswitch_1e
        :pswitch_9
        :pswitch_d
    .end packed-switch
.end method
