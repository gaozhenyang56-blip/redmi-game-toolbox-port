.class public final Lcom/gzy/redmiport/SidebarRuntime;
.super Ljava/lang/Object;
.source "SidebarRuntime.java"

# interfaces
.implements Lcom/gzy/redmiport/ForegroundMonitor$Listener;


# static fields
.field private static final SERVICE:Ljava/lang/String; = "com.miui.gamebooster.service.DockWindowManagerService"

.field private static final STATUS:Ljava/lang/String; = "port_sidebar_status"

.field private static active:Lcom/gzy/redmiport/SidebarRuntime;

.field private static final taps:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Ljava/lang/Object;",
            "Lcom/gzy/redmiport/HandleTap;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private closed:Z

.field private controller:Ljava/lang/Object;

.field private lastGood:J

.field private lastStatus:Ljava/lang/String;

.field private layout:Ljava/lang/String;

.field private final main:Landroid/os/Handler;

.field private mode:Ljava/lang/Object;

.field private final service:Landroid/app/Service;

.field private shown:Ljava/lang/String;

.field private final watchdog:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 18
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/gzy/redmiport/SidebarRuntime;->taps:Ljava/util/WeakHashMap;

    return-void
.end method

.method private constructor <init>(Landroid/app/Service;)V
    .registers 4

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lcom/gzy/redmiport/SidebarRuntime;->shown:Ljava/lang/String;

    iput-object v0, p0, Lcom/gzy/redmiport/SidebarRuntime;->layout:Ljava/lang/String;

    iput-object v0, p0, Lcom/gzy/redmiport/SidebarRuntime;->lastStatus:Ljava/lang/String;

    .line 24
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/gzy/redmiport/SidebarRuntime;->main:Landroid/os/Handler;

    .line 25
    new-instance v0, Lcom/gzy/redmiport/SidebarRuntime$1;

    invoke-direct {v0, p0}, Lcom/gzy/redmiport/SidebarRuntime$1;-><init>(Lcom/gzy/redmiport/SidebarRuntime;)V

    iput-object v0, p0, Lcom/gzy/redmiport/SidebarRuntime;->watchdog:Ljava/lang/Runnable;

    .line 32
    iput-object p1, p0, Lcom/gzy/redmiport/SidebarRuntime;->service:Landroid/app/Service;

    return-void
.end method

.method static synthetic access$0(Lcom/gzy/redmiport/SidebarRuntime;)Z
    .registers 1

    .line 23
    iget-boolean p0, p0, Lcom/gzy/redmiport/SidebarRuntime;->closed:Z

    return p0
.end method

.method static synthetic access$1(Lcom/gzy/redmiport/SidebarRuntime;)J
    .registers 3

    .line 22
    iget-wide v0, p0, Lcom/gzy/redmiport/SidebarRuntime;->lastGood:J

    return-wide v0
.end method

