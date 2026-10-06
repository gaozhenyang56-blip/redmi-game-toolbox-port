.class public Lcom/miui/gamebooster/customview/l;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nGameTurboFrameLayout.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GameTurboFrameLayout.kt\ncom/miui/gamebooster/customview/GameTurboFrameLayout\n+ 2 CoroutineExceptionHandler.kt\nkotlinx/coroutines/CoroutineExceptionHandlerKt\n*L\n1#1,18:1\n49#2,4:19\n*S KotlinDebug\n*F\n+ 1 GameTurboFrameLayout.kt\ncom/miui/gamebooster/customview/GameTurboFrameLayout\n*L\n13#1:19,4\n*E\n"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final b:Llk/e0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final c:Llk/i0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/miui/gamebooster/customview/l;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILbk/g;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string p1, "GameTurboFrameLayout"

    iput-object p1, p0, Lcom/miui/gamebooster/customview/l;->a:Ljava/lang/String;

    sget-object p1, Llk/e0;->b0:Llk/e0$a;

    new-instance p2, Lcom/miui/gamebooster/customview/l$a;

    invoke-direct {p2, p1, p0}, Lcom/miui/gamebooster/customview/l$a;-><init>(Llk/e0$a;Lcom/miui/gamebooster/customview/l;)V

    iput-object p2, p0, Lcom/miui/gamebooster/customview/l;->b:Llk/e0;

    const/4 p1, 0x0

    const/4 p3, 0x1

    invoke-static {p1, p3, p1}, Llk/n2;->b(Llk/s1;ILjava/lang/Object;)Llk/u;

    move-result-object p1

    invoke-interface {p1, p2}, Ltj/g;->g(Ltj/g;)Ltj/g;

    move-result-object p1

    invoke-static {}, Llk/w0;->c()Llk/d2;

    move-result-object p2

    invoke-virtual {p2}, Llk/d2;->Y()Llk/d2;

    move-result-object p2

    invoke-interface {p1, p2}, Ltj/g;->g(Ltj/g;)Ltj/g;

    move-result-object p1

    new-instance p2, Llk/h0;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "coroutine-"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Llk/h0;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, p2}, Ltj/g;->g(Ltj/g;)Ltj/g;

    move-result-object p1

    invoke-static {p1}, Llk/j0;->a(Ltj/g;)Llk/i0;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/gamebooster/customview/l;->c:Llk/i0;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILbk/g;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/gamebooster/customview/l;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public final getTAG()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/miui/gamebooster/customview/l;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final getUncaughtExceptionHandler()Llk/e0;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/miui/gamebooster/customview/l;->b:Llk/e0;

    return-object v0
.end method

.method public final getViewCoroutineScope()Llk/i0;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/miui/gamebooster/customview/l;->c:Llk/i0;

    return-object v0
.end method
