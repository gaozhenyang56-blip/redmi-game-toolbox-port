.class public final Lcom/miui/gamebooster/windowmanager/newbox/q;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gamebooster/windowmanager/newbox/q$a;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nGameToolBox2BuryPoint.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GameToolBox2BuryPoint.kt\ncom/miui/gamebooster/windowmanager/newbox/GameToolBox2BuryPoint\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,864:1\n600#1,4:876\n1549#2:865\n1620#2,3:866\n1855#2,2:869\n1789#2,2:871\n1855#2,2:873\n1791#2:875\n*S KotlinDebug\n*F\n+ 1 GameToolBox2BuryPoint.kt\ncom/miui/gamebooster/windowmanager/newbox/GameToolBox2BuryPoint\n*L\n665#1:876,4\n277#1:865\n277#1:866,3\n375#1:869,2\n418#1:871,2\n422#1:873,2\n418#1:875\n*E\n"
    }
.end annotation


# static fields
.field public static final a:Lcom/miui/gamebooster/windowmanager/newbox/q;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final b:Loj/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final c:Ljava/text/DateFormat;

.field private static final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/view/View;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final f:Loj/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final g:Loj/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final h:Loj/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final i:Loj/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final j:Loj/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final k:Loj/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static l:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static m:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static n:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/gamebooster/windowmanager/newbox/q;

    invoke-direct {v0}, Lcom/miui/gamebooster/windowmanager/newbox/q;-><init>()V

    sput-object v0, Lcom/miui/gamebooster/windowmanager/newbox/q;->a:Lcom/miui/gamebooster/windowmanager/newbox/q;

    sget-object v0, Lcom/miui/gamebooster/windowmanager/newbox/q$c;->a:Lcom/miui/gamebooster/windowmanager/newbox/q$c;

    invoke-static {v0}, Loj/g;->a(Lak/a;)Loj/f;

    move-result-object v0

    sput-object v0, Lcom/miui/gamebooster/windowmanager/newbox/q;->b:Loj/f;

    invoke-static {}, Ljava/text/DateFormat;->getDateInstance()Ljava/text/DateFormat;

    move-result-object v0

    sput-object v0, Lcom/miui/gamebooster/windowmanager/newbox/q;->c:Ljava/text/DateFormat;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcom/miui/gamebooster/windowmanager/newbox/q;->d:Ljava/util/Map;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcom/miui/gamebooster/windowmanager/newbox/q;->e:Ljava/util/Map;

    sget-object v0, Lcom/miui/gamebooster/windowmanager/newbox/q$g;->a:Lcom/miui/gamebooster/windowmanager/newbox/q$g;

    invoke-static {v0}, Loj/g;->a(Lak/a;)Loj/f;

    move-result-object v0

    sput-object v0, Lcom/miui/gamebooster/windowmanager/newbox/q;->f:Loj/f;

    sget-object v0, Lcom/miui/gamebooster/windowmanager/newbox/q$b;->a:Lcom/miui/gamebooster/windowmanager/newbox/q$b;

    invoke-static {v0}, Loj/g;->a(Lak/a;)Loj/f;

    move-result-object v0

    sput-object v0, Lcom/miui/gamebooster/windowmanager/newbox/q;->g:Loj/f;

    sget-object v0, Lcom/miui/gamebooster/windowmanager/newbox/q$i;->a:Lcom/miui/gamebooster/windowmanager/newbox/q$i;

    invoke-static {v0}, Loj/g;->a(Lak/a;)Loj/f;

    move-result-object v0

    sput-object v0, Lcom/miui/gamebooster/windowmanager/newbox/q;->h:Loj/f;

    sget-object v0, Lcom/miui/gamebooster/windowmanager/newbox/q$f;->a:Lcom/miui/gamebooster/windowmanager/newbox/q$f;

    invoke-static {v0}, Loj/g;->a(Lak/a;)Loj/f;

    move-result-object v0

    sput-object v0, Lcom/miui/gamebooster/windowmanager/newbox/q;->i:Loj/f;

    sget-object v0, Lcom/miui/gamebooster/windowmanager/newbox/q$e;->a:Lcom/miui/gamebooster/windowmanager/newbox/q$e;

    invoke-static {v0}, Loj/g;->a(Lak/a;)Loj/f;

    move-result-object v0

    sput-object v0, Lcom/miui/gamebooster/windowmanager/newbox/q;->j:Loj/f;

    sget-object v0, Lcom/miui/gamebooster/windowmanager/newbox/q$d;->a:Lcom/miui/gamebooster/windowmanager/newbox/q$d;

    invoke-static {v0}, Loj/g;->a(Lak/a;)Loj/f;

    move-result-object v0

    sput-object v0, Lcom/miui/gamebooster/windowmanager/newbox/q;->k:Loj/f;

    const-string v0, ""

    sput-object v0, Lcom/miui/gamebooster/windowmanager/newbox/q;->l:Ljava/lang/String;

    sput-object v0, Lcom/miui/gamebooster/windowmanager/newbox/q;->m:Ljava/lang/String;

    sput-object v0, Lcom/miui/gamebooster/windowmanager/newbox/q;->n:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic a(Lcom/miui/gamebooster/windowmanager/newbox/q;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/windowmanager/newbox/q;->e(Ljava/lang/String;)V

    return-void
.end method

.method private final b()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GBAS_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/miui/gamebooster/windowmanager/newbox/q;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final c()Lcom/google/gson/Gson;
    .locals 1

    sget-object v0, Lcom/miui/gamebooster/windowmanager/newbox/q;->k:Loj/f;

    invoke-interface {v0}, Loj/f;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/Gson;

    return-object v0
.end method

.method private final d()Z
    .locals 1

    sget-object v0, Lcom/miui/gamebooster/windowmanager/newbox/q;->j:Loj/f;

    invoke-interface {v0}, Loj/f;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private final e(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/miui/gamebooster/windowmanager/newbox/q;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "GameToolBox2BuryPoint"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private final f(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {p1, p2}, Lr4/a;->r(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "save(key: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", value: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x29

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/windowmanager/newbox/q;->e(Ljava/lang/String;)V

    return-void
.end method

.method public static final g(Lcom/miui/gamebooster/aihelper/GameAISettingsDTO;)V
    .locals 7
    .param p0    # Lcom/miui/gamebooster/aihelper/GameAISettingsDTO;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/miui/gamebooster/windowmanager/newbox/q$h;->a:Lcom/miui/gamebooster/windowmanager/newbox/q$h;

    sget-object v1, Lcom/miui/gamebooster/windowmanager/newbox/q;->a:Lcom/miui/gamebooster/windowmanager/newbox/q;

    invoke-direct {v1}, Lcom/miui/gamebooster/windowmanager/newbox/q;->b()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1}, Lcom/miui/gamebooster/windowmanager/newbox/q;->c()Lcom/google/gson/Gson;

    move-result-object v3

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/miui/gamebooster/aihelper/GameAISettingsDTO;->getSettings()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_1

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/gamebooster/aihelper/AISettingDTO;

    invoke-interface {v0, v4, v5}, Lak/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v5}, Lcom/miui/gamebooster/aihelper/AISettingDTO;->needShowMutexSelectable()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v5}, Lcom/miui/gamebooster/aihelper/AISettingDTO;->getSecondSettings()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/miui/gamebooster/aihelper/AISettingDTO;

    invoke-interface {v0, v4, v6}, Lak/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :cond_2
    invoke-virtual {v3, v4}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, v2, p0}, Lcom/miui/gamebooster/windowmanager/newbox/q;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
