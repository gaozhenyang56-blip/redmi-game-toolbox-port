.class public final synthetic Landroidx/window/layout/s;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Landroidx/window/layout/t;->a:Landroidx/window/layout/t$a;

    return-void
.end method

.method public static a(Landroid/content/Context;)Landroidx/window/layout/t;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmName;
        name = "getOrCreate"
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Landroidx/window/layout/t;->a:Landroidx/window/layout/t$a;

    invoke-virtual {v0, p0}, Landroidx/window/layout/t$a;->a(Landroid/content/Context;)Landroidx/window/layout/t;

    move-result-object p0

    return-object p0
.end method
