.class public Lx5/p;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lx5/p$i;,
        Lx5/p$h;,
        Lx5/p$g;
    }
.end annotation


# static fields
.field private static final B:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final C:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final D:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static E:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static F:I

.field private static G:Lx5/p;

.field private static H:I

.field private static I:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lg8/a;",
            ">;"
        }
    .end annotation
.end field

.field private static J:I


# instance fields
.field private A:Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

.field private a:Z

.field private b:Z

.field private c:Landroid/hardware/camera2/CameraManager;

.field private final d:Landroid/media/AudioManager;

.field private final e:Landroid/os/Handler;

.field private f:Lx5/p$g;

.field private g:Lx5/p$i;

.field private final h:Ljava/lang/Object;

.field private i:I

.field private j:Lc6/h$a;

.field private k:Lc6/h$a;

.field private volatile l:Z

.field private m:Z

.field private n:Landroid/os/Handler;

.field private o:Landroid/content/Context;

.field private p:Z

.field private q:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Ly5/i;",
            ">;"
        }
    .end annotation
.end field

.field private r:Ld6/c;

.field private s:Ld6/d;

.field private t:Ld6/b;

.field private u:Lx5/e;

.field private v:Ld6/a;

.field private volatile w:Z

.field private x:Z

.field private y:Ljava/lang/Runnable;

.field private z:Lx5/p$h;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lx5/p;->B:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lx5/p;->C:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lx5/p;->D:Ljava/util/List;

    const/4 v2, 0x0

    sput-object v2, Lx5/p;->E:Ljava/util/Set;

    const/4 v2, -0x1

    sput v2, Lx5/p;->F:I

    sput v2, Lx5/p;->H:I

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    sput-object v3, Lx5/p;->I:Ljava/util/Set;

    sput v2, Lx5/p;->J:I

    const-string v2, "liuqin"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "pipa"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "babylon"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "yudi"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "xun"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "com.tencent.wemeet.app"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lx5/p;->I:Ljava/util/Set;

    sget-object v1, Lg8/a;->n:Lg8/a;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lx5/p;->I:Ljava/util/Set;

    sget-object v1, Lg8/a;->o:Lg8/a;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lx5/p;->I:Ljava/util/Set;

    sget-object v1, Lg8/a;->q:Lg8/a;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lx5/p;->I:Ljava/util/Set;

    sget-object v1, Lg8/a;->p:Lg8/a;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lx5/p;->h:Ljava/lang/Object;

    const/4 v0, -0x2

    iput v0, p0, Lx5/p;->i:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lx5/p;->l:Z

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lx5/p;->n:Landroid/os/Handler;

    iput-boolean v0, p0, Lx5/p;->p:Z

    iput-boolean v0, p0, Lx5/p;->w:Z

    iput-boolean v0, p0, Lx5/p;->x:Z

    new-instance v0, Lx5/p$a;

    invoke-direct {v0, p0}, Lx5/p$a;-><init>(Lx5/p;)V

    iput-object v0, p0, Lx5/p;->y:Ljava/lang/Runnable;

    new-instance v0, Lx5/p$c;

    invoke-direct {v0, p0}, Lx5/p$c;-><init>(Lx5/p;)V

    iput-object v0, p0, Lx5/p;->A:Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lx5/p;->d:Landroid/media/AudioManager;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lx5/p;->e:Landroid/os/Handler;

    invoke-static {}, Lx5/p;->J0()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lc6/h$a;->c:Lc6/h$a;

    invoke-virtual {v0}, Lc6/h$a;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "key_pickup_current"

    invoke-static {v2, v1}, La8/m0;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lx5/p;->S(Ljava/lang/String;)Lc6/h$a;

    move-result-object v1

    iput-object v1, p0, Lx5/p;->j:Lc6/h$a;

    invoke-virtual {v0}, Lc6/h$a;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "key_pickup_pre"

    invoke-static {v1, v0}, La8/m0;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lx5/p;->S(Ljava/lang/String;)Lc6/h$a;

    move-result-object v0

    iput-object v0, p0, Lx5/p;->k:Lc6/h$a;

    :cond_0
    return-void
.end method

.method private A0()Z
    .locals 3

    sget v0, Lx5/p;->J:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    const-string v0, "ro.vendor.audio.support.voiprx.441khz"

    invoke-static {v0, v1}, Lx4/v1;->a(Ljava/lang/String;Z)Z

    move-result v0

    sput v0, Lx5/p;->J:I

    :cond_0
    sget v0, Lx5/p;->J:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    move v1, v2

    :cond_1
    return v1
.end method

