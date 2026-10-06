.class public final La8/q1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La8/q1$a;,
        La8/q1$b;
    }
.end annotation


# static fields
.field public static final a:La8/q1$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, La8/q1$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, La8/q1$a;-><init>(Lbk/g;)V

    sput-object v0, La8/q1;->a:La8/q1$a;

    return-void
.end method

.method public static final a(Landroid/content/Context;Ljava/lang/Runnable;)V
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Runnable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, La8/q1;->a:La8/q1$a;

    invoke-virtual {v0, p0, p1}, La8/q1$a;->b(Landroid/content/Context;Ljava/lang/Runnable;)V

    return-void
.end method
