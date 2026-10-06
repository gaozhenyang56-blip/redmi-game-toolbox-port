.class public final Lcom/miui/gamebooster/customview/l$a;
.super Ltj/a;
.source "SourceFile"

# interfaces
.implements Llk/e0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gamebooster/customview/l;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nCoroutineExceptionHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CoroutineExceptionHandler.kt\nkotlinx/coroutines/CoroutineExceptionHandlerKt$CoroutineExceptionHandler$1\n+ 2 GameTurboFrameLayout.kt\ncom/miui/gamebooster/customview/GameTurboFrameLayout\n*L\n1#1,110:1\n14#2,2:111\n*E\n"
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/miui/gamebooster/customview/l;


# direct methods
.method public constructor <init>(Llk/e0$a;Lcom/miui/gamebooster/customview/l;)V
    .locals 0

    iput-object p2, p0, Lcom/miui/gamebooster/customview/l$a;->b:Lcom/miui/gamebooster/customview/l;

    invoke-direct {p0, p1}, Ltj/a;-><init>(Ltj/g$c;)V

    return-void
.end method


# virtual methods
.method public A(Ltj/g;Ljava/lang/Throwable;)V
    .locals 2
    .param p1    # Ltj/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    iget-object p1, p0, Lcom/miui/gamebooster/customview/l$a;->b:Lcom/miui/gamebooster/customview/l;

    invoke-virtual {p1}, Lcom/miui/gamebooster/customview/l;->getTAG()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "caught exception by "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/gamebooster/customview/l$a;->b:Lcom/miui/gamebooster/customview/l;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " , exception is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lbh/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