.method public static A1(Ljava/lang/String;)V
    .locals 1

    const-string v0, "pref_unsupport_speaker_denosie_apps"

    invoke-static {v0, p0}, Lr4/a;->r(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private B()V
    .locals 2

    iget-object v0, p0, Lx5/p;->j:Lc6/h$a;

    sget-object v1, Lc6/h$a;->f:Lc6/h$a;

    if-ne v0, v1, :cond_1

    invoke-static {}, Lx5/p;->q0()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lc6/h$a;->c:Lc6/h$a;

    goto :goto_0

    :cond_0
    sget-object v0, Lc6/h$a;->d:Lc6/h$a;

    :goto_0
    iput-object v0, p0, Lx5/p;->j:Lc6/h$a;

    invoke-static {}, Lx5/p;->q0()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lc6/h$a;->c:Lc6/h$a;

    iput-object v0, p0, Lx5/p;->k:Lc6/h$a;

    :cond_1
    iget-object v0, p0, Lx5/p;->d:Landroid/media/AudioManager;

    invoke-direct {p0, v0}, Lx5/p;->W0(Landroid/media/AudioManager;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lx5/p;->d:Landroid/media/AudioManager;

    iget-object v1, p0, Lx5/p;->j:Lc6/h$a;

    invoke-virtual {p0, v0, v1}, Lx5/p;->w1(Landroid/media/AudioManager;Lc6/h$a;)V

    :cond_2
    iget-object v0, p0, Lx5/p;->d:Landroid/media/AudioManager;

    invoke-static {}, Lx5/p;->C0()Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lx5/p;->x1(Landroid/media/AudioManager;Z)V

    return-void
.end method

.method public static B0()Z
    .locals 2

    const/4 v0, 0x0

    invoke-static {v0}, Lj8/k;->l(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lj8/k;->a(Z)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static C0()Z
    .locals 2

    const-string v0, "pref_speaker_denoise"

    const/4 v1, 0x0

    invoke-static {v0, v1}, La8/m0;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private C1()V
    .locals 1

    invoke-static {}, Lx5/p;->M0()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lx5/p;->B()V

    :goto_0
    return-void
.end method

.method private static D()Z
    .locals 2

    const-string v0, "cetus"

    const-string v1, "zizhan"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lx4/a0;->s([Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lx4/y;->g()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static D0()Z
    .locals 2

    const-string v0, "ro.vendor.audio.rx.css"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lx4/v1;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private D1(Lw5/a;Landroid/content/Context;)V
    .locals 3

    invoke-static {}, Lw5/f;->p()Lw5/f;

    move-result-object v0

    invoke-static {p1}, Lw5/f;->Z(Lw5/a;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lw5/f;->R0(Z)V

    invoke-static {}, Lw5/f;->p()Lw5/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lw5/f;->S(Lw5/a;)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isCurrent Scene support global privacy camera : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ConversationManager"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_2

    const/4 p1, 0x0

    invoke-static {p1}, Lw5/f;->Z(Lw5/a;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lw5/f;->b0()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/miui/gamebooster/beauty/a;->k()Lcom/miui/gamebooster/beauty/a;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/miui/gamebooster/beauty/a;->o(Lb6/c;)V

    const/4 p1, 0x1

    invoke-static {p1}, Lw5/f;->B0(Z)V

    return-void

    :cond_0
    invoke-static {p1}, Lw5/f;->Z(Lw5/a;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/miui/gamebooster/beauty/a;->k()Lcom/miui/gamebooster/beauty/a;

    move-result-object p1

    const v0, 0x7f1203c0

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/miui/gamebooster/beauty/a;->p(Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    invoke-static {}, Lw5/f;->p()Lw5/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lw5/f;->d0(Lw5/a;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p1}, Lw5/f;->Z(Lw5/a;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {}, Lcom/miui/gamebooster/beauty/a;->k()Lcom/miui/gamebooster/beauty/a;

    move-result-object p1

    const v0, 0x7f1203bf

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/miui/gamebooster/beauty/a;->p(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method private E()V
    .locals 2

    iget-boolean v0, p0, Lx5/p;->p:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lx5/p;->m0()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-static {v0}, La8/g0;->p(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    const-string v1, "conference_toolbox"

    invoke-static {v0, v1}, Lj8/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static E0()Z
    .locals 3

    const-string v0, "persist.vendor.camera.gesture.emoji.support"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lx4/v1;->b(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    shr-int/2addr v0, v2

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    return v1
.end method

.method private E1()V
    .locals 2

    invoke-static {}, Lx5/p;->M0()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lx5/p;->d:Landroid/media/AudioManager;

    sget-object v1, Lc6/h$a;->f:Lc6/h$a;

    invoke-virtual {p0, v0, v1}, Lx5/p;->w1(Landroid/media/AudioManager;Lc6/h$a;)V

    iget-object v0, p0, Lx5/p;->d:Landroid/media/AudioManager;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lx5/p;->x1(Landroid/media/AudioManager;Z)V

    :goto_0
    return-void
.end method

.method private static F0(Landroid/content/Context;)Z
    .locals 1

    invoke-static {}, Lcom/miui/gamebooster/beauty/BeautyService;->g0()V

    invoke-static {}, Lw5/f;->G()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lw5/f;->g0()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lw5/f;->Y()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lx5/p;->J0()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lj8/u;->n()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lx5/p;->r0()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lx5/p;->I0()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Ld6/c;->h:Ld6/c$a;

    invoke-virtual {v0}, Ld6/c$a;->d()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Ld6/b;->g:Ld6/b$b;

    invoke-virtual {v0}, Ld6/b$b;->e()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lw5/f;->a0()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, La8/g0;->p(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_1

    sget-object p0, Ld6/d;->l:Ld6/d$b;

    invoke-virtual {p0}, Ld6/d$b;->d()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static F1(Z)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "conversation_func_switch"

    invoke-static {v0, p0}, Lr4/a;->n(Ljava/lang/String;Z)V

    return-void
.end method

.method private G()V
    .locals 2

    iget-boolean v0, p0, Lx5/p;->p:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lx5/p;->m0()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lx5/p;->r0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    const-string v1, "conference_toolbox_screen_translate"

    invoke-static {v0, v1}, Lj8/a;->b(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static G0()Z
    .locals 2

    const-string v0, "pref_is_phone_support_conversation"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lr4/a;->e(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static G1()V
    .locals 4

    const-string v0, "ConversationManager"

    :try_start_0
    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v1

    invoke-static {v1}, Lx5/p;->F0(Landroid/content/Context;)Z

    move-result v1

    const-string v2, "pref_is_phone_support_conversation"

    invoke-static {v2, v1}, Lr4/a;->n(Ljava/lang/String;Z)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "syncPhoneSupportState : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "syncPhoneSupportState fail : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static H0()Z
    .locals 2

    invoke-static {}, Lx5/p;->G0()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Lx4/t;->p()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lx5/p;->D()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private H1()V
    .locals 1

    new-instance v0, Lx5/j;

    invoke-direct {v0, p0}, Lx5/j;-><init>(Lx5/p;)V

    invoke-static {v0}, Lcom/miui/common/base/asyn/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static I0()Z
    .locals 2

    const-string v0, "persist.vendor.camera.gesture.emoji.support"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lx4/v1;->b(Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private I1()V
    .locals 1

    invoke-virtual {p0}, Lx5/p;->L()Ld6/b;

    move-result-object v0

    invoke-virtual {v0}, Ld6/b;->m()V

    return-void
.end method

.method private J()F
    .locals 2

    const-string v0, "/sys/class/thermal/thermal_message/board_sensor_second_temp"

    invoke-static {v0}, Lw5/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "/sys/class/thermal/thermal_message/board_sensor_temp"

    invoke-static {v0}, Lw5/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    int-to-float v0, v0

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public static J0()Z
    .locals 2

    const-string v0, "ro.vendor.audio.meeting.mode"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lx4/v1;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private K()I
    .locals 1

    iget-boolean v0, p0, Lx5/p;->b:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    iget-boolean v0, p0, Lx5/p;->a:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method private K1()V
    .locals 4

    iget-boolean v0, p0, Lx5/p;->w:Z

    const-string v1, "ConversationManager"

    if-nez v0, :cond_0

    const-string v0, "never register record observer"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1f

    if-lt v0, v2, :cond_1

    iget-object v0, p0, Lx5/p;->d:Landroid/media/AudioManager;

    iget-object v2, p0, Lx5/p;->z:Lx5/p$h;

    invoke-static {v0, v2}, Lx5/h;->a(Landroid/media/AudioManager;Landroid/media/AudioManager$AudioRecordingCallback;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lx5/p;->z:Lx5/p$h;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lx5/p;->w:Z

    const-string v0, "unRegisterRecordStateChangeObserver"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unRegisterRecordStateChangeObserver fail : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public static L0()Z
    .locals 2

    const-string v0, "pref_ultraclear_mode"

    const/4 v1, 0x0

    invoke-static {v0, v1}, La8/m0;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private L1()V
    .locals 1

    invoke-virtual {p0}, Lx5/p;->Q()Ld6/c;

    move-result-object v0

    invoke-virtual {v0}, Ld6/c;->j()V

    return-void
.end method

.method public static M(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-static {}, Lx5/p;->z0()Z

    move-result v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    if-nez v0, :cond_0

    const v0, 0x7f120594

    :goto_0
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const v0, 0x7f120599

    goto :goto_0
.end method

.method public static M0()Z
    .locals 3

    sget v0, Lx5/p;->H:I

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    const-string v0, "ro.vendor.audio.meeting.mode.type"

    invoke-static {v0, v1}, Lx4/v1;->b(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lx5/p;->H:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DeNoise Version : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lx5/p;->H:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ConversationManager"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget v0, Lx5/p;->H:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private synthetic N0()V
    .locals 2

    iget-object v0, p0, Lx5/p;->d:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    move-result v0

    iput v0, p0, Lx5/p;->i:I

    invoke-direct {p0}, Lx5/p;->O1()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "init audioMode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lx5/p;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mIsCurrentAtCommunicationState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lx5/p;->l:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ConversationManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lx5/p;->l:Z

    if-eqz v0, :cond_2

    invoke-static {}, Lx5/p;->M0()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lx5/p;->d:Landroid/media/AudioManager;

    invoke-direct {p0, v0}, Lx5/p;->W0(Landroid/media/AudioManager;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lx5/p;->d:Landroid/media/AudioManager;

    invoke-static {}, Lx5/p;->q0()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lx5/p;->N()Lc6/h$a;

    move-result-object v1

    goto :goto_0

    :cond_0
    sget-object v1, Lc6/h$a;->d:Lc6/h$a;

    :goto_0
    invoke-virtual {p0, v0, v1}, Lx5/p;->w1(Landroid/media/AudioManager;Lc6/h$a;)V

    :cond_1
    iget-object v0, p0, Lx5/p;->d:Landroid/media/AudioManager;

    invoke-static {}, Lx5/p;->C0()Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lx5/p;->x1(Landroid/media/AudioManager;Z)V

    :cond_2
    return-void
.end method

.method private N1()V
    .locals 1

    sget-object v0, Ld6/d;->l:Ld6/d$b;

    invoke-virtual {v0}, Ld6/d$b;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lx5/p;->W()Ld6/d;

    move-result-object v0

    invoke-virtual {v0}, Ld6/d;->q()V

    :cond_0
    return-void
.end method

.method public static declared-synchronized O()Lx5/p;
    .locals 2

    const-class v0, Lx5/p;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lx5/p;->G:Lx5/p;

    if-nez v1, :cond_0

    new-instance v1, Lx5/p;

    invoke-direct {v1}, Lx5/p;-><init>()V

    sput-object v1, Lx5/p;->G:Lx5/p;

    :cond_0
    sget-object v1, Lx5/p;->G:Lx5/p;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private synthetic O0()V
    .locals 3

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    const-string v1, "camera"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraManager;

    iput-object v0, p0, Lx5/p;->c:Landroid/hardware/camera2/CameraManager;

    iget-object v1, p0, Lx5/p;->A:Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

    iget-object v2, p0, Lx5/p;->e:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CameraManager;->registerAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Landroid/os/Handler;)V

    return-void
.end method

.method private O1()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lx5/p;->d:Landroid/media/AudioManager;

    invoke-static {v0}, Lcom/miui/electricrisk/c;->a(Landroid/media/AudioManager;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lx5/p;->o0(Ljava/util/List;)Z

    move-result v0

    iput-boolean v0, p0, Lx5/p;->l:Z

    :cond_0
    return-void
.end method

.method private static synthetic P0(Lc6/h$a;Landroid/media/AudioManager;)V
    .locals 3

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lz5/a;->d(Lc6/h$a;Z)Z

    move-result v0

    const-string v1, "ConversationManager"

    if-nez v0, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "type : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " Currently unavailable! "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pickup mode on: ="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_1

    const-string p0, "setPickupMode: invalid am"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "remote_record_mode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lc6/h$a;->b()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic Q0()V
    .locals 2

    iget-object v0, p0, Lx5/p;->c:Landroid/hardware/camera2/CameraManager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lx5/p;->A:Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraManager;->unregisterAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)V

    return-void
.end method

.method private R0()V
    .locals 5

    invoke-static {}, Lx5/p;->l0()Z

    move-result v0

    const-string v1, "ConversationManager"

    if-nez v0, :cond_0

    const-string v0, "onCameraChange: forceExitConversationMode"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lx5/p;->H(Landroid/content/Context;Z)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lx5/p;->s0()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lw5/f;->p()Lw5/f;

    move-result-object v0

    invoke-virtual {p0}, Lx5/p;->s0()Z

    move-result v2

    invoke-static {}, Lw5/f;->p()Lw5/f;

    move-result-object v3

    invoke-virtual {v3}, Lw5/f;->n()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lw5/f;->p()Lw5/f;

    move-result-object v4

    invoke-virtual {v4}, Lw5/f;->k()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4}, Lw5/f;->c(ZLjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Ld6/a;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lx5/p;->P()Ld6/a;

    move-result-object v0

    invoke-virtual {v0}, Ld6/a;->o()V

    invoke-virtual {p0}, Lx5/p;->P()Ld6/a;

    move-result-object v0

    invoke-virtual {v0}, Ld6/a;->t()V

    :cond_1
    invoke-static {}, Lw5/f;->Y()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lw5/f;->W()Z

    move-result v0

    invoke-static {v0}, Lw5/f;->Q0(Z)V

    :cond_2
    invoke-static {}, Lw5/f;->a0()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lw5/f;->p()Lw5/f;

    move-result-object v0

    invoke-virtual {v0}, Lw5/f;->l()Lw5/a;

    move-result-object v0

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lx5/p;->D1(Lw5/a;Landroid/content/Context;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lx5/p;->s0()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {}, Lw5/f;->p()Lw5/f;

    move-result-object v0

    invoke-virtual {v0}, Lw5/f;->e()V

    invoke-static {}, Lw5/f;->p()Lw5/f;

    move-result-object v0

    invoke-virtual {v0}, Lw5/f;->K0()V

    :cond_4
    invoke-static {}, Ld6/a;->d()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lx5/p;->P()Ld6/a;

    move-result-object v0

    invoke-virtual {v0}, Ld6/a;->p()V

    :cond_5
    :goto_0
    iget-boolean v0, p0, Lx5/p;->p:Z

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lx5/p;->w0()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "release camera callback"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lx5/p;->H1()V

    :cond_6
    return-void
.end method

.method private S(Ljava/lang/String;)Lc6/h$a;
    .locals 2

    sget-object v0, Lc6/h$a;->b:Lc6/h$a;

    invoke-virtual {v0}, Lc6/h$a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Lc6/h$a;->d:Lc6/h$a;

    invoke-virtual {v0}, Lc6/h$a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    :cond_1
    sget-object v0, Lc6/h$a;->f:Lc6/h$a;

    invoke-virtual {v0}, Lc6/h$a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-object v0

    :cond_2
    sget-object v0, Lc6/h$a;->e:Lc6/h$a;

    invoke-virtual {v0}, Lc6/h$a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    return-object v0

    :cond_3
    sget-object p1, Lc6/h$a;->c:Lc6/h$a;

    return-object p1
.end method

.method private S0()V
    .locals 1

    sget-object v0, Lg8/a;->A:Lg8/a;

    invoke-direct {p0, v0}, Lx5/p;->X0(Lg8/a;)V

    invoke-direct {p0}, Lx5/p;->C1()V

    return-void
.end method

.method private T0()V
    .locals 2

    sget-object v0, Lc6/h$a;->f:Lc6/h$a;

    iput-object v0, p0, Lx5/p;->j:Lc6/h$a;

    invoke-direct {p0}, Lx5/p;->E1()V

    invoke-direct {p0}, Lx5/p;->n1()V

    invoke-direct {p0}, Lx5/p;->K1()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lx5/p;->l:Z

    invoke-direct {p0}, Lx5/p;->m1()V

    invoke-direct {p0}, Lx5/p;->E()V

    invoke-direct {p0}, Lx5/p;->G()V

    iget-object v0, p0, Lx5/p;->o:Landroid/content/Context;

    invoke-static {v0}, Lx5/b;->h(Landroid/content/Context;)V

    invoke-direct {p0}, Lx5/p;->f1()V

    const-string v0, "ConversationManager"

    const-string v1, "onConversationModeOff"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private U()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "pref_unsupport_speaker_denosie_apps"

    const-string v1, ""

    invoke-static {v0, v1}, Lr4/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_1

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object v1

    :catch_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static V()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lg8/a;",
            ">;"
        }
    .end annotation

    sget-object v0, Lx5/p;->I:Ljava/util/Set;

    return-object v0
.end method

.method private V0()V
    .locals 1

    iget-object v0, p0, Lx5/p;->q:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ly5/i;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ly5/i;->z()V

    :cond_0
    return-void
.end method

.method private W0(Landroid/media/AudioManager;)Z
    .locals 4

    invoke-static {}, Lx5/p;->q0()Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "ConversationManager"

    if-eqz v0, :cond_0

    iget-object v0, p0, Lx5/p;->j:Lc6/h$a;

    sget-object v3, Lc6/h$a;->e:Lc6/h$a;

    if-ne v0, v3, :cond_1

    invoke-static {}, Lx5/b;->e()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lc6/h$a;->c:Lc6/h$a;

    invoke-virtual {p0, p1, v0}, Lx5/p;->w1(Landroid/media/AudioManager;Lc6/h$a;)V

    const-string p1, "set voiceprint denoise to MULTI"

    :goto_0
    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    iget-object v0, p0, Lx5/p;->k:Lc6/h$a;

    sget-object v3, Lc6/h$a;->e:Lc6/h$a;

    if-ne v0, v3, :cond_1

    invoke-static {}, Lx5/b;->e()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lc6/h$a;->d:Lc6/h$a;

    invoke-virtual {p0, p1, v0}, Lx5/p;->w1(Landroid/media/AudioManager;Lc6/h$a;)V

    sget-object p1, Lc6/h$a;->c:Lc6/h$a;

    iput-object p1, p0, Lx5/p;->k:Lc6/h$a;

    const-string p1, "set preType voiceprint denoise to MULTI"

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private X()V
    .locals 2

    invoke-static {}, Lef/z;->d()Lef/z;

    move-result-object v0

    new-instance v1, Lx5/k;

    invoke-direct {v1, p0}, Lx5/k;-><init>(Lx5/p;)V

    invoke-virtual {v0, v1}, Lef/z;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method private X0(Lg8/a;)V
    .locals 1

    iget-object v0, p0, Lx5/p;->q:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ly5/i;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ly5/i;->B(Lg8/a;)V

    :cond_0
    return-void
.end method

.method private static Y()V
    .locals 2

    sget v0, Lx5/p;->F:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    const-string v1, "is_conversation_split_mode_no_limit"

    invoke-static {v1, v0}, Lr4/a;->e(Ljava/lang/String;Z)Z

    move-result v0

    sput v0, Lx5/p;->F:I

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "conversation_box_support_split_mode_devices"

    invoke-static {v1, v0}, Lr4/a;->m(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Lm/b;

    invoke-direct {v1}, Lm/b;-><init>()V

    sput-object v1, Lx5/p;->E:Ljava/util/Set;

    invoke-static {v0}, Lc7/c;->n(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v0, Lx5/p;->E:Ljava/util/Set;

    const-string v1, "babylon"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lx5/p;->E:Ljava/util/Set;

    const-string v1, "yudi"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lx5/p;->E:Ljava/util/Set;

    const-string v1, "liuqin"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lx5/p;->E:Ljava/util/Set;

    const-string v1, "pipa"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    sget-object v1, Lx5/p;->E:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    sget-object v1, Lx5/p;->E:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :goto_0
    return-void
.end method

.method private Y0()V
    .locals 1

    new-instance v0, Lx5/m;

    invoke-direct {v0, p0}, Lx5/m;-><init>(Lx5/p;)V

    invoke-static {v0}, Lcom/miui/common/base/asyn/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private Z()V
    .locals 3

    new-instance v0, Lx5/e;

    invoke-static {}, Lw5/f;->p()Lw5/f;

    move-result-object v1

    invoke-virtual {v1}, Lw5/f;->n()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lw5/f;->p()Lw5/f;

    move-result-object v2

    invoke-virtual {v2}, Lw5/f;->k()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lx5/e;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lx5/p;->u:Lx5/e;

    return-void
.end method

.method private Z0()V
    .locals 2

    invoke-virtual {p0}, Lx5/p;->L()Ld6/b;

    move-result-object v0

    sget-object v1, Ld6/b;->g:Ld6/b$b;

    invoke-virtual {v1}, Ld6/b$b;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lx5/p$e;

    invoke-direct {v1, p0}, Lx5/p$e;-><init>(Lx5/p;)V

    invoke-virtual {v0, v1}, Ld6/b;->j(Lak/a;)V

    :cond_0
    return-void
.end method

.method public static synthetic a(Lc6/h$a;Landroid/media/AudioManager;)V
    .locals 0

    invoke-static {p0, p1}, Lx5/p;->P0(Lc6/h$a;Landroid/media/AudioManager;)V

    return-void
.end method

.method public static a0(Landroid/content/Context;)Z
    .locals 1

    invoke-static {}, La8/z;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, La8/z;->c(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic b(Lx5/p;)V
    .locals 0

    invoke-direct {p0}, Lx5/p;->Q0()V

    return-void
.end method

.method private b1()V
    .locals 4

    iget-boolean v0, p0, Lx5/p;->w:Z

    const-string v1, "ConversationManager"

    if-eqz v0, :cond_0

    const-string v0, "already register record observer"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1f

    if-lt v0, v2, :cond_1

    new-instance v0, Lx5/p$h;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lx5/p$h;-><init>(Lx5/p;Lx5/p$a;)V

    iput-object v0, p0, Lx5/p;->z:Lx5/p$h;

    iget-object v2, p0, Lx5/p;->d:Landroid/media/AudioManager;

    iget-object v3, p0, Lx5/p;->e:Landroid/os/Handler;

    invoke-static {v2, v0, v3}, Lx5/g;->a(Landroid/media/AudioManager;Landroid/media/AudioManager$AudioRecordingCallback;Landroid/os/Handler;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lx5/p;->w:Z

    const-string v0, "registerRecordStateChangeObserver"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerRecordStateChangeObserver fail : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic c(Lx5/p;)V
    .locals 0

    invoke-direct {p0}, Lx5/p;->O0()V

    return-void
.end method

.method private c1()V
    .locals 2

    invoke-static {}, Lx5/p;->O()Lx5/p;

    move-result-object v0

    invoke-virtual {v0}, Lx5/p;->f0()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ld6/c;->h:Ld6/c$a;

    invoke-virtual {v0}, Ld6/c$a;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lx5/p;->Q()Ld6/c;

    move-result-object v0

    new-instance v1, Lx5/p$d;

    invoke-direct {v1, p0}, Lx5/p$d;-><init>(Lx5/p;)V

    invoke-virtual {v0, v1}, Ld6/c;->f(Lak/a;)V

    :cond_0
    return-void
.end method

.method public static synthetic d(Lx5/p;)V
    .locals 0

    invoke-direct {p0}, Lx5/p;->N0()V

    return-void
.end method

.method static synthetic e(Lx5/p;)F
    .locals 0

    invoke-direct {p0}, Lx5/p;->J()F

    move-result p0

    return p0
.end method

.method private e1()V
    .locals 2

    invoke-virtual {p0}, Lx5/p;->W()Ld6/d;

    move-result-object v0

    sget-object v1, Ld6/d;->l:Ld6/d$b;

    invoke-virtual {v1}, Ld6/d$b;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lx5/p$f;

    invoke-direct {v1, p0, v0}, Lx5/p$f;-><init>(Lx5/p;Ld6/d;)V

    invoke-virtual {v0, v1}, Ld6/d;->n(Lak/a;)V

    :cond_0
    return-void
.end method

.method static synthetic f(Lx5/p;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lx5/p;->n:Landroid/os/Handler;

    return-object p0
.end method

.method private declared-synchronized f1()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lx5/p;->h1()V

    invoke-direct {p0}, Lx5/p;->j1()V

    invoke-direct {p0}, Lx5/p;->k1()V

    invoke-direct {p0}, Lx5/p;->g1()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic g(Lx5/p;Ljava/util/List;)Z
    .locals 0

    invoke-direct {p0, p1}, Lx5/p;->o0(Ljava/util/List;)Z

    move-result p0

    return p0
.end method

.method private g1()V
    .locals 1

    iget-object v0, p0, Lx5/p;->v:Ld6/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ld6/a;->k()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lx5/p;->v:Ld6/a;

    return-void
.end method

.method static synthetic h(Lx5/p;)V
    .locals 0

    invoke-direct {p0}, Lx5/p;->S0()V

    return-void
.end method

.method private h1()V
    .locals 1

    iget-object v0, p0, Lx5/p;->r:Ld6/c;

    if-eqz v0, :cond_0

    sget-object v0, Ld6/c;->h:Ld6/c$a;

    invoke-virtual {v0}, Ld6/c$a;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lx5/p;->r:Ld6/c;

    invoke-virtual {v0}, Ld6/c;->g()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lx5/p;->r:Ld6/c;

    return-void
.end method

.method static synthetic i(Lx5/p;)Landroid/media/AudioManager;
    .locals 0

    iget-object p0, p0, Lx5/p;->d:Landroid/media/AudioManager;

    return-object p0
.end method

.method private i1()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lx5/p;->u:Lx5/e;

    return-void
.end method

.method static synthetic j(Lx5/p;Z)Z
    .locals 0

    iput-boolean p1, p0, Lx5/p;->b:Z

    return p1
.end method

.method public static j0()Z
    .locals 2

    const-string v0, "ro.vendor.audio.sd.support"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lx4/v1;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private j1()V
    .locals 1

    iget-object v0, p0, Lx5/p;->s:Ld6/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ld6/d;->o()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lx5/p;->s:Ld6/d;

    return-void
.end method

.method static synthetic k(Lx5/p;Z)Z
    .locals 0

    iput-boolean p1, p0, Lx5/p;->a:Z

    return p1
.end method

.method public static k0()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "conversation_func_switch"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lr4/a;->e(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private k1()V
    .locals 1

    iget-object v0, p0, Lx5/p;->t:Ld6/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ld6/b;->k()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lx5/p;->t:Ld6/b;

    return-void
.end method

.method static synthetic l(Lx5/p;)V
    .locals 0

    invoke-direct {p0}, Lx5/p;->R0()V

    return-void
.end method

.method public static l0()Z
    .locals 1

    invoke-static {}, Lx5/p;->k0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lw5/f;->I()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private l1()V
    .locals 5

    invoke-static {}, Lz5/a;->f()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc6/c;

    sget-object v3, Lx5/p;->I:Ljava/util/Set;

    invoke-virtual {v2}, Lh8/h;->j()Lg8/a;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lg8/a;->z:Lg8/a;

    invoke-virtual {v2, v3}, Lc6/c;->n(Lg8/a;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic m(Lx5/p;Lg8/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lx5/p;->X0(Lg8/a;)V

    return-void
.end method

.method private m1()V
    .locals 2

    iget-boolean v0, p0, Lx5/p;->p:Z

    if-nez v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lx5/p;->g:Lx5/p$i;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lx5/p;->d:Landroid/media/AudioManager;

    invoke-static {v1, v0}, Lx5/i;->a(Landroid/media/AudioManager;Landroid/media/AudioManager$OnCommunicationDeviceChangedListener;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lx5/p;->g:Lx5/p$i;

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic n(Lx5/p;)V
    .locals 0

    invoke-direct {p0}, Lx5/p;->V0()V

    return-void
.end method

.method private n1()V
    .locals 2

    iget-boolean v0, p0, Lx5/p;->p:Z

    if-nez v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lx5/p;->f:Lx5/p$g;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lx5/p;->d:Landroid/media/AudioManager;

    invoke-static {v1, v0}, Lcom/miui/electricrisk/e;->a(Landroid/media/AudioManager;Landroid/media/AudioManager$OnModeChangedListener;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lx5/p;->f:Lx5/p$g;

    return-void

    :cond_1
    :goto_0
    const-string v0, "ConversationManager"

    const-string v1, "removeOnModeChangedListener skip"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic o(Lx5/p;)V
    .locals 0

    invoke-direct {p0}, Lx5/p;->l1()V

    return-void
.end method

.method private o0(Ljava/util/List;)Z
    .locals 4
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1f
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/AudioRecordingConfiguration;",
            ">;)Z"
        }
    .end annotation

    invoke-static {p1}, Lc7/c;->n(Ljava/util/Collection;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioRecordingConfiguration;

    invoke-virtual {v2}, Landroid/media/AudioRecordingConfiguration;->getClientAudioSource()I

    move-result v2

    const/4 v3, 0x7

    if-ne v2, v3, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method static synthetic p(Lx5/p;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lx5/p;->y:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static p1(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCameraOpen :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ConversationManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "persist.vendor.camera.gesture.emoji.active"

    invoke-static {v0, p0}, Lx4/v1;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic q(Lx5/p;)Z
    .locals 0

    iget-boolean p0, p0, Lx5/p;->p:Z

    return p0
.end method

.method public static q0()Z
    .locals 2

    const-string v0, "pref_denoise"

    const/4 v1, 0x1

    invoke-static {v0, v1}, La8/m0;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static q1(Ljava/util/ArrayList;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    const-string v0, "is_conversation_split_mode_no_limit"

    invoke-static {v0, p1}, Lr4/a;->n(Ljava/lang/String;Z)V

    const-string p1, "conversation_box_support_split_mode_devices"

    invoke-static {p1, p0}, Lr4/a;->s(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic r(Lx5/p;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lx5/p;->h:Ljava/lang/Object;

    return-object p0
.end method

.method public static declared-synchronized r0()Z
    .locals 3

    const-class v0, Lx5/p;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lx5/p;->E:Ljava/util/Set;

    if-nez v1, :cond_0

    invoke-static {}, Lx5/p;->Y()V

    :cond_0
    sget v1, Lx5/p;->F:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    monitor-exit v0

    return v2

    :cond_1
    :try_start_1
    sget-object v1, Lx5/p;->E:Ljava/util/Set;

    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static r1(Z)V
    .locals 0

    invoke-static {p0}, Lx5/p;->F1(Z)V

    invoke-static {p0}, Lw5/f;->N0(Z)V

    return-void
.end method

.method static synthetic s(Lx5/p;I)I
    .locals 0

    iput p1, p0, Lx5/p;->i:I

    return p1
.end method

.method public static s1(I)V
    .locals 2

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "in_conversation_mode"

    invoke-static {v0, v1, p0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setConversationUsingFlag : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ConversationManager"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic t(Lx5/p;)V
    .locals 0

    invoke-direct {p0}, Lx5/p;->T0()V

    return-void
.end method

.method public static t0()Z
    .locals 3

    const-string v0, "persist.vendor.camera.gesture.emoji.enable"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lx4/v1;->b(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    return v1
.end method

.method static synthetic u(Lx5/p;)V
    .locals 0

    invoke-direct {p0}, Lx5/p;->O1()V

    return-void
.end method

.method public static u0()Z
    .locals 3

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "in_conversation_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v2, v1

    :cond_0
    return v2
.end method

.method public static u1(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setGestureEffect :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ConversationManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "persist.vendor.camera.gesture.emoji.enable"

    invoke-static {v0, p0}, Lx4/v1;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic v(Lx5/p;)V
    .locals 0

    invoke-direct {p0}, Lx5/p;->b1()V

    return-void
.end method

.method public static v0()Z
    .locals 2

    const/4 v0, 0x1

    invoke-static {v0}, Lj8/k;->l(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lj8/k;->a(Z)Z

    move-result v0

    goto :goto_0

    :cond_0
    invoke-static {}, Lj8/k;->h()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static v1(Z)V
    .locals 1

    const-string v0, "pref_conversation_support_device"

    invoke-static {v0, p0}, Lr4/a;->n(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic w(Lx5/p;)Z
    .locals 0

    iget-boolean p0, p0, Lx5/p;->l:Z

    return p0
.end method

.method static synthetic x(Lx5/p;Z)Z
    .locals 0

    iput-boolean p1, p0, Lx5/p;->l:Z

    return p1
.end method

.method public static y0()Z
    .locals 2

    invoke-static {}, Lx4/y;->f()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-static {}, Lx5/p;->G0()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Lx4/t;->p()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lx5/p;->D()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static z0()Z
    .locals 1

    invoke-static {}, Lx4/t;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ruyi"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lx4/a0;->s([Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static z1(Z)V
    .locals 1

    const-string v0, "pref_ultraclear_mode"

    invoke-static {v0, p0}, La8/m0;->f(Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public A(Ly5/i;)V
    .locals 1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lx5/p;->q:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public B1(Landroid/content/Context;Z)V
    .locals 1

    iget-boolean v0, p0, Lx5/p;->p:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lx5/p;->o:Landroid/content/Context;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lx5/p;->p:Z

    invoke-virtual {p0, p1, p2}, Lx5/p;->I(Landroid/content/Context;Z)V

    return-void
.end method

.method public C(Z)V
    .locals 2

    invoke-static {}, Lef/z;->d()Lef/z;

    move-result-object v0

    new-instance v1, Lx5/p$b;

    invoke-direct {v1, p0, p1}, Lx5/p$b;-><init>(Lx5/p;Z)V

    invoke-virtual {v0, v1}, Lef/z;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public F(Landroid/content/Context;Z)V
    .locals 1

    iget-boolean v0, p0, Lx5/p;->p:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lx5/p;->p:Z

    invoke-virtual {p0, p1, p2}, Lx5/p;->H(Landroid/content/Context;Z)V

    return-void
.end method

.method public H(Landroid/content/Context;Z)V
    .locals 1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "exitConversationMode: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ConversationManager"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lx5/p;->I0()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "0"

    invoke-static {p1}, Lx5/p;->p1(Ljava/lang/String;)V

    :cond_0
    if-nez p2, :cond_1

    invoke-static {}, Lw5/f;->p()Lw5/f;

    move-result-object p1

    invoke-virtual {p1}, Lw5/f;->f()V

    :cond_1
    invoke-static {}, Lw5/f;->p()Lw5/f;

    move-result-object p1

    invoke-virtual {p1}, Lw5/f;->K0()V

    invoke-static {}, Lw5/f;->p()Lw5/f;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0, v0}, Lw5/f;->o0(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lx5/p;->i1()V

    if-nez p2, :cond_2

    invoke-static {}, Lw5/f;->p()Lw5/f;

    move-result-object p1

    invoke-virtual {p1}, Lw5/f;->e()V

    :cond_2
    invoke-static {}, Lw5/b;->d()Lw5/b;

    move-result-object p1

    invoke-virtual {p1}, Lw5/b;->c()V

    invoke-virtual {p0}, Lx5/p;->M1()V

    invoke-static {}, Lx5/p;->H0()Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 p1, 0x0

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lj8/u;->J(Ljava/lang/String;Z)V

    invoke-static {}, Ld6/a;->d()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lx5/p;->P()Ld6/a;

    move-result-object p1

    invoke-virtual {p1}, Ld6/a;->p()V

    invoke-virtual {p0}, Lx5/p;->m0()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-static {p2}, Ld6/a;->n(Z)V

    :cond_3
    invoke-direct {p0}, Lx5/p;->E()V

    invoke-direct {p0}, Lx5/p;->G()V

    invoke-static {}, Lj8/u;->n()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-static {p2}, Lj8/u;->M(Z)V

    :cond_4
    invoke-static {}, Lz5/a;->m()V

    :cond_5
    invoke-virtual {p0}, Lx5/p;->m0()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-direct {p0}, Lx5/p;->L1()V

    invoke-direct {p0}, Lx5/p;->N1()V

    invoke-direct {p0}, Lx5/p;->I1()V

    goto :goto_0

    :cond_6
    invoke-direct {p0}, Lx5/p;->f1()V

    :goto_0
    return-void
.end method

.method public I(Landroid/content/Context;Z)V
    .locals 4

    const-string p2, "ConversationManager"

    const-string v0, "startConversationMode: "

    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lx5/p;->Z()V

    invoke-static {}, Lw5/f;->Y()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lw5/f;->W()Z

    move-result v0

    invoke-static {v0}, Lw5/f;->Q0(Z)V

    :cond_0
    invoke-static {}, Lw5/f;->p()Lw5/f;

    move-result-object v0

    invoke-virtual {v0}, Lw5/f;->l()Lw5/a;

    move-result-object v0

    invoke-static {}, Lw5/f;->a0()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lx5/p;->s0()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, v0, p1}, Lx5/p;->D1(Lw5/a;Landroid/content/Context;)V

    :cond_1
    invoke-static {}, Lx5/p;->H0()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-direct {p0}, Lx5/p;->Y0()V

    const-string p1, ""

    if-eqz v0, :cond_2

    iget-object v1, v0, Lw5/a;->a:Ljava/lang/String;

    goto :goto_0

    :cond_2
    move-object v1, p1

    :goto_0
    const/4 v2, 0x1

    invoke-static {v1, v2}, Lj8/u;->J(Ljava/lang/String;Z)V

    invoke-static {}, Ld6/a;->d()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lx5/p;->s0()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lx5/p;->P()Ld6/a;

    move-result-object v1

    invoke-virtual {v1}, Ld6/a;->o()V

    invoke-virtual {p0}, Lx5/p;->P()Ld6/a;

    move-result-object v1

    invoke-virtual {v1}, Ld6/a;->t()V

    :cond_3
    if-eqz v0, :cond_4

    iget-object p1, v0, Lw5/a;->a:Ljava/lang/String;

    :cond_4
    invoke-static {p1}, Lj8/u;->u(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-static {}, Lx5/p;->L0()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-static {v2}, Lj8/u;->M(Z)V

    :cond_5
    invoke-static {}, Lx5/p;->J0()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Lx5/p;->n0()Z

    move-result p1

    if-nez p1, :cond_6

    invoke-virtual {p0, v2}, Lx5/p;->t1(Z)V

    iget-object p1, p0, Lx5/p;->d:Landroid/media/AudioManager;

    sget-object v0, Lc6/h$a;->c:Lc6/h$a;

    invoke-virtual {p0, p1, v0}, Lx5/p;->w1(Landroid/media/AudioManager;Lc6/h$a;)V

    :cond_6
    invoke-direct {p0}, Lx5/p;->X()V

    invoke-virtual {p0}, Lx5/p;->z()V

    invoke-direct {p0}, Lx5/p;->b1()V

    invoke-virtual {p0}, Lx5/p;->y()V

    :cond_7
    invoke-static {}, Lx5/p;->I0()Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-static {}, Lx5/p;->O()Lx5/p;

    move-result-object p1

    invoke-virtual {p1}, Lx5/p;->d0()Z

    move-result p1

    if-eqz p1, :cond_8

    const-string p1, "1"

    goto :goto_1

    :cond_8
    const-string p1, "0"

    :goto_1
    invoke-static {p1}, Lx5/p;->p1(Ljava/lang/String;)V

    :cond_9
    invoke-virtual {p0}, Lx5/p;->Q()Ld6/c;

    sget-object p1, Ld6/c;->h:Ld6/c$a;

    invoke-virtual {p1}, Ld6/c$a;->d()Z

    move-result p1

    invoke-virtual {p0}, Lx5/p;->L()Ld6/b;

    sget-object v0, Ld6/b;->g:Ld6/b$b;

    invoke-virtual {v0}, Ld6/b$b;->e()Z

    move-result v0

    invoke-virtual {p0}, Lx5/p;->W()Ld6/d;

    sget-object v1, Ld6/d;->l:Ld6/d$b;

    invoke-virtual {v1}, Ld6/d$b;->d()Z

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SimultaneousInterpretationUtils - isDeviceSupport : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", isSupportRecord = "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", isSupportVtCamera = "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lx5/p;->c1()V

    invoke-direct {p0}, Lx5/p;->e1()V

    invoke-direct {p0}, Lx5/p;->Z0()V

    return-void
.end method

.method public J1(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    iput-boolean v0, p0, Lx5/p;->x:Z

    return-void

    :cond_0
    :try_start_0
    invoke-static {p1}, Lr0/a;->b(Landroid/content/Context;)Lr0/a;

    move-result-object p1

    invoke-virtual {p1, p2}, Lr0/a;->e(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    iput-boolean v0, p0, Lx5/p;->x:Z

    throw p1

    :catch_0
    :goto_0
    iput-boolean v0, p0, Lx5/p;->x:Z

    return-void
.end method

.method public K0(Lw5/a$a;)Z
    .locals 4

    invoke-direct {p0}, Lx5/p;->K()I

    move-result v0

    invoke-virtual {p1}, Lw5/a$a;->a()I

    move-result p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p1, v2, :cond_4

    const/4 v3, 0x2

    if-eq p1, v3, :cond_2

    const/4 v3, 0x3

    if-eq p1, v3, :cond_0

    return v2

    :cond_0
    if-nez v0, :cond_1

    move v1, v2

    :cond_1
    return v1

    :cond_2
    if-ne v0, v2, :cond_3

    move v1, v2

    :cond_3
    return v1

    :cond_4
    if-eq v0, v2, :cond_5

    if-nez v0, :cond_6

    :cond_5
    move v1, v2

    :cond_6
    return v1
.end method

.method public declared-synchronized L()Ld6/b;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lx5/p;->t:Ld6/b;

    if-nez v0, :cond_0

    new-instance v0, Ld6/b;

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v1

    iget-object v2, p0, Lx5/p;->e:Landroid/os/Handler;

    invoke-direct {v0, v1, v2}, Ld6/b;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lx5/p;->t:Ld6/b;

    :cond_0
    iget-object v0, p0, Lx5/p;->t:Ld6/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public M1()V
    .locals 2

    iget-boolean v0, p0, Lx5/p;->m:Z

    if-nez v0, :cond_0

    const-string v0, "ConversationManager"

    const-string v1, "never register temperature observer."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lx5/p;->m:Z

    iget-object v0, p0, Lx5/p;->n:Landroid/os/Handler;

    iget-object v1, p0, Lx5/p;->y:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public N()Lc6/h$a;
    .locals 2

    invoke-static {}, Lx5/p;->q0()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lx5/p;->j:Lc6/h$a;

    sget-object v1, Lc6/h$a;->f:Lc6/h$a;

    if-ne v0, v1, :cond_0

    sget-object v0, Lc6/h$a;->c:Lc6/h$a;

    iput-object v0, p0, Lx5/p;->j:Lc6/h$a;

    :cond_0
    iget-object v0, p0, Lx5/p;->j:Lc6/h$a;

    return-object v0

    :cond_1
    iget-object v0, p0, Lx5/p;->k:Lc6/h$a;

    sget-object v1, Lc6/h$a;->f:Lc6/h$a;

    if-ne v0, v1, :cond_2

    sget-object v0, Lc6/h$a;->c:Lc6/h$a;

    iput-object v0, p0, Lx5/p;->k:Lc6/h$a;

    :cond_2
    iget-object v0, p0, Lx5/p;->k:Lc6/h$a;

    return-object v0
.end method

.method public declared-synchronized P()Ld6/a;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lx5/p;->v:Ld6/a;

    if-nez v0, :cond_0

    new-instance v0, Ld6/a;

    invoke-direct {v0}, Ld6/a;-><init>()V

    iput-object v0, p0, Lx5/p;->v:Ld6/a;

    :cond_0
    iget-object v0, p0, Lx5/p;->v:Ld6/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized Q()Ld6/c;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lx5/p;->r:Ld6/c;

    if-nez v0, :cond_0

    new-instance v0, Ld6/c;

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v1

    iget-object v2, p0, Lx5/p;->e:Landroid/os/Handler;

    invoke-direct {v0, v1, v2}, Ld6/c;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lx5/p;->r:Ld6/c;

    :cond_0
    iget-object v0, p0, Lx5/p;->r:Ld6/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public R()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lw5/f;->p()Lw5/f;

    move-result-object v0

    invoke-virtual {v0}, Lw5/f;->l()Lw5/a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lw5/a;->e:Ljava/util/Set;

    sget-object v1, Lw5/a$a;->n:Lw5/a$a;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "sim_call"

    return-object v0

    :cond_0
    const-string v0, "im_call"

    return-object v0
.end method

.method public T()Lx5/e;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lx5/p;->u:Lx5/e;

    return-object v0
.end method

.method public U0()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lx5/p;->q:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public declared-synchronized W()Ld6/d;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lx5/p;->s:Ld6/d;

    if-nez v0, :cond_0

    new-instance v0, Ld6/d;

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v1

    iget-object v2, p0, Lx5/p;->e:Landroid/os/Handler;

    invoke-direct {v0, v1, v2}, Ld6/d;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lx5/p;->s:Ld6/d;

    :cond_0
    iget-object v0, p0, Lx5/p;->s:Ld6/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a1(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V
    .locals 2

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lx5/p;->x:Z

    if-eqz v0, :cond_1

    const-string p1, "ConversationManager"

    const-string p2, "already register CommunicatReceiver!"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.miui.COMMUNICATION_DEVICE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-static {p1}, Lr0/a;->b(Landroid/content/Context;)Lr0/a;

    move-result-object p1

    invoke-virtual {p1, p2, v0}, Lr0/a;->c(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lx5/p;->x:Z

    :cond_2
    :goto_0
    return-void
.end method

.method public b0()Z
    .locals 1

    invoke-static {}, Lw5/f;->p()Lw5/f;

    move-result-object v0

    invoke-virtual {v0}, Lw5/f;->l()Lw5/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lw5/a;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public c0()Z
    .locals 1

    invoke-static {}, Lw5/f;->p()Lw5/f;

    move-result-object v0

    invoke-virtual {v0}, Lw5/f;->l()Lw5/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lw5/a;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public d0()Z
    .locals 3

    invoke-static {}, Lw5/f;->p()Lw5/f;

    move-result-object v0

    invoke-virtual {v0}, Lw5/f;->l()Lw5/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lw5/a;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isAppSupportGesture :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ConversationManager"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public d1()V
    .locals 4

    iget-boolean v0, p0, Lx5/p;->m:Z

    if-nez v0, :cond_1

    invoke-static {}, Lw5/f;->F()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lx5/p;->m:Z

    iget-object v0, p0, Lx5/p;->n:Landroid/os/Handler;

    iget-object v1, p0, Lx5/p;->y:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_1
    :goto_0
    const-string v0, "ConversationManager"

    const-string v1, "Already register temperature observer."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public e0()Z
    .locals 1

    invoke-static {}, Lw5/f;->p()Lw5/f;

    move-result-object v0

    invoke-virtual {v0}, Lw5/f;->l()Lw5/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lw5/a;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public f0()Z
    .locals 1

    invoke-static {}, Lw5/f;->p()Lw5/f;

    move-result-object v0

    invoke-virtual {v0}, Lw5/f;->l()Lw5/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lw5/a;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public g0()Z
    .locals 1

    invoke-static {}, Lw5/f;->p()Lw5/f;

    move-result-object v0

    invoke-virtual {v0}, Lw5/f;->l()Lw5/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lw5/a;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public h0(Ljava/lang/String;)Z
    .locals 2

    invoke-direct {p0}, Lx5/p;->A0()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    sget-object v0, Lx5/p;->C:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lx5/p;->U()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    sget-object v0, Lx5/p;->B:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public i0()Z
    .locals 1

    invoke-direct {p0}, Lx5/p;->K()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public m0()Z
    .locals 2

    iget v0, p0, Lx5/p;->i:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public n0()Z
    .locals 2

    iget v0, p0, Lx5/p;->i:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    iget-boolean v0, p0, Lx5/p;->l:Z

    return v0
.end method

.method public o1()V
    .locals 3

    iget-object v0, p0, Lx5/p;->o:Landroid/content/Context;

    if-nez v0, :cond_0

    const-string v0, "ConversationManager"

    const-string v1, "sendLocalBroadcast: invalid!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {v0}, Lr0/a;->b(Landroid/content/Context;)Lr0/a;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.miui.COMMUNICATION_DEVICE_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lr0/a;->d(Landroid/content/Intent;)Z

    return-void
.end method

.method public p0()Z
    .locals 5

    const-string v0, "ConversationManager"

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lx5/p;->d:Landroid/media/AudioManager;

    const-string v3, "fluence_tx_ns_enable"

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isDeNoiseV2Using = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_0

    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isDeNoiseV2Using fail "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public s0()Z
    .locals 2

    invoke-direct {p0}, Lx5/p;->K()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public t1(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lx5/p;->k:Lc6/h$a;

    iput-object v0, p0, Lx5/p;->j:Lc6/h$a;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lx5/p;->j:Lc6/h$a;

    iput-object v0, p0, Lx5/p;->k:Lc6/h$a;

    :goto_0
    const-string v0, "pref_denoise"

    invoke-static {v0, p1}, La8/m0;->f(Ljava/lang/String;Z)V

    return-void
.end method

.method public w0()Z
    .locals 2

    invoke-direct {p0}, Lx5/p;->K()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public w1(Landroid/media/AudioManager;Lc6/h$a;)V
    .locals 2

    invoke-static {}, Lx5/p;->J0()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lx5/p;->M0()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iput-object p2, p0, Lx5/p;->j:Lc6/h$a;

    invoke-static {}, Lef/z;->d()Lef/z;

    move-result-object v0

    new-instance v1, Lx5/l;

    invoke-direct {v1, p2, p1}, Lx5/l;-><init>(Lc6/h$a;Landroid/media/AudioManager;)V

    invoke-virtual {v0, v1}, Lef/z;->b(Ljava/lang/Runnable;)V

    return-void

    :cond_1
    :goto_0
    const-string p1, "ConversationManager"

    const-string p2, "not support pickup denoise! or using v2 deNoise skip"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public x0()Z
    .locals 3

    invoke-static {}, Lx5/p;->M0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lx5/p;->p0()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Lj8/k;->l(Z)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-static {v0}, Lj8/k;->a(Z)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_1
    invoke-static {}, Lj8/k;->h()Z

    move-result v1

    if-nez v1, :cond_2

    :goto_0
    invoke-static {}, Lx5/p;->q0()Z

    move-result v1

    if-nez v1, :cond_5

    :cond_2
    invoke-static {v2}, Lj8/k;->l(Z)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {v2}, Lj8/k;->a(Z)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Lx5/p;->C0()Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_1

    :cond_3
    invoke-static {}, Lx5/p;->C0()Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_1

    :cond_4
    move v0, v2

    :cond_5
    :goto_1
    return v0
.end method

.method public x1(Landroid/media/AudioManager;Z)V
    .locals 2

    invoke-static {}, Lx5/p;->D0()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSpeakerDenoise on: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ConversationManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_1

    const-string p1, "setSpeakerDenoise: invalid am"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "forte_rx_css_enable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    return-void
.end method

.method public y()V
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lx5/p;->g:Lx5/p$i;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lx5/p$i;

    invoke-direct {v0, p0}, Lx5/p$i;-><init>(Lx5/p;)V

    iput-object v0, p0, Lx5/p;->g:Lx5/p$i;

    iget-object v0, p0, Lx5/p;->d:Landroid/media/AudioManager;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    iget-object v2, p0, Lx5/p;->g:Lx5/p$i;

    invoke-static {v0, v1, v2}, Lx5/f;->a(Landroid/media/AudioManager;Ljava/util/concurrent/Executor;Landroid/media/AudioManager$OnCommunicationDeviceChangedListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public y1(Z)V
    .locals 1

    const-string v0, "pref_speaker_denoise"

    invoke-static {v0, p1}, La8/m0;->f(Ljava/lang/String;Z)V

    iget-object v0, p0, Lx5/p;->d:Landroid/media/AudioManager;

    invoke-virtual {p0, v0, p1}, Lx5/p;->x1(Landroid/media/AudioManager;Z)V

    return-void
.end method

.method public z()V
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lx5/p;->f:Lx5/p$g;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lx5/p$g;

    invoke-direct {v0, p0}, Lx5/p$g;-><init>(Lx5/p;)V

    iput-object v0, p0, Lx5/p;->f:Lx5/p$g;

    iget-object v0, p0, Lx5/p;->d:Landroid/media/AudioManager;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    iget-object v2, p0, Lx5/p;->f:Lx5/p$g;

    invoke-static {v0, v1, v2}, Lcom/miui/electricrisk/b;->a(Landroid/media/AudioManager;Ljava/util/concurrent/Executor;Landroid/media/AudioManager$OnModeChangedListener;)V

    return-void

    :cond_1
    :goto_0
    const-string v0, "ConversationManager"

    const-string v1, "addOnModeChangedListener skip"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
