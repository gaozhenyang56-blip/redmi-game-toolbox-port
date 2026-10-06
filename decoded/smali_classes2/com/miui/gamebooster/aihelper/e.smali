.class public final Lcom/miui/gamebooster/aihelper/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gamebooster/aihelper/e$a;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nAIHelperRepository.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AIHelperRepository.kt\ncom/miui/gamebooster/aihelper/AIHelperRepository\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,101:1\n1855#2:102\n1855#2,2:103\n1856#2:105\n*S KotlinDebug\n*F\n+ 1 AIHelperRepository.kt\ncom/miui/gamebooster/aihelper/AIHelperRepository\n*L\n63#1:102\n71#1:103,2\n63#1:105\n*E\n"
    }
.end annotation


# static fields
.field public static final f:Lcom/miui/gamebooster/aihelper/e$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final a:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final b:Loj/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final c:Loj/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private d:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final e:Loj/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/miui/gamebooster/aihelper/e$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/gamebooster/aihelper/e$a;-><init>(Lbk/g;)V

    sput-object v0, Lcom/miui/gamebooster/aihelper/e;->f:Lcom/miui/gamebooster/aihelper/e$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/gamebooster/aihelper/e;->a:Landroid/content/Context;

    sget-object p1, Lcom/miui/gamebooster/aihelper/e$c;->a:Lcom/miui/gamebooster/aihelper/e$c;

    invoke-static {p1}, Loj/g;->a(Lak/a;)Loj/f;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/gamebooster/aihelper/e;->b:Loj/f;

    sget-object p1, Lcom/miui/gamebooster/aihelper/e$f;->a:Lcom/miui/gamebooster/aihelper/e$f;

    invoke-static {p1}, Loj/g;->a(Lak/a;)Loj/f;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/gamebooster/aihelper/e;->c:Loj/f;

    sget-object p1, Lcom/miui/gamebooster/aihelper/e$e;->a:Lcom/miui/gamebooster/aihelper/e$e;

    invoke-static {p1}, Loj/g;->a(Lak/a;)Loj/f;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/gamebooster/aihelper/e;->e:Loj/f;

    return-void
.end method

