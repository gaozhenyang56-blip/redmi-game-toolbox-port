.class public final Lcom/miui/gamebooster/framerate/FrameRateViewController;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gamebooster/framerate/FrameRateViewController$a;,
        Lcom/miui/gamebooster/framerate/FrameRateViewController$b;
    }
.end annotation


# static fields
.field public static final g:Lcom/miui/gamebooster/framerate/FrameRateViewController$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private portBound:Z
.field private final a:Lcom/miui/gamebooster/framerate/FrameRateView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final b:Landroid/content/Context;

.field private final c:Loj/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final d:Lcom/miui/gamebooster/framerate/FrameRateViewController$c;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final e:Lcom/miui/gamebooster/framerate/FrameRateViewController$callback$1;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private f:Lcom/miui/gameturbo/active/IFrameRateDataService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/miui/gamebooster/framerate/FrameRateViewController$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/gamebooster/framerate/FrameRateViewController$a;-><init>(Lbk/g;)V

    sput-object v0, Lcom/miui/gamebooster/framerate/FrameRateViewController;->g:Lcom/miui/gamebooster/framerate/FrameRateViewController$a;

    return-void
.end method

.method public constructor <init>(Lcom/miui/gamebooster/framerate/FrameRateView;)V
    .locals 1
    .param p1    # Lcom/miui/gamebooster/framerate/FrameRateView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "frameRateView"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/gamebooster/framerate/FrameRateViewController;->a:Lcom/miui/gamebooster/framerate/FrameRateView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/gamebooster/framerate/FrameRateViewController;->b:Landroid/content/Context;

    new-instance p1, Lcom/miui/gamebooster/framerate/FrameRateViewController$d;

    invoke-direct {p1, p0}, Lcom/miui/gamebooster/framerate/FrameRateViewController$d;-><init>(Lcom/miui/gamebooster/framerate/FrameRateViewController;)V

    invoke-static {p1}, Loj/g;->a(Lak/a;)Loj/f;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/gamebooster/framerate/FrameRateViewController;->c:Loj/f;

    new-instance p1, Lcom/miui/gamebooster/framerate/FrameRateViewController$c;

    invoke-direct {p1, p0}, Lcom/miui/gamebooster/framerate/FrameRateViewController$c;-><init>(Lcom/miui/gamebooster/framerate/FrameRateViewController;)V

    iput-object p1, p0, Lcom/miui/gamebooster/framerate/FrameRateViewController;->d:Lcom/miui/gamebooster/framerate/FrameRateViewController$c;

    new-instance p1, Lcom/miui/gamebooster/framerate/FrameRateViewController$callback$1;

    invoke-direct {p1, p0}, Lcom/miui/gamebooster/framerate/FrameRateViewController$callback$1;-><init>(Lcom/miui/gamebooster/framerate/FrameRateViewController;)V

    iput-object p1, p0, Lcom/miui/gamebooster/framerate/FrameRateViewController;->e:Lcom/miui/gamebooster/framerate/FrameRateViewController$callback$1;

    return-void
.end method

.method public static final varargs synthetic a(Lcom/miui/gamebooster/framerate/FrameRateViewController;[I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/framerate/FrameRateViewController;->e([I)V

    return-void
.end method

.method public static final synthetic b(Lcom/miui/gamebooster/framerate/FrameRateViewController;)Lcom/miui/gamebooster/framerate/FrameRateViewController$callback$1;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/framerate/FrameRateViewController;->e:Lcom/miui/gamebooster/framerate/FrameRateViewController$callback$1;

    return-object p0
.end method

.method public static final synthetic c(Lcom/miui/gamebooster/framerate/FrameRateViewController;)Lcom/miui/gamebooster/framerate/FrameRateView;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/framerate/FrameRateViewController;->a:Lcom/miui/gamebooster/framerate/FrameRateView;

    return-object p0
.end method

.method public static final synthetic d(Lcom/miui/gamebooster/framerate/FrameRateViewController;Lcom/miui/gameturbo/active/IFrameRateDataService;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/framerate/FrameRateViewController;->f:Lcom/miui/gameturbo/active/IFrameRateDataService;

    return-void
.end method

.method private final varargs e([I)V
    .locals 2

    invoke-direct {p0}, Lcom/miui/gamebooster/framerate/FrameRateViewController;->f()Lcom/miui/gamebooster/framerate/FrameRateViewController$b;

    move-result-object v0

    array-length v1, p1

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/miui/gamebooster/framerate/FrameRateViewController$b;->a([I)V

    return-void
.end method

.method private final f()Lcom/miui/gamebooster/framerate/FrameRateViewController$b;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/framerate/FrameRateViewController;->c:Loj/f;

    invoke-interface {v0}, Loj/f;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/framerate/FrameRateViewController$b;

    return-object v0
.end method


# virtual methods
.method public final g()V
    .locals 2
    iget-boolean v0, p0, Lcom/miui/gamebooster/framerate/FrameRateViewController;->portBound:Z
    if-eqz v0, :done
    const/4 v0, 0x0
    iput-boolean v0, p0, Lcom/miui/gamebooster/framerate/FrameRateViewController;->portBound:Z
    :try_start
    iget-object v0, p0, Lcom/miui/gamebooster/framerate/FrameRateViewController;->b:Landroid/content/Context;
    iget-object v1, p0, Lcom/miui/gamebooster/framerate/FrameRateViewController;->d:Lcom/miui/gamebooster/framerate/FrameRateViewController$c;
    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end
    .catch Ljava/lang/IllegalArgumentException; {:try_start .. :try_end} :released
    :done
    return-void
    :released
    move-exception v0
    return-void
.end method

.method public final h()V
    .locals 4

    const-string v0, "FrameRateViewController"

    const-string v1, "start()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/gamebooster/framerate/FrameRateViewController;->b:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/miui/gamebooster/framerate/FrameRateViewController;->b:Landroid/content/Context;

    const-class v3, Lcom/miui/gamebooster/gbservices/FrameRateDataService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v2, p0, Lcom/miui/gamebooster/framerate/FrameRateViewController;->d:Lcom/miui/gamebooster/framerate/FrameRateViewController$c;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    move-result v0
    iput-boolean v0, p0, Lcom/miui/gamebooster/framerate/FrameRateViewController;->portBound:Z

    return-void
.end method
