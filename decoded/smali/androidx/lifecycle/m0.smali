.class public final Landroidx/lifecycle/m0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lkotlin/jvm/JvmName;
    name = "SavedStateHandleSupport"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nSavedStateHandleSupport.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SavedStateHandleSupport.kt\nandroidx/lifecycle/SavedStateHandleSupport\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 InitializerViewModelFactory.kt\nandroidx/lifecycle/viewmodel/InitializerViewModelFactoryKt\n*L\n1#1,225:1\n1#2:226\n31#3:227\n63#3,2:228\n*S KotlinDebug\n*F\n+ 1 SavedStateHandleSupport.kt\nandroidx/lifecycle/SavedStateHandleSupport\n*L\n109#1:227\n110#1:228,2\n*E\n"
    }
.end annotation


# static fields
.field public static final a:Lp0/a$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lp0/a$b<",
            "Lx0/d;",
            ">;"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final b:Lp0/a$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lp0/a$b<",
            "Landroidx/lifecycle/y0;",
            ">;"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final c:Lp0/a$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lp0/a$b<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/lifecycle/m0$b;

    invoke-direct {v0}, Landroidx/lifecycle/m0$b;-><init>()V

    sput-object v0, Landroidx/lifecycle/m0;->a:Lp0/a$b;

    new-instance v0, Landroidx/lifecycle/m0$c;

    invoke-direct {v0}, Landroidx/lifecycle/m0$c;-><init>()V

    sput-object v0, Landroidx/lifecycle/m0;->b:Lp0/a$b;

    new-instance v0, Landroidx/lifecycle/m0$a;

    invoke-direct {v0}, Landroidx/lifecycle/m0$a;-><init>()V

    sput-object v0, Landroidx/lifecycle/m0;->c:Lp0/a$b;

    return-void
.end method

.method public static final a(Lp0/a;)Landroidx/lifecycle/l0;
    .locals 4
    .param p0    # Lp0/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Landroidx/lifecycle/m0;->a:Lp0/a$b;

    invoke-virtual {p0, v0}, Lp0/a;->a(Lp0/a$b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lx0/d;

    if-eqz v0, :cond_2

    sget-object v1, Landroidx/lifecycle/m0;->b:Lp0/a$b;

    invoke-virtual {p0, v1}, Lp0/a;->a(Lp0/a$b;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/lifecycle/y0;

    if-eqz v1, :cond_1

    sget-object v2, Landroidx/lifecycle/m0;->c:Lp0/a$b;

    invoke-virtual {p0, v2}, Lp0/a;->a(Lp0/a$b;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    sget-object v3, Landroidx/lifecycle/u0$c;->c:Lp0/a$b;

    invoke-virtual {p0, v3}, Lp0/a;->a(Lp0/a$b;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_0

    invoke-static {v0, v1, p0, v2}, Landroidx/lifecycle/m0;->b(Lx0/d;Landroidx/lifecycle/y0;Ljava/lang/String;Landroid/os/Bundle;)Landroidx/lifecycle/l0;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "CreationExtras must have a value by `VIEW_MODEL_KEY`"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "CreationExtras must have a value by `VIEW_MODEL_STORE_OWNER_KEY`"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "CreationExtras must have a value by `SAVED_STATE_REGISTRY_OWNER_KEY`"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static final b(Lx0/d;Landroidx/lifecycle/y0;Ljava/lang/String;Landroid/os/Bundle;)Landroidx/lifecycle/l0;
    .locals 1

    invoke-static {p0}, Landroidx/lifecycle/m0;->c(Lx0/d;)Landroidx/lifecycle/n0;

    move-result-object p0

    invoke-static {p1}, Landroidx/lifecycle/m0;->d(Landroidx/lifecycle/y0;)Landroidx/lifecycle/o0;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/o0;->a()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/l0;

    if-nez v0, :cond_0

    sget-object v0, Landroidx/lifecycle/l0;->f:Landroidx/lifecycle/l0$a;

    invoke-virtual {p0, p2}, Landroidx/lifecycle/n0;->b(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    invoke-virtual {v0, p0, p3}, Landroidx/lifecycle/l0$a;->a(Landroid/os/Bundle;Landroid/os/Bundle;)Landroidx/lifecycle/l0;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/lifecycle/o0;->a()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public static final c(Lx0/d;)Landroidx/lifecycle/n0;
    .locals 1
    .param p0    # Lx0/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lx0/d;->getSavedStateRegistry()Landroidx/savedstate/a;

    move-result-object p0

    const-string v0, "androidx.lifecycle.internal.SavedStateHandlesProvider"

    invoke-virtual {p0, v0}, Landroidx/savedstate/a;->c(Ljava/lang/String;)Landroidx/savedstate/a$c;

    move-result-object p0

    instance-of v0, p0, Landroidx/lifecycle/n0;

    if-eqz v0, :cond_0

    check-cast p0, Landroidx/lifecycle/n0;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "enableSavedStateHandles() wasn\'t called prior to createSavedStateHandle() call"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final d(Landroidx/lifecycle/y0;)Landroidx/lifecycle/o0;
    .locals 4
    .param p0    # Landroidx/lifecycle/y0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-class v0, Landroidx/lifecycle/o0;

    const-string v1, "<this>"

    invoke-static {p0, v1}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lp0/c;

    invoke-direct {v1}, Lp0/c;-><init>()V

    sget-object v2, Landroidx/lifecycle/m0$d;->a:Landroidx/lifecycle/m0$d;

    invoke-static {v0}, Lbk/z;->b(Ljava/lang/Class;)Lhk/b;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Lp0/c;->a(Lhk/b;Lak/l;)V

    invoke-virtual {v1}, Lp0/c;->b()Landroidx/lifecycle/u0$b;

    move-result-object v1

    new-instance v2, Landroidx/lifecycle/u0;

    invoke-direct {v2, p0, v1}, Landroidx/lifecycle/u0;-><init>(Landroidx/lifecycle/y0;Landroidx/lifecycle/u0$b;)V

    const-string p0, "androidx.lifecycle.internal.SavedStateHandlesVM"

    invoke-virtual {v2, p0, v0}, Landroidx/lifecycle/u0;->b(Ljava/lang/String;Ljava/lang/Class;)Landroidx/lifecycle/r0;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/o0;

    return-object p0
.end method
