.class public final Ll9/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ll9/c;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final b:Loj/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ll9/c;

    invoke-direct {v0}, Ll9/c;-><init>()V

    sput-object v0, Ll9/c;->a:Ll9/c;

    sget-object v0, Loj/j;->a:Loj/j;

    sget-object v1, Ll9/c$a;->a:Ll9/c$a;

    invoke-static {v0, v1}, Loj/g;->b(Loj/j;Lak/a;)Loj/f;

    move-result-object v0

    sput-object v0, Ll9/c;->b:Loj/f;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a()Lcom/miui/securitycenter/Application;
    .locals 1

    sget-object v0, Ll9/c;->b:Loj/f;

    invoke-interface {v0}, Loj/f;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/securitycenter/Application;

    return-object v0
.end method

.method public static final b()Ljava/lang/String;
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    sget-object v0, Ll9/c;->a:Ll9/c;

    invoke-direct {v0}, Ll9/c;->a()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-static {v0}, Leg/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    if-nez v0, :cond_2

    sget-object v0, Ll9/c;->a:Ll9/c;

    invoke-direct {v0}, Ll9/c;->a()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-static {v0}, Lef/w;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    const-string v0, ""

    :cond_1
    return-object v0

    :cond_2
    new-instance v0, Loj/k;

    invoke-direct {v0}, Loj/k;-><init>()V

    throw v0
.end method

.method private final c()Ljava/lang/String;
    .locals 1

    const-string v0, "https://flash.sec.miui.com/satisfaction/questionnaire/dispatch"

    return-object v0
.end method

.method public static final d()Ljava/lang/String;
    .locals 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sget-object v1, Ll9/c;->a:Ll9/c;

    invoke-direct {v1}, Ll9/c;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ll9/c;->b()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mi"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "8aa17aa9-9138-4f36-8b5d-8a259851eb78"

    invoke-static {v0, v2}, Leg/j;->m(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "getParamsSignature(this,\u2026ORE_SYNC_PREINSTALL_UUID)"

    invoke-static {v2, v3}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "sign"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lp4/i;

    const-string v3, "gs_config"

    invoke-direct {v2, v3}, Lp4/i;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v0, v2}, Leg/j;->e(Ljava/lang/String;Ljava/util/Map;Lp4/i;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pullQuestionnaireConfiguration = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "globalsatisfaction_GSNetUtil"

    invoke-static {v2, v1}, Ll9/b;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "data"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "jsonObject.getString(\"data\")"

    invoke-static {v0, v1}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    return-object v0
.end method