.method public static final synthetic a(Lcom/miui/gamebooster/aihelper/e;Ljava/lang/String;)Lcom/xiaomi/venus/gameaisettingstartlib/bean/AiSettingResponse;
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/aihelper/e;->g(Ljava/lang/String;)Lcom/xiaomi/venus/gameaisettingstartlib/bean/AiSettingResponse;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic b(Lcom/miui/gamebooster/aihelper/e;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/aihelper/e;->a:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic c(Lcom/miui/gamebooster/aihelper/e;)Lcom/xiaomi/venus/gameaisettingstartlib/GameAiSettingManager;
    .locals 0

    invoke-direct {p0}, Lcom/miui/gamebooster/aihelper/e;->h()Lcom/xiaomi/venus/gameaisettingstartlib/GameAiSettingManager;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic d(Lcom/miui/gamebooster/aihelper/e;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/aihelper/e;->d:Ljava/lang/String;

    return-object p0
.end method

.method private final e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/miui/gamebooster/aihelper/e;->l()La8/x1;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, La8/y1;->j(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final g(Ljava/lang/String;)Lcom/xiaomi/venus/gameaisettingstartlib/bean/AiSettingResponse;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/xiaomi/venus/gameaisettingstartlib/bean/AiSettingResponse<",
            "Lcom/miui/gamebooster/aihelper/GameAISettingsDTO;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/miui/gamebooster/aihelper/e;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x3e7

    if-eqz v1, :cond_0

    new-instance p1, Lcom/xiaomi/venus/gameaisettingstartlib/bean/AiSettingResponse;

    const-string v0, "gameId is empty"

    invoke-direct {p1, v3, v0, v2}, Lcom/xiaomi/venus/gameaisettingstartlib/bean/AiSettingResponse;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_0
    invoke-direct {p0}, Lcom/miui/gamebooster/aihelper/e;->h()Lcom/xiaomi/venus/gameaisettingstartlib/GameAiSettingManager;

    move-result-object v1

    iget-object v4, p0, Lcom/miui/gamebooster/aihelper/e;->a:Landroid/content/Context;

    invoke-virtual {v1, v4, v0}, Lcom/xiaomi/venus/gameaisettingstartlib/GameAiSettingManager;->getCloudGameAiSettings(Landroid/content/Context;Ljava/lang/String;)Lcom/xiaomi/venus/gameaisettingstartlib/bean/AiSettingResponse;

    move-result-object v0

    sget-object v1, Lcom/miui/gamebooster/aihelper/f;->a:Lcom/miui/gamebooster/aihelper/f;

    iget-object v4, p0, Lcom/miui/gamebooster/aihelper/e;->a:Landroid/content/Context;

    invoke-virtual {v1, v4, p1}, Lcom/miui/gamebooster/aihelper/f;->b(Landroid/content/Context;Ljava/lang/String;)Lcom/miui/gamebooster/aihelper/GameAIHttpResp;

    move-result-object p1

    if-nez p1, :cond_1

    new-instance p1, Lcom/xiaomi/venus/gameaisettingstartlib/bean/AiSettingResponse;

    const/4 v0, -0x1

    const-string v1, "get settingInfo failed"

    invoke-direct {p1, v0, v1, v2}, Lcom/xiaomi/venus/gameaisettingstartlib/bean/AiSettingResponse;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    return-object p1

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "settingStatus from sdk is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/miui/gamebooster/aihelper/e;->k()Lcom/google/gson/Gson;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", settingInfo from server is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AIHelperRepository"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/miui/gamebooster/aihelper/GameAIHttpResp;->getData()Lcom/miui/gamebooster/aihelper/GameAISettingsDTO;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/miui/gamebooster/aihelper/GameAISettingsDTO;->getSettings()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/gamebooster/aihelper/AISettingDTO;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setting item is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, v0, Lcom/xiaomi/venus/gameaisettingstartlib/bean/AiSettingResponse;->data:Ljava/lang/Object;

    check-cast v5, Lcom/xiaomi/venus/gameaisettingstartlib/bean/GameAiSettings;

    invoke-virtual {v5}, Lcom/xiaomi/venus/gameaisettingstartlib/bean/GameAiSettings;->getConfig()Ljava/util/Map;

    move-result-object v5

    invoke-virtual {v4}, Lcom/miui/gamebooster/aihelper/AISettingDTO;->getOperateKey()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v4, v5}, Lcom/miui/gamebooster/aihelper/AISettingDTO;->setOperateValue(Ljava/lang/Integer;)V

    iget-object v5, v0, Lcom/xiaomi/venus/gameaisettingstartlib/bean/AiSettingResponse;->data:Ljava/lang/Object;

    check-cast v5, Lcom/xiaomi/venus/gameaisettingstartlib/bean/GameAiSettings;

    invoke-virtual {v5}, Lcom/xiaomi/venus/gameaisettingstartlib/bean/GameAiSettings;->getConfig()Ljava/util/Map;

    move-result-object v5

    invoke-virtual {v4}, Lcom/miui/gamebooster/aihelper/AISettingDTO;->getCloudKey()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v4, v5}, Lcom/miui/gamebooster/aihelper/AISettingDTO;->setCloudValue(Ljava/lang/Integer;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setting "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/miui/gamebooster/aihelper/AISettingDTO;->getOperateKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " value is "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/miui/gamebooster/aihelper/AISettingDTO;->getOperateValue()Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ", "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/miui/gamebooster/aihelper/AISettingDTO;->getCloudKey()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/miui/gamebooster/aihelper/AISettingDTO;->getCloudValue()Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Lcom/miui/gamebooster/aihelper/AISettingDTO;->getSecondSettings()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/gamebooster/aihelper/AISettingDTO;

    iget-object v9, v0, Lcom/xiaomi/venus/gameaisettingstartlib/bean/AiSettingResponse;->data:Ljava/lang/Object;

    check-cast v9, Lcom/xiaomi/venus/gameaisettingstartlib/bean/GameAiSettings;

    invoke-virtual {v9}, Lcom/xiaomi/venus/gameaisettingstartlib/bean/GameAiSettings;->getConfig()Ljava/util/Map;

    move-result-object v9

    invoke-virtual {v5}, Lcom/miui/gamebooster/aihelper/AISettingDTO;->getOperateKey()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v5, v9}, Lcom/miui/gamebooster/aihelper/AISettingDTO;->setOperateValue(Ljava/lang/Integer;)V

    iget-object v9, v0, Lcom/xiaomi/venus/gameaisettingstartlib/bean/AiSettingResponse;->data:Ljava/lang/Object;

    check-cast v9, Lcom/xiaomi/venus/gameaisettingstartlib/bean/GameAiSettings;

    invoke-virtual {v9}, Lcom/xiaomi/venus/gameaisettingstartlib/bean/GameAiSettings;->getConfig()Ljava/util/Map;

    move-result-object v9

    invoke-virtual {v5}, Lcom/miui/gamebooster/aihelper/AISettingDTO;->getCloudKey()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v5, v9}, Lcom/miui/gamebooster/aihelper/AISettingDTO;->setCloudValue(Ljava/lang/Integer;)V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/miui/gamebooster/aihelper/AISettingDTO;->getOperateKey()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/miui/gamebooster/aihelper/AISettingDTO;->getOperateValue()Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/miui/gamebooster/aihelper/AISettingDTO;->getCloudKey()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/miui/gamebooster/aihelper/AISettingDTO;->getCloudValue()Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5}, Lcom/miui/gamebooster/aihelper/AISettingDTO;->getThirdKey()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_3

    iget-object v10, v0, Lcom/xiaomi/venus/gameaisettingstartlib/bean/AiSettingResponse;->data:Ljava/lang/Object;

    check-cast v10, Lcom/xiaomi/venus/gameaisettingstartlib/bean/GameAiSettings;

    invoke-virtual {v10}, Lcom/xiaomi/venus/gameaisettingstartlib/bean/GameAiSettings;->getConfig()Ljava/util/Map;

    move-result-object v10

    invoke-interface {v10, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v5, v10}, Lcom/miui/gamebooster/aihelper/AISettingDTO;->setThirdValue(Ljava/lang/Integer;)V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "third setting "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/miui/gamebooster/aihelper/AISettingDTO;->getThirdValue()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_4
    new-instance v0, Lcom/xiaomi/venus/gameaisettingstartlib/bean/AiSettingResponse;

    invoke-virtual {p1}, Lcom/miui/gamebooster/aihelper/GameAIHttpResp;->getRetCode()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    :cond_5
    invoke-virtual {p1}, Lcom/miui/gamebooster/aihelper/GameAIHttpResp;->getErrMsg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/miui/gamebooster/aihelper/GameAIHttpResp;->getData()Lcom/miui/gamebooster/aihelper/GameAISettingsDTO;

    move-result-object p1

    invoke-direct {v0, v3, v1, p1}, Lcom/xiaomi/venus/gameaisettingstartlib/bean/AiSettingResponse;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    move-object p1, v0

    :goto_1
    return-object p1
