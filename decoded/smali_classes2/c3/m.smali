.class public Lc3/m;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static t:Lc3/m;

.field private static u:Landroid/hardware/miuiface/IMiuiFaceManager;

.field private static v:Landroid/hardware/miuiface/BaseMiuiFaceManager;

.field private static w:Landroid/hardware/face/BaseMiuiFaceManager;

.field public static final x:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected a:I

.field protected b:Landroid/os/Handler;

.field protected c:Landroid/os/HandlerThread;

.field private d:J

.field private e:Landroid/content/Context;

.field private f:I

.field private g:Z

.field private h:I

.field private i:I

.field private j:I

.field private k:Z

.field private l:Z

.field private m:Landroid/os/CancellationSignal;

.field private n:Lc3/l;

.field private o:Landroid/os/Handler;

.field private p:Z

.field q:Landroid/hardware/miuiface/IMiuiFaceManager$AuthenticationCallback;

.field r:Landroid/hardware/miuiface/BaseMiuiFaceManager$AuthenticationCallback;

.field s:Landroid/hardware/face/FaceManager$AuthenticationCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lc3/m;->x:Landroid/util/ArraySet;

    const-string v1, "perseus"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const-string v1, "andromeda"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const-string v1, "davinci"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const-string v1, "davinciin"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const-string v1, "raphael"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const-string v1, "raphaelin"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const-string v1, "lmi"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const-string v1, "lmiin"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "applock_face_unlock_thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lc3/m;->c:Landroid/os/HandlerThread;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lc3/m;->g:Z

    iput-boolean v0, p0, Lc3/m;->k:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lc3/m;->m:Landroid/os/CancellationSignal;

    iput-object v0, p0, Lc3/m;->n:Lc3/l;

    new-instance v0, Lc3/m$a;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lc3/m$a;-><init>(Lc3/m;Landroid/os/Looper;)V

    iput-object v0, p0, Lc3/m;->o:Landroid/os/Handler;

    new-instance v0, Lc3/m$b;

    invoke-direct {v0, p0}, Lc3/m$b;-><init>(Lc3/m;)V

    iput-object v0, p0, Lc3/m;->q:Landroid/hardware/miuiface/IMiuiFaceManager$AuthenticationCallback;

    new-instance v0, Lc3/m$c;

    invoke-direct {v0, p0}, Lc3/m$c;-><init>(Lc3/m;)V

    iput-object v0, p0, Lc3/m;->r:Landroid/hardware/miuiface/BaseMiuiFaceManager$AuthenticationCallback;

    new-instance v0, Lc3/m$d;

    invoke-direct {v0, p0}, Lc3/m$d;-><init>(Lc3/m;)V

    iput-object v0, p0, Lc3/m;->s:Landroid/hardware/face/FaceManager$AuthenticationCallback;

    iput-object p1, p0, Lc3/m;->e:Landroid/content/Context;

    invoke-direct {p0}, Lc3/m;->v()V

    return-void
.end method

.method static synthetic a(Lc3/m;)Lc3/l;
    .locals 0

    iget-object p0, p0, Lc3/m;->n:Lc3/l;

    return-object p0
.end method

.method static synthetic b(Lc3/m;)I
    .locals 0

    iget p0, p0, Lc3/m;->i:I

    return p0
.end method

