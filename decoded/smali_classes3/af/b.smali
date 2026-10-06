.class public final Laf/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laf/b$a;
    }
.end annotation


# static fields
.field public static final e:Laf/b$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static volatile f:Laf/b;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# instance fields
.field private final a:Lmiui/util/HapticFeedbackUtil;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final b:Z

.field private final c:Lum/b;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Laf/b$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Laf/b$a;-><init>(Lbk/g;)V

    sput-object v0, Laf/b;->e:Laf/b$a;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Z)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "vibrator"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.os.Vibrator"

    invoke-static {v0, v1}, Lbk/m;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v0

    iput-boolean v0, p0, Laf/b;->d:Z

    new-instance v0, Lmiui/util/HapticFeedbackUtil;

    invoke-direct {v0, p1, p2}, Lmiui/util/HapticFeedbackUtil;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Laf/b;->a:Lmiui/util/HapticFeedbackUtil;

    new-instance p2, Lum/b;

    invoke-direct {p2, p1}, Lum/b;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Laf/b;->c:Lum/b;

    invoke-static {}, Lmiui/util/HapticFeedbackUtil;->isSupportLinearMotorVibrate()Z

    move-result p1

    iput-boolean p1, p0, Laf/b;->b:Z

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;ZLbk/g;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Laf/b;-><init>(Landroid/content/Context;Z)V

    return-void
.end method

.method public static final synthetic a()Laf/b;
    .locals 1

    sget-object v0, Laf/b;->f:Laf/b;

    return-object v0
.end method

.method public static final synthetic b(Laf/b;)V
    .locals 0

    sput-object p0, Laf/b;->f:Laf/b;

    return-void
.end method


# virtual methods
.method public final c(II)V
    .locals 2

    iget-boolean v0, p0, Laf/b;->b:Z

    if-eqz v0, :cond_1

    const-string v0, "2.0"

    invoke-static {v0}, Lmiuix/view/HapticCompat;->c(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object p1, p0, Laf/b;->c:Lum/b;

    invoke-virtual {p1, p2, v1}, Lum/b;->d(IZ)Z

    goto :goto_0

    :cond_0
    iget-object p2, p0, Laf/b;->c:Lum/b;

    invoke-virtual {p2, p1, v1}, Lum/b;->d(IZ)Z

    :cond_1
    :goto_0
    return-void
.end method