.end method

.method private final h()Lcom/xiaomi/venus/gameaisettingstartlib/GameAiSettingManager;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/aihelper/e;->b:Loj/f;

    invoke-interface {v0}, Loj/f;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/venus/gameaisettingstartlib/GameAiSettingManager;

    return-object v0
.end method

.method private final k()Lcom/google/gson/Gson;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/aihelper/e;->e:Loj/f;

    invoke-interface {v0}, Loj/f;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/Gson;

    return-object v0
.end method

.method private final l()La8/x1;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/aihelper/e;->c:Loj/f;

    invoke-interface {v0}, Loj/f;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La8/x1;

    return-object v0
.end method

.method private final m(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-direct {p0}, Lcom/miui/gamebooster/aihelper/e;->l()La8/x1;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, p1, v1}, La8/y1;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final f(Ljava/lang/String;I)Lkotlinx/coroutines/flow/e;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Lkotlinx/coroutines/flow/e<",
            "Lcom/xiaomi/venus/gameaisettingstartlib/bean/AiSettingResponse<",
            "Lcom/xiaomi/venus/gameaisettingstartlib/bean/ChangeSettingResult;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/miui/gamebooster/aihelper/e$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/miui/gamebooster/aihelper/e$b;-><init>(Lcom/miui/gamebooster/aihelper/e;Ljava/lang/String;ILtj/d;)V

    invoke-static {v0}, Lkotlinx/coroutines/flow/g;->j(Lak/p;)Lkotlinx/coroutines/flow/e;

    move-result-object p1

    return-object p1
.end method

.method public final i(Ljava/lang/String;Ltj/d;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ltj/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ltj/d<",
            "-",
            "Lkotlinx/coroutines/flow/e<",
            "+",
            "Lcom/xiaomi/venus/gameaisettingstartlib/bean/AiSettingResponse<",
            "Lcom/miui/gamebooster/aihelper/GameAISettingsDTO;",
            ">;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    new-instance p2, Lcom/miui/gamebooster/aihelper/e$d;

    const/4 v0, 0x0

    invoke-direct {p2, p0, p1, v0}, Lcom/miui/gamebooster/aihelper/e$d;-><init>(Lcom/miui/gamebooster/aihelper/e;Ljava/lang/String;Ltj/d;)V

    invoke-static {p2}, Lkotlinx/coroutines/flow/g;->j(Lak/p;)Lkotlinx/coroutines/flow/e;

    move-result-object p1

    return-object p1
.end method

.method public final j(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "packageName"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/aihelper/e;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/aihelper/e;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/miui/gamebooster/aihelper/e;->h()Lcom/xiaomi/venus/gameaisettingstartlib/GameAiSettingManager;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gamebooster/aihelper/e;->a:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/xiaomi/venus/gameaisettingstartlib/GameAiSettingManager;->getGameIdByPkgName(Landroid/content/Context;Ljava/lang/String;)Lcom/xiaomi/venus/gameaisettingstartlib/bean/AiSettingResponse;

    move-result-object v0

    iget-object v0, v0, Lcom/xiaomi/venus/gameaisettingstartlib/bean/AiSettingResponse;->data:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/gamebooster/aihelper/e;->d:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/miui/gamebooster/aihelper/e;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "sdk"

    goto :goto_0

    :cond_0
    const-string v0, "cache"

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get gameId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/gamebooster/aihelper/e;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " by packageName "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AIHelperRepository"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/miui/gamebooster/aihelper/e;->d:Ljava/lang/String;

    return-object p1
.end method