.method static synthetic c(Lc3/m;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lc3/m;->e:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic d(Lc3/m;)I
    .locals 0

    iget p0, p0, Lc3/m;->j:I

    return p0
.end method

.method static synthetic e(Lc3/m;)Z
    .locals 0

    iget-boolean p0, p0, Lc3/m;->k:Z

    return p0
.end method

.method static synthetic f(Lc3/m;)V
    .locals 0

    invoke-direct {p0}, Lc3/m;->s()V

    return-void
.end method

.method static synthetic g(Lc3/m;ILjava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lc3/m;->r(ILjava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic h(Lc3/m;)V
    .locals 0

    invoke-direct {p0}, Lc3/m;->q()V

    return-void
.end method

.method static synthetic i(Lc3/m;ILjava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lc3/m;->p(ILjava/lang/CharSequence;)V

    return-void
.end method

.method private j()V
    .locals 2

    invoke-virtual {p0}, Lc3/m;->E()V

    const/4 v0, 0x0

    iput-object v0, p0, Lc3/m;->m:Landroid/os/CancellationSignal;

    iget-object v0, p0, Lc3/m;->o:Landroid/os/Handler;

    const/16 v1, 0x3ed

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method private static k(Landroid/content/Context;)V
    .locals 8

    :try_start_0
    const-string v0, "android.hardware.miuiface.MiuiFaceFactory"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroid/hardware/miuiface/IMiuiFaceManager;

    const-string v2, "getFaceManager"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v3, v7

    invoke-static {v0, v1, v2, v4, v3}, Lbh/f;->g(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/miuiface/IMiuiFaceManager;

    sput-object p0, Lc3/m;->u:Landroid/hardware/miuiface/IMiuiFaceManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "applock_face_unlock"

    const-string v1, "getFaceManager exception: "

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private static l(Landroid/content/Context;)V
    .locals 2

    :try_start_0
    const-string v0, "miui_face"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/miuiface/BaseMiuiFaceManager;

    sput-object p0, Lc3/m;->v:Landroid/hardware/miuiface/BaseMiuiFaceManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "applock_face_unlock"

    const-string v1, "getFaceManager exception: "

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private static m(Landroid/content/Context;)V
    .locals 2

    :try_start_0
    const-string v0, "miui_face"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/face/BaseMiuiFaceManager;

    sput-object p0, Lc3/m;->w:Landroid/hardware/face/BaseMiuiFaceManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "applock_face_unlock"

    const-string v1, "getFaceManager exception: "

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public static declared-synchronized n(Landroid/content/Context;)Lc3/m;
    .locals 2

    const-class v0, Lc3/m;

    monitor-enter v0

    :try_start_0
    invoke-static {p0}, Lc3/m;->m(Landroid/content/Context;)V

    sget-object v1, Lc3/m;->w:Landroid/hardware/face/BaseMiuiFaceManager;

    if-nez v1, :cond_0

    invoke-static {p0}, Lc3/m;->l(Landroid/content/Context;)V

    sget-object v1, Lc3/m;->v:Landroid/hardware/miuiface/BaseMiuiFaceManager;

    if-nez v1, :cond_0

    invoke-static {p0}, Lc3/m;->k(Landroid/content/Context;)V

    :cond_0
    new-instance v1, Lc3/m;

    invoke-direct {v1, p0}, Lc3/m;-><init>(Landroid/content/Context;)V

    sput-object v1, Lc3/m;->t:Lc3/m;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized o(Landroid/content/Context;)Lc3/m;
    .locals 2

    const-class v0, Lc3/m;

    monitor-enter v0

    :try_start_0
    invoke-static {p0}, Lc3/m;->m(Landroid/content/Context;)V

    sget-object v1, Lc3/m;->w:Landroid/hardware/face/BaseMiuiFaceManager;

    if-nez v1, :cond_0

    invoke-static {p0}, Lc3/m;->l(Landroid/content/Context;)V

    sget-object v1, Lc3/m;->v:Landroid/hardware/miuiface/BaseMiuiFaceManager;

    if-nez v1, :cond_0

    invoke-static {p0}, Lc3/m;->k(Landroid/content/Context;)V

    :cond_0
    sget-object v1, Lc3/m;->t:Lc3/m;

    if-nez v1, :cond_1

    new-instance v1, Lc3/m;

    invoke-direct {v1, p0}, Lc3/m;-><init>(Landroid/content/Context;)V

    sput-object v1, Lc3/m;->t:Lc3/m;

    :cond_1
    sget-object p0, Lc3/m;->t:Lc3/m;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private p(ILjava/lang/CharSequence;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "authenCallback, onAuthenticationError code:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " msg:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "applock_face_unlock"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x7

    if-eq v0, p1, :cond_0

    const/16 v0, 0xbb9

    if-ne v0, p1, :cond_1

    :cond_0
    invoke-direct {p0, p1, p2}, Lc3/m;->r(ILjava/lang/CharSequence;)V

    :cond_1
    const/16 p2, 0x7d1

    if-ne p2, p1, :cond_2

    return-void

    :cond_2
    const/16 p2, 0x7d2

    if-ne p2, p1, :cond_3

    const/4 p1, 0x0

    iput-object p1, p0, Lc3/m;->m:Landroid/os/CancellationSignal;

    iget-object p1, p0, Lc3/m;->o:Landroid/os/Handler;

    const/16 p2, 0x3ef

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :cond_3
    const/4 p1, 0x0

    iput-boolean p1, p0, Lc3/m;->p:Z

    invoke-direct {p0}, Lc3/m;->j()V

    return-void
.end method

.method private q()V
    .locals 2

    const-string v0, "applock_face_unlock"

    const-string v1, "authenCallback, onAuthenticationFailed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lc3/m;->p:Z

    invoke-direct {p0}, Lc3/m;->j()V

    return-void
.end method

.method private r(ILjava/lang/CharSequence;)V
    .locals 4

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "last helpCode = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lc3/m;->j:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", helpCode = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "applock_face_unlock"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lc3/m;->j:I

    const/4 p2, 0x5

    const/4 v1, 0x1

    if-eq p1, p2, :cond_0

    iput-boolean v1, p0, Lc3/m;->k:Z

    :cond_0
    const/16 v2, 0xe

    const/4 v3, 0x3

    if-ne p1, v2, :cond_1

    iget v2, p0, Lc3/m;->f:I

    add-int/2addr v2, v1

    iput v2, p0, Lc3/m;->f:I

    if-lt v2, v3, :cond_2

    iput-boolean v1, p0, Lc3/m;->g:Z

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    iput v1, p0, Lc3/m;->f:I

    :cond_2
    :goto_0
    iget v1, p0, Lc3/m;->i:I

    if-eq p1, v3, :cond_5

    const/4 v2, 0x4

    const v3, 0x7f120847

    if-eq p1, v2, :cond_4

    if-eq p1, p2, :cond_3

    const p2, 0x7f120848

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    :pswitch_0
    iput p2, p0, Lc3/m;->i:I

    goto :goto_3

    :pswitch_1
    const p1, 0x7f120851

    goto :goto_2

    :pswitch_2
    const p1, 0x7f12084f

    goto :goto_2

    :pswitch_3
    const p1, 0x7f120850

    goto :goto_2

    :pswitch_4
    iget-boolean p1, p0, Lc3/m;->g:Z

    if-eqz p1, :cond_4

    move v3, p2

    goto :goto_1

    :cond_3
    const p1, 0x7f12084e

    goto :goto_2

    :cond_4
    :goto_1
    :pswitch_5
    iput v3, p0, Lc3/m;->i:I

    goto :goto_3

    :cond_5
    const p1, 0x7f121afa

    :goto_2
    iput p1, p0, Lc3/m;->i:I

    :goto_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "lastResId = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", resId = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lc3/m;->i:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget p1, p0, Lc3/m;->i:I

    if-eq p1, v1, :cond_6

    iget-object p1, p0, Lc3/m;->o:Landroid/os/Handler;

    const/16 p2, 0x3eb

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_6
    return-void

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x15
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private s()V
    .locals 6

    const-string v0, "applock_face_unlock"

    const-string v1, " authenCallback, onAuthenticationSucceeded"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "receive verify passed time="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lc3/m;->d:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lc3/m;->m:Landroid/os/CancellationSignal;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lc3/m;->l:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lc3/m;->p:Z

    iget-object v0, p0, Lc3/m;->o:Landroid/os/Handler;

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method private v()V
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lc3/m;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc3/m;->c:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lc3/m;->c:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lc3/m;->b:Landroid/os/Handler;

    invoke-static {}, Lc3/j;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "applock_face_unlock"

    const-string v2, "initFaceUnlockUtil exception: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method private x()Z
    .locals 2

    iget v0, p0, Lc3/m;->a:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_1

    iget v0, p0, Lc3/m;->h:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

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

.method private y()Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lc3/m;->e:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "sc_status"

    const/4 v3, -0x2

    invoke-static {v1, v2, v0, v3}, La8/c0;->h(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "applock_face_unlock"

    const-string v3, "isSlideCoverOpened exception: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v0

    :goto_0
    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v3, "perseus"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-nez v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static z(Landroid/content/Context;)Z
    .locals 3

    const/4 p0, 0x0

    :try_start_0
    const-string v0, "miui.os.DeviceFeature"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "hasPopupCameraSupport"

    new-array v2, p0, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, p0, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "applock_face_unlock"

    const-string v2, "reflect error when get hasPopupCameraSupport state"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return p0
.end method


# virtual methods
.method public A()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lc3/m;->a:I

    iput v0, p0, Lc3/m;->h:I

    return-void
.end method

.method public B(Ljava/lang/Runnable;)V
    .locals 2

    iget-object v0, p0, Lc3/m;->c:Landroid/os/HandlerThread;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lc3/m;->b:Landroid/os/Handler;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadId()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    if-ne v0, v1, :cond_1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lc3/m;->b:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public C()Z
    .locals 1

    iget-object v0, p0, Lc3/m;->e:Landroid/content/Context;

    invoke-static {v0}, Lx4/v;->j(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lc3/m;->y()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lc3/m;->t:Lc3/m;

    invoke-virtual {v0}, Lc3/m;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public D(Lc3/l;)V
    .locals 11

    invoke-direct {p0}, Lc3/m;->x()Z

    move-result v0

    const-string v1, "applock_face_unlock"

    if-eqz v0, :cond_0

    const-string p1, "face unlock locked"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lc3/m;->o:Landroid/os/Handler;

    const/16 v0, 0x3ee

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    invoke-direct {p0}, Lc3/m;->j()V

    return-void

    :cond_0
    iput-object p1, p0, Lc3/m;->n:Lc3/l;

    iget-object p1, p0, Lc3/m;->m:Landroid/os/CancellationSignal;

    if-eqz p1, :cond_1

    const-string p1, "start face unlock is running"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lc3/m;->j()V

    return-void

    :cond_1
    const/4 p1, 0x0

    iput p1, p0, Lc3/m;->j:I

    iput p1, p0, Lc3/m;->f:I

    iput-boolean p1, p0, Lc3/m;->k:Z

    iput-boolean p1, p0, Lc3/m;->g:Z

    iput-boolean p1, p0, Lc3/m;->l:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lc3/m;->p:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lc3/m;->d:J

    new-instance v6, Landroid/os/CancellationSignal;

    invoke-direct {v6}, Landroid/os/CancellationSignal;-><init>()V

    iput-object v6, p0, Lc3/m;->m:Landroid/os/CancellationSignal;

    :try_start_0
    sget-object v4, Lc3/m;->w:Landroid/hardware/face/BaseMiuiFaceManager;

    if-eqz v4, :cond_2

    const/4 v5, 0x0

    const/4 v7, 0x0

    iget-object v8, p0, Lc3/m;->s:Landroid/hardware/face/FaceManager$AuthenticationCallback;

    iget-object v9, p0, Lc3/m;->b:Landroid/os/Handler;

    invoke-virtual/range {v4 .. v9}, Landroid/hardware/face/BaseMiuiFaceManager;->authenticate(Landroid/hardware/biometrics/CryptoObject;Landroid/os/CancellationSignal;ILandroid/hardware/face/FaceManager$AuthenticationCallback;Landroid/os/Handler;)V

    goto :goto_0

    :cond_2
    sget-object v4, Lc3/m;->v:Landroid/hardware/miuiface/BaseMiuiFaceManager;

    if-eqz v4, :cond_3

    const/4 v5, 0x0

    const/4 v7, 0x0

    iget-object v8, p0, Lc3/m;->r:Landroid/hardware/miuiface/BaseMiuiFaceManager$AuthenticationCallback;

    iget-object v9, p0, Lc3/m;->b:Landroid/os/Handler;

    invoke-virtual/range {v4 .. v9}, Landroid/hardware/miuiface/BaseMiuiFaceManager;->authenticate(Landroid/hardware/biometrics/CryptoObject;Landroid/os/CancellationSignal;ILandroid/hardware/miuiface/BaseMiuiFaceManager$AuthenticationCallback;Landroid/os/Handler;)V

    goto :goto_0

    :cond_3
    sget-object v2, Lc3/m;->u:Landroid/hardware/miuiface/IMiuiFaceManager;

    const-string v3, "authenticate"

    const/4 v4, 0x5

    new-array v5, v4, [Ljava/lang/Class;

    const-class v7, Landroid/os/CancellationSignal;

    aput-object v7, v5, p1

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v0

    const-class v8, Landroid/hardware/miuiface/IMiuiFaceManager$AuthenticationCallback;

    const/4 v9, 0x2

    aput-object v8, v5, v9

    const-class v8, Landroid/os/Handler;

    const/4 v10, 0x3

    aput-object v8, v5, v10

    const/4 v8, 0x4

    aput-object v7, v5, v8

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v6, v4, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v0

    iget-object p1, p0, Lc3/m;->q:Landroid/hardware/miuiface/IMiuiFaceManager$AuthenticationCallback;

    aput-object p1, v4, v9

    iget-object p1, p0, Lc3/m;->b:Landroid/os/Handler;

    aput-object p1, v4, v10

    const/16 p1, 0x1388

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v8

    invoke-static {v2, v3, v5, v4}, Lbh/f;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "face unlock authenticate exception: "

    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    invoke-static {}, Lc3/j;->b()V

    iget-object p1, p0, Lc3/m;->o:Landroid/os/Handler;

    const/16 v0, 0x3e9

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public E()V
    .locals 3

    const-string v0, "applock_face_unlock"

    const-string v1, "stopFaceUnlock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lc3/m;->m:Landroid/os/CancellationSignal;

    if-eqz v1, :cond_2

    iget-boolean v2, p0, Lc3/m;->p:Z

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "call stopFaceUnlock cancel"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lc3/m;->m:Landroid/os/CancellationSignal;

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc3/m;->p:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lc3/m;->m:Landroid/os/CancellationSignal;

    iget-boolean v0, p0, Lc3/m;->k:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lc3/m;->l:Z

    if-nez v0, :cond_1

    iget v0, p0, Lc3/m;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lc3/m;->a:I

    :cond_1
    iget-boolean v0, p0, Lc3/m;->g:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lc3/m;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lc3/m;->h:I

    :cond_2
    return-void
.end method

.method public t()Z
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lc3/m;->e:Landroid/content/Context;

    invoke-static {v1}, Lc3/m;->m(Landroid/content/Context;)V

    sget-object v1, Lc3/m;->w:Landroid/hardware/face/BaseMiuiFaceManager;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/hardware/face/BaseMiuiFaceManager;->hasEnrolledTemplates()Z

    move-result v0

    return v0

    :cond_0
    iget-object v1, p0, Lc3/m;->e:Landroid/content/Context;

    invoke-static {v1}, Lc3/m;->l(Landroid/content/Context;)V

    sget-object v1, Lc3/m;->v:Landroid/hardware/miuiface/BaseMiuiFaceManager;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/hardware/miuiface/BaseMiuiFaceManager;->hasEnrolledTemplates()Z

    move-result v0

    return v0

    :cond_1
    sget-object v1, Lc3/m;->u:Landroid/hardware/miuiface/IMiuiFaceManager;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v3, "hasEnrolledFaces"

    const/4 v4, 0x0

    new-array v5, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3, v4, v5}, Lbh/f;->b(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "applock_face_unlock"

    const-string v3, "hasEnrolledFaces exception:"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v0

    :goto_0
    if-lez v1, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public u()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public w()Z
    .locals 6

    const-string v0, "isFaceFeatureSupport"

    iget-object v1, p0, Lc3/m;->e:Landroid/content/Context;

    invoke-static {v1}, Lx4/v;->j(Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    sget-object v1, Lc3/m;->x:Landroid/util/ArraySet;

    sget-object v3, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lc3/m;->e:Landroid/content/Context;

    invoke-static {v1}, Lc3/m;->z(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    :try_start_0
    sget-object v1, Lc3/m;->w:Landroid/hardware/face/BaseMiuiFaceManager;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/hardware/face/BaseMiuiFaceManager;->isFaceFeatureSupport()Z

    move-result v0

    :goto_0
    move v2, v0

    goto :goto_1

    :cond_0
    sget-object v1, Lc3/m;->v:Landroid/hardware/miuiface/BaseMiuiFaceManager;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/hardware/miuiface/BaseMiuiFaceManager;->isFaceFeatureSupport()Z

    move-result v0

    goto :goto_0

    :cond_1
    sget-object v1, Lc3/m;->u:Landroid/hardware/miuiface/IMiuiFaceManager;

    if-eqz v1, :cond_2

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x0

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v1, v3, v0, v4, v5}, Lbh/f;->b(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v3, "applock_face_unlock"

    invoke-static {v3, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_1
    return v2
.end method
