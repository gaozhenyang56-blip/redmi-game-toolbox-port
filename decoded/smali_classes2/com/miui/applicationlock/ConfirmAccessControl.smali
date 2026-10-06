.class public Lcom/miui/applicationlock/ConfirmAccessControl;
.super Lcom/miui/common/base/BaseActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/applicationlock/ConfirmAccessControl$n;,
        Lcom/miui/applicationlock/ConfirmAccessControl$o;,
        Lcom/miui/applicationlock/ConfirmAccessControl$l;,
        Lcom/miui/applicationlock/ConfirmAccessControl$m;,
        Lcom/miui/applicationlock/ConfirmAccessControl$p;
    }
.end annotation


# static fields
.field private static H0:J


# instance fields
.field private A:Z

.field private A0:I

.field private B:Landroid/os/IBinder;

.field private volatile B0:Z

.field C:Z

.field private C0:Lcom/miui/applicationlock/ConfirmAccessControl$m;

.field private D:Lc3/d;

.field private final D0:Landroid/content/BroadcastReceiver;

.field private E:I

.field private final E0:Lc3/g;

.field private final F:Landroid/os/Handler;

.field private final F0:Landroidx/vectordrawable/graphics/drawable/b;

.field private G:Z

.field private final G0:Lc3/l;

.field private H:Ljava/lang/Runnable;

.field private I:Ljava/lang/Runnable;

.field private J:Landroid/app/KeyguardManager;

.field private K:I

.field private L:I

.field private M:I

.field private N:Landroid/content/res/Resources;

.field private O:Z

.field private P:I

.field public Q:Z

.field private R:Z

.field private S:Z

.field private T:Landroid/widget/EditText;

.field U:Ljava/lang/String;

.field V:Lcom/miui/applicationlock/widget/MiuiNumericInputView;

.field private W:Landroid/view/accessibility/AccessibilityManager;

.field private X:Z

.field private Y:Lcom/miui/applicationlock/widget/PasswordUnlockMediator;

.field private Z:Landroid/widget/TextView;

.field private final a:Ljava/lang/String;

.field private b:Landroidx/constraintlayout/widget/ConstraintLayout;

.field c:Lcom/miui/applicationlock/widget/e;

.field private d:Landroid/widget/TextView;

.field private e:Lcom/miui/applicationlock/widget/NumberPasswordEditText;

.field private f:Landroid/widget/LinearLayout;

.field private f0:Landroid/widget/Button;

.field protected g:Landroid/widget/ImageView;

.field private g0:I

.field protected h:Landroid/widget/ImageView;

.field private h0:Landroid/view/ViewGroup;

.field private i:Landroid/view/View;

.field private i0:Lc3/m;

.field private j:Landroid/os/CountDownTimer;

.field private j0:Landroid/widget/ImageView;

.field private k:Landroid/database/ContentObserver;

.field private k0:Z

.field private l:Landroid/content/Intent;

.field private l0:Z

.field private m:Landroid/app/ActivityOptions;

.field private m0:Z

.field private n:Landroid/graphics/Rect;

.field private n0:Z

.field private o:Lxg/a;

.field private o0:Z

.field private p:Ljava/lang/CharSequence;

.field private p0:Z

.field protected q:Ljava/lang/String;

.field private q0:Lcom/miui/applicationlock/widget/PhoneGLSurfaceView;

.field private r:Z

.field private r0:Landroid/widget/TextView;

.field private s:Lmiui/security/SecurityManager;

.field private s0:Landroid/widget/TextView;

.field private t:Lc3/n;

.field private t0:Landroid/widget/TextView;

.field private u:I

.field private u0:I

.field private v:I

.field private v0:Landroid/view/WindowManager;

.field private w:Z

.field private w0:Landroid/view/OrientationEventListener;

.field private x:Z

.field private x0:I

.field private y:Z

.field private y0:Z

.field private z:Z

.field private z0:Landroidx/vectordrawable/graphics/drawable/c;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/miui/common/base/BaseActivity;-><init>()V

    const-string v0, "key_last_ui_mode"

    iput-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->a:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->u:I

    iput-boolean v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->A:Z

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->F:Landroid/os/Handler;

    iput-boolean v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->p0:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->A0:I

    new-instance v0, Lcom/miui/applicationlock/ConfirmAccessControl$m;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/miui/applicationlock/ConfirmAccessControl$m;-><init>(Ljava/lang/ref/WeakReference;Lcom/miui/applicationlock/ConfirmAccessControl$c;)V

    iput-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->C0:Lcom/miui/applicationlock/ConfirmAccessControl$m;

    new-instance v0, Lcom/miui/applicationlock/ConfirmAccessControl$c;

    invoke-direct {v0, p0}, Lcom/miui/applicationlock/ConfirmAccessControl$c;-><init>(Lcom/miui/applicationlock/ConfirmAccessControl;)V

    iput-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->D0:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/miui/applicationlock/ConfirmAccessControl$d;

    invoke-direct {v0, p0}, Lcom/miui/applicationlock/ConfirmAccessControl$d;-><init>(Lcom/miui/applicationlock/ConfirmAccessControl;)V

    iput-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->E0:Lc3/g;

    new-instance v0, Lcom/miui/applicationlock/ConfirmAccessControl$e;

    invoke-direct {v0, p0}, Lcom/miui/applicationlock/ConfirmAccessControl$e;-><init>(Lcom/miui/applicationlock/ConfirmAccessControl;)V

    iput-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->F0:Landroidx/vectordrawable/graphics/drawable/b;

    new-instance v0, Lcom/miui/applicationlock/ConfirmAccessControl$o;

    invoke-direct {v0, p0, v2}, Lcom/miui/applicationlock/ConfirmAccessControl$o;-><init>(Lcom/miui/applicationlock/ConfirmAccessControl;Lcom/miui/applicationlock/ConfirmAccessControl$c;)V

    iput-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->G0:Lc3/l;

    return-void
.end method

.method static synthetic A0(Lcom/miui/applicationlock/ConfirmAccessControl;)I
    .locals 0

    iget p0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->v:I

    return p0
.end method

.method private A1()Z
    .locals 2

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->c:Lcom/miui/applicationlock/widget/e;

    instance-of v1, v0, Lcom/miui/applicationlock/widget/q;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/miui/applicationlock/widget/q;

    invoke-virtual {v0}, Lcom/miui/applicationlock/widget/q;->w()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/miui/applicationlock/widget/q;->s()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private A2()V
    .locals 5

    const-string v0, "ConfirmAccessControl"

    const-string v1, "registerFaceUnlock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lc3/f;->H(Landroid/content/Context;)I

    move-result v1

    iget-boolean v2, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->z:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->k0:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->G:Z

    if-eqz v2, :cond_2

    :cond_0
    const/4 v2, 0x5

    if-ge v1, v2, :cond_2

    iget v4, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->v:I

    if-ge v4, v2, :cond_2

    invoke-virtual {p0}, Landroid/app/Activity;->hasWindowFocus()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->x:Z

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    iput-boolean v3, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->x:Z

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->j0:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->i0:Lc3/m;

    new-instance v1, Lz2/r;

    invoke-direct {v1, p0}, Lz2/r;-><init>(Lcom/miui/applicationlock/ConfirmAccessControl;)V

    invoke-virtual {v0, v1}, Lc3/m;->B(Ljava/lang/Runnable;)V

    return-void

    :cond_2
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "return face reason:isFaceUnlockConversion = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->k0:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ",mStop = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->G:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ",mNumWrongConfirmAttempts = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->v:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",isOpenFaceUnlock = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->z:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ",wrongFingerCount = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",!hasWindowFocus()  "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/app/Activity;->hasWindowFocus()Z

    move-result v1

    xor-int/2addr v1, v3

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",isRegisterFaceUnlock = "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->x:Z

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic B0(Lcom/miui/applicationlock/ConfirmAccessControl;)I
    .locals 1

    iget v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->v:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->v:I

    return v0
.end method

