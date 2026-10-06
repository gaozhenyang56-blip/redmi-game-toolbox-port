.class public final Lj8/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nAudioEffectUIUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AudioEffectUIUtils.kt\ncom/miui/gamebooster/videobox/utils/AudioEffectUIUtils\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,48:1\n1774#2,4:49\n*S KotlinDebug\n*F\n+ 1 AudioEffectUIUtils.kt\ncom/miui/gamebooster/videobox/utils/AudioEffectUIUtils\n*L\n44#1:49,4\n*E\n"
    }
.end annotation


# static fields
.field public static final a:Lj8/d;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lj8/d;

    invoke-direct {v0}, Lj8/d;-><init>()V

    sput-object v0, Lj8/d;->a:Lj8/d;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Landroid/view/View;I)Z
    .locals 3
    .param p0    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    invoke-static {}, Lj8/c;->f()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    const/16 v1, 0xc

    if-eq p1, v1, :cond_2

    const/16 v1, 0xf

    if-eq p1, v1, :cond_1

    const/16 v1, 0x11

    if-eq p1, v1, :cond_0

    goto :goto_1

    :cond_0
    const-string p1, "spatial"

    goto :goto_0

    :cond_1
    const-string p1, "surround"

    goto :goto_0

    :cond_2
    const-string p1, "dolby"

    :goto_0
    invoke-static {p1}, Lj8/c;->c(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    move v0, v2

    :cond_3
    :goto_1
    return v0
.end method

.method public static final b()I
    .locals 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    sget-object v1, Lg8/a;->f:Lg8/a;

    invoke-static {v0, v1}, Lf8/a;->e(Landroid/content/Context;Lg8/a;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_2

    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v2, v1

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lh8/b;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lh8/b;->d()Z

    move-result v3

    goto :goto_1

    :cond_2
    move v3, v1

    :goto_1
    if-eqz v3, :cond_1

    add-int/lit8 v2, v2, 0x1

    if-gez v2, :cond_1

    invoke-static {}, Lqj/l;->m()V

    goto :goto_0

    :cond_3
    move v1, v2

    :cond_4
    :goto_2
    return v1
.end method