.method static synthetic access$2(Lcom/gzy/redmiport/SidebarRuntime;Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 124
    invoke-direct {p0, p1}, Lcom/gzy/redmiport/SidebarRuntime;->hide(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3(Lcom/gzy/redmiport/SidebarRuntime;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    .line 158
    invoke-direct {p0, p1, p2}, Lcom/gzy/redmiport/SidebarRuntime;->failure(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic access$4(Lcom/gzy/redmiport/SidebarRuntime;)Landroid/os/Handler;
    .registers 1

    .line 24
    iget-object p0, p0, Lcom/gzy/redmiport/SidebarRuntime;->main:Landroid/os/Handler;

    return-object p0
.end method

.method public static anchorX(Landroid/content/Context;I)I
    .registers 2

    .line 189
    invoke-static {p0}, Lcom/gzy/redmiport/SidebarRuntime;->inset(Landroid/content/Context;)I

    move-result p0

    invoke-static {p1, p0}, Lcom/gzy/redmiport/SidebarGeometry;->anchor(II)I

    move-result p0

    return p0
.end method

.method private static varargs call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 276
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    invoke-virtual {p1, p0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static cancelLineAnimation(Ljava/lang/Object;)V
    .registers 5

    .line 205
    :try_start_0
    const-string v0, "o"

    invoke-static {p0, v0}, Lcom/gzy/redmiport/SidebarRuntime;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    const-string v0, "miuix.animation.ICancelableStyle"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "cancel"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1a} :catch_1b

    goto :goto_21

    .line 206
    :catch_1b
    move-exception p0

    const-string v0, "Cancel sidebar animation"

    invoke-static {v0, p0}, Lcom/gzy/redmidiag/CrashReporter;->record(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 207
    :goto_21
    return-void
.end method

.method private static cancelViewAnimation(Landroid/view/View;)V
    .registers 5

    .line 210
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 211
    const-string v0, "miuix.animation.Folme"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "useAt"

    const-class v2, [Landroid/view/View;

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    filled-new-array {p0}, [Landroid/view/View;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 212
    const-string v0, "miuix.animation.IFolme"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "state"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 213
    const-string v0, "miuix.animation.ICancelableStyle"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "cancel"

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4e} :catch_4f

    .line 214
    goto :goto_55

    :catch_4f
    move-exception p0

    const-string v0, "Cancel game panel animation"

    invoke-static {v0, p0}, Lcom/gzy/redmidiag/CrashReporter;->record(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 215
    :goto_55
    return-void
.end method

.method private static cleanup(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 4

    .line 198
    const/4 v0, 0x0

    :try_start_1
    new-array v1, v0, [Ljava/lang/Class;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, p1, v1, v0}, Lcom/gzy/redmiport/SidebarRuntime;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_8} :catch_9

    goto :goto_1c

    :catch_9
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Sidebar cleanup "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/gzy/redmidiag/CrashReporter;->record(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 199
    :goto_1c
    return-void
.end method

.method public static closePanel(Ljava/lang/Object;)V
    .registers 9

    .line 218
    const-string v0, "l"

    const-string v1, "z"

    const-string v2, "o"

    const/4 v3, 0x0

    :try_start_7
    new-array v4, v3, [Ljava/lang/Class;

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {p0, v2, v4, v5}, Lcom/gzy/redmiport/SidebarRuntime;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 219
    invoke-static {v4, v1}, Lcom/gzy/redmiport/SidebarRuntime;->cleanup(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/gzy/redmiport/SidebarRuntime;->cancelLineAnimation(Ljava/lang/Object;)V

    .line 220
    const-string v5, "S"

    invoke-static {p0, v5}, Lcom/gzy/redmiport/SidebarRuntime;->cleanup(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "Q"

    invoke-static {p0, v5}, Lcom/gzy/redmiport/SidebarRuntime;->cleanup(Ljava/lang/Object;Ljava/lang/String;)V

    .line 221
    const-string v5, "A"

    new-array v6, v3, [Ljava/lang/Class;

    new-array v7, v3, [Ljava/lang/Object;

    invoke-static {p0, v5, v6, v7}, Lcom/gzy/redmiport/SidebarRuntime;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    .line 222
    invoke-static {v5}, Lcom/gzy/redmiport/SidebarRuntime;->cancelViewAnimation(Landroid/view/View;)V

    .line 223
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->setAlpha(F)V

    invoke-static {v5, v2}, Lcom/gzy/redmiport/SidebarRuntime;->cleanup(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 224
    const-string v2, "T"

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    filled-new-array {v5}, [Ljava/lang/Class;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {p0, v2, v5, v6}, Lcom/gzy/redmiport/SidebarRuntime;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    new-array v2, v3, [Ljava/lang/Class;

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {p0, v1, v2, v5}, Lcom/gzy/redmiport/SidebarRuntime;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 226
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager$LayoutParams;

    .line 227
    const/4 v5, -0x2

    iput v5, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v5, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 228
    iget v5, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v5, v5, 0x10

    iput v5, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 229
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v2}, Lcom/gzy/redmiport/SidebarRuntime;->panelLayout(Landroid/content/Context;Landroid/view/WindowManager$LayoutParams;)V

    .line 230
    invoke-virtual {v1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v5
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_71} :catch_104

    const-string v6, "Z"

    if-eqz v5, :cond_82

    :try_start_75
    new-array v5, v3, [Ljava/lang/Class;

    new-array v7, v3, [Ljava/lang/Object;

    invoke-static {v4, v6, v5, v7}, Lcom/gzy/redmiport/SidebarRuntime;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/WindowManager;

    invoke-interface {v5, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 231
    :cond_82
    new-array v1, v3, [Ljava/lang/Class;

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v4, v6, v1, v2}, Lcom/gzy/redmiport/SidebarRuntime;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 232
    const-string v2, "q"

    new-array v5, v3, [Ljava/lang/Class;

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {p0, v2, v5, v6}, Lcom/gzy/redmiport/SidebarRuntime;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-static {v1, v2}, Lcom/gzy/redmiport/SidebarRuntime;->remove(Landroid/view/WindowManager;Landroid/view/View;)V

    const-string v2, "d"

    const/4 v5, 0x0

    invoke-static {p0, v2, v5}, Lcom/gzy/redmiport/SidebarRuntime;->set(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 233
    invoke-static {v4, v0}, Lcom/gzy/redmiport/SidebarRuntime;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-static {v1, v2}, Lcom/gzy/redmiport/SidebarRuntime;->remove(Landroid/view/WindowManager;Landroid/view/View;)V

    invoke-static {v4, v0, v5}, Lcom/gzy/redmiport/SidebarRuntime;->set(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 234
    const-string v0, "k"

    invoke-static {v4, v0, v5}, Lcom/gzy/redmiport/SidebarRuntime;->set(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "m"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v4, v0, v1}, Lcom/gzy/redmiport/SidebarRuntime;->set(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 235
    const-string v0, "U0"

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v4, v0, v1, v2}, Lcom/gzy/redmiport/SidebarRuntime;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    const-string v0, "O0"

    invoke-static {v4, v0}, Lcom/gzy/redmiport/SidebarRuntime;->cleanup(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "M0"

    invoke-static {v4, v0}, Lcom/gzy/redmiport/SidebarRuntime;->cleanup(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "I"

    invoke-static {v4, v0}, Lcom/gzy/redmiport/SidebarRuntime;->cleanup(Ljava/lang/Object;Ljava/lang/String;)V

    .line 237
    const-string v0, "f"

    invoke-static {v4, v0}, Lcom/gzy/redmiport/SidebarRuntime;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_ea

    const-string v1, "dismiss"

    invoke-static {v0, v1}, Lcom/gzy/redmiport/SidebarRuntime;->cleanup(Ljava/lang/Object;Ljava/lang/String;)V

    .line 238
    :cond_ea
    const-string v0, "w"

    new-array v1, v3, [Ljava/lang/Class;

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p0, v0, v1, v2}, Lcom/gzy/redmiport/SidebarRuntime;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 239
    const-string v0, "O"

    invoke-static {p0, v0}, Lcom/gzy/redmiport/SidebarRuntime;->cleanup(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "C"

    invoke-static {p0, v0}, Lcom/gzy/redmiport/SidebarRuntime;->cleanup(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_103
    .catch Ljava/lang/Exception; {:try_start_75 .. :try_end_103} :catch_104

    .line 240
    goto :goto_10a

    :catch_104
    move-exception p0

    const-string v0, "Close original game panel"

    invoke-static {v0, p0}, Lcom/gzy/redmidiag/CrashReporter;->record(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 241
    :goto_10a
    return-void
.end method

.method public static configurationChanged(Landroid/app/Service;)V
    .registers 3

    .line 80
    sget-object v0, Lcom/gzy/redmiport/SidebarRuntime;->active:Lcom/gzy/redmiport/SidebarRuntime;

    if-eqz v0, :cond_1c

    sget-object v0, Lcom/gzy/redmiport/SidebarRuntime;->active:Lcom/gzy/redmiport/SidebarRuntime;

    iget-object v0, v0, Lcom/gzy/redmiport/SidebarRuntime;->service:Landroid/app/Service;

    if-eq v0, p0, :cond_b

    goto :goto_1c

    .line 81
    :cond_b
    :try_start_b
    sget-object p0, Lcom/gzy/redmiport/SidebarRuntime;->active:Lcom/gzy/redmiport/SidebarRuntime;

    const-string v0, "\u5c4f\u5e55\u914d\u7f6e\u53d8\u5316\uff0c\u7b49\u5f85\u91cd\u65b0\u521b\u5efa\u767d\u6761"

    invoke-direct {p0, v0}, Lcom/gzy/redmiport/SidebarRuntime;->hide(Ljava/lang/String;)V
    :try_end_12
    .catchall {:try_start_b .. :try_end_12} :catchall_13

    goto :goto_1b

    .line 82
    :catchall_13
    move-exception p0

    sget-object v0, Lcom/gzy/redmiport/SidebarRuntime;->active:Lcom/gzy/redmiport/SidebarRuntime;

    const-string v1, "Sidebar configuration"

    invoke-direct {v0, v1, p0}, Lcom/gzy/redmiport/SidebarRuntime;->failure(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 83
    :goto_1b
    return-void

    .line 80
    :cond_1c
    :goto_1c
    return-void
.end method

.method public static create(Landroid/app/Service;)V
    .registers 7

    .line 46
    const-string v0, "\u6e38\u620f\u5de5\u5177\u7bb1"

    const-string v1, "redmi-sidebar"

    new-instance v2, Lcom/gzy/redmiport/SidebarRuntime;

    invoke-direct {v2, p0}, Lcom/gzy/redmiport/SidebarRuntime;-><init>(Landroid/app/Service;)V

    sput-object v2, Lcom/gzy/redmiport/SidebarRuntime;->active:Lcom/gzy/redmiport/SidebarRuntime;

    .line 48
    :try_start_b
    const-string v3, "notification"

    invoke-virtual {p0, v3}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    .line 49
    new-instance v4, Landroid/app/NotificationChannel;

    const/4 v5, 0x2

    invoke-direct {v4, v1, v0, v5}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    invoke-virtual {v3, v4}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 50
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/gzy/redmiport/ShizukuSettingsActivity;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 51
    const/4 v4, 0x0

    const/high16 v5, 0xc000000

    invoke-static {p0, v4, v3, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 52
    new-instance v4, Landroid/app/Notification$Builder;

    invoke-direct {v4, p0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 53
    const v1, 0x1080042

    invoke-virtual {v4, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 54
    const-string v1, "\u76d1\u6d4b\u5df2\u6dfb\u52a0\u7684\u6e38\u620f\uff0c\u70b9\u51fb\u67e5\u770b\u4fa7\u680f\u72b6\u6001"

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 52
    const/16 v1, 0x5dd

    invoke-virtual {p0, v1, v0}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    .line 55
    const-string v0, "o7.a"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v2, Lcom/gzy/redmiport/SidebarRuntime;->mode:Ljava/lang/Object;

    .line 56
    const-string v0, "f"

    iget-object v1, v2, Lcom/gzy/redmiport/SidebarRuntime;->mode:Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/gzy/redmiport/SidebarRuntime;->set(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 57
    const-string v0, "e"

    iget-object v1, v2, Lcom/gzy/redmiport/SidebarRuntime;->main:Landroid/os/Handler;

    invoke-static {p0, v0, v1}, Lcom/gzy/redmiport/SidebarRuntime;->set(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 58
    const-string v0, "com.miui.gamebooster.service.DockWindowManagerService$GameBoosterWindowBinder"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 59
    const-string v1, "a"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0, v1, v0}, Lcom/gzy/redmiport/SidebarRuntime;->set(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 60
    const-string v0, "m"

    invoke-virtual {p0}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/gzy/redmiport/SidebarRuntime;->set(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 61
    const-string v0, "s8.h"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v3, Landroid/os/Handler;

    filled-new-array {v1, v3}, [Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    filled-new-array {p0, v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v2, Lcom/gzy/redmiport/SidebarRuntime;->controller:Ljava/lang/Object;

    .line 62
    const-string v0, "b"

    iget-object v1, v2, Lcom/gzy/redmiport/SidebarRuntime;->controller:Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/gzy/redmiport/SidebarRuntime;->set(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 63
    const-string v0, "\u4fa7\u680f\u670d\u52a1\u8fd0\u884c\u4e2d\uff0c\u7b49\u5f85\u524d\u53f0\u6e38\u620f"

    invoke-direct {v2, v0}, Lcom/gzy/redmiport/SidebarRuntime;->status(Ljava/lang/String;)V

    .line 64
    const-string v0, "port_active_game"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/gzy/redmiport/PortPreferences;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    invoke-static {v2}, Lcom/gzy/redmiport/ForegroundMonitor;->start(Ljava/lang/Object;)V

    .line 66
    iget-object v0, v2, Lcom/gzy/redmiport/SidebarRuntime;->main:Landroid/os/Handler;

    iget-object v1, v2, Lcom/gzy/redmiport/SidebarRuntime;->watchdog:Ljava/lang/Runnable;

    const-wide/16 v3, 0x3e8

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_e4
    .catchall {:try_start_b .. :try_end_e4} :catchall_e5

    .line 67
    goto :goto_ee

    :catchall_e5
    move-exception v0

    const-string v1, "Initialize original sidebar"

    invoke-direct {v2, v1, v0}, Lcom/gzy/redmiport/SidebarRuntime;->failure(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    .line 68
    :goto_ee
    return-void
.end method

.method public static destroy(Landroid/app/Service;)V
    .registers 5

    .line 70
    sget-object v0, Lcom/gzy/redmiport/SidebarRuntime;->active:Lcom/gzy/redmiport/SidebarRuntime;

    .line 71
    if-eqz v0, :cond_29

    iget-object v1, v0, Lcom/gzy/redmiport/SidebarRuntime;->service:Landroid/app/Service;

    if-eq v1, p0, :cond_9

    goto :goto_29

    .line 72
    :cond_9
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/gzy/redmiport/SidebarRuntime;->closed:Z

    invoke-static {v0}, Lcom/gzy/redmiport/ForegroundMonitor;->stop(Ljava/lang/Object;)V

    iget-object v2, v0, Lcom/gzy/redmiport/SidebarRuntime;->main:Landroid/os/Handler;

    iget-object v3, v0, Lcom/gzy/redmiport/SidebarRuntime;->watchdog:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 73
    :try_start_16
    const-string v2, "\u4fa7\u680f\u670d\u52a1\u5df2\u505c\u6b62"

    invoke-direct {v0, v2}, Lcom/gzy/redmiport/SidebarRuntime;->hide(Ljava/lang/String;)V
    :try_end_1b
    .catchall {:try_start_16 .. :try_end_1b} :catchall_1c

    goto :goto_22

    :catchall_1c
    move-exception v2

    const-string v3, "Stop original sidebar"

    invoke-direct {v0, v3, v2}, Lcom/gzy/redmiport/SidebarRuntime;->failure(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 74
    :goto_22
    invoke-virtual {p0, v1}, Landroid/app/Service;->stopForeground(Z)V

    const/4 p0, 0x0

    sput-object p0, Lcom/gzy/redmiport/SidebarRuntime;->active:Lcom/gzy/redmiport/SidebarRuntime;

    .line 75
    return-void

    .line 71
    :cond_29
    :goto_29
    return-void
.end method

.method public static enabled()Z
    .registers 2

    .line 33
    const-string v0, "pref_open_game_booster"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/gzy/redmiport/PortPreferences;->bool(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 34
    const-string v0, "pref_gamebox_turbo"

    invoke-static {v0, v1}, Lcom/gzy/redmiport/PortPreferences;->bool(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1a

    const-string v0, "pref_gamebooster_slip_status"

    invoke-static {v0, v1}, Lcom/gzy/redmiport/PortPreferences;->bool(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 33
    return v1

    :cond_1a
    const/4 v0, 0x0

    return v0
.end method

.method public static enter(Landroid/app/Service;Ljava/lang/String;I)V
    .registers 4

    .line 77
    sget-object v0, Lcom/gzy/redmiport/SidebarRuntime;->active:Lcom/gzy/redmiport/SidebarRuntime;

    if-eqz v0, :cond_f

    sget-object v0, Lcom/gzy/redmiport/SidebarRuntime;->active:Lcom/gzy/redmiport/SidebarRuntime;

    iget-object v0, v0, Lcom/gzy/redmiport/SidebarRuntime;->service:Landroid/app/Service;

    if-ne v0, p0, :cond_f

    sget-object p0, Lcom/gzy/redmiport/SidebarRuntime;->active:Lcom/gzy/redmiport/SidebarRuntime;

    invoke-virtual {p0, p1, p2}, Lcom/gzy/redmiport/SidebarRuntime;->onForegroundPackage(Ljava/lang/String;I)V

    .line 78
    :cond_f
    return-void
.end method

.method private failure(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    .line 159
    nop

    :goto_1
    instance-of v0, p2, Ljava/lang/reflect/InvocationTargetException;

    if-eqz v0, :cond_11

    invoke-virtual {p2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_c

    goto :goto_11

    :cond_c
    invoke-virtual {p2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    goto :goto_1

    .line 160
    :cond_11
    :goto_11
    invoke-static {p1, p2}, Lcom/gzy/redmidiag/CrashReporter;->record(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 161
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "\u4fa7\u680f\u5931\u8d25\uff1a"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "\uff1b\u8bf7\u67e5\u770b\u5d29\u6e83\u65e5\u5fd7"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/gzy/redmiport/SidebarRuntime;->status(Ljava/lang/String;)V

    .line 162
    return-void
.end method

.method private static get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 274
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {p1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static handleLayout(Landroid/content/Context;Landroid/view/WindowManager$LayoutParams;)V
    .registers 4

    .line 182
    const/16 v0, 0x7f6

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 183
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 184
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v0, v0, 0x28

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 185
    invoke-static {p0}, Lcom/gzy/redmiport/SidebarRuntime;->inset(Landroid/content/Context;)I

    move-result v0

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-static {p0}, Lcom/gzy/redmiport/SidebarRuntime;->y(Landroid/content/Context;)I

    move-result v0

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 186
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x41c00000    # 24.0f

    mul-float/2addr p0, v1

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    iput p0, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 187
    return-void
.end method

.method public static handleTouch(Ljava/lang/Object;Landroid/view/MotionEvent;)Z
    .registers 12

    .line 244
    const/4 v0, 0x0

    :try_start_1
    const-string v1, "w"

    new-array v2, v0, [Ljava/lang/Class;

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {p0, v1, v2, v3}, Lcom/gzy/redmiport/SidebarRuntime;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 245
    sget-object v2, Lcom/gzy/redmiport/SidebarRuntime;->taps:Ljava/util/WeakHashMap;

    invoke-virtual {v2, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gzy/redmiport/HandleTap;

    .line 246
    if-nez v2, :cond_21

    new-instance v2, Lcom/gzy/redmiport/HandleTap;

    invoke-direct {v2}, Lcom/gzy/redmiport/HandleTap;-><init>()V

    sget-object v3, Lcom/gzy/redmiport/SidebarRuntime;->taps:Ljava/util/WeakHashMap;

    invoke-virtual {v3, p0, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    :cond_21
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v7

    .line 248
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v9

    .line 247
    invoke-virtual/range {v2 .. v9}, Lcom/gzy/redmiport/HandleTap;->update(IJFFII)Z

    move-result v2

    .line 249
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    if-nez v3, :cond_57

    .line 250
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 251
    const-string v3, "C"

    new-array v4, v0, [Ljava/lang/Class;

    new-array v5, v0, [Ljava/lang/Object;

    invoke-static {p0, v3, v4, v5}, Lcom/gzy/redmiport/SidebarRuntime;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    :cond_57
    const-string v3, "s"

    invoke-static {p0, v3}, Lcom/gzy/redmiport/SidebarRuntime;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View$OnTouchListener;

    invoke-interface {v3, v1, p1}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    .line 255
    if-eqz v2, :cond_ae

    .line 256
    const-string p1, "o"

    new-array v1, v0, [Ljava/lang/Class;

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {p0, p1, v1, v2}, Lcom/gzy/redmiport/SidebarRuntime;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 257
    const-string v1, "Q"

    invoke-static {p0, v1}, Lcom/gzy/redmiport/SidebarRuntime;->cleanup(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/gzy/redmiport/SidebarRuntime;->cancelLineAnimation(Ljava/lang/Object;)V

    .line 258
    const-string v1, "U0"

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {p1, v1, v2, v4}, Lcom/gzy/redmiport/SidebarRuntime;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    const-string v1, "P"

    new-array v2, v0, [Ljava/lang/Class;

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {p0, v1, v2, v4}, Lcom/gzy/redmiport/SidebarRuntime;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    const-string v1, "Y0"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v4, Ljava/lang/Runnable;

    filled-new-array {v2, v4}, [Ljava/lang/Class;

    move-result-object v2

    const/4 v4, 0x0

    filled-new-array {p0, v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {p1, v1, v2, v4}, Lcom/gzy/redmiport/SidebarRuntime;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    const-string p1, "S"

    invoke-static {p0, p1}, Lcom/gzy/redmiport/SidebarRuntime;->cleanup(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_ad
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_ad} :catch_af

    .line 262
    return v3

    .line 264
    :cond_ae
    return p1

    .line 265
    :catch_af
    move-exception p0

    const-string p1, "Original sidebar touch rearm"

    invoke-static {p1, p0}, Lcom/gzy/redmidiag/CrashReporter;->record(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0
.end method

.method private hide(Ljava/lang/String;)V
    .registers 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 125
    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/gzy/redmiport/SidebarRuntime;->controller:Ljava/lang/Object;

    const/4 v2, 0x0

    .line 153
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 125
    if-eqz v0, :cond_118

    .line 126
    iget-object v0, v1, Lcom/gzy/redmiport/SidebarRuntime;->controller:Ljava/lang/Object;

    const-string v4, "z"

    invoke-static {v0, v4}, Lcom/gzy/redmiport/SidebarRuntime;->cleanup(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    iget-object v0, v1, Lcom/gzy/redmiport/SidebarRuntime;->controller:Ljava/lang/Object;

    const-string v5, "n"

    invoke-static {v0, v5}, Lcom/gzy/redmiport/SidebarRuntime;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 128
    iget-object v0, v1, Lcom/gzy/redmiport/SidebarRuntime;->controller:Ljava/lang/Object;

    const-string v6, "O0"

    invoke-static {v0, v6}, Lcom/gzy/redmiport/SidebarRuntime;->cleanup(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/gzy/redmiport/SidebarRuntime;->controller:Ljava/lang/Object;

    const-string v6, "M0"

    invoke-static {v0, v6}, Lcom/gzy/redmiport/SidebarRuntime;->cleanup(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/gzy/redmiport/SidebarRuntime;->controller:Ljava/lang/Object;

    const-string v6, "I"

    invoke-static {v0, v6}, Lcom/gzy/redmiport/SidebarRuntime;->cleanup(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    iget-object v0, v1, Lcom/gzy/redmiport/SidebarRuntime;->controller:Ljava/lang/Object;

    const-string v6, "f"

    invoke-static {v0, v6}, Lcom/gzy/redmiport/SidebarRuntime;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_44

    const-string v7, "dismiss"

    invoke-static {v0, v7}, Lcom/gzy/redmiport/SidebarRuntime;->cleanup(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    :cond_44
    iget-object v0, v1, Lcom/gzy/redmiport/SidebarRuntime;->controller:Ljava/lang/Object;

    new-array v7, v2, [Ljava/lang/Class;

    new-array v8, v2, [Ljava/lang/Object;

    const-string v9, "Z"

    invoke-static {v0, v9, v7, v8}, Lcom/gzy/redmiport/SidebarRuntime;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/view/WindowManager;

    .line 132
    const-string v8, "d"

    const-string v9, "e"

    filled-new-array {v8, v9}, [Ljava/lang/String;

    move-result-object v10

    move v11, v2

    :goto_5c
    const-string v0, "o"

    const/4 v12, 0x2

    if-lt v11, v12, :cond_aa

    .line 147
    const-string v13, "l"

    const-string v14, "s"

    filled-new-array {v13, v14}, [Ljava/lang/String;

    move-result-object v15

    move v4, v2

    :goto_6a
    if-lt v4, v12, :cond_9a

    .line 148
    iget-object v4, v1, Lcom/gzy/redmiport/SidebarRuntime;->controller:Ljava/lang/Object;

    invoke-static {v4, v0, v3}, Lcom/gzy/redmiport/SidebarRuntime;->set(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, v1, Lcom/gzy/redmiport/SidebarRuntime;->controller:Ljava/lang/Object;

    invoke-static {v0, v8, v5}, Lcom/gzy/redmiport/SidebarRuntime;->set(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, v1, Lcom/gzy/redmiport/SidebarRuntime;->controller:Ljava/lang/Object;

    invoke-static {v0, v9, v5}, Lcom/gzy/redmiport/SidebarRuntime;->set(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 149
    iget-object v0, v1, Lcom/gzy/redmiport/SidebarRuntime;->controller:Ljava/lang/Object;

    const-string v4, "k"

    invoke-static {v0, v4, v5}, Lcom/gzy/redmiport/SidebarRuntime;->set(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, v1, Lcom/gzy/redmiport/SidebarRuntime;->controller:Ljava/lang/Object;

    invoke-static {v0, v13, v5}, Lcom/gzy/redmiport/SidebarRuntime;->set(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, v1, Lcom/gzy/redmiport/SidebarRuntime;->controller:Ljava/lang/Object;

    const-string v4, "m"

    invoke-static {v0, v4, v3}, Lcom/gzy/redmiport/SidebarRuntime;->set(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 150
    iget-object v0, v1, Lcom/gzy/redmiport/SidebarRuntime;->controller:Ljava/lang/Object;

    invoke-static {v0, v6, v5}, Lcom/gzy/redmiport/SidebarRuntime;->set(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, v1, Lcom/gzy/redmiport/SidebarRuntime;->controller:Ljava/lang/Object;

    invoke-static {v0, v14, v5}, Lcom/gzy/redmiport/SidebarRuntime;->set(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_118

    .line 147
    :cond_9a
    aget-object v10, v15, v4

    iget-object v11, v1, Lcom/gzy/redmiport/SidebarRuntime;->controller:Ljava/lang/Object;

    invoke-static {v11, v10}, Lcom/gzy/redmiport/SidebarRuntime;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    invoke-static {v7, v10}, Lcom/gzy/redmiport/SidebarRuntime;->remove(Landroid/view/WindowManager;Landroid/view/View;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_6a

    .line 132
    :cond_aa
    aget-object v12, v10, v11

    .line 133
    iget-object v13, v1, Lcom/gzy/redmiport/SidebarRuntime;->controller:Ljava/lang/Object;

    invoke-static {v13, v12}, Lcom/gzy/redmiport/SidebarRuntime;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    if-nez v12, :cond_b5

    goto :goto_101

    .line 134
    :cond_b5
    sget-object v13, Lcom/gzy/redmiport/SidebarRuntime;->taps:Ljava/util/WeakHashMap;

    invoke-virtual {v13, v12}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    invoke-static {v12}, Lcom/gzy/redmiport/SidebarRuntime;->cancelLineAnimation(Ljava/lang/Object;)V

    .line 137
    :try_start_bd
    const-string v13, "S"

    new-array v14, v2, [Ljava/lang/Class;

    new-array v15, v2, [Ljava/lang/Object;

    invoke-static {v12, v13, v14, v15}, Lcom/gzy/redmiport/SidebarRuntime;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    const-string v13, "A"

    new-array v14, v2, [Ljava/lang/Class;

    new-array v15, v2, [Ljava/lang/Object;

    invoke-static {v12, v13, v14, v15}, Lcom/gzy/redmiport/SidebarRuntime;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    .line 139
    if-eqz v13, :cond_df

    move-object v14, v13

    check-cast v14, Landroid/view/View;

    invoke-static {v14}, Lcom/gzy/redmiport/SidebarRuntime;->cancelViewAnimation(Landroid/view/View;)V

    new-array v14, v2, [Ljava/lang/Class;

    new-array v15, v2, [Ljava/lang/Object;

    invoke-static {v13, v0, v14, v15}, Lcom/gzy/redmiport/SidebarRuntime;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    :cond_df
    const-string v0, "T"

    sget-object v13, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    filled-new-array {v13}, [Ljava/lang/Class;

    move-result-object v13

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v14

    invoke-static {v12, v0, v13, v14}, Lcom/gzy/redmiport/SidebarRuntime;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_ee
    .catch Ljava/lang/Exception; {:try_start_bd .. :try_end_ee} :catch_ef

    .line 141
    goto :goto_f5

    :catch_ef
    move-exception v0

    const-string v13, "Sidebar panel cleanup"

    invoke-static {v13, v0}, Lcom/gzy/redmidiag/CrashReporter;->record(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 142
    :goto_f5
    const-string v0, "q"

    const-string v13, "u"

    filled-new-array {v0, v13, v4}, [Ljava/lang/String;

    move-result-object v0

    move v13, v2

    :goto_fe
    const/4 v14, 0x3

    if-lt v13, v14, :cond_105

    .line 132
    :goto_101
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_5c

    .line 142
    :cond_105
    aget-object v14, v0, v13

    .line 143
    new-array v15, v2, [Ljava/lang/Class;

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v12, v14, v15, v5}, Lcom/gzy/redmiport/SidebarRuntime;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 144
    invoke-static {v7, v5}, Lcom/gzy/redmiport/SidebarRuntime;->remove(Landroid/view/WindowManager;Landroid/view/View;)V

    .line 142
    add-int/lit8 v13, v13, 0x1

    const/4 v5, 0x0

    goto :goto_fe

    .line 152
    :cond_118
    :goto_118
    iget-object v0, v1, Lcom/gzy/redmiport/SidebarRuntime;->mode:Ljava/lang/Object;

    if-eqz v0, :cond_131

    iget-object v0, v1, Lcom/gzy/redmiport/SidebarRuntime;->mode:Ljava/lang/Object;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v4}, [Ljava/lang/Class;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v5, "a"

    invoke-static {v0, v5, v4, v2}, Lcom/gzy/redmiport/SidebarRuntime;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    :cond_131
    iget-object v0, v1, Lcom/gzy/redmiport/SidebarRuntime;->service:Landroid/app/Service;

    const-string v2, "c"

    invoke-static {v0, v2, v3}, Lcom/gzy/redmiport/SidebarRuntime;->set(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 154
    iget-object v0, v1, Lcom/gzy/redmiport/SidebarRuntime;->shown:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const-string v2, ""

    if-nez v0, :cond_147

    const-string v0, "port_active_game"

    invoke-static {v0, v2}, Lcom/gzy/redmiport/PortPreferences;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    :cond_147
    iput-object v2, v1, Lcom/gzy/redmiport/SidebarRuntime;->shown:Ljava/lang/String;

    iput-object v2, v1, Lcom/gzy/redmiport/SidebarRuntime;->layout:Ljava/lang/String;

    .line 156
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_154

    invoke-direct/range {p0 .. p1}, Lcom/gzy/redmiport/SidebarRuntime;->status(Ljava/lang/String;)V

    .line 157
    :cond_154
    return-void
.end method

.method private static inset(Landroid/content/Context;)I
    .registers 3

    .line 273
    const-string v0, "port_sidebar_inset"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/gzy/redmiport/PortPreferences;->number(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    invoke-static {v0, p0}, Lcom/gzy/redmiport/SidebarGeometry;->inset(IF)I

    move-result p0

    return p0
.end method

.method public static isLeft(Landroid/content/Context;Z)Z
    .registers 4

    .line 173
    const-string p0, "port_sidebar_side"

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/gzy/redmiport/PortPreferences;->number(Ljava/lang/String;I)I

    move-result p0

    const/4 v1, 0x1

    if-nez p0, :cond_c

    move p0, v1

    goto :goto_d

    :cond_c
    move p0, v0

    :goto_d
    if-eqz p1, :cond_11

    move v0, p0

    goto :goto_15

    :cond_11
    if-eqz p0, :cond_14

    goto :goto_15

    :cond_14
    move v0, v1

    :goto_15
    return v0
.end method

.method private static keepVisible(Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 268
    if-eqz p0, :cond_30

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    new-array v3, v1, [Ljava/lang/Object;

    const-string v4, "F"

    invoke-static {p0, v4, v2, v3}, Lcom/gzy/redmiport/SidebarRuntime;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    goto :goto_30

    .line 269
    :cond_16
    const-string v0, "S"

    invoke-static {p0, v0}, Lcom/gzy/redmiport/SidebarRuntime;->cleanup(Ljava/lang/Object;Ljava/lang/String;)V

    .line 270
    new-array v0, v1, [Ljava/lang/Class;

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "w"

    invoke-static {p0, v3, v0, v2}, Lcom/gzy/redmiport/SidebarRuntime;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    .line 271
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    .line 272
    return-void

    .line 268
    :cond_30
    :goto_30
    return-void
.end method

.method public static panelLayout(Landroid/content/Context;Landroid/view/WindowManager$LayoutParams;)V
    .registers 3

    .line 188
    invoke-static {p0}, Lcom/gzy/redmiport/SidebarRuntime;->inset(Landroid/content/Context;)I

    move-result v0

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-static {p0}, Lcom/gzy/redmiport/SidebarRuntime;->y(Landroid/content/Context;)I

    move-result p0

    iput p0, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    return-void
.end method

.method public static preserveHandle(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V
    .registers 5

    .line 191
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.miui.dock.sidebar.b"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    return-void

    .line 192
    :cond_11
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 193
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v0, v0, 0x28

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 194
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x41c00000    # 24.0f

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 195
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-static {p0, v0}, Lcom/gzy/redmiport/SidebarRuntime;->anchorX(Landroid/content/Context;I)I

    move-result p0

    iput p0, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 196
    return-void
.end method

.method private static remove(Landroid/view/WindowManager;Landroid/view/View;)V
    .registers 3

    .line 201
    if-eqz p1, :cond_12

    :try_start_2
    invoke-virtual {p1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-interface {p0, p1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_b} :catch_c

    goto :goto_12

    .line 202
    :catch_c
    move-exception p0

    const-string p1, "Remove sidebar window"

    invoke-static {p1, p0}, Lcom/gzy/redmidiag/CrashReporter;->record(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 203
    :cond_12
    :goto_12
    return-void
.end method

.method private static set(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 275
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {p1, p0, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static start(Landroid/content/Context;)V
    .registers 5

    .line 37
    const-string v0, "port_sidebar_status"

    :try_start_2
    invoke-static {}, Lcom/gzy/redmiport/SidebarRuntime;->enabled()Z

    move-result v1

    if-eqz v1, :cond_34

    invoke-static {p0}, Lcom/gzy/redmiport/GameStore;->hasGames(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_f

    goto :goto_34

    .line 38
    :cond_f
    invoke-static {p0}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1b

    const-string p0, "\u8bf7\u5141\u8bb8\u60ac\u6d6e\u7a97\u6743\u9650"

    invoke-static {v0, p0}, Lcom/gzy/redmiport/PortPreferences;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 39
    :cond_1b
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.miui.gamebooster.service.DockWindowManagerService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.gzy.redmiport.START_SIDEBAR"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 40
    invoke-virtual {p0, v1}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_33
    .catchall {:try_start_2 .. :try_end_33} :catchall_35

    .line 41
    goto :goto_57

    .line 37
    :cond_34
    :goto_34
    return-void

    .line 41
    :catchall_35
    move-exception p0

    const-string v1, "Start original sidebar service"

    invoke-static {v1, p0}, Lcom/gzy/redmidiag/CrashReporter;->record(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 42
    :try_start_3b
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u4fa7\u680f\u670d\u52a1\u542f\u52a8\u5931\u8d25\uff1a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/gzy/redmiport/PortPreferences;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_55} :catch_56

    goto :goto_57

    :catch_56
    move-exception p0

    .line 44
    :goto_57
    return-void
.end method

.method public static status()Ljava/lang/String;
    .registers 2

    .line 169
    :try_start_0
    const-string v0, "port_sidebar_status"

    const-string v1, "\u4fa7\u680f\u670d\u52a1\u5c1a\u672a\u542f\u52a8\uff1b\u4ece\u6e38\u620f\u7a7a\u95f4\u542f\u52a8\u5df2\u6dfb\u52a0\u6e38\u620f"

    invoke-static {v0, v1}, Lcom/gzy/redmiport/PortPreferences;->text(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    .line 170
    :catch_9
    move-exception v0

    const-string v0, "\u4fa7\u680f\u72b6\u6001\u6682\u4e0d\u53ef\u8bfb\u53d6"

    return-object v0
.end method

.method private status(Ljava/lang/String;)V
    .registers 3

    .line 164
    iget-object v0, p0, Lcom/gzy/redmiport/SidebarRuntime;->lastStatus:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 165
    :cond_9
    :try_start_9
    const-string v0, "port_sidebar_status"

    invoke-static {v0, p1}, Lcom/gzy/redmiport/PortPreferences;->put(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/gzy/redmiport/SidebarRuntime;->lastStatus:Ljava/lang/String;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_10} :catch_11

    goto :goto_17

    .line 166
    :catch_11
    move-exception p1

    const-string v0, "Save sidebar status"

    invoke-static {v0, p1}, Lcom/gzy/redmidiag/CrashReporter;->record(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 167
    :goto_17
    return-void
.end method

.method public static y(Landroid/content/Context;)I
    .registers 4

    .line 176
    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 177
    invoke-interface {v0}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 178
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f071a83

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    .line 179
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    const-string v1, "port_sidebar_height"

    const/16 v2, 0x19

    invoke-static {v1, v2}, Lcom/gzy/redmiport/PortPreferences;->number(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v0, p0, v1}, Lcom/gzy/redmiport/SidebarGeometry;->y(III)I

    move-result p0

    return p0
.end method


# virtual methods
.method public onForegroundPackage(Ljava/lang/String;I)V
    .registers 15

    .line 85
    const-string v0, "i"

    const-string v1, "h"

    const-string v2, ":"

    const-string v3, ""

    iget-boolean v4, p0, Lcom/gzy/redmiport/SidebarRuntime;->closed:Z

    if-eqz v4, :cond_d

    return-void

    .line 86
    :cond_d
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/gzy/redmiport/SidebarRuntime;->lastGood:J

    .line 88
    :try_start_13
    iget-object v4, p0, Lcom/gzy/redmiport/SidebarRuntime;->service:Landroid/app/Service;

    invoke-static {v4, p1, p2}, Lcom/gzy/redmiport/GameStore;->selected(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v4

    .line 89
    iget-object v5, p0, Lcom/gzy/redmiport/SidebarRuntime;->service:Landroid/app/Service;

    const-string v6, "keyguard"

    invoke-virtual {v5, v6}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/KeyguardManager;

    .line 90
    invoke-static {}, Lcom/gzy/redmiport/SidebarRuntime;->enabled()Z

    move-result v6

    if-eqz v6, :cond_186

    iget-object v6, p0, Lcom/gzy/redmiport/SidebarRuntime;->service:Landroid/app/Service;

    invoke-static {v6}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_186

    invoke-virtual {v5}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v6

    if-nez v6, :cond_186

    if-nez v4, :cond_3b

    goto/16 :goto_186

    .line 94
    :cond_3b
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "port_sidebar_side"

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/gzy/redmiport/PortPreferences;->number(Ljava/lang/String;I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "port_sidebar_inset"

    invoke-static {v5, v6}, Lcom/gzy/redmiport/PortPreferences;->number(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "port_sidebar_height"

    const/16 v5, 0x19

    invoke-static {v4, v5}, Lcom/gzy/redmiport/PortPreferences;->number(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 95
    iget-object v4, p0, Lcom/gzy/redmiport/SidebarRuntime;->shown:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_73
    .catchall {:try_start_13 .. :try_end_73} :catchall_1b6

    const-string v5, "\uff1b\u8f7b\u70b9\u6216\u5411\u5185\u6ed1\u52a8\u5c55\u5f00"

    const-string v7, "\u767d\u6761\u5e38\u9a7b\uff1a"

    const-string v8, "o"

    const-string v9, "d"

    if-eqz v4, :cond_b1

    :try_start_7d
    iget-object v4, p0, Lcom/gzy/redmiport/SidebarRuntime;->layout:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b1

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v10, p0, Lcom/gzy/redmiport/SidebarRuntime;->controller:Ljava/lang/Object;

    invoke-static {v10, v8}, Lcom/gzy/redmiport/SidebarRuntime;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b1

    .line 96
    iget-object p2, p0, Lcom/gzy/redmiport/SidebarRuntime;->controller:Ljava/lang/Object;

    invoke-static {p2, v9}, Lcom/gzy/redmiport/SidebarRuntime;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lcom/gzy/redmiport/SidebarRuntime;->keepVisible(Ljava/lang/Object;)V

    .line 97
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/gzy/redmiport/SidebarRuntime;->status(Ljava/lang/String;)V

    return-void

    .line 99
    :cond_b1
    invoke-direct {p0, v3}, Lcom/gzy/redmiport/SidebarRuntime;->hide(Ljava/lang/String;)V

    .line 100
    iget-object v4, p0, Lcom/gzy/redmiport/SidebarRuntime;->service:Landroid/app/Service;

    invoke-static {v4, v1, p1}, Lcom/gzy/redmiport/SidebarRuntime;->set(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v4, p0, Lcom/gzy/redmiport/SidebarRuntime;->service:Landroid/app/Service;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {v4, v0, p2}, Lcom/gzy/redmiport/SidebarRuntime;->set(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/gzy/redmiport/SidebarRuntime;->service:Landroid/app/Service;

    const-string v4, "c"

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-static {p2, v4, v11}, Lcom/gzy/redmiport/SidebarRuntime;->set(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/gzy/redmiport/SidebarRuntime;->service:Landroid/app/Service;

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {p2, v9, v4}, Lcom/gzy/redmiport/SidebarRuntime;->set(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 101
    iget-object p2, p0, Lcom/gzy/redmiport/SidebarRuntime;->mode:Ljava/lang/Object;

    const-string v4, "a"

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v11}, [Ljava/lang/Class;

    move-result-object v11

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    filled-new-array {v10}, [Ljava/lang/Object;

    move-result-object v10

    invoke-static {p2, v4, v11, v10}, Lcom/gzy/redmiport/SidebarRuntime;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    iget-object p2, p0, Lcom/gzy/redmiport/SidebarRuntime;->controller:Ljava/lang/Object;

    const-string v4, "x1"

    new-array v10, v6, [Ljava/lang/Class;

    new-array v11, v6, [Ljava/lang/Object;

    invoke-static {p2, v4, v10, v11}, Lcom/gzy/redmiport/SidebarRuntime;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    const-string p2, "s8.x"

    invoke-static {p2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p2

    const-class v4, Landroid/content/Context;

    filled-new-array {v4}, [Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {p2, v1, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    iget-object v1, p0, Lcom/gzy/redmiport/SidebarRuntime;->service:Landroid/app/Service;

    invoke-virtual {v1}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {p2, v4, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 105
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    const v4, 0x7f0e020d

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {p2, v0, v1, v4}, Lcom/gzy/redmiport/SidebarRuntime;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    invoke-static {}, Lcom/gzy/redmiport/PortRuntime;->resetFps()V

    .line 107
    iget-object p2, p0, Lcom/gzy/redmiport/SidebarRuntime;->controller:Ljava/lang/Object;

    const-string v0, "i1"

    new-array v1, v6, [Ljava/lang/Class;

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {p2, v0, v1, v4}, Lcom/gzy/redmiport/SidebarRuntime;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/gzy/redmiport/SidebarRuntime;->controller:Ljava/lang/Object;

    invoke-static {v0, v8}, Lcom/gzy/redmiport/SidebarRuntime;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_17e

    .line 109
    iget-object p2, p0, Lcom/gzy/redmiport/SidebarRuntime;->controller:Ljava/lang/Object;

    invoke-static {p2, v9}, Lcom/gzy/redmiport/SidebarRuntime;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    .line 110
    const-string v0, "w"

    new-array v1, v6, [Ljava/lang/Class;

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {p2, v0, v1, v4}, Lcom/gzy/redmiport/SidebarRuntime;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    .line 111
    invoke-virtual {p2, v6}, Landroid/view/View;->setVisibility(I)V

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p2, v0}, Landroid/view/View;->setAlpha(F)V

    .line 112
    iput-object p1, p0, Lcom/gzy/redmiport/SidebarRuntime;->shown:Ljava/lang/String;

    iput-object v2, p0, Lcom/gzy/redmiport/SidebarRuntime;->layout:Ljava/lang/String;

    .line 113
    const-string p2, "port_active_game"

    invoke-static {p2, p1}, Lcom/gzy/redmiport/PortPreferences;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/gzy/redmiport/SidebarRuntime;->status(Ljava/lang/String;)V

    .line 115
    goto :goto_1c6

    .line 108
    :cond_17e
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Original sidebar declined window creation"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 91
    :cond_186
    :goto_186
    invoke-static {}, Lcom/gzy/redmiport/SidebarRuntime;->enabled()Z

    move-result p2

    if-nez p2, :cond_18f

    const-string p1, "\u539f\u8bbe\u7f6e\u5df2\u5173\u95ed\u6e38\u620f\u5de5\u5177\u7bb1\u6216\u6ed1\u52a8\u5165\u53e3"

    goto :goto_1b2

    :cond_18f
    iget-object p2, p0, Lcom/gzy/redmiport/SidebarRuntime;->service:Landroid/app/Service;

    invoke-static {p2}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_19a

    const-string p1, "\u60ac\u6d6e\u7a97\u6743\u9650\u672a\u5141\u8bb8"

    goto :goto_1b2

    :cond_19a
    invoke-virtual {v5}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result p2

    if-eqz p2, :cond_1a3

    const-string p1, "\u9501\u5c4f\u65f6\u9690\u85cf\u767d\u6761"

    goto :goto_1b2

    :cond_1a3
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "\u524d\u53f0\u5e94\u7528\u672a\u6dfb\u52a0\u5230\u6e38\u620f\u7a7a\u95f4\uff1a"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_1b2
    invoke-direct {p0, p1}, Lcom/gzy/redmiport/SidebarRuntime;->hide(Ljava/lang/String;)V
    :try_end_1b5
    .catchall {:try_start_7d .. :try_end_1b5} :catchall_1b6

    .line 92
    return-void

    .line 115
    :catchall_1b6
    move-exception p1

    .line 116
    :try_start_1b7
    invoke-direct {p0, v3}, Lcom/gzy/redmiport/SidebarRuntime;->hide(Ljava/lang/String;)V
    :try_end_1ba
    .catchall {:try_start_1b7 .. :try_end_1ba} :catchall_1bb

    goto :goto_1c1

    :catchall_1bb
    move-exception p2

    const-string v0, "Sidebar partial-window cleanup"

    invoke-static {v0, p2}, Lcom/gzy/redmidiag/CrashReporter;->record(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 117
    :goto_1c1
    const-string p2, "Show original sidebar"

    invoke-direct {p0, p2, p1}, Lcom/gzy/redmiport/SidebarRuntime;->failure(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 119
    :goto_1c6
    return-void
.end method

.method public onUnavailable(Ljava/lang/String;)V
    .registers 4

    .line 121
    iget-boolean v0, p0, Lcom/gzy/redmiport/SidebarRuntime;->closed:Z

    if-eqz v0, :cond_5

    return-void

    .line 122
    :cond_5
    :try_start_5
    invoke-direct {p0, p1}, Lcom/gzy/redmiport/SidebarRuntime;->hide(Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/gzy/redmiport/SidebarRuntime;->lastGood:J
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_d

    goto :goto_13

    :catchall_d
    move-exception p1

    const-string v0, "Hide unavailable sidebar"

    invoke-direct {p0, v0, p1}, Lcom/gzy/redmiport/SidebarRuntime;->failure(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 123
    :goto_13
    return-void
.end method