.method private B1(Landroid/view/Window;FF)V
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p2, v0, v1

    const/4 p2, 0x1

    aput p3, v0, p2

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->cancel()V

    const-wide/16 v0, 0x104

    invoke-virtual {p2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance p3, Lz2/q;

    invoke-direct {p3, p1}, Lz2/q;-><init>(Landroid/view/Window;)V

    invoke-virtual {p2, p3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private B2(J)V
    .locals 2

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->I:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->F:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->F:Landroid/os/Handler;

    new-instance v1, Lcom/miui/applicationlock/ConfirmAccessControl$j;

    invoke-direct {v1, p0}, Lcom/miui/applicationlock/ConfirmAccessControl$j;-><init>(Lcom/miui/applicationlock/ConfirmAccessControl;)V

    iput-object v1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->I:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method static synthetic C0(Lcom/miui/applicationlock/ConfirmAccessControl;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/applicationlock/ConfirmAccessControl;->M1(J)V

    return-void
.end method

.method private C1()V
    .locals 2

    iget-boolean v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->k0:Z

    if-nez v0, :cond_1

    const-string v0, "ConfirmAccessControl"

    const-string v1, "faceToFingerConversion called: "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->k0:Z

    invoke-virtual {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->L2()V

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->j0:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const v1, 0x7f120178

    goto :goto_0

    :cond_0
    const v1, 0x7f12071e

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_1
    return-void
.end method

.method private C2(ZZ)V
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerFingerprint has focus "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ConfirmAccessControl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->p0:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->w:Z

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->Y1()Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p2, :cond_3

    invoke-static {p0}, Lc3/f;->H(Landroid/content/Context;)I

    move-result v0

    const/4 v3, 0x5

    if-eq v0, v3, :cond_3

    iget v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->v:I

    if-ge v0, v3, :cond_3

    invoke-direct {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->z1()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->K1()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-nez v0, :cond_3

    invoke-static {}, Lx4/y;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->y:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->c2()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    iput-boolean v2, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->w:Z

    invoke-direct {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->d2()Z

    move-result p2

    iput-boolean p2, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->y:Z

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isOpenFingerprint = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->y:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean p2, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->y:Z

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    :try_start_0
    iget-object p2, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->t:Lc3/n;

    new-instance v3, Lcom/miui/applicationlock/ConfirmAccessControl$l;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/miui/applicationlock/ConfirmAccessControl$l;-><init>(Lcom/miui/applicationlock/ConfirmAccessControl;Lcom/miui/applicationlock/ConfirmAccessControl$c;)V

    if-eqz p1, :cond_1

    move v2, v0

    :cond_1
    invoke-virtual {p2, v3, v2}, Lc3/n;->c(Lc3/h;I)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "registerFingerprint authenticateAppLock: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->q:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ",userId: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->K:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "show fingerprint error :"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string p1, "device no fingerprint"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->P:I

    :goto_0
    return-void

    :cond_3
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Return reason: isRegisterFingerprint: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->w:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "\n isKeyguard: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->J:Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "\n mNumWrongConfirmAttempts = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->v:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\n wrongFingerAttempts: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lc3/f;->H(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\n bindAccountDialog show: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->z1()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "\n mUnlockMode: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->P:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\n attemptDeadLine: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->K1()J

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "\n is account dialog show: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->o0:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "\n isOpenFingerprint: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->y:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "\n is RealInMultiWindow: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->c2()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "\n !isFront: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->p0:Z

    xor-int/2addr v0, v2

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "\n !hasWindowFocus: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    xor-int/2addr p2, v2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, "\n !isAppLockTaskVisible "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->Y1()Z

    move-result p2

    xor-int/2addr p2, v2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic D0(Lcom/miui/applicationlock/ConfirmAccessControl;)Lc3/d;
    .locals 0

    iget-object p0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->D:Lc3/d;

    return-object p0
.end method

.method private D1()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->A:Z

    sget-object v0, Lcom/miui/applicationlock/ConfirmAccessControl$p;->a:Lcom/miui/applicationlock/ConfirmAccessControl$p;

    invoke-direct {p0, v0}, Lcom/miui/applicationlock/ConfirmAccessControl;->S2(Lcom/miui/applicationlock/ConfirmAccessControl$p;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-static {v1, v2, v0}, Lc3/f;->m0(JLandroid/content/Context;)V

    iget-boolean v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->O:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lc3/f;->H(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->Z:Landroid/widget/TextView;

    const v1, 0x7f12006c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->d:Landroid/widget/TextView;

    const v1, 0x7f12017a

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->Z:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->H1()I

    move-result v1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method private D2()V
    .locals 9

    const-string v0, "ConfirmAccessControl"

    iget-boolean v1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->B0:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    :try_start_0
    const-string v1, "android.app.ActivityTaskManager"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getService"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v1, v2, v5, v4}, Lbh/f;->h(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "registerTaskStackListener"

    const/4 v4, 0x1

    new-array v6, v4, [Ljava/lang/Class;

    const-string v7, "android.app.ITaskStackListener"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    aput-object v7, v6, v3

    new-array v7, v4, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->C0:Lcom/miui/applicationlock/ConfirmAccessControl$m;

    aput-object v8, v7, v3

    invoke-static {v1, v5, v2, v6, v7}, Lbh/f;->e(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    iput-boolean v4, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->B0:Z

    const-string v1, "registerTaskChangeListener"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerTaskListener fail "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method static synthetic E0(Lcom/miui/applicationlock/ConfirmAccessControl;Lcom/miui/applicationlock/ConfirmAccessControl$p;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/applicationlock/ConfirmAccessControl;->S2(Lcom/miui/applicationlock/ConfirmAccessControl$p;)V

    return-void
.end method

.method private E1()V
    .locals 4

    invoke-direct {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->d2()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lx4/a0;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->K:I

    invoke-static {v0, v1}, Lc3/d;->u(Landroid/content/ContentResolver;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->l0:Z

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/miui/applicationlock/ConfirmAccessControl;->m1(Z)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->K:I

    invoke-static {v0, v1}, Lc3/d;->f(Landroid/content/ContentResolver;I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0e00a0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x30

    const v3, 0x7f1307e3

    invoke-static {v1, v2, v0, v3}, Lc3/f;->U(Landroid/content/Context;ILandroid/view/View;I)V

    :cond_0
    return-void
.end method

.method private E2()V
    .locals 7

    new-instance v6, Lcom/miui/applicationlock/ConfirmAccessControl$h;

    const-wide/16 v2, 0x4e20

    const-wide/16 v4, 0x3e8

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/miui/applicationlock/ConfirmAccessControl$h;-><init>(Lcom/miui/applicationlock/ConfirmAccessControl;JJ)V

    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f121580

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f12157e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120410

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lz2/v;

    invoke-direct {v2, v6}, Lz2/v;-><init>(Landroid/os/CountDownTimer;)V

    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f12157f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lz2/w;

    invoke-direct {v2, p0}, Lz2/w;-><init>(Lcom/miui/applicationlock/ConfirmAccessControl;)V

    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/miui/applicationlock/ConfirmAccessControl$i;

    invoke-direct {v1, p0, v6}, Lcom/miui/applicationlock/ConfirmAccessControl$i;-><init>(Lcom/miui/applicationlock/ConfirmAccessControl;Landroid/os/CountDownTimer;)V

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->show()V

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->f0:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {v6}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    return-void
.end method

.method static synthetic F0(Lcom/miui/applicationlock/ConfirmAccessControl;)I
    .locals 0

    iget p0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->M:I

    return p0
.end method

.method private F1(Ljava/lang/String;Landroid/content/Intent;I)V
    .locals 3

    invoke-direct {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->O2()V

    const-string v0, "ConfirmAccessControl"

    const-string v1, "unregisterFingerprint 9"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120fc9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f120410

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lz2/s;

    invoke-direct {v1}, Lz2/s;-><init>()V

    invoke-virtual {p1, v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    new-instance v0, Lz2/t;

    invoke-direct {v0, p0, p2}, Lz2/t;-><init>(Lcom/miui/applicationlock/ConfirmAccessControl;Landroid/content/Intent;)V

    invoke-virtual {p1, p3, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    new-instance p2, Lz2/u;

    invoke-direct {p2, p0}, Lz2/u;-><init>(Lcom/miui/applicationlock/ConfirmAccessControl;)V

    invoke-virtual {p1, p2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog;->show()V

    return-void
.end method

.method private F2()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->v:I

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lc3/f;->w0(Landroid/content/Context;I)V

    const-string v0, "ConfirmAccessControl"

    const-string v1, "clear wrong attempts: "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic G0(Lcom/miui/applicationlock/ConfirmAccessControl;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->G:Z

    return p0
.end method

.method private G1(Landroid/content/res/Configuration;)I
    .locals 4

    :try_start_0
    const-string v0, "windowConfiguration"

    invoke-static {p1, v0}, Lbh/f;->j(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v1, "getWindowingMode"

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1, v0, v1, v2, v3}, Lbh/f;->b(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "ConfirmAccessControl"

    const-string v1, "onConfigurationChanged ex: "

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x1

    :goto_0
    return p1
.end method

.method private G2(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V
    .locals 2

    iget v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->E:I

    const/16 v1, 0x3e7

    if-ne v0, v1, :cond_0

    iget-object p2, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->q:Ljava/lang/String;

    const-string v0, "pkg_icon_xspace://"

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {}, Lc3/a;->a()Lrh/c;

    move-result-object v0

    invoke-static {p2, p1, v0}, Lx4/o0;->d(Ljava/lang/String;Landroid/widget/ImageView;Lrh/c;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method static synthetic H0(Lcom/miui/applicationlock/ConfirmAccessControl;)I
    .locals 0

    iget p0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->K:I

    return p0
.end method

.method private H2(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->D:Lc3/d;

    invoke-virtual {v0}, Lc3/d;->i()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lc3/w;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->D:Lc3/d;

    invoke-virtual {v0}, Lc3/d;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lc3/w;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lz2/a0;

    invoke-direct {v0, p0}, Lz2/a0;-><init>(Lcom/miui/applicationlock/ConfirmAccessControl;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lz2/b0;

    invoke-direct {v0, p0}, Lz2/b0;-><init>(Lcom/miui/applicationlock/ConfirmAccessControl;)V

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic I0(Lcom/miui/applicationlock/ConfirmAccessControl;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->p0:Z

    return p0
.end method

.method private I1()Ljava/lang/String;
    .locals 1

    const-string v0, "access_control_lock_enabled"

    return-object v0
.end method

.method private I2(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v1, "ConfirmAccessControl"

    const/4 v2, 0x0

    const/16 v3, 0x21

    if-le v0, v3, :cond_0

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->s:Lmiui/security/SecurityManager;

    invoke-direct {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->J1()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lmiui/security/SecurityManager;->exemptTemporarily(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startActivityCompat: exemptTemporarily "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->J1()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->l:Landroid/content/Intent;

    iget v1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->L:I

    invoke-static {p1, v0, p2, v2, v1}, Lc3/f;->y0(Landroid/app/Activity;Landroid/content/Intent;Landroid/os/Bundle;ZI)V

    return-void

    :cond_0
    const-string v0, "ro.miui.remove_uri_80_flag"

    invoke-static {v0, v2}, Lmiuix/core/util/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    iget-object v4, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->l:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getFlags()I

    move-result v4

    and-int/2addr v4, v3

    if-eqz v4, :cond_2

    move v4, v3

    goto :goto_1

    :cond_2
    move v4, v2

    :goto_1
    const/4 v5, 0x2

    if-eqz v0, :cond_3

    if-eqz v4, :cond_3

    :try_start_0
    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->l:Landroid/content/Intent;

    const-class v4, Landroid/content/Intent;

    const-string v6, "addMiuiFlags"

    new-array v7, v3, [Ljava/lang/Class;

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v2

    invoke-static {v0, v4, v6, v7, v3}, Lbh/f;->b(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->l:Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    const-string v3, "addMiuiFlags exception: "

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->l:Landroid/content/Intent;

    iget v1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->L:I

    invoke-static {p1, v0, p2, v2, v1}, Lc3/f;->y0(Landroid/app/Activity;Landroid/content/Intent;Landroid/os/Bundle;ZI)V

    goto :goto_3

    :cond_3
    iget p1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->L:I

    invoke-static {p1}, Lx4/z1;->z(I)Landroid/os/UserHandle;

    move-result-object p1

    if-eqz v4, :cond_4

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->l:Landroid/content/Intent;

    const/high16 v4, -0x80000000

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_4
    :try_start_1
    const-string v0, "startActivityAsUser"

    const-class v4, Landroid/app/Activity;

    const/4 v6, 0x3

    new-array v7, v6, [Ljava/lang/Class;

    const-class v8, Landroid/content/Intent;

    aput-object v8, v7, v2

    const-class v8, Landroid/os/Bundle;

    aput-object v8, v7, v3

    const-class v8, Landroid/os/UserHandle;

    aput-object v8, v7, v5

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->l:Landroid/content/Intent;

    aput-object v8, v6, v2

    aput-object p2, v6, v3

    aput-object p1, v6, v5

    invoke-static {p0, v0, v4, v7, v6}, Lbh/f;->c(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception p1

    const-string p2, "startActivityCompat er: "

    invoke-static {v1, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3
    return-void
.end method

.method static synthetic J0(Lcom/miui/applicationlock/ConfirmAccessControl;)Z
    .locals 0

    invoke-direct {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->z1()Z

    move-result p0

    return p0
.end method

.method private J1()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->l:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->l:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->l:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private J2(I)V
    .locals 10

    const-string v0, "startActivityFromRecents"

    const-string v1, "ConfirmAccessControl"

    :try_start_0
    const-string v2, "android.app.ActivityTaskManager"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getService"

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v2, v3, v6, v5}, Lbh/f;->h(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x2

    new-array v7, v5, [Ljava/lang/Class;

    aput-object v3, v7, v4

    const-class v8, Landroid/os/Bundle;

    const/4 v9, 0x1

    aput-object v8, v7, v9

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v5, v4

    aput-object v6, v5, v9

    invoke-static {v2, v3, v0, v7, v5}, Lbh/f;->e(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startActivityFromRecents "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method static synthetic K0(Lcom/miui/applicationlock/ConfirmAccessControl;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->A:Z

    return p0
.end method

.method private K1()J
    .locals 8

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "applock_countDownTimer_deadline"

    const-wide/16 v4, 0x0

    invoke-static {v2, v3, v4, v5}, Lah/e;->c(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    cmp-long v6, v2, v0

    if-ltz v6, :cond_1

    const-wide/16 v6, 0x7530

    add-long/2addr v0, v6

    cmp-long v0, v2, v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getLockoutAttemptDeadline: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ConfirmAccessControl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v2

    :cond_1
    :goto_0
    return-wide v4
.end method

.method static synthetic L0(Lcom/miui/applicationlock/ConfirmAccessControl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->A:Z

    return p1
.end method

.method private L1()Landroid/graphics/Rect;
    .locals 3

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-static {p0, v0}, La8/a0;->o(Landroid/app/Activity;Landroid/graphics/Rect;)V

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v0, v2}, La8/a0;->j(Landroid/content/Context;IILjava/lang/String;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method static synthetic M0(Lcom/miui/applicationlock/ConfirmAccessControl;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->C1()V

    return-void
.end method

.method private M1(J)V
    .locals 10

    iget-boolean v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->A:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/miui/applicationlock/ConfirmAccessControl$p;->c:Lcom/miui/applicationlock/ConfirmAccessControl$p;

    invoke-direct {p0, v0}, Lcom/miui/applicationlock/ConfirmAccessControl;->S2(Lcom/miui/applicationlock/ConfirmAccessControl$p;)V

    invoke-direct {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->O2()V

    const-string v0, "ConfirmAccessControl"

    const-string v1, "unregisterFingerprint 6"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lx4/y;->i()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->Y:Lcom/miui/applicationlock/widget/PasswordUnlockMediator;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-boolean v1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->z:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->j0:Landroid/widget/ImageView;

    if-eqz v1, :cond_2

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->L2()V

    :cond_2
    iget-object v1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->c:Lcom/miui/applicationlock/widget/e;

    invoke-interface {v1}, Lcom/miui/applicationlock/widget/o;->f()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    new-instance v9, Lcom/miui/applicationlock/ConfirmAccessControl$k;

    sub-long v5, p1, v1

    const-wide/16 v7, 0x3e8

    move-object v3, v9

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/miui/applicationlock/ConfirmAccessControl$k;-><init>(Lcom/miui/applicationlock/ConfirmAccessControl;JJ)V

    iput-object v9, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->j:Landroid/os/CountDownTimer;

    iget-boolean p1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->A:Z

    if-nez p1, :cond_3

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->A:Z

    iget-object p2, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->Z:Landroid/widget/TextView;

    const v1, 0x7f120ccb

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(I)V

    const-string p2, "mCountdownTimer.start"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/miui/applicationlock/ConfirmAccessControl;->M2(Z)V

    iget-object p1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->j:Landroid/os/CountDownTimer;

    invoke-virtual {p1}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    :cond_3
    return-void
.end method

.method private M2(Z)V
    .locals 4

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->t0:Landroid/widget/TextView;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/16 v2, 0x8

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->Y:Lcom/miui/applicationlock/widget/PasswordUnlockMediator;

    const/4 v2, 0x4

    if-eqz p1, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->s0:Landroid/widget/TextView;

    if-eqz p1, :cond_2

    move v3, v1

    goto :goto_2

    :cond_2
    move v3, v2

    :goto_2
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->r0:Landroid/widget/TextView;

    if-eqz p1, :cond_3

    goto :goto_3

    :cond_3
    move v1, v2

    :goto_3
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method static synthetic N0(Lcom/miui/applicationlock/ConfirmAccessControl;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->R2()V

    return-void
.end method

.method private N1()V
    .locals 6

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->q:Ljava/lang/String;

    const-string v1, "com.android.settings"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->E2()V

    goto :goto_2

    :cond_0
    iget v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->K:I

    const v2, 0x7f120fc5

    if-nez v0, :cond_2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-static {}, Lx4/t;->h()I

    move-result v3

    const/16 v4, 0xa

    if-lt v3, v4, :cond_1

    const-string v3, "com.android.settings.SubSettings"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, ":android:show_fragment"

    const-string v3, "com.android.settings.MiuiMasterClear"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_1
    const-string v3, "com.android.settings.Settings$PrivacySettingsActivity"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f120fc6

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/16 v3, -0x2710

    const/4 v4, 0x0

    const-string v5, "second_user_id"

    invoke-static {v1, v5, v3, v4}, La8/c0;->h(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-ne v0, v1, :cond_3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "miui.intent.action.PRIVATE_SPACE_SETTING"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f120fd3

    :goto_1
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0, v2}, Lcom/miui/applicationlock/ConfirmAccessControl;->F1(Ljava/lang/String;Landroid/content/Intent;I)V

    :cond_3
    :goto_2
    return-void
.end method

.method private N2()V
    .locals 8

    const-string v0, "ConfirmAccessControl"

    iget-boolean v1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->B0:Z

    if-nez v1, :cond_0

    return-void

    :cond_0
    :try_start_0
    const-string v1, "android.app.ActivityTaskManager"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getService"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v1, v2, v5, v4}, Lbh/f;->h(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "unregisterTaskStackListener"

    const/4 v4, 0x1

    new-array v6, v4, [Ljava/lang/Class;

    const-string v7, "android.app.ITaskStackListener"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    aput-object v7, v6, v3

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->C0:Lcom/miui/applicationlock/ConfirmAccessControl$m;

    aput-object v7, v4, v3

    invoke-static {v1, v5, v2, v6, v4}, Lbh/f;->e(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    iput-boolean v3, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->B0:Z

    const-string v1, "unRegisterTaskChangeList"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unregisterTaskChangeListener exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method static synthetic O0(Lcom/miui/applicationlock/ConfirmAccessControl;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->k0:Z

    return p0
.end method

.method private O1()V
    .locals 2

    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "laurel_sprout"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "laurus"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    invoke-static {}, Lx4/a0;->t()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x1202

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_2
    return-void
.end method

.method private O2()V
    .locals 2

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->H:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->F:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    iget-boolean v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->w:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->w:Z

    const-string v0, "ConfirmAccessControl"

    const-string v1, "unregisterFingerprint"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sput-wide v0, Lcom/miui/applicationlock/ConfirmAccessControl;->H0:J

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->t:Lc3/n;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lc3/n;->d()V

    :cond_1
    return-void
.end method

.method static synthetic P0(Lcom/miui/applicationlock/ConfirmAccessControl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->k0:Z

    return p1
.end method

.method private P1()V
    .locals 2

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->d:Landroid/widget/TextView;

    const v1, 0x7f12006c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->W:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc3/f;->c0(Landroid/view/accessibility/AccessibilityManager;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->Z:Landroid/widget/TextView;

    const v1, 0x7f12017a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->t:Lc3/n;

    invoke-virtual {v0}, Lc3/n;->d()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/miui/applicationlock/ConfirmAccessControl;->M2(Z)V

    return-void
.end method

.method private P2()V
    .locals 5

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->N:Landroid/content/res/Resources;

    const v1, 0x7f07097a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    iget-object v2, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->N:Landroid/content/res/Resources;

    iget-boolean v3, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->n0:Z

    if-eqz v3, :cond_0

    const v3, 0x7f070192

    goto :goto_0

    :cond_0
    const v3, 0x7f070193

    :goto_0
    const/4 v4, 0x1

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    new-instance v2, Landroidx/constraintlayout/widget/d;

    const v3, 0x7f0b03e5

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {v2, v3}, Landroidx/constraintlayout/widget/d;-><init>(Landroid/view/View;)V

    invoke-virtual {v1}, Landroid/util/TypedValue;->getFloat()F

    move-result v1

    invoke-virtual {v2, v1}, Landroidx/constraintlayout/widget/d;->d(F)Landroidx/constraintlayout/widget/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/constraintlayout/widget/d;->b(I)Landroidx/constraintlayout/widget/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/constraintlayout/widget/d;->c(I)Landroidx/constraintlayout/widget/d;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/constraintlayout/widget/d;->a()V

    return-void
.end method

.method static synthetic Q0(Lcom/miui/applicationlock/ConfirmAccessControl;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->A2()V

    return-void
.end method

.method private Q1()V
    .locals 1

    const v0, 0x7f0b018c

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->r0:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private Q2(I)V
    .locals 2

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->h:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Lx4/y;->k()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/miui/applicationlock/ConfirmAccessControl;->G1(Landroid/content/res/Configuration;)I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_3

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->i:Landroid/view/View;

    :goto_1
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_3
    iget-object p1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->i:Landroid/view/View;

    const/16 v0, 0x8

    goto :goto_1
.end method

.method static synthetic R0(Lcom/miui/applicationlock/ConfirmAccessControl;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->y:Z

    return p0
.end method

.method private R1()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initFingerAndHeaderText isTimerStart = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->A:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",isOpenFingerprint = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->y:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isRegisterFingerprint = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->w:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ConfirmAccessControl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->A:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->Z:Landroid/widget/TextView;

    const v1, 0x7f120ccb

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->y:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->Z:Landroid/widget/TextView;

    const v1, 0x7f12017c

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->P:I

    iget-object v1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->Z:Landroid/widget/TextView;

    const v2, 0x7f12017a

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->Y:Lcom/miui/applicationlock/widget/PasswordUnlockMediator;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-static {p0}, Lc3/f;->H(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->d:Landroid/widget/TextView;

    const v1, 0x7f12006c

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method private R2()V
    .locals 5

    iget-boolean v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->n0:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->a2()Z

    move-result v0

    invoke-direct {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->Z1()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v3, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->j0:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v3, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->d:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->d:Landroid/widget/TextView;

    const v4, 0x7f12084a

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fingerEnable "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " faceUnLockEnable "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ConfirmAccessControl"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    iget-object v3, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->Z:Landroid/widget/TextView;

    const v4, 0x7f120860

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->Z:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    const v4, 0x7f120862

    :goto_0
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    :cond_3
    if-eqz v1, :cond_4

    const v4, 0x7f120846

    goto :goto_0

    :cond_4
    const v4, 0x7f120fd2

    goto :goto_0

    :goto_1
    if-nez v0, :cond_5

    if-nez v1, :cond_5

    const/4 v2, 0x1

    :cond_5
    invoke-direct {p0, v2}, Lcom/miui/applicationlock/ConfirmAccessControl;->M2(Z)V

    return-void
.end method

.method static synthetic S0(Lcom/miui/applicationlock/ConfirmAccessControl;)Z
    .locals 0

    invoke-direct {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->c2()Z

    move-result p0

    return p0
.end method

.method private S1()V
    .locals 9

    iget-object v0, p0, Lcom/miui/common/base/BaseActivity;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lc3/f;->v(Landroid/content/Context;)[I

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "finger location\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    aget v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    aget v4, v0, v3

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x2

    aget v5, v0, v4

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x3

    aget v5, v0, v2

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v5, "ConfirmAccessControl"

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    aget v1, v0, v2

    if-lez v1, :cond_2

    invoke-direct {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->c2()Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lx4/t;->j(Landroid/app/Activity;)I

    move-result v6

    int-to-float v6, v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "initLockFingerLocation: screenHeight = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    aget v7, v0, v3

    int-to-float v7, v7

    aget v2, v0, v2

    int-to-float v2, v2

    sub-float v2, v6, v2

    div-float/2addr v7, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "top = "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v3, v0, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", screenHeight = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ",bottomBias = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, v7, v2

    if-ltz v2, :cond_1

    const v7, 0x3f666666    # 0.9f

    :cond_1
    new-instance v2, Landroidx/constraintlayout/widget/d;

    const v3, 0x7f0b03e5

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {v2, v3}, Landroidx/constraintlayout/widget/d;-><init>(Landroid/view/View;)V

    invoke-virtual {v2, v7}, Landroidx/constraintlayout/widget/d;->d(F)Landroidx/constraintlayout/widget/d;

    move-result-object v2

    aget v0, v0, v4

    invoke-virtual {v2, v0}, Landroidx/constraintlayout/widget/d;->c(I)Landroidx/constraintlayout/widget/d;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/d;->b(I)Landroidx/constraintlayout/widget/d;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/constraintlayout/widget/d;->a()V

    :cond_2
    :goto_0
    return-void
.end method

.method private S2(Lcom/miui/applicationlock/ConfirmAccessControl$p;)V
    .locals 4

    sget-object v0, Lcom/miui/applicationlock/ConfirmAccessControl$b;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x5

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p1, v2, :cond_3

    const/4 v3, 0x2

    if-eq p1, v3, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object p1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->c:Lcom/miui/applicationlock/widget/e;

    invoke-interface {p1}, Lcom/miui/applicationlock/widget/o;->f()V

    iget-object p1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->c:Lcom/miui/applicationlock/widget/e;

    invoke-virtual {p1, v1}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_2

    :cond_1
    iget-object p1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->p:Ljava/lang/CharSequence;

    if-eqz p1, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mHeaderWrongText = "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->p:Ljava/lang/CharSequence;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v3, "ConfirmAccessControl"

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->d:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->p:Ljava/lang/CharSequence;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->d:Landroid/widget/TextView;

    const v3, 0x7f120cc1

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    iget-object p1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->c:Lcom/miui/applicationlock/widget/e;

    sget-object v3, Lcom/miui/applicationlock/widget/LockPatternView$c;->c:Lcom/miui/applicationlock/widget/LockPatternView$c;

    invoke-virtual {p1, v3}, Lcom/miui/applicationlock/widget/e;->setDisplayMode(Lcom/miui/applicationlock/widget/LockPatternView$c;)V

    iget-object p1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->c:Lcom/miui/applicationlock/widget/e;

    invoke-virtual {p1, v2}, Landroid/view/View;->setEnabled(Z)V

    iget-object p1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->c:Lcom/miui/applicationlock/widget/e;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/miui/applicationlock/ConfirmAccessControl;->G1(Landroid/content/res/Configuration;)I

    move-result v3

    if-ne v3, v0, :cond_4

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->c:Lcom/miui/applicationlock/widget/e;

    invoke-virtual {p1, v2}, Landroid/view/View;->setEnabled(Z)V

    iget-object p1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->c:Lcom/miui/applicationlock/widget/e;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/miui/applicationlock/ConfirmAccessControl;->G1(Landroid/content/res/Configuration;)I

    move-result v3

    if-ne v3, v0, :cond_4

    :goto_1
    move v1, v2

    :cond_4
    invoke-interface {p1, v1}, Lcom/miui/applicationlock/widget/o;->e(Z)V

    :goto_2
    iget-object p1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->d:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic T0(Lcom/miui/applicationlock/ConfirmAccessControl;)Lcom/miui/applicationlock/widget/PasswordUnlockMediator;
    .locals 0

    iget-object p0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->Y:Lcom/miui/applicationlock/widget/PasswordUnlockMediator;

    return-object p0
.end method

.method private T1()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ResourceType"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initTinyScreen = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->n0:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ConfirmAccessControl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->n0:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->i:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0b0ac4

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->u1()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lz2/y;

    invoke-direct {v1, p0}, Lz2/y;-><init>(Lcom/miui/applicationlock/ConfirmAccessControl;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    :cond_1
    invoke-direct {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->P2()V

    return-void
.end method

.method private T2()V
    .locals 4

    iget-boolean v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->C:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->N:Landroid/content/res/Resources;

    const v1, 0x7f060e05

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->N:Landroid/content/res/Resources;

    const v1, 0x7f060e04

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->g0:I

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->c:Lcom/miui/applicationlock/widget/e;

    iget-boolean v1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->C:Z

    invoke-virtual {v0, v1}, Lcom/miui/applicationlock/widget/e;->setLightMode(Z)V

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->j0:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->C:Z

    if-eqz v1, :cond_1

    const v1, 0x7f0805c2

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_1
    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->U:Ljava/lang/String;

    const-string v1, "numeric"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->V:Lcom/miui/applicationlock/widget/MiuiNumericInputView;

    iget-boolean v1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->C:Z

    invoke-virtual {v0, v1}, Lcom/miui/applicationlock/widget/MiuiNumericInputView;->f(Z)V

    :cond_2
    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->c:Lcom/miui/applicationlock/widget/e;

    invoke-interface {v0}, Lcom/miui/applicationlock/widget/o;->g()V

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->c:Lcom/miui/applicationlock/widget/e;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/applicationlock/widget/e;->setAppPage(Z)V

    iget-boolean v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->C:Z

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-static {v0, v2}, Lc3/f;->s0(ZLandroid/view/Window;)V

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->d:Landroid/widget/TextView;

    iget v2, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->g0:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->U:Ljava/lang/String;

    const-string v2, "mixed"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->T:Landroid/widget/EditText;

    iget v2, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->g0:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->T:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0600c7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setHintTextColor(I)V

    :cond_3
    iget-boolean v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->O:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->y0:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->C:Z

    invoke-direct {p0, v0, v1}, Lcom/miui/applicationlock/ConfirmAccessControl;->C2(ZZ)V

    :cond_4
    return-void
.end method

.method static synthetic U0(Lcom/miui/applicationlock/ConfirmAccessControl;)Landroid/view/WindowManager;
    .locals 0

    iget-object p0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->v0:Landroid/view/WindowManager;

    return-object p0
.end method

.method private U1()V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    const v0, 0x7f0b0723

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->Z:Landroid/widget/TextView;

    const v0, 0x7f0b00ea

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->b:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v0, 0x7f0b048b

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/applicationlock/widget/PhoneGLSurfaceView;

    iput-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->q0:Lcom/miui/applicationlock/widget/PhoneGLSurfaceView;

    const v0, 0x7f0b0538

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->g:Landroid/widget/ImageView;

    const v0, 0x7f0b0c74

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->s0:Landroid/widget/TextView;

    const-string v0, "security"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/security/SecurityManager;

    iput-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->s:Lmiui/security/SecurityManager;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lc3/d;->j(Landroid/content/Context;)Lc3/d;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->D:Lc3/d;

    invoke-static {p0}, Lc3/n;->g(Landroid/content/Context;)Lc3/n;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->t:Lc3/n;

    const-string v0, "keyguard"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->J:Landroid/app/KeyguardManager;

    const-string v0, "accessibility"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->W:Landroid/view/accessibility/AccessibilityManager;

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->s:Lmiui/security/SecurityManager;

    invoke-virtual {v0}, Lmiui/security/SecurityManager;->getAccessControlPasswordType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->U:Ljava/lang/String;

    const v0, 0x7f0b0862

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/applicationlock/widget/PasswordUnlockMediator;

    iput-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->Y:Lcom/miui/applicationlock/widget/PasswordUnlockMediator;

    const v0, 0x7f0b03cf

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->j0:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0805c3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->j0:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->U:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "pattern"

    iput-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->U:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->s0:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/miui/applicationlock/ConfirmAccessControl;->H2(Landroid/view/View;)V

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->Y:Lcom/miui/applicationlock/widget/PasswordUnlockMediator;

    iget-object v1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->U:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/miui/applicationlock/widget/PasswordUnlockMediator;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->Y:Lcom/miui/applicationlock/widget/PasswordUnlockMediator;

    invoke-virtual {v0}, Lcom/miui/applicationlock/widget/PasswordUnlockMediator;->getUnlockView()Lcom/miui/applicationlock/widget/e;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->c:Lcom/miui/applicationlock/widget/e;

    const v0, 0x7f0b071e

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->d:Landroid/widget/TextView;

    const v0, 0x7f0b0866

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->t0:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->N:Landroid/content/res/Resources;

    const v1, 0x7f060e04

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroidx/core/content/res/g;->d(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v0

    iput v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->g0:I

    iget-boolean v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->Q:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->c:Lcom/miui/applicationlock/widget/e;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/miui/applicationlock/widget/e;->setLightMode(Z)V

    :cond_1
    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->s0:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->s0:Landroid/widget/TextView;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->U:Ljava/lang/String;

    const-string v4, "numeric"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->c:Lcom/miui/applicationlock/widget/e;

    const v4, 0x7f0b082a

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/applicationlock/widget/MiuiNumericInputView;

    iput-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->V:Lcom/miui/applicationlock/widget/MiuiNumericInputView;

    :cond_2
    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->U:Ljava/lang/String;

    const-string v4, "mixed"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->c:Lcom/miui/applicationlock/widget/e;

    const v5, 0x7f0b0789

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->T:Landroid/widget/EditText;

    :cond_3
    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->c:Lcom/miui/applicationlock/widget/e;

    iget-object v5, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->E0:Lc3/g;

    invoke-virtual {v0, v5}, Lcom/miui/applicationlock/widget/e;->setApplockUnlockCallback(Lc3/g;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lx4/v;->j(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->K:I

    invoke-static {}, Lxg/a;->b()Lxg/a;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->o:Lxg/a;

    invoke-direct {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->I1()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    new-instance v0, Lcom/miui/applicationlock/ConfirmAccessControl$g;

    invoke-direct {v0, p0, v2}, Lcom/miui/applicationlock/ConfirmAccessControl$g;-><init>(Lcom/miui/applicationlock/ConfirmAccessControl;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->k:Landroid/database/ContentObserver;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->I1()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v5, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->k:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2, v3, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_4
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "miui.intent.action.APP_LOCK_CLEAR_STATE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->D0:Landroid/content/BroadcastReceiver;

    const/4 v5, 0x2

    invoke-static {p0, v2, v0, v5}, Lx4/v;->m(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    iput-boolean v3, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->X:Z

    iget-boolean v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->Q:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->U:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->T:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->N:Landroid/content/res/Resources;

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->T:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->N:Landroid/content/res/Resources;

    const v2, 0x7f0600c7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHintTextColor(I)V

    :cond_5
    invoke-direct {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->W1()V

    invoke-direct {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->T1()V

    return-void
.end method

.method static synthetic V0(Lcom/miui/applicationlock/ConfirmAccessControl;)I
    .locals 0

    iget p0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->u0:I

    return p0
.end method

.method private V1()V
    .locals 8

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->s:Lmiui/security/SecurityManager;

    const-string v1, "com.xiaomi.account"

    invoke-static {v0, v1}, Lc3/f;->d(Lmiui/security/SecurityManager;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->s:Lmiui/security/SecurityManager;

    invoke-static {v0, v1}, Lc3/f;->D0(Lmiui/security/SecurityManager;Ljava/lang/String;)V

    :cond_0
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "androidPackageName"

    invoke-virtual {v4, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lc3/f;->q(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v3

    new-instance v6, Lz2/x;

    invoke-direct {v6, p0}, Lz2/x;-><init>(Lcom/miui/applicationlock/ConfirmAccessControl;)V

    const/4 v7, 0x0

    move-object v5, p0

    invoke-virtual/range {v2 .. v7}, Landroid/accounts/AccountManager;->confirmCredentials(Landroid/accounts/Account;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    return-void
.end method

.method static synthetic W0(Lcom/miui/applicationlock/ConfirmAccessControl;I)I
    .locals 0

    iput p1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->u0:I

    return p1
.end method

.method private W1()V
    .locals 4

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lc3/m;->n(Landroid/content/Context;)Lc3/m;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->i0:Lc3/m;

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->D:Lc3/d;

    invoke-virtual {v0}, Lc3/d;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->i0:Lc3/m;

    invoke-virtual {v0}, Lc3/m;->C()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->i0:Lc3/m;

    invoke-virtual {v0}, Lc3/m;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->K1()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->z:Z

    return-void
.end method

.method static synthetic X0(Lcom/miui/applicationlock/ConfirmAccessControl;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/applicationlock/ConfirmAccessControl;->Q2(I)V

    return-void
.end method

.method private X1()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->d2()Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->y:Z

    invoke-direct {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->R1()V

    return-void
.end method

.method static synthetic Y0(Lcom/miui/applicationlock/ConfirmAccessControl;)Landroid/widget/Button;
    .locals 0

    iget-object p0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->f0:Landroid/widget/Button;

    return-object p0
.end method

.method private Y1()Z
    .locals 5

    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v0, :cond_2

    iget-object v3, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-eqz v3, :cond_2

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x20

    if-lt v3, v4, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "topTask.topActivity.getClassName() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ConfirmAccessControl"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/app/ActivityManager$RunningTaskInfo;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :cond_1
    :goto_0
    return v1

    :cond_2
    return v2
.end method

.method static synthetic Z0(Lcom/miui/applicationlock/ConfirmAccessControl;ILjava/lang/String;)F
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/applicationlock/ConfirmAccessControl;->x1(ILjava/lang/String;)F

    move-result p0

    return p0
.end method

.method private Z1()Z
    .locals 3

    invoke-static {p0}, Lc3/f;->H(Landroid/content/Context;)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isFaceUnLockEnable: wrongFingerCount"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " isOpenFaceUnlock "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->z:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " isFaceUnlockConversion "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->k0:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "wrongFingerCount "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mNumWrongConfirmAttempts "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->v:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ConfirmAccessControl"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->z:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->k0:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->G:Z

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_1

    iget v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->v:I

    if-ge v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic a1(Lcom/miui/applicationlock/ConfirmAccessControl;)Lcom/miui/applicationlock/widget/PhoneGLSurfaceView;
    .locals 0

    iget-object p0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->q0:Lcom/miui/applicationlock/widget/PhoneGLSurfaceView;

    return-object p0
.end method

.method private a2()Z
    .locals 6

    invoke-static {p0}, Lc3/f;->H(Landroid/content/Context;)I

    move-result v0

    invoke-direct {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->c2()Z

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isFingerUnLockEnable: isOpenFingerprint "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->y:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " wrongFingerCount"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " isRealInMultiWindow "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " getLockoutAttemptDeadline() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->K1()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "DeviceInfo.isFodFingerprint() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lx4/y;->i()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " isOpenFingerprint "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->y:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "isRealInMultiWindow "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ConfirmAccessControl"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v2, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->y:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x5

    if-eq v0, v2, :cond_1

    iget v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->v:I

    if-ge v0, v2, :cond_1

    invoke-direct {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->K1()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    invoke-static {}, Lx4/y;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->y:Z

    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic b1(Lcom/miui/applicationlock/ConfirmAccessControl;Landroid/content/res/Configuration;)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/applicationlock/ConfirmAccessControl;->G1(Landroid/content/res/Configuration;)I

    move-result p0

    return p0
.end method

.method private b2(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/ActivityManager;->getLockTaskModeState()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method static synthetic c1(Lcom/miui/applicationlock/ConfirmAccessControl;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->O:Z

    return p0
.end method

.method private c2()Z
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_0

    const-string v1, "isInMultiWindowMode"

    const-class v2, Landroid/app/Activity;

    const/4 v3, 0x0

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {p0, v1, v2, v3, v4}, Lbh/f;->c(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :catch_0
    move-exception v1

    const-string v2, "ConfirmAccessControl"

    const-string v3, "isRealInMultiWindow"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method public static synthetic d0(Lcom/miui/applicationlock/ConfirmAccessControl;Landroid/content/Intent;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/applicationlock/ConfirmAccessControl;->k2(Landroid/content/Intent;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method static synthetic d1(Lcom/miui/applicationlock/ConfirmAccessControl;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/applicationlock/ConfirmAccessControl;->C2(ZZ)V

    return-void
.end method

.method private d2()Z
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " getCurrentWindowMode(getResources().getConfiguration()) "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/miui/applicationlock/ConfirmAccessControl;->G1(Landroid/content/res/Configuration;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ConfirmAccessControl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lc3/f;->H(Landroid/content/Context;)I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x5

    if-ge v0, v3, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/applicationlock/ConfirmAccessControl;->G1(Landroid/content/res/Configuration;)I

    move-result v0

    const/4 v3, 0x6

    if-ne v0, v3, :cond_0

    invoke-virtual {p0}, Lcom/miui/common/base/BaseActivity;->isTabletSpitModel()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->t:Lc3/n;

    invoke-virtual {v0}, Lc3/n;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->t:Lc3/n;

    invoke-virtual {v0}, Lc3/n;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->D:Lc3/d;

    invoke-virtual {v0}, Lc3/d;->s()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/miui/applicationlock/TransitionHelper;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    move v2, v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " mFingerprintHelper.isHardwareDetectedAppLock() "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->t:Lc3/n;

    invoke-virtual {v3}, Lc3/n;->i()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " mFingerprintHelper.hasEnrolledFingerprintsAppLock() "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->t:Lc3/n;

    invoke-virtual {v3}, Lc3/n;->h()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " mAppLockManager.isFingerprintEnable() "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->D:Lc3/d;

    invoke-virtual {v3}, Lc3/d;->s()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " TransitionHelper.isScreenLockOpen(this) "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/miui/applicationlock/TransitionHelper;->b(Landroid/content/Context;)Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v2
.end method

.method public static synthetic e0(Lcom/miui/applicationlock/ConfirmAccessControl;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->t2()V

    return-void
.end method

.method static synthetic e1(Lcom/miui/applicationlock/ConfirmAccessControl;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->Z:Landroid/widget/TextView;

    return-object p0
.end method

.method private synthetic e2(Landroid/content/DialogInterface;I)V
    .locals 3

    const-string p2, "one_key_lock_dialog"

    const/16 v0, 0x107

    invoke-static {p2, v0}, Lc3/f;->m(Ljava/lang/String;I)V

    check-cast p1, Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog;->isChecked()Z

    move-result p1

    const-string p2, "one_key_lock_notify_dialog"

    invoke-static {p1, p2, v0}, Lc3/f;->n(ZLjava/lang/String;I)V

    new-instance p1, Landroid/content/Intent;

    const-class p2, Lcom/miui/applicationlock/ConfirmAccessControl;

    invoke-direct {p1, p0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p2, "extra_data"

    const-string v1, "HappyCodingMain"

    invoke-virtual {p1, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "checkAccess_to_uncheck"

    const/4 v1, 0x1

    invoke-virtual {p1, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt p2, v2, :cond_0

    iget-boolean p2, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->O:Z

    if-eqz p2, :cond_0

    const/high16 p2, 0x10000000

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/miui/common/base/BaseActivity;->startActivityForResult(Landroid/content/Intent;I)V

    iput-boolean v1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->R:Z

    return-void
.end method

.method public static synthetic f0(Lcom/miui/applicationlock/ConfirmAccessControl;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->o2()V

    return-void
.end method

.method static synthetic f1(Lcom/miui/applicationlock/ConfirmAccessControl;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->D1()V

    return-void
.end method

.method private synthetic f2(Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->O2()V

    return-void
.end method

.method public static synthetic g0(Lcom/miui/applicationlock/ConfirmAccessControl;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/applicationlock/ConfirmAccessControl;->f2(Landroid/content/DialogInterface;)V

    return-void
.end method

.method static synthetic g1(Lcom/miui/applicationlock/ConfirmAccessControl;Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/applicationlock/ConfirmAccessControl;->I2(Landroid/app/Activity;Landroid/os/Bundle;)V

    return-void
.end method

.method private synthetic g2(Landroid/content/DialogInterface;)V
    .locals 1

    iget-boolean p1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->S:Z

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->C:Z

    invoke-virtual {p0}, Landroid/app/Activity;->hasWindowFocus()Z

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/miui/applicationlock/ConfirmAccessControl;->C2(ZZ)V

    :cond_0
    return-void
.end method

.method public static synthetic h0(Lcom/miui/applicationlock/ConfirmAccessControl;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/applicationlock/ConfirmAccessControl;->h2(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method static synthetic h1(Lcom/miui/applicationlock/ConfirmAccessControl;)J
    .locals 2

    invoke-direct {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->K1()J

    move-result-wide v0

    return-wide v0
.end method

.method private synthetic h2(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object p2, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->D:Lc3/d;

    check-cast p1, Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog;->isChecked()Z

    move-result v0

    invoke-virtual {p2, v0}, Lc3/d;->E(Z)V

    const-string p2, "cancel_dialog"

    const/16 v0, 0x107

    invoke-static {p2, v0}, Lc3/f;->m(Ljava/lang/String;I)V

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog;->isChecked()Z

    move-result p1

    const-string p2, "cancel_notify_dialog"

    invoke-static {p1, p2, v0}, Lc3/f;->n(ZLjava/lang/String;I)V

    iget-object p1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->D:Lc3/d;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lc3/d;->d(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic i0(Lcom/miui/applicationlock/ConfirmAccessControl;Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/applicationlock/ConfirmAccessControl;->m2(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method

.method static synthetic i1(Lcom/miui/applicationlock/ConfirmAccessControl;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/applicationlock/ConfirmAccessControl;->m1(Z)V

    return-void
.end method

.method private static synthetic i2(Landroid/view/Window;Landroid/animation/ValueAnimator;)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    invoke-virtual {p0, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public static synthetic j0(Lcom/miui/applicationlock/ConfirmAccessControl;Landroid/accounts/AccountManagerFuture;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/applicationlock/ConfirmAccessControl;->n2(Landroid/accounts/AccountManagerFuture;)V

    return-void
.end method

.method static synthetic j1(Lcom/miui/applicationlock/ConfirmAccessControl;)Lc3/n;
    .locals 0

    iget-object p0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->t:Lc3/n;

    return-object p0
.end method

.method private static synthetic j2(Landroid/content/DialogInterface;I)V
    .locals 0

    return-void
.end method

.method public static synthetic k0(Lcom/miui/applicationlock/ConfirmAccessControl;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/applicationlock/ConfirmAccessControl;->q2(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method static synthetic k1(Lcom/miui/applicationlock/ConfirmAccessControl;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->F2()V

    return-void
.end method

.method private synthetic k2(Landroid/content/Intent;Landroid/content/DialogInterface;I)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p2, 0x1

    :try_start_0
    iput-boolean p2, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->S:Z

    const/16 p2, 0x106

    invoke-virtual {p0, p1, p2}, Lcom/miui/common/base/BaseActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "ConfirmAccessControl"

    const-string p2, "can not apply action"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public static synthetic l0(Lcom/miui/applicationlock/ConfirmAccessControl;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/applicationlock/ConfirmAccessControl;->r2(Landroid/view/View;)V

    return-void
.end method

.method static synthetic l1(Lcom/miui/applicationlock/ConfirmAccessControl;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->P1()V

    return-void
.end method

.method private synthetic l2(Landroid/content/DialogInterface;)V
    .locals 1

    iget-boolean p1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->S:Z

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->C:Z

    invoke-virtual {p0}, Landroid/app/Activity;->hasWindowFocus()Z

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/miui/applicationlock/ConfirmAccessControl;->C2(ZZ)V

    :cond_0
    return-void
.end method

.method public static synthetic m0(Landroid/view/Window;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/applicationlock/ConfirmAccessControl;->i2(Landroid/view/Window;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method private m1(Z)V
    .locals 10

    iget-boolean v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->r:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->d:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->d:Landroid/widget/TextView;

    const v2, 0x7f120068

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->W:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lc3/f;->c0(Landroid/view/accessibility/AccessibilityManager;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x1

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->r:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->D:Lc3/d;

    invoke-virtual {p1}, Lc3/d;->h()I

    move-result p1

    if-ne p1, v0, :cond_1

    invoke-static {}, Lc3/f;->y()I

    move-result p1

    const/4 v2, 0x3

    if-ge p1, v2, :cond_1

    const v2, 0x7f1200cd

    invoke-static {p0, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    add-int/2addr p1, v0

    invoke-static {p1}, Lc3/f;->l0(I)V

    :cond_1
    iget-boolean p1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->y:Z

    const/4 v2, 0x5

    if-nez p1, :cond_2

    invoke-static {p0}, Lc3/f;->H(Landroid/content/Context;)I

    move-result p1

    if-lt p1, v2, :cond_3

    :cond_2
    invoke-static {p0, v0}, Lc3/f;->j0(Landroid/content/Context;Z)V

    :cond_3
    iget-boolean p1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->z:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->i0:Lc3/m;

    invoke-virtual {p1}, Lc3/m;->A()V

    :cond_4
    iget-object p1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->q:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_6

    iget p1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->E:I

    const/16 v3, 0x3e7

    if-ne p1, v3, :cond_5

    iget-object p1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->s:Lmiui/security/SecurityManager;

    iget-object v4, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->q:Ljava/lang/String;

    invoke-virtual {p1, v4, v3}, Lmiui/security/SecurityManager;->addAccessControlPassForUser(Ljava/lang/String;I)V

    goto :goto_0

    :cond_5
    iget-object p1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->s:Lmiui/security/SecurityManager;

    iget-object v3, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->q:Ljava/lang/String;

    invoke-virtual {p1, v3}, Lmiui/security/SecurityManager;->addAccessControlPass(Ljava/lang/String;)V

    :cond_6
    :goto_0
    iget-object p1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->t:Lc3/n;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lc3/n;->d()V

    :cond_7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mIntent != null  = "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->l:Landroid/content/Intent;

    if-eqz v3, :cond_8

    move v3, v0

    goto :goto_1

    :cond_8
    move v3, v1

    :goto_1
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " isActive = "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Laf/a;->a(Landroid/app/Activity;)Z

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v3, "ConfirmAccessControl"

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->l:Landroid/content/Intent;

    if-eqz p1, :cond_e

    invoke-static {p0}, Laf/a;->a(Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_e

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x19

    if-le p1, v4, :cond_9

    iget-object v4, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->m:Landroid/app/ActivityOptions;

    invoke-static {v4}, Lc3/f;->M(Landroid/app/ActivityOptions;)Z

    move-result v4

    if-eqz v4, :cond_9

    move v4, v0

    goto :goto_2

    :cond_9
    move v4, v1

    :goto_2
    iput-boolean v4, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->m0:Z

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->m:Landroid/app/ActivityOptions;

    goto :goto_3

    :cond_a
    const v4, 0x7f010012

    const v5, 0x7f010013

    invoke-static {p0, v4, v5}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v4

    :goto_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "accessLockPattern options: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    new-array v5, v0, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v1

    const-class v6, Landroid/app/ActivityOptions;

    const-string v7, "setLaunchWindowingMode"

    new-array v8, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/miui/applicationlock/ConfirmAccessControl;->G1(Landroid/content/res/Configuration;)I

    move-result v9

    if-ne v9, v2, :cond_b

    move v9, v2

    goto :goto_4

    :cond_b
    move v9, v0

    :goto_4
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v1

    invoke-static {v6, v4, v7, v5, v8}, Lbh/f;->a(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/miui/applicationlock/ConfirmAccessControl;->G1(Landroid/content/res/Configuration;)I

    move-result v5

    if-ne v5, v2, :cond_c

    const/16 v2, 0x1e

    if-le p1, v2, :cond_c

    invoke-direct {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->L1()Landroid/graphics/Rect;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->n:Landroid/graphics/Rect;

    invoke-static {v4, p1}, Lz2/l;->a(Landroid/app/ActivityOptions;Landroid/graphics/Rect;)Landroid/app/ActivityOptions;

    :cond_c
    const-string p1, "getActivityOptionsInjector"

    const/4 v2, 0x0

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v4, p1, v2, v5}, Lbh/f;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v2, "setFreeformScale"

    new-array v5, v0, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v1

    new-array v6, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, La8/a0;->p(Landroid/content/Context;Ljava/lang/String;)F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-static {p1, v2, v5, v6}, Lbh/f;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "accessLockPattern: e = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    invoke-virtual {v4}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p1

    invoke-static {}, Lc3/f;->l()V

    :try_start_1
    iget-boolean v2, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->m0:Z

    if-eqz v2, :cond_d

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x21

    if-gt v2, v4, :cond_d

    iget-object v2, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->F:Landroid/os/Handler;

    new-instance v4, Lcom/miui/applicationlock/ConfirmAccessControl$a;

    invoke-direct {v4, p0, p1}, Lcom/miui/applicationlock/ConfirmAccessControl$a;-><init>(Lcom/miui/applicationlock/ConfirmAccessControl;Landroid/os/Bundle;)V

    const-wide/16 v5, 0xc8

    invoke-virtual {v2, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_6

    :cond_d
    invoke-direct {p0, p0, p1}, Lcom/miui/applicationlock/ConfirmAccessControl;->I2(Landroid/app/Activity;Landroid/os/Bundle;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_6
    invoke-static {}, Lc3/f;->p()V

    goto :goto_8

    :catchall_0
    move-exception p1

    goto :goto_7

    :catch_1
    move-exception p1

    :try_start_2
    const-string v2, "start other app failed"

    invoke-static {v3, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {p1}, Lcom/miui/analytics/AnalyticsUtil;->trackException(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_6

    :goto_7
    invoke-static {}, Lc3/f;->p()V

    throw p1

    :cond_e
    :goto_8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mTaskId"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->A0:I

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v4, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {v4, v5, p1}, Lc3/f;->m0(JLandroid/content/Context;)V

    iget-boolean p1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->r:Z

    const-wide/16 v4, 0x12c

    const/4 v2, -0x1

    if-eqz p1, :cond_f

    iget-object p1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->l:Landroid/content/Intent;

    if-eqz p1, :cond_f

    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result p1

    and-int/2addr p1, v0

    if-ne p1, v0, :cond_f

    iget-object p1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->F:Landroid/os/Handler;

    new-instance v0, Lz2/c0;

    invoke-direct {v0, p0}, Lz2/c0;-><init>(Lcom/miui/applicationlock/ConfirmAccessControl;)V

    :goto_9
    invoke-virtual {p1, v0, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_b

    :cond_f
    iget-boolean p1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->r:Z

    if-nez p1, :cond_11

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v6, "checkAccess_to_uncheck"

    invoke-virtual {p1, v6, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_10

    new-instance p1, Landroid/content/Intent;

    const-class v6, Lcom/miui/applicationlock/ConfirmAccountActivity;

    invoke-direct {p1, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v6, "account_dialog_extra_data"

    invoke-virtual {p1, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Lcom/miui/common/base/BaseActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_a

    :cond_10
    invoke-virtual {p0, v2}, Landroid/app/Activity;->setResult(I)V

    :cond_11
    :goto_a
    iget p1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->A0:I

    if-eq p1, v2, :cond_12

    invoke-direct {p0, p1}, Lcom/miui/applicationlock/ConfirmAccessControl;->J2(I)V

    :cond_12
    iget-boolean p1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->m0:Z

    if-eqz p1, :cond_13

    const-string p1, "accessLockPattern: freeform window finish!"

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->F:Landroid/os/Handler;

    new-instance v0, Lz2/c0;

    invoke-direct {v0, p0}, Lz2/c0;-><init>(Lcom/miui/applicationlock/ConfirmAccessControl;)V

    goto :goto_9

    :cond_13
    invoke-virtual {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->finish()V

    :goto_b
    iget p1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->A0:I

    if-ne p1, v2, :cond_14

    const p1, 0x7f010014

    goto :goto_c

    :cond_14
    move p1, v1

    :goto_c
    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->l:Landroid/content/Intent;

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->q:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_15

    invoke-virtual {p0, v1, p1}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_15
    iget-object p1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->q:Ljava/lang/String;

    invoke-static {p0, p1}, Lc3/f;->T(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic m2(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 4

    iget-object p1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->v0:Landroid/view/WindowManager;

    invoke-static {p1}, Landroidx/window/layout/c;->a(Landroid/view/WindowManager;)Landroid/view/WindowMetrics;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/WindowMetrics;->getWindowInsets()Landroid/view/WindowInsets;

    move-result-object p1

    invoke-static {p1}, Landroidx/core/view/g3;->a(Landroid/view/WindowInsets;)Landroid/view/DisplayCutout;

    move-result-object p1

    const-string p2, "ConfirmAccessControl"

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-static {p1}, Lz2/m;->a(Landroid/view/DisplayCutout;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-static {p1}, Lz2/n;->a(Landroid/view/DisplayCutout;)Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->v0:Landroid/view/WindowManager;

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rotationMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v1, 0x7f07008b

    if-nez p1, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    move v3, v0

    move v0, p1

    move p1, v3

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    if-ne p1, v2, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    goto :goto_0

    :cond_2
    move p1, v0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initTiny paddingStart = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",paddingEnd = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->b:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p2}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    iget-object v2, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->b:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    invoke-virtual {p2, v0, v1, p1, v2}, Landroid/view/View;->setPadding(IIII)V

    sget-object p1, Landroid/view/WindowInsets;->CONSUMED:Landroid/view/WindowInsets;

    return-object p1
.end method

.method public static synthetic n0(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/applicationlock/ConfirmAccessControl;->j2(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private n1()V
    .locals 2

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->c:Lcom/miui/applicationlock/widget/e;

    const v1, 0x7f0b0789

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->T:Landroid/widget/EditText;

    return-void
.end method

.method private synthetic n2(Landroid/accounts/AccountManagerFuture;)V
    .locals 3

    :try_start_0
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    const-string v0, "booleanResult"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/applicationlock/ResetChooseAccessControl;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "extra_data"

    const-string v2, "ModifyPassword"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "forgot_password_reset"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-direct {p0, p1, v0}, Lcom/miui/applicationlock/ConfirmAccessControl;->y2(ZLandroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "ConfirmAccessControl"

    const-string v1, "Fail to varify"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public static synthetic o0(Lcom/miui/applicationlock/ConfirmAccessControl;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/applicationlock/ConfirmAccessControl;->l2(Landroid/content/DialogInterface;)V

    return-void
.end method

.method private o1()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->s1()V

    return-void
.end method

.method private synthetic o2()V
    .locals 2

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->i0:Lc3/m;

    invoke-virtual {v0}, Lc3/m;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->i0:Lc3/m;

    iget-object v1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->G0:Lc3/l;

    invoke-virtual {v0, v1}, Lc3/m;->D(Lc3/l;)V

    :cond_0
    return-void
.end method

.method public static synthetic p0(Lcom/miui/applicationlock/ConfirmAccessControl;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/applicationlock/ConfirmAccessControl;->s2(Landroid/view/View;)V

    return-void
.end method

.method private p1()V
    .locals 4

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->Y:Lcom/miui/applicationlock/widget/PasswordUnlockMediator;

    const v1, 0x7f0b07a2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/applicationlock/widget/MiuiKeyBoardView;

    invoke-direct {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->c2()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->Y:Lcom/miui/applicationlock/widget/PasswordUnlockMediator;

    invoke-virtual {v0}, Lcom/miui/applicationlock/widget/PasswordUnlockMediator;->getUnlockView()Lcom/miui/applicationlock/widget/e;

    move-result-object v0

    check-cast v0, Lcom/miui/applicationlock/widget/n;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/miui/applicationlock/widget/n;->v(I)V

    return-void

    :cond_0
    invoke-static {}, Lx4/y;->t()Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->u1()V

    iget-boolean v1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->n0:Z

    if-nez v1, :cond_2

    return-void

    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070754

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private static synthetic p2(Landroid/os/CountDownTimer;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-virtual {p0}, Landroid/os/CountDownTimer;->cancel()V

    return-void
.end method

.method public static synthetic q0(Lcom/miui/applicationlock/ConfirmAccessControl;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/applicationlock/ConfirmAccessControl;->g2(Landroid/content/DialogInterface;)V

    return-void
.end method

.method private q1()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->r1()V

    invoke-direct {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->p1()V

    return-void
.end method

.method private synthetic q2(Landroid/content/DialogInterface;I)V
    .locals 2

    const-string p1, "ConfirmAccessControl"

    const-string p2, "reset factory data"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x19

    if-le p2, v0, :cond_0

    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.intent.action.FACTORY_RESET"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p2, "android"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    :cond_0
    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.intent.action.MASTER_CLEAR"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    :try_start_0
    const-class v0, Landroid/content/Intent;

    const-string v1, "EXTRA_REASON"

    invoke-static {v0, v1}, Lbh/f;->m(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "intent reason exception:"

    invoke-static {p1, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string v0, "android.intent.extra.REASON"

    :goto_0
    const-string p1, "MasterClearConfirm"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object p1, p2

    :goto_1
    const/high16 p2, 0x10000000

    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static synthetic r0(Lcom/miui/applicationlock/ConfirmAccessControl;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/applicationlock/ConfirmAccessControl;->e2(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private r1()V
    .locals 3

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->T:Landroid/widget/EditText;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-boolean v1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->n0:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->N:Landroid/content/res/Resources;

    const v2, 0x7f0708a9

    :goto_0
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/miui/applicationlock/ConfirmAccessControl;->G1(Landroid/content/res/Configuration;)I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070212

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07020a

    goto :goto_0

    :goto_1
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070207

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iget-object v1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->T:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    return-void
.end method

.method private synthetic r2(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->V1()V

    return-void
.end method

.method public static synthetic s0(Landroid/os/CountDownTimer;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/miui/applicationlock/ConfirmAccessControl;->p2(Landroid/os/CountDownTimer;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private s1()V
    .locals 2

    invoke-static {}, Lx4/y;->t()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lc3/f;->O(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->Y:Lcom/miui/applicationlock/widget/PasswordUnlockMediator;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x31

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/4 v1, 0x0

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->Y:Lcom/miui/applicationlock/widget/PasswordUnlockMediator;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method

.method private synthetic s2(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->N1()V

    return-void
.end method

.method static synthetic t0(Lcom/miui/applicationlock/ConfirmAccessControl;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->O2()V

    return-void
.end method

.method private t1()V
    .locals 6

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->c:Lcom/miui/applicationlock/widget/e;

    const v1, 0x7f0b0865

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/applicationlock/widget/NumberPasswordEditText;

    iput-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->e:Lcom/miui/applicationlock/widget/NumberPasswordEditText;

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->c:Lcom/miui/applicationlock/widget/e;

    const v1, 0x7f0b0864

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->f:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->e:Lcom/miui/applicationlock/widget/NumberPasswordEditText;

    const v1, 0x7f071ebb

    const-string v2, "ConfirmAccessControl"

    const/4 v3, -0x2

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {v0, v4, v4, v4, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    iget-object v5, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->e:Lcom/miui/applicationlock/widget/NumberPasswordEditText;

    invoke-virtual {v5, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onCreate: numberPasswordEditText ===    null   "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->U:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->f:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-static {}, Lx4/y;->t()Z

    move-result v2

    if-eqz v2, :cond_1

    move v1, v4

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    :goto_1
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget-object v1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCreate: mPasswordEncryptDots ===    null   "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->U:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->V:Lcom/miui/applicationlock/widget/MiuiNumericInputView;

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/applicationlock/ConfirmAccessControl;->G1(Landroid/content/res/Configuration;)I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_3

    const/4 v4, 0x1

    :cond_3
    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->V:Lcom/miui/applicationlock/widget/MiuiNumericInputView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-boolean v1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->n0:Z

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070221

    :goto_3
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_4

    :cond_4
    if-eqz v4, :cond_5

    invoke-static {}, Lx4/y;->t()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070224

    goto :goto_3

    :cond_5
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070220

    goto :goto_3

    :goto_4
    iget-object v1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->V:Lcom/miui/applicationlock/widget/MiuiNumericInputView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_6
    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->c:Lcom/miui/applicationlock/widget/e;

    instance-of v1, v0, Lcom/miui/applicationlock/widget/q;

    if-eqz v1, :cond_7

    check-cast v0, Lcom/miui/applicationlock/widget/q;

    iget-object v1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->r0:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lcom/miui/applicationlock/widget/q;->setDeleteTv(Landroid/widget/TextView;)V

    :cond_7
    return-void
.end method

.method private synthetic t2()V
    .locals 1

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->i0:Lc3/m;

    invoke-virtual {v0}, Lc3/m;->E()V

    return-void
.end method

.method static synthetic u0(Lcom/miui/applicationlock/ConfirmAccessControl;)I
    .locals 0

    iget p0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->u:I

    return p0
.end method

.method private u1()V
    .locals 4

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iget-object v1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->N:Landroid/content/res/Resources;

    iget-boolean v2, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->n0:Z

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/miui/common/base/BaseActivity;->isTabletSpitModel()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const v2, 0x7f07019a

    goto :goto_1

    :cond_1
    :goto_0
    const v2, 0x7f07019b

    :goto_1
    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    new-instance v1, Landroidx/constraintlayout/widget/e;

    invoke-direct {v1}, Landroidx/constraintlayout/widget/e;-><init>()V

    iget-object v2, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->b:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/widget/e;->p(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    const v2, 0x7f0b0bf6

    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v0

    invoke-virtual {v1, v2, v0}, Landroidx/constraintlayout/widget/e;->P(IF)V

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->b:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v1, v0}, Landroidx/constraintlayout/widget/e;->i(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    return-void
.end method

.method static synthetic v0(Lcom/miui/applicationlock/ConfirmAccessControl;)I
    .locals 1

    iget v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->u:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->u:I

    return v0
.end method

.method private v1(Landroid/content/res/Configuration;)V
    .locals 5

    invoke-direct {p0, p1}, Lcom/miui/applicationlock/ConfirmAccessControl;->G1(Landroid/content/res/Configuration;)I

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "adaptiveSplitScreen windowMode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " isTabletSpitModel = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/miui/common/base/BaseActivity;->isTabletSpitModel()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ConfirmAccessControl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x6

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/miui/common/base/BaseActivity;->isTabletSpitModel()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->h0:Landroid/view/ViewGroup;

    if-nez v3, :cond_0

    const v3, 0x7f0b0442

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewStub;

    invoke-virtual {v3}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    const v3, 0x7f0b0add

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->h0:Landroid/view/ViewGroup;

    :cond_0
    iget-object v3, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->h0:Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    const v3, 0x7f0b0ade

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f1200a2

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    iget-object v3, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->b:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->O:Z

    iget-object v3, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->q0:Lcom/miui/applicationlock/widget/PhoneGLSurfaceView;

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    if-ne p1, v0, :cond_2

    invoke-static {p0}, Lc3/f;->O(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_4

    :cond_2
    iget-object p1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->h0:Landroid/view/ViewGroup;

    if-eqz p1, :cond_3

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->q0:Lcom/miui/applicationlock/widget/PhoneGLSurfaceView;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    iget-object p1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->b:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    iput-boolean v2, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->O:Z

    invoke-static {p0}, Lc3/f;->O(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->i:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    return-void
.end method

.method private v2()V
    .locals 2

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->D:Lc3/d;

    invoke-virtual {v0}, Lc3/d;->l()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/miui/applicationlock/ConfirmAccessControl;->m1(Z)V

    iget-boolean v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->r:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->D:Lc3/d;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lc3/d;->x(Z)V

    :cond_0
    return-void
.end method

.method static synthetic w0(Lcom/miui/applicationlock/ConfirmAccessControl;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->d:Landroid/widget/TextView;

    return-object p0
.end method

.method private w1()Z
    .locals 6

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->l:Landroid/content/Intent;

    const/4 v1, 0x0

    const-string v2, "ConfirmAccessControl"

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->l:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->q:Ljava/lang/String;

    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "not allow start app lock, mPackageName: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->q:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", targetPackageName: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->l:Landroid/content/Intent;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->l:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->s:Lmiui/security/SecurityManager;

    iget v4, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->L:I

    invoke-virtual {v3, v0, v4}, Lmiui/security/SecurityManager;->getApplicationAccessControlEnabledAsUser(Ljava/lang/String;I)Z

    move-result v3

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    if-nez v3, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "not allow start app lock, targetPackageName: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", isAccessControlEnable: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private w2(Landroid/content/Intent;)V
    .locals 10

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->l:Landroid/content/Intent;

    iput-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->B:Landroid/os/IBinder;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->r:Z

    if-eqz p1, :cond_6

    const-string v1, "com.android.settings.ConfirmLockPattern.header_wrong"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->p:Ljava/lang/CharSequence;

    const-string v1, "android.intent.extra.shortcut.NAME"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->q:Ljava/lang/String;

    const-string v1, "android.intent.extra.INTENT"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    iput-object v1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->l:Landroid/content/Intent;

    const-string v1, "taskId"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->A0:I

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x19

    const-string v5, "ConfirmAccessControl"

    const/4 v6, 0x1

    if-le v3, v4, :cond_0

    if-eqz v1, :cond_0

    :try_start_0
    const-string v3, "android.app.ActivityOptions"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-class v4, Landroid/app/ActivityOptions;

    const-string v7, "fromBundle"

    new-array v8, v6, [Ljava/lang/Class;

    const-class v9, Landroid/os/Bundle;

    aput-object v9, v8, v0

    new-array v9, v6, [Ljava/lang/Object;

    aput-object v1, v9, v0

    invoke-static {v3, v4, v7, v8, v9}, Lbh/f;->g(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityOptions;

    iput-object v1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->m:Landroid/app/ActivityOptions;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mOption: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->m:Landroid/app/ActivityOptions;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v3, "fromBundle exception: "

    invoke-static {v5, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    const-string v1, "originating_uid"

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->E:I

    const/16 v2, 0x3e7

    if-ne v1, v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {}, Lx4/z1;->y()I

    move-result v2

    :goto_1
    iput v2, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->L:I

    :try_start_1
    const-class v1, Landroid/os/IBinder;

    const-string v2, "getIBinderExtra"

    new-array v3, v6, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v0

    new-array v4, v6, [Ljava/lang/Object;

    const-string v7, "android.app.extra.PROTECTED_APP_TOKEN"

    aput-object v7, v4, v0

    invoke-static {p1, v1, v2, v3, v4}, Lbh/f;->b(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IBinder;

    iput-object v1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->B:Landroid/os/IBinder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v1

    const-string v2, "getIBinderExtra exception: "

    invoke-static {v5, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v1, "miui.intent.action.CHECK_ACCESS_CONTROL"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->r:Z

    invoke-direct {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->E1()V

    iget-boolean p1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->l0:Z

    if-eqz p1, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->u2()V

    sget-object p1, Lcom/miui/applicationlock/AppLockManageFragment;->J:Landroid/util/ArraySet;

    iget-object v1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->q:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->J:Landroid/app/KeyguardManager;

    invoke-virtual {p1}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result p1

    if-nez p1, :cond_5

    :try_start_2
    iget-object p1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->l:Landroid/content/Intent;

    if-eqz p1, :cond_3

    const-string v1, "StartActivityWhenLocked"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p1, :cond_3

    move v0, v6

    goto :goto_3

    :catchall_0
    move-exception p1

    const-string v1, "Fail to read StartActivityWhenLocked from intent"

    invoke-static {v5, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_3
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/high16 v1, 0x80000

    if-eqz v0, :cond_4

    invoke-virtual {p1, v1}, Landroid/view/Window;->addFlags(I)V

    goto :goto_4

    :cond_4
    invoke-virtual {p1, v1}, Landroid/view/Window;->clearFlags(I)V

    :cond_5
    :goto_4
    iget-object p1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->q:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->q:Ljava/lang/String;

    invoke-static {p1}, La3/a;->u(Ljava/lang/String;)V

    :cond_6
    return-void
.end method

.method static synthetic x0(Lcom/miui/applicationlock/ConfirmAccessControl;)Landroid/view/accessibility/AccessibilityManager;
    .locals 0

    iget-object p0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->W:Landroid/view/accessibility/AccessibilityManager;

    return-object p0
.end method

.method private x1(ILjava/lang/String;)F
    .locals 6

    const/high16 v0, 0xff0000

    and-int v1, p1, v0

    shr-int/lit8 v1, v1, 0x10

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr v1, v2

    const/high16 v3, 0x437f0000    # 255.0f

    div-float/2addr v1, v3

    const v4, 0xff00

    and-int v5, p1, v4

    shr-int/lit8 v5, v5, 0x8

    int-to-float v5, v5

    mul-float/2addr v5, v2

    div-float/2addr v5, v3

    and-int/lit16 p1, p1, 0xff

    int-to-float p1, p1

    mul-float/2addr p1, v2

    div-float/2addr p1, v3

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    and-int/2addr v0, p2

    shr-int/lit8 v0, v0, 0x10

    int-to-float v0, v0

    mul-float/2addr v0, v2

    div-float/2addr v0, v3

    and-int/2addr v4, p2

    shr-int/lit8 v4, v4, 0x8

    int-to-float v4, v4

    mul-float/2addr v4, v2

    div-float/2addr v4, v3

    and-int/lit16 p2, p2, 0xff

    int-to-float p2, p2

    mul-float/2addr p2, v2

    div-float/2addr p2, v3

    mul-float/2addr v1, v1

    mul-float/2addr v0, v0

    sub-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x3e991687    # 0.299f

    mul-float/2addr v0, v1

    mul-float/2addr v5, v5

    mul-float/2addr v4, v4

    sub-float/2addr v5, v4

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v1

    add-float/2addr v0, v1

    const v1, 0x3f1645a2    # 0.587f

    add-float/2addr v0, v1

    mul-float/2addr p1, p1

    mul-float/2addr p2, p2

    sub-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    add-float/2addr v0, p1

    const p1, 0x3de978d5    # 0.114f

    add-float/2addr v0, p1

    return v0
.end method

.method private x2()V
    .locals 2

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->D:Lc3/d;

    invoke-virtual {v0}, Lc3/d;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->D:Lc3/d;

    invoke-virtual {v0}, Lc3/d;->i()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lc3/w;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->D:Lc3/d;

    invoke-virtual {v0}, Lc3/d;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lc3/w;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->o0:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->y1()V

    :cond_2
    return-void
.end method

.method static synthetic y0(Lcom/miui/applicationlock/ConfirmAccessControl;I)I
    .locals 0

    iput p1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->P:I

    return p1
.end method

.method private y1()V
    .locals 4

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "BindAccountDialog"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->h0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/miui/applicationlock/widget/BindAccountDialog;

    if-nez v2, :cond_0

    new-instance v2, Lcom/miui/applicationlock/widget/BindAccountDialog;

    invoke-direct {v2}, Lcom/miui/applicationlock/widget/BindAccountDialog;-><init>()V

    :cond_0
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2, v0, v1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_1
    new-instance v0, Lz2/d0;

    invoke-direct {v0, p0}, Lz2/d0;-><init>(Lcom/miui/applicationlock/ConfirmAccessControl;)V

    invoke-virtual {v2, v0}, Lcom/miui/applicationlock/widget/BindAccountDialog;->j0(Lcom/miui/applicationlock/widget/BindAccountDialog$b;)V

    new-instance v0, Lz2/e0;

    invoke-direct {v0, p0}, Lz2/e0;-><init>(Lcom/miui/applicationlock/ConfirmAccessControl;)V

    invoke-virtual {v2, v0}, Lcom/miui/applicationlock/widget/BindAccountDialog;->k0(Lcom/miui/applicationlock/widget/BindAccountDialog$c;)V

    new-instance v0, Lz2/o;

    invoke-direct {v0, p0}, Lz2/o;-><init>(Lcom/miui/applicationlock/ConfirmAccessControl;)V

    invoke-virtual {v2, v0}, Lcom/miui/applicationlock/widget/BindAccountDialog;->l0(Lcom/miui/applicationlock/widget/BindAccountDialog$d;)V

    new-instance v0, Lz2/p;

    invoke-direct {v0, p0}, Lz2/p;-><init>(Lcom/miui/applicationlock/ConfirmAccessControl;)V

    invoke-virtual {v2, v0}, Lcom/miui/applicationlock/widget/BindAccountDialog;->i0(Lcom/miui/applicationlock/widget/BindAccountDialog$a;)V

    return-void
.end method

.method private y2(ZLandroid/content/Intent;)V
    .locals 0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const/16 p1, 0x1b

    invoke-virtual {p0, p2, p1}, Lcom/miui/common/base/BaseActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    return-void
.end method

.method static synthetic z0(Lcom/miui/applicationlock/ConfirmAccessControl;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->j0:Landroid/widget/ImageView;

    return-object p0
.end method

.method private z1()Z
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "BindAccountDialog"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->h0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/miui/applicationlock/widget/BindAccountDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private z2()V
    .locals 2

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->j:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->A:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    invoke-direct {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->D1()V

    :cond_0
    return-void
.end method


# virtual methods
.method protected H1()I
    .locals 1

    iget-boolean v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->O:Z

    if-eqz v0, :cond_0

    const v0, 0x7f120298

    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->w:Z

    if-eqz v0, :cond_1

    const v0, 0x7f12017c

    return v0

    :cond_1
    const v0, 0x7f12006c

    return v0
.end method

.method K2()V
    .locals 2

    const v0, 0x7f0805c4

    invoke-static {p0, v0}, Landroidx/vectordrawable/graphics/drawable/c;->a(Landroid/content/Context;I)Landroidx/vectordrawable/graphics/drawable/c;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->z0:Landroidx/vectordrawable/graphics/drawable/c;

    iget-object v1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->F0:Landroidx/vectordrawable/graphics/drawable/b;

    invoke-virtual {v0, v1}, Landroidx/vectordrawable/graphics/drawable/c;->c(Landroidx/vectordrawable/graphics/drawable/b;)V

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->j0:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->z0:Landroidx/vectordrawable/graphics/drawable/c;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->z0:Landroidx/vectordrawable/graphics/drawable/c;

    invoke-virtual {v0}, Landroidx/vectordrawable/graphics/drawable/c;->start()V

    return-void
.end method

.method public L2()V
    .locals 2

    const-string v0, "ConfirmAccessControl"

    const-string v1, "stopFaceUnlock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->x:Z

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->I:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->F:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->D:Lc3/d;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lc3/d;->r()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->i0:Lc3/m;

    new-instance v1, Lz2/z;

    invoke-direct {v1, p0}, Lz2/z;-><init>(Lcom/miui/applicationlock/ConfirmAccessControl;)V

    invoke-virtual {v0, v1}, Lc3/m;->B(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public finish()V
    .locals 2

    invoke-super {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    invoke-direct {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->O2()V

    const-string v0, "ConfirmAccessControl"

    const-string v1, "unregisterFingerprint 5"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "requestCode = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",resultCode = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "ConfirmAccessControl"

    invoke-static {v0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p3, 0x1b

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq p1, p3, :cond_2

    const/16 p3, 0x106

    if-eq p1, p3, :cond_1

    const/16 p3, 0x107

    if-eq p1, p3, :cond_0

    goto :goto_0

    :cond_0
    iput-boolean v1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->R:Z

    if-ne p2, v2, :cond_5

    new-instance p1, Landroid/content/Intent;

    const-class p2, Lcom/miui/applicationlock/ConfirmAccountActivity;

    invoke-direct {p1, p0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p2, "account_dialog_extra_data"

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Lcom/miui/common/base/BaseActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    if-ne p2, v2, :cond_5

    invoke-direct {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->z2()V

    invoke-virtual {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->finish()V

    goto :goto_0

    :cond_2
    if-ne p2, v2, :cond_5

    invoke-direct {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->z2()V

    sget-object p1, Lcom/miui/applicationlock/ConfirmAccessControl$p;->a:Lcom/miui/applicationlock/ConfirmAccessControl$p;

    invoke-direct {p0, p1}, Lcom/miui/applicationlock/ConfirmAccessControl;->S2(Lcom/miui/applicationlock/ConfirmAccessControl$p;)V

    iput-boolean v1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->A:Z

    iget p1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->P:I

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->d:Landroid/widget/TextView;

    const p2, 0x7f12006c

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    :cond_3
    iget-object p1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->s:Lmiui/security/SecurityManager;

    invoke-static {p1}, Lc3/f;->X(Lmiui/security/SecurityManager;)V

    invoke-direct {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->F2()V

    invoke-static {p0}, Lc3/f;->H(Landroid/content/Context;)I

    move-result p1

    if-eqz p1, :cond_4

    invoke-static {p0, v0}, Lc3/f;->j0(Landroid/content/Context;Z)V

    :cond_4
    invoke-direct {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->d2()Z

    move-result p1

    iput-boolean p1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->y:Z

    invoke-direct {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->R1()V

    :cond_5
    :goto_0
    return-void
.end method

.method public onBackPressed()V
    .locals 5

    iget-boolean v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->r:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isInPinned "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->b2(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ConfirmAccessControl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->b2(Landroid/content/Context;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const v0, 0x7f1211e5

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->D:Lc3/d;

    iget-object v3, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->q:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lc3/d;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->s:Lmiui/security/SecurityManager;

    iget-object v3, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->q:Ljava/lang/String;

    iget v4, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->L:I

    invoke-virtual {v0, v3, v4}, Lmiui/security/SecurityManager;->finishAccessControl(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->B:Landroid/os/IBinder;

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->o:Lxg/a;

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v2, v4}, Lxg/a;->a(Landroid/os/IBinder;ILandroid/content/Intent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "onBackPressed: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0b018c

    if-ne p1, v0, :cond_1

    invoke-direct {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->A1()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->onBackPressed()V

    goto :goto_1

    :cond_1
    const v0, 0x7f0b03cf

    if-ne p1, v0, :cond_3

    iget-boolean p1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->k0:Z

    if-nez p1, :cond_2

    return-void

    :cond_2
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->k0:Z

    invoke-direct {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->A2()V

    goto :goto_1

    :cond_3
    const v0, 0x7f0b0866

    if-ne p1, v0, :cond_5

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/miui/applicationlock/ConfirmAccessControl;->M2(Z)V

    invoke-direct {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->a2()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->Z:Landroid/widget/TextView;

    const v0, 0x7f120fca

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->Z:Landroid/widget/TextView;

    const v0, 0x7f120fd2

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    :cond_5
    :goto_1
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/miui/common/base/BaseActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onConfigurationChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/res/Configuration;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ConfirmAccessControl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/miui/applicationlock/ConfirmAccessControl;->v1(Landroid/content/res/Configuration;)V

    invoke-static {}, Lx4/y;->t()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lx4/y;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->o1()V

    iget-object p1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->U:Ljava/lang/String;

    const-string v0, "mixed"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->q1()V

    :cond_1
    iget-object p1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->U:Ljava/lang/String;

    const-string v1, "numeric"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->t1()V

    :cond_2
    invoke-static {}, Lx4/y;->s()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->U:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-direct {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->P2()V

    :cond_3
    return-void

    :cond_4
    :goto_0
    iget v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->x0:I

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, p1, :cond_5

    new-instance p1, Landroidx/constraintlayout/widget/e;

    invoke-direct {p1}, Landroidx/constraintlayout/widget/e;-><init>()V

    const v0, 0x7f0e0078

    invoke-virtual {p1, p0, v0}, Landroidx/constraintlayout/widget/e;->o(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->b:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/widget/e;->i(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    :cond_5
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    invoke-super {p0, p1}, Lcom/miui/common/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lx4/y;->s()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-static {v0}, Lx4/a0;->z(Landroid/content/res/Configuration;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0, v1}, Lcom/miui/common/base/BaseActivity;->setNeedHorizontalPadding(Z)V

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->x0:I

    invoke-static {p0}, Lx4/g;->g(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->n0:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :cond_2
    const-string v0, "ConfirmAccessControl"

    const/4 v2, 0x1

    if-eqz p1, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCreate"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "key_last_ui_mode"

    invoke-virtual {p1, v3}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0}, Lcom/miui/common/base/BaseActivity;->isDarkModeEnable()Z

    move-result v3

    if-eq p1, v3, :cond_3

    move p1, v2

    goto :goto_0

    :cond_3
    move p1, v1

    :goto_0
    iput-boolean p1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->y0:Z

    :cond_4
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v3, "extra_data"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lc3/d;->j(Landroid/content/Context;)Lc3/d;

    move-result-object v0

    invoke-virtual {v0}, Lc3/d;->l()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->finish()V

    :cond_5
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v3, 0x8000000

    invoke-virtual {v0, v3}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v3, 0x200

    invoke-virtual {v0, v3}, Landroid/view/View;->setSystemUiVisibility(I)V

    if-eqz p1, :cond_7

    const-string v0, "HappyCoding"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "HappyCodingMain"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    :cond_6
    move p1, v2

    goto :goto_1

    :cond_7
    move p1, v1

    :goto_1
    iput-boolean p1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->Q:Z

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->N:Landroid/content/res/Resources;

    invoke-virtual {p0}, Lcom/miui/common/base/BaseActivity;->isDarkModeEnable()Z

    move-result p1

    const/16 v0, 0x1c

    if-eqz p1, :cond_8

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v4, -0x1000000

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    :cond_8
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt p1, v0, :cond_a

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_9

    const-string v3, "android.app.extra.PROTECTED_APP_TOKEN"

    invoke-virtual {p1, v3}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_9

    const p1, 0x7f010015

    invoke-virtual {p0, p1, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_9
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0600d2

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v3, -0x1

    invoke-virtual {p1, v3, v3}, Landroid/view/Window;->setLayout(II)V

    const/4 v3, 0x4

    invoke-virtual {p1, v3}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/high16 v3, 0x3f000000    # 0.5f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {p0, p1, v3, v4}, Lcom/miui/applicationlock/ConfirmAccessControl;->B1(Landroid/view/Window;FF)V

    :cond_a
    :goto_2
    const p1, 0x7f0e00fb

    invoke-virtual {p0, p1}, Lcom/miui/common/base/BaseActivity;->setContentView(I)V

    const p1, 0x7f0b00e5

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->h:Landroid/widget/ImageView;

    const p1, 0x7f0b049e

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->i:Landroid/view/View;

    iget-boolean p1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->Q:Z

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->h:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->N:Landroid/content/res/Resources;

    const v4, 0x7f080930

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroidx/core/content/res/g;->f(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-static {}, Lx4/y;->i()Z

    move-result p1

    if-eqz p1, :cond_c

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lx4/v;->j(Landroid/content/Context;)I

    move-result v3

    invoke-static {p1, v3}, Lc3/d;->f(Landroid/content/ContentResolver;I)V

    goto :goto_3

    :cond_b
    iget-object p1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->h:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/miui/common/g;->a(Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_c
    :goto_3
    const-string p1, "window"

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->v0:Landroid/view/WindowManager;

    invoke-direct {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->O1()V

    invoke-direct {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->U1()V

    iput-boolean v2, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->p0:Z

    invoke-direct {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->X1()V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/miui/applicationlock/ConfirmAccessControl;->w2(Landroid/content/Intent;)V

    iget-boolean p1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->l0:Z

    if-eqz p1, :cond_d

    return-void

    :cond_d
    invoke-virtual {p0}, Lcom/miui/common/base/BaseActivity;->isDarkModeEnable()Z

    move-result p1

    if-nez p1, :cond_e

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le p1, v0, :cond_e

    iget-object p1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->q0:Lcom/miui/applicationlock/widget/PhoneGLSurfaceView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->q:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v0, p1}, Lcom/miui/common/g;->a(Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_e

    invoke-static {p1}, Lx4/o0;->k(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p1

    new-instance v0, Lcom/miui/applicationlock/ConfirmAccessControl$n;

    invoke-direct {v0, p0}, Lcom/miui/applicationlock/ConfirmAccessControl$n;-><init>(Lcom/miui/applicationlock/ConfirmAccessControl;)V

    new-array v2, v2, [Landroid/graphics/Bitmap;

    aput-object p1, v2, v1

    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_e
    :goto_4
    invoke-direct {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->v2()V

    invoke-static {p0}, Lc3/f;->I(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->v:I

    iget-boolean p1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->Q:Z

    if-eqz p1, :cond_f

    const-string p1, "sc_internal"

    goto :goto_5

    :cond_f
    const-string p1, "from_app"

    :goto_5
    invoke-static {p1}, La3/a;->i(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->v0:Landroid/view/WindowManager;

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result p1

    iput p1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->u0:I

    invoke-direct {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->Q1()V

    iget-object p1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->U:Ljava/lang/String;

    const-string v0, "mixed"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_10

    invoke-direct {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->n1()V

    invoke-direct {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->q1()V

    goto :goto_6

    :cond_10
    invoke-direct {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->t1()V

    :goto_6
    invoke-direct {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->o1()V

    sget-boolean p1, Lmiui/os/Build;->IS_TABLET:Z

    if-eqz p1, :cond_11

    iget p1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->u0:I

    invoke-direct {p0, p1}, Lcom/miui/applicationlock/ConfirmAccessControl;->Q2(I)V

    iget-object p1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->U:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_11

    new-instance p1, Landroidx/constraintlayout/widget/d;

    const v0, 0x7f0b0191

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/constraintlayout/widget/d;-><init>(Landroid/view/View;)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07096b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/widget/d;->c(I)Landroidx/constraintlayout/widget/d;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/constraintlayout/widget/d;->a()V

    :cond_11
    new-instance p1, Lcom/miui/applicationlock/ConfirmAccessControl$f;

    const/4 v0, 0x3

    invoke-direct {p1, p0, p0, v0}, Lcom/miui/applicationlock/ConfirmAccessControl$f;-><init>(Lcom/miui/applicationlock/ConfirmAccessControl;Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->w0:Landroid/view/OrientationEventListener;

    invoke-direct {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->S1()V

    invoke-direct {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->R2()V

    invoke-static {}, La8/s1;->a()Z

    move-result p1

    if-eqz p1, :cond_12

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/miui/applicationlock/ConfirmAccessControl;->v1(Landroid/content/res/Configuration;)V

    :cond_12
    return-void

    :catch_1
    move-exception p1

    invoke-virtual {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->finish()V

    const-string v1, "parcel exception"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public onDestroy()V
    .locals 4

    const-string v0, "ConfirmAccessControl"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->k:Landroid/database/ContentObserver;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->k:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    iget-object v1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->j:Landroid/os/CountDownTimer;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/os/CountDownTimer;->cancel()V

    :cond_1
    iget-boolean v1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->X:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->D0:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_2
    invoke-direct {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->O2()V

    const-string v1, "unregisterFingerprint 4"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->K1()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->P:I

    invoke-static {p0, v0}, Lc3/f;->g0(Landroid/content/Context;I)V

    :cond_3
    invoke-super {p0}, Lcom/miui/common/base/BaseActivity;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->V:Lcom/miui/applicationlock/widget/MiuiNumericInputView;

    const/16 v1, 0x43

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    if-ne p1, v1, :cond_0

    invoke-direct {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->A1()Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    :cond_0
    invoke-static {p1}, Lc3/r;->b(I)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 p2, 0x7

    if-lt p1, p2, :cond_1

    const/16 v0, 0x10

    if-gt p1, v0, :cond_1

    sub-int/2addr p1, p2

    goto :goto_0

    :cond_1
    add-int/lit16 p1, p1, -0x90

    :goto_0
    iget-object p2, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->V:Lcom/miui/applicationlock/widget/MiuiNumericInputView;

    invoke-virtual {p2, p1}, Lcom/miui/applicationlock/widget/MiuiNumericInputView;->k(I)V

    return v2

    :cond_2
    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->c:Lcom/miui/applicationlock/widget/e;

    instance-of v3, v0, Lcom/miui/applicationlock/widget/n;

    if-eqz v3, :cond_5

    check-cast v0, Lcom/miui/applicationlock/widget/n;

    const/16 v3, 0x42

    if-ne p1, v3, :cond_3

    invoke-virtual {v0}, Lcom/miui/applicationlock/widget/n;->p()V

    return v2

    :cond_3
    if-ne p1, v1, :cond_4

    invoke-virtual {v0}, Lcom/miui/applicationlock/widget/n;->r()V

    return v2

    :cond_4
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v1

    invoke-static {p1, v1}, Lc3/r;->a(IZ)Ljava/lang/Character;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/Character;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/miui/applicationlock/widget/n;->q(Ljava/lang/CharSequence;)V

    return v2

    :cond_5
    invoke-super {p0, p1, p2}, Lmiuix/appcompat/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V
    .locals 2
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1a
    .end annotation

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V

    const-string p1, "ConfirmAccessControl"

    const-string v0, "onMultiWindowModeChanged: "

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p2}, Lcom/miui/applicationlock/ConfirmAccessControl;->G1(Landroid/content/res/Configuration;)I

    move-result p2

    invoke-virtual {p0}, Landroid/app/Activity;->recreate()V

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    iget-boolean v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->C:Z

    invoke-virtual {p0}, Landroid/app/Activity;->hasWindowFocus()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/miui/applicationlock/ConfirmAccessControl;->C2(ZZ)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onConfigurationChanged register fingerprint, windowMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 3

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    invoke-direct {p0, p1}, Lcom/miui/applicationlock/ConfirmAccessControl;->w2(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/miui/common/base/BaseActivity;->isDarkModeEnable()Z

    move-result p1

    if-nez p1, :cond_0

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1c

    if-le p1, v0, :cond_0

    iget-object p1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->q0:Lcom/miui/applicationlock/widget/PhoneGLSurfaceView;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->q:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v0, p1}, Lcom/miui/common/g;->a(Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {p1}, Lx4/o0;->k(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p1

    new-instance v0, Lcom/miui/applicationlock/ConfirmAccessControl$n;

    invoke-direct {v0, p0}, Lcom/miui/applicationlock/ConfirmAccessControl$n;-><init>(Lcom/miui/applicationlock/ConfirmAccessControl;)V

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/graphics/Bitmap;

    aput-object p1, v2, v1

    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public onPause()V
    .locals 3

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->p0:Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPause: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->K:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ConfirmAccessControl"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lx4/y;->t()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->w0:Landroid/view/OrientationEventListener;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/OrientationEventListener;->disable()V

    :cond_0
    iget-object v1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->j:Landroid/os/CountDownTimer;

    if-eqz v1, :cond_1

    iput-boolean v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->A:Z

    :cond_1
    invoke-virtual {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->L2()V

    invoke-direct {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->N2()V

    invoke-direct {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->O2()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unregisterFingerprint 9: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->K:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "mStop: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->G:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onResume()V
    .locals 7

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->p0:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onResume: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->K:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ConfirmAccessControl"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v2, 0x2000

    invoke-virtual {v0, v2}, Landroid/view/Window;->addFlags(I)V

    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->w0:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->canDetectOrientation()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->w0:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->w0:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->U:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->s:Lmiui/security/SecurityManager;

    invoke-virtual {v2}, Lmiui/security/SecurityManager;->getAccessControlPasswordType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "onResume: return 1"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->finish()V

    :cond_2
    invoke-direct {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->c2()Z

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onResume: isRealInMultiWindow : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v2, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->Q:Z

    if-nez v2, :cond_3

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/applicationlock/ConfirmAccessControl;->v1(Landroid/content/res/Configuration;)V

    iget-boolean v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->O:Z

    if-eqz v0, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->D:Lc3/d;

    invoke-virtual {v0}, Lc3/d;->m()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->D:Lc3/d;

    invoke-virtual {v0}, Lc3/d;->l()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->D:Lc3/d;

    invoke-virtual {v0}, Lc3/d;->i()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    const-string v0, "onResume: return 2"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v2}, Lcom/miui/applicationlock/ConfirmAccessControl;->m1(Z)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->D:Lc3/d;

    invoke-virtual {v0}, Lc3/d;->l()Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "onResume: return 3"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->finish()V

    :cond_5
    :goto_1
    iget-boolean v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->r:Z

    if-eqz v0, :cond_9

    :try_start_0
    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->D:Lc3/d;

    invoke-virtual {v0}, Lc3/d;->m()Z

    move-result v0

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->E:I

    iget-object v3, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->s:Lmiui/security/SecurityManager;

    iget-object v4, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->q:Ljava/lang/String;

    invoke-static {v0, v3, v4}, Lc3/f;->a(ILmiui/security/SecurityManager;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    invoke-virtual {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->finish()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "finish checkAccessControlPass "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->q:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v3, " onResume error "

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_7
    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->D:Lc3/d;

    iget-object v3, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->q:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lc3/d;->p(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->finish()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "finish CancelUnlock "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->q:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_8
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    :try_start_1
    const-class v3, Landroid/app/Activity;

    const-string v4, "getActivityToken"

    const/4 v5, 0x0

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v3, p0, v4, v5, v6}, Lbh/d;->a(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/IBinder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v3

    goto :goto_2

    :catch_1
    move-exception v3

    const-string v4, "getActivity token exception: "

    invoke-static {v1, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    iget-object v3, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->s:Lmiui/security/SecurityManager;

    invoke-virtual {v3, v0}, Lmiui/security/SecurityManager;->needFinishAccessControl(Landroid/os/IBinder;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->finish()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "finish needFinishAccessControl "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->q:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_9
    invoke-direct {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->K1()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_a

    invoke-direct {p0, v3, v4}, Lcom/miui/applicationlock/ConfirmAccessControl;->M1(J)V

    goto :goto_3

    :cond_a
    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->c:Lcom/miui/applicationlock/widget/e;

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-direct {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->F2()V

    sget-object v0, Lcom/miui/applicationlock/ConfirmAccessControl$p;->a:Lcom/miui/applicationlock/ConfirmAccessControl$p;

    invoke-direct {p0, v0}, Lcom/miui/applicationlock/ConfirmAccessControl;->S2(Lcom/miui/applicationlock/ConfirmAccessControl$p;)V

    goto :goto_3

    :cond_b
    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->c:Lcom/miui/applicationlock/widget/e;

    invoke-interface {v0}, Lcom/miui/applicationlock/widget/o;->b()Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->j:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    :cond_c
    invoke-direct {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->F2()V

    sget-object v0, Lcom/miui/applicationlock/ConfirmAccessControl$p;->a:Lcom/miui/applicationlock/ConfirmAccessControl$p;

    invoke-direct {p0, v0}, Lcom/miui/applicationlock/ConfirmAccessControl;->S2(Lcom/miui/applicationlock/ConfirmAccessControl$p;)V

    iput-boolean v2, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->A:Z

    iget v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->P:I

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->d:Landroid/widget/TextView;

    const v2, 0x7f12006c

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    :cond_d
    :goto_3
    iget-boolean v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->l0:Z

    if-eqz v0, :cond_e

    const-string v0, "onResume: return 6"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_e
    invoke-direct {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->D2()V

    invoke-direct {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->w1()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->finish()V

    return-void

    :cond_f
    iget-boolean v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->C:Z

    invoke-virtual {p0}, Landroid/app/Activity;->hasWindowFocus()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/miui/applicationlock/ConfirmAccessControl;->C2(ZZ)V

    iget-boolean v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->z:Z

    if-eqz v0, :cond_11

    iget-boolean v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->k0:Z

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->J:Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    if-eqz v0, :cond_10

    const-wide/16 v0, 0x96

    invoke-direct {p0, v0, v1}, Lcom/miui/applicationlock/ConfirmAccessControl;->B2(J)V

    goto :goto_4

    :cond_10
    invoke-direct {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->A2()V

    :cond_11
    :goto_4
    iget-boolean v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->Q:Z

    if-nez v0, :cond_12

    invoke-direct {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->x2()V

    :cond_12
    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->U:Ljava/lang/String;

    const-string v1, "mixed"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_13

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->Y:Lcom/miui/applicationlock/widget/PasswordUnlockMediator;

    invoke-virtual {v0}, Lcom/miui/applicationlock/widget/PasswordUnlockMediator;->getUnlockView()Lcom/miui/applicationlock/widget/e;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/miui/applicationlock/widget/o;->d(Z)Landroid/widget/EditText;

    :cond_13
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x33

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSaveInstanceState: outState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ConfirmAccessControl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/miui/common/base/BaseActivity;->isDarkModeEnable()Z

    move-result v0

    const-string v1, "key_last_ui_mode"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method protected onStart()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onStart()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStart: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->K:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ConfirmAccessControl"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->G:Z

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->q0:Lcom/miui/applicationlock/widget/PhoneGLSurfaceView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->onResume()V

    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 2

    invoke-super {p0}, Lmiuix/appcompat/app/AppCompatActivity;->onStop()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStop: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->K:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ConfirmAccessControl"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->G:Z

    invoke-static {}, Lx4/a0;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->K:I

    invoke-static {v0, v1}, Lc3/d;->f(Landroid/content/ContentResolver;I)V

    :cond_0
    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->q0:Lcom/miui/applicationlock/widget/PhoneGLSurfaceView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->onPause()V

    :cond_1
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onWindowFocusChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",,, useId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->K:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " !isInMultiWindow "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->O:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " !isBindXMAccountConfirm "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->R:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ConfirmAccessControl"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/applicationlock/ConfirmAccessControl;->v1(Landroid/content/res/Configuration;)V

    iget-boolean v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->C:Z

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-static {v0, v2}, Lc3/f;->s0(ZLandroid/view/Window;)V

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->O1()V

    const-string p1, "onWindowFocusChanged register finger"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean p1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->C:Z

    invoke-virtual {p0}, Landroid/app/Activity;->hasWindowFocus()Z

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/miui/applicationlock/ConfirmAccessControl;->C2(ZZ)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isOpenFaceUnlock "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->z:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "isFaceUnlockConversion"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->k0:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean p1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->z:Z

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->k0:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->J:Landroid/app/KeyguardManager;

    invoke-virtual {p1}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result p1

    if-eqz p1, :cond_0

    const-wide/16 v0, 0x96

    invoke-direct {p0, v0, v1}, Lcom/miui/applicationlock/ConfirmAccessControl;->B2(J)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->A2()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->O2()V

    invoke-virtual {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->L2()V

    const-string p1, "unregisterFingerprint 2"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method

.method protected u2()V
    .locals 5

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->q:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->q:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "ConfirmAccessControl"

    const-string v4, "Fail to get applicationInfo"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/miui/common/g;->a(Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->C:Z

    invoke-direct {p0}, Lcom/miui/applicationlock/ConfirmAccessControl;->T2()V

    iget-object v1, p0, Lcom/miui/applicationlock/ConfirmAccessControl;->h:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v0}, Lcom/miui/applicationlock/ConfirmAccessControl;->G2(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method
