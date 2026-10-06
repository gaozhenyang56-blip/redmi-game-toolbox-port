.class public final Lcom/xiaomi/ai/vision/sdk/AiCore;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/ai/vision/sdk/AiCore$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0096\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010!\n\u0002\u0008\u0004\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0008\u0007*\u0002@H\u0008\u0000\u0018\u0000 M2\u00020\u0001:\u0001\u0018B\u001b\u0012\u0006\u0010\u001a\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010 \u001a\u0004\u0018\u00010\u001b\u00a2\u0006\u0004\u0008K\u0010LJ\u001c\u0010\u0007\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u00022\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0004H\u0002J\"\u0010\r\u001a\u00020\u00062\u0008\u0010\t\u001a\u0004\u0018\u00010\u00082\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u000c\u001a\u00020\u0004H\u0002J\u0018\u0010\u0012\u001a\u00020\u00062\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u0011\u001a\u00020\u0010J\u001a\u0010\u0014\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u00022\u0008\u0008\u0002\u0010\u0013\u001a\u00020\nJ\u0010\u0010\u0015\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0002J\u0006\u0010\u0016\u001a\u00020\u0010J\u000e\u0010\u0017\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004R\u0014\u0010\u001a\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0018\u0010\u0019R\u0019\u0010 \u001a\u0004\u0018\u00010\u001b8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u001c\u0010\u001d\u001a\u0004\u0008\u001e\u0010\u001fR\u0018\u0010\u000f\u001a\u0004\u0018\u00010!8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\"\u0010#R\u0014\u0010\'\u001a\u00020$8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008%\u0010&R\u0014\u0010+\u001a\u00020(8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008)\u0010*R\u0018\u0010/\u001a\u0004\u0018\u00010,8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008-\u0010.R \u00104\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u000201008\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00082\u00103R \u00107\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u000205008\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00086\u00103R \u0010:\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u000208008\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00089\u00103R&\u0010=\u001a\u0014\u0012\u0004\u0012\u00020\u0004\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00010;008\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008<\u00103R \u0010?\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0008008\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008>\u00103R\u0014\u0010C\u001a\u00020@8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008A\u0010BR\u0014\u0010G\u001a\u00020D8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008E\u0010FR\u0014\u0010J\u001a\u00020H8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010I\u00a8\u0006N"
    }
    d2 = {
        "Lcom/xiaomi/ai/vision/sdk/AiCore;",
        "",
        "Landroid/content/Context;",
        "context",
        "",
        "reason",
        "Loj/t;",
        "u",
        "Lji/c;",
        "callback",
        "",
        "code",
        "msg",
        "x",
        "Landroid/os/IInterface;",
        "service",
        "",
        "monitor",
        "w",
        "retryCount",
        "q",
        "n",
        "p",
        "y",
        "a",
        "Landroid/content/Context;",
        "ctx",
        "Lji/a;",
        "b",
        "Lji/a;",
        "v",
        "()Lji/a;",
        "coreCallback",
        "Lcom/xiaomi/aiasst/vision/sdk/ITranslateSdkInterface;",
        "c",
        "Lcom/xiaomi/aiasst/vision/sdk/ITranslateSdkInterface;",
        "Landroid/os/Handler;",
        "d",
        "Landroid/os/Handler;",
        "uiHandler",
        "Lcom/google/gson/Gson;",
        "e",
        "Lcom/google/gson/Gson;",
        "gson",
        "Lji/b;",
        "f",
        "Lji/b;",
        "mCtaCallback",
        "",
        "Lji/d;",
        "g",
        "Ljava/util/Map;",
        "mRecognizeCallbackMap",
        "Lji/f;",
        "h",
        "mTtsCallbackMap",
        "Lji/e;",
        "i",
        "mTextTranslateCallbackMap",
        "",
        "j",
        "mDownloadModelCallbackMap",
        "k",
        "mErrorCallbackMap",
        "com/xiaomi/ai/vision/sdk/AiCore$sdkCallback$1",
        "l",
        "Lcom/xiaomi/ai/vision/sdk/AiCore$sdkCallback$1;",
        "sdkCallback",
        "Landroid/os/IBinder$DeathRecipient;",
        "m",
        "Landroid/os/IBinder$DeathRecipient;",
        "deathRecipient",
        "com/xiaomi/ai/vision/sdk/AiCore$b",
        "Lcom/xiaomi/ai/vision/sdk/AiCore$b;",
        "serviceConnection",
        "<init>",
        "(Landroid/content/Context;Lji/a;)V",
        "o",
        "AiCapability_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# static fields
.field public static final o:Lcom/xiaomi/ai/vision/sdk/AiCore$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final a:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final b:Lji/a;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private c:Lcom/xiaomi/aiasst/vision/sdk/ITranslateSdkInterface;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final d:Landroid/os/Handler;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final e:Lcom/google/gson/Gson;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private f:Lji/b;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lji/d;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lji/f;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lji/e;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lji/c;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final l:Lcom/xiaomi/ai/vision/sdk/AiCore$sdkCallback$1;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final m:Landroid/os/IBinder$DeathRecipient;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final n:Lcom/xiaomi/ai/vision/sdk/AiCore$b;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/xiaomi/ai/vision/sdk/AiCore$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaomi/ai/vision/sdk/AiCore$a;-><init>(Lbk/g;)V

    sput-object v0, Lcom/xiaomi/ai/vision/sdk/AiCore;->o:Lcom/xiaomi/ai/vision/sdk/AiCore$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lji/a;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lji/a;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "ctx"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/ai/vision/sdk/AiCore;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/xiaomi/ai/vision/sdk/AiCore;->b:Lji/a;

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/xiaomi/ai/vision/sdk/AiCore;->d:Landroid/os/Handler;

    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/ai/vision/sdk/AiCore;->e:Lcom/google/gson/Gson;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/ai/vision/sdk/AiCore;->g:Ljava/util/Map;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/ai/vision/sdk/AiCore;->h:Ljava/util/Map;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/ai/vision/sdk/AiCore;->i:Ljava/util/Map;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/ai/vision/sdk/AiCore;->j:Ljava/util/Map;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/ai/vision/sdk/AiCore;->k:Ljava/util/Map;

    new-instance p1, Lcom/xiaomi/ai/vision/sdk/AiCore$sdkCallback$1;

    invoke-direct {p1, p0}, Lcom/xiaomi/ai/vision/sdk/AiCore$sdkCallback$1;-><init>(Lcom/xiaomi/ai/vision/sdk/AiCore;)V

    iput-object p1, p0, Lcom/xiaomi/ai/vision/sdk/AiCore;->l:Lcom/xiaomi/ai/vision/sdk/AiCore$sdkCallback$1;

    new-instance p1, Lii/c;

    invoke-direct {p1}, Lii/c;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/ai/vision/sdk/AiCore;->m:Landroid/os/IBinder$DeathRecipient;

    new-instance p1, Lcom/xiaomi/ai/vision/sdk/AiCore$b;

    invoke-direct {p1, p0}, Lcom/xiaomi/ai/vision/sdk/AiCore$b;-><init>(Lcom/xiaomi/ai/vision/sdk/AiCore;)V

    iput-object p1, p0, Lcom/xiaomi/ai/vision/sdk/AiCore;->n:Lcom/xiaomi/ai/vision/sdk/AiCore$b;

    return-void
.end method

.method public static synthetic a(Lcom/xiaomi/ai/vision/sdk/AiCore;Landroid/content/Context;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/xiaomi/ai/vision/sdk/AiCore;->s(Lcom/xiaomi/ai/vision/sdk/AiCore;Landroid/content/Context;I)V

    return-void
.end method

.method public static synthetic b()V
    .locals 0

    invoke-static {}, Lcom/xiaomi/ai/vision/sdk/AiCore;->t()V

    return-void
.end method

.method public static final synthetic c(Lcom/xiaomi/ai/vision/sdk/AiCore;)Lcom/google/gson/Gson;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/ai/vision/sdk/AiCore;->e:Lcom/google/gson/Gson;

    return-object p0
.end method

.method public static final synthetic d(Lcom/xiaomi/ai/vision/sdk/AiCore;)Lji/b;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/ai/vision/sdk/AiCore;->f:Lji/b;

    return-object p0
.end method

.method public static final synthetic e(Lcom/xiaomi/ai/vision/sdk/AiCore;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/ai/vision/sdk/AiCore;->k:Ljava/util/Map;

    return-object p0
.end method

.method public static final synthetic f(Lcom/xiaomi/ai/vision/sdk/AiCore;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/ai/vision/sdk/AiCore;->g:Ljava/util/Map;

    return-object p0
.end method

.method public static final synthetic g(Lcom/xiaomi/ai/vision/sdk/AiCore;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/ai/vision/sdk/AiCore;->i:Ljava/util/Map;

    return-object p0
.end method

.method public static final synthetic h(Lcom/xiaomi/ai/vision/sdk/AiCore;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/ai/vision/sdk/AiCore;->h:Ljava/util/Map;

    return-object p0
.end method

.method public static final synthetic i(Lcom/xiaomi/ai/vision/sdk/AiCore;)Lcom/xiaomi/ai/vision/sdk/AiCore$sdkCallback$1;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/ai/vision/sdk/AiCore;->l:Lcom/xiaomi/ai/vision/sdk/AiCore$sdkCallback$1;

    return-object p0
.end method

.method public static final synthetic j(Lcom/xiaomi/ai/vision/sdk/AiCore;)Lcom/xiaomi/aiasst/vision/sdk/ITranslateSdkInterface;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/ai/vision/sdk/AiCore;->c:Lcom/xiaomi/aiasst/vision/sdk/ITranslateSdkInterface;

    return-object p0
.end method

.method public static final synthetic k(Lcom/xiaomi/ai/vision/sdk/AiCore;Lji/c;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/xiaomi/ai/vision/sdk/AiCore;->x(Lji/c;ILjava/lang/String;)V

    return-void
.end method

.method public static final synthetic l(Lcom/xiaomi/ai/vision/sdk/AiCore;Lji/b;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/ai/vision/sdk/AiCore;->f:Lji/b;

    return-void
.end method

.method public static final synthetic m(Lcom/xiaomi/ai/vision/sdk/AiCore;Lcom/xiaomi/aiasst/vision/sdk/ITranslateSdkInterface;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/ai/vision/sdk/AiCore;->c:Lcom/xiaomi/aiasst/vision/sdk/ITranslateSdkInterface;

    return-void
.end method

.method public static synthetic o(Lcom/xiaomi/ai/vision/sdk/AiCore;Landroid/content/Context;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/xiaomi/ai/vision/sdk/AiCore;->a:Landroid/content/Context;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/xiaomi/ai/vision/sdk/AiCore;->n(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic r(Lcom/xiaomi/ai/vision/sdk/AiCore;Landroid/content/Context;IILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/xiaomi/ai/vision/sdk/AiCore;->a:Landroid/content/Context;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    const/4 p2, 0x1

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/ai/vision/sdk/AiCore;->q(Landroid/content/Context;I)V

    return-void
.end method

.method private static final s(Lcom/xiaomi/ai/vision/sdk/AiCore;Landroid/content/Context;I)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$context"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/ai/vision/sdk/AiCore;->q(Landroid/content/Context;I)V

    return-void
.end method

.method private static final t()V
    .locals 2

    const-string v0, "AiCore"

    const-string v1, "server died"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private final u(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unbindService, reason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "AiCore"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/xiaomi/ai/vision/sdk/AiCore;->c:Lcom/xiaomi/aiasst/vision/sdk/ITranslateSdkInterface;

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-object p2, p0, Lcom/xiaomi/ai/vision/sdk/AiCore;->n:Lcom/xiaomi/ai/vision/sdk/AiCore$b;

    invoke-virtual {p1, p2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/xiaomi/ai/vision/sdk/AiCore;->c:Lcom/xiaomi/aiasst/vision/sdk/ITranslateSdkInterface;

    iget-object p1, p0, Lcom/xiaomi/ai/vision/sdk/AiCore;->b:Lji/a;

    if-eqz p1, :cond_1

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lji/a;->b(Z)V

    :cond_1
    return-void
.end method

.method private final x(Lji/c;ILjava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-interface {p1, p2, p3}, Lji/c;->onError(ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/xiaomi/ai/vision/sdk/AiCore;->b:Lji/a;

    if-eqz p1, :cond_1

    invoke-interface {p1, p2, p3}, Lji/a;->onError(ILjava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final n(Landroid/content/Context;)V
    .locals 11
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-class v0, Ljava/lang/Boolean;

    const-string v1, "doFunc: "

    const-string v2, "context"

    invoke-static {p1, v2}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string v2, "context.packageName"

    invoke-static {p1, v2}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {p0}, Lcom/xiaomi/ai/vision/sdk/AiCore;->j(Lcom/xiaomi/ai/vision/sdk/AiCore;)Lcom/xiaomi/aiasst/vision/sdk/ITranslateSdkInterface;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-interface {v6, v3}, Lcom/xiaomi/aiasst/vision/sdk/ITranslateSdkInterface;->p(I)Z

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    move v6, v3

    :goto_0
    const-string v7, "AiCore"

    if-nez v6, :cond_1

    :try_start_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lhi/a;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", func disabled !"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v7, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_1
    invoke-static {p0}, Lcom/xiaomi/ai/vision/sdk/AiCore;->j(Lcom/xiaomi/ai/vision/sdk/AiCore;)Lcom/xiaomi/aiasst/vision/sdk/ITranslateSdkInterface;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-interface {v6, v3, p1}, Lcom/xiaomi/aiasst/vision/sdk/ITranslateSdkInterface;->c(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_2
    move-object v6, v2

    :goto_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lhi/a;->a(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", params: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", result: "

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", span: "

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long/2addr v9, v4

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v7, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v6, :cond_8

    invoke-static {v0, v0}, Lbk/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    goto :goto_2

    :cond_3
    const-class p1, Ljava/lang/Integer;

    invoke-static {v0, p1}, Lbk/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    goto :goto_2

    :cond_4
    const-class p1, Ljava/lang/Long;

    invoke-static {v0, p1}, Lbk/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    goto :goto_2

    :cond_5
    const-class p1, Ljava/lang/Float;

    invoke-static {v0, p1}, Lbk/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    goto :goto_2

    :cond_6
    const-class p1, Ljava/lang/Double;

    invoke-static {v0, p1}, Lbk/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    :cond_7
    :goto_2
    check-cast v6, Ljava/lang/Boolean;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    const/16 v0, 0x7d2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lhi/a;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " exception: "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v2, v0, p1}, Lcom/xiaomi/ai/vision/sdk/AiCore;->k(Lcom/xiaomi/ai/vision/sdk/AiCore;Lji/c;ILjava/lang/String;)V

    :cond_8
    :goto_3
    return-void
.end method

.method public final p()Z
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/ai/vision/sdk/AiCore;->c:Lcom/xiaomi/aiasst/vision/sdk/ITranslateSdkInterface;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/xiaomi/aiasst/vision/sdk/ITranslateSdkInterface;->K3()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkIfCtaAllowed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AiCore"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public final q(Landroid/content/Context;I)V
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x3e8

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.xiaomi.aiasst.vision.ACTION_TRANSLATE_SDK_SERVICE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.xiaomi.aiasst.vision"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "from"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "pid"

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/xiaomi/ai/vision/sdk/AiCore;->n:Lcom/xiaomi/ai/vision/sdk/AiCore$b;

    const/4 v3, 0x1

    invoke-virtual {p1, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_1

    const/4 v2, 0x3

    if-lt p2, v2, :cond_0

    iget-object p1, p0, Lcom/xiaomi/ai/vision/sdk/AiCore;->b:Lji/a;

    if-eqz p1, :cond_1

    const-string v2, "connect ai asst vision service fail\uff01"

    invoke-interface {p1, v0, v2}, Lji/a;->onError(ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/ai/vision/sdk/AiCore;->d:Landroid/os/Handler;

    new-instance v2, Lii/d;

    invoke-direct {v2, p0, p1, p2}, Lii/d;-><init>(Lcom/xiaomi/ai/vision/sdk/AiCore;Landroid/content/Context;I)V

    int-to-long v3, p2

    const-wide/16 v5, 0x3e8

    mul-long/2addr v3, v5

    const-wide/16 v5, 0xbb8

    invoke-static {v3, v4, v5, v6}, Lgk/g;->d(JJ)J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "bindService "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_2

    const-string v0, "success"

    goto :goto_1

    :cond_2
    const-string v0, "fail"

    :goto_1
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "!, retryCount: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AiCore"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception p1

    iget-object p2, p0, Lcom/xiaomi/ai/vision/sdk/AiCore;->b:Lji/a;

    if-eqz p2, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connect ai asst vision service exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " !"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Lji/a;->onError(ILjava/lang/String;)V

    :cond_3
    return-void
.end method

.method public final v()Lji/a;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/ai/vision/sdk/AiCore;->b:Lji/a;

    return-object v0
.end method

.method public final w(Landroid/os/IInterface;Z)V
    .locals 1
    .param p1    # Landroid/os/IInterface;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    if-eqz p1, :cond_2

    iget-object p2, p0, Lcom/xiaomi/ai/vision/sdk/AiCore;->m:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {p1, p2, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    iget-object p2, p0, Lcom/xiaomi/ai/vision/sdk/AiCore;->m:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {p1, p2, v0}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "monitorServerState, e: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AiCore"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method

.method public final y(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "reason"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/ai/vision/sdk/AiCore;->d:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/xiaomi/ai/vision/sdk/AiCore;->c:Lcom/xiaomi/aiasst/vision/sdk/ITranslateSdkInterface;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/xiaomi/aiasst/vision/sdk/ITranslateSdkInterface;->release()V

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/ai/vision/sdk/AiCore;->c:Lcom/xiaomi/aiasst/vision/sdk/ITranslateSdkInterface;

    if-eqz v0, :cond_1

    invoke-interface {v0, v1}, Lcom/xiaomi/aiasst/vision/sdk/ITranslateSdkInterface;->x4(Lcom/xiaomi/aiasst/vision/sdk/ITranslateSdkCallback;)V

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/ai/vision/sdk/AiCore;->a:Landroid/content/Context;

    invoke-direct {p0, v0, p1}, Lcom/xiaomi/ai/vision/sdk/AiCore;->u(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/xiaomi/ai/vision/sdk/AiCore;->f:Lji/b;

    iget-object p1, p0, Lcom/xiaomi/ai/vision/sdk/AiCore;->g:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    iget-object p1, p0, Lcom/xiaomi/ai/vision/sdk/AiCore;->h:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    iget-object p1, p0, Lcom/xiaomi/ai/vision/sdk/AiCore;->i:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    iget-object p1, p0, Lcom/xiaomi/ai/vision/sdk/AiCore;->k:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    iput-object v1, p0, Lcom/xiaomi/ai/vision/sdk/AiCore;->c:Lcom/xiaomi/aiasst/vision/sdk/ITranslateSdkInterface;

    return-void
.end method
